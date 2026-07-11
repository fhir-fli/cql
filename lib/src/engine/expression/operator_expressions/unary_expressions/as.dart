import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// As operator allowing casting the result of an expression to a given target
/// type.
/// As : UnaryExpression
///  ¦
///  0..1 --> asTypeSpecifier : TypeSpecifier
///  ¦
///  0..1 --> asType
///  ¦
///  0..1 --> strict
/// The As operator allows the result of an expression to be cast as a given
/// target type. This allows expressions to be written that are statically
/// typed against the expected run-time type of the argument. If the argument
/// is not of the specified type, and the strict attribute is false (the
/// default), the result is null. If the argument is not of the specified type
/// and the strict attribute is true, an exception is thrown.
///
/// Signature:
///
/// `as<T>`(argument Any) T
/// cast `as<T>`(argument Any) T
/// Description:
///
/// The as operator allows the result of an expression to be cast as a given
/// target type. This allows expressions to be written that are statically
/// typed against the expected run-time type of the argument.
///
/// If the argument is not of the specified type at run-time the result is null.
///
/// The cast prefix indicates that if the argument is not of the specified type
/// at run-time then an exception is thrown.
///
/// Example:
///
/// The following examples illustrate the use of the as operator.
///
/// define "AllProcedures": [Procedure]
///
/// define "ImagingProcedures":
///   AllProcedures P
///     where P is ImagingProcedure
///     return P as ImagingProcedure
///
/// define "RuntimeError":
///   ImagingProcedures P
///     return cast P as Observation
class As extends UnaryExpression {
  As({
    required super.operand,
    this.asType,
    this.asTypeSpecifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory As.fromJson(Map<String, dynamic> json) => As(
        operand:
            CqlExpression.fromJson(json['operand']! as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      )
        ..asTypeSpecifier = json['asTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['asTypeSpecifier'] as Map<String, dynamic>)
        ..asType = json['asType'] == null
            ? null
            : QName.parse(json['asType'] as String)
        ..strict = json['strict'] as bool?;

  /// Target type for casting.
  QName? asType;

  /// Type specifier for casting.
  TypeSpecifierExpression? asTypeSpecifier;

  /// Determines if strict type checking should be enforced.
  bool? strict;

  @override
  String get type => 'As';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      if (asType != null) 'asType': asType!.toJson(),
      'type': type,
      'operand': operand.toJson(),
    };
    if (strict != null) {
      data['strict'] = strict;
    }

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return asType?.getReturnTypes(library) ?? ['Unknown'];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // 1) Evaluate the operand
    final dynamic value = await operand.execute(context);

    // 2) If null, always null
    if (value == null) {
      return null;
    }

    final mr = getModelResolver(context);

    // 3) If there's an asTypeSpecifier, we must cast _each_ element of a list
    if (asTypeSpecifier != null) {
      // 1) If the operand evaluated to a List, cast every element
      if (value is List) {
        return value
            .map((e) => _applySpecifier(e, asTypeSpecifier!, mr))
            .where((e) => e != _notMatched)
            .toList();
      }
      // 2) Otherwise, cast the single value
      final result = _applySpecifier(value, asTypeSpecifier!, mr);
      return result == _notMatched ? null : result;
    }

    // 4) If there's a simple asType, run the atomic-cast logic
    if (asType != null) {
      final result = _castNamed(value, asType!.localPart, mr);
      return result == _notMatched ? null : result;
    }

    // 5) No specifier or asType: just pass the value through
    return value;
  }

  /// Sentinel value used to distinguish "element does not match the type"
  /// from a legitimate null element value. Uses a unique object rather than
  /// a String to avoid triggering type coercion in FHIR type == operators.
  static final Object _notMatched = Object();

  /// Recursively applies a TypeSpecifierExpression to a single element,
  /// returning the element if it matches, or [_notMatched] if it doesn't.
  /// A null element that passes through validly will remain null.
  dynamic _applySpecifier(
    dynamic element,
    TypeSpecifierExpression spec,
    ModelResolver? mr,
  ) {
    // 1) ListTypeSpecifier: unwrap and reapply to the same element
    if (spec is ListTypeSpecifier && spec.elementType != null) {
      return _applySpecifier(element, spec.elementType!, mr);
    }

    // 2) ChoiceTypeSpecifier: succeed if ANY choice matches
    if (spec is ChoiceTypeSpecifier) {
      for (final choice in spec.choice ?? <TypeSpecifierExpression>[]) {
        final matched = _applySpecifier(element, choice, mr);
        if (matched != _notMatched) return matched;
      }
      return _notMatched;
    }

    // 3) NamedTypeSpecifier: atomic check
    if (spec is NamedTypeSpecifier) {
      return _castNamed(element, spec.namespace.localPart, mr);
    }

    // Unknown specifier type → not matched
    return _notMatched;
  }

  /// Casts [value] to the type named [name]: the value itself when it is of
  /// that type, [_notMatched] otherwise. A cast never converts — `as
  /// FHIR.Quantity` returns the model value unchanged for a following
  /// `FHIRHelpers.ToQuantity` to convert.
  ///
  /// CQL System types are checked natively; model type membership (FHIR
  /// primitives, composites, resources) is the [ModelResolver]'s call.
  dynamic _castNamed(dynamic value, String name, ModelResolver? mr) {
    switch (name) {
      // Null type: only match null values
      case 'Null':
        return value == null ? null : _notMatched;
      // Any/Unknown: match anything (pass through)
      case 'Any':
      case 'Unknown':
        return value;
      case 'Integer':
        return value is CqlInteger ? value : _notMatched;
      case 'Long':
        return value is CqlLong ? value : _notMatched;
      case 'Decimal':
        return value is CqlDecimal ? value : _notMatched;
      case 'String':
        return value is String ? value : _notMatched;
      case 'string':
        // FHIR string and subtypes via the resolver; raw/System strings
        // (already-converted values) also satisfy the cast.
        if (value is String || value is CqlString) return value;
        return _modelCast(value, name, mr);
      case 'Boolean':
        return value is CqlBoolean ? value : _notMatched;
      case 'DateTime':
        return value is CqlDateTime ? value : _notMatched;
      case 'Date':
        return value is CqlDate ? value : _notMatched;
      case 'Time':
        return value is CqlTime ? value : _notMatched;
      case 'Quantity':
        if (value is ValidatedQuantity) return value;
        return _modelCast(value, name, mr);
      case 'Ratio':
        if (value is ValidatedRatio) return value;
        return _modelCast(value, name, mr);
      case 'Code':
        return value is Code ? value : _notMatched;
      case 'Concept':
        return value is Concept ? value : _notMatched;
      case 'Interval<Long>':
      case 'CqlInterval<Long>':
        return value is CqlInterval<CqlLong> ? value : _notMatched;
      default:
        // Any Interval<...> spelling: a runtime CqlInterval matches.
        if (name == 'Interval' ||
            name == 'CqlInterval' ||
            name.startsWith('Interval<') ||
            name.startsWith('CqlInterval<')) {
          return value is CqlInterval ? value : _notMatched;
        }
        // Model types: FHIR primitives (boolean, code, uri, ...),
        // composites (Coding, CodeableConcept, Period, ...), resources.
        return _modelCast(value, name, mr);
    }
  }

  /// Model-type cast: membership decided by the [ModelResolver].
  dynamic _modelCast(dynamic value, String name, ModelResolver? mr) =>
      (mr?.is_(value, name) ?? false) ? value : _notMatched;

  @override
  String toString() {
    return 'As { asType: $asType, asTypeSpecifier: $asTypeSpecifier, strict: $strict, operand: $operand }';
  }
}
