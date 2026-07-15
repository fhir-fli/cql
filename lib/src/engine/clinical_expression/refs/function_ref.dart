import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart' show ValidatedQuantity, ValidatedRatio;

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  FunctionRef({
    required super.name,
    this.operand,
    this.signature,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory FunctionRef.fromJson(Map<String, dynamic> json) => FunctionRef(
        operand: json['operand'] != null
            ? List<CqlExpression>.from(
                (json['operand'] as List).map(
                  (x) => CqlExpression.fromJson(x as Map<String, dynamic>),
                ),
              )
            : null,
        signature: json['signature'] != null
            ? List<TypeSpecifierExpression>.from(
                (json['signature'] as List).map(
                  (x) => TypeSpecifierExpression.fromJson(
                    x as Map<String, dynamic>,
                  ),
                ),
              )
            : null,
        name: json['name'] as String,
        libraryName: json['libraryName'] as String?,
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
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );

  /// Operands passed to the function.
  List<CqlExpression>? operand;

  /// Declared signature of the function being called.
  List<TypeSpecifierExpression>? signature;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'name': name,
    };

    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }

    json['type'] = type;

    if (signature != null) {
      json['signature'] = signature!.map((x) => x.toJson()).toList();
    }

    if (operand != null) {
      json['operand'] = operand!.map((x) => x.toJson()).toList();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((x) => x.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String get type => 'FunctionRef';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    final library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }

    if (libraryName == null) {
      // Handle well-known CQL system functions that may be parsed as
      // FunctionRef
      final result = await _trySystemFunction(context);
      if (!identical(result, _notHandled)) return result;

      // Pre-evaluate operands for runtime type matching when signature is
      // absent
      List<dynamic>? evaluatedOperands;
      if (signature == null && operand != null && operand!.isNotEmpty) {
        evaluatedOperands = <dynamic>[];
        for (final op in operand!) {
          evaluatedOperands.add(await op.execute(context));
        }
      }

      // Try resolving as a local (same-library) function, including fluent
      // functions
      final localFuncDef = library.resolveLocalFunctionDef(
        name,
        operandCount: operand?.length ?? 0,
        signature: signature,
        operandValues: evaluatedOperands,
      );
      if (localFuncDef != null) {
        final functionContext = Map<String, dynamic>.from(context);
        if (operand != null && localFuncDef.operand != null) {
          for (var i = 0;
              i < operand!.length && i < localFuncDef.operand!.length;
              i++) {
            final paramName = localFuncDef.operand![i].name;
            final operandValue = evaluatedOperands != null
                ? evaluatedOperands[i]
                : await operand![i].execute(context);
            functionContext[paramName] = operandValue;
          }
        }
        return localFuncDef.execute(functionContext);
      }

      // Search included libraries for fluent function definitions
      final fluentResult = await library.resolveFluentFunction(
        name,
        operandCount: operand?.length ?? 0,
        signature: signature,
        operandValues: evaluatedOperands,
      );
      if (fluentResult != null) {
        final (funcDef, funcLib) = fluentResult;
        final functionContext = Map<String, dynamic>.from(context);
        functionContext['library'] = funcLib;
        if (operand != null && funcDef.operand != null) {
          for (var i = 0;
              i < operand!.length && i < funcDef.operand!.length;
              i++) {
            final paramName = funcDef.operand![i].name;
            final operandValue = evaluatedOperands != null
                ? evaluatedOperands[i]
                : await operand![i].execute(context);
            functionContext[paramName] = operandValue;
          }
        }
        final result = await funcDef.execute(functionContext);
        context['library'] = library;
        return result;
      }

      throw ArgumentError('Function not found: $name');
    }

    // Try hardcoded fast paths for well-known libraries
    final libLower = libraryName!.toLowerCase();
    if (libLower == 'fhirhelpers') {
      final result = await _fhirHelpers(context);
      if (!identical(result, _notHandled)) return result;
    } else if (libLower == 'fc' || libLower == 'fhircommon') {
      final result = await _fhirCommon(context);
      if (!identical(result, _notHandled)) return result;
    }

    // Generic resolution: resolve function from included library
    final functionDef = await library.resolveFunctionRef(
      name,
      libraryName!,
      operandCount: operand?.length ?? 0,
      signature: signature,
    );

    if (functionDef == null) {
      // For FHIRHelpers, many functions are external stubs — return null
      if (libLower == 'fhirhelpers') return null;
      throw ArgumentError('Function definition not found for $name');
    }

    // Get the included library for setting context correctly
    final includedLib = await library.resolveIncludedLibrary(libraryName!);

    // Create a new context for function execution
    final functionContext = Map<String, dynamic>.from(context);

    // Set the included library as the active library for the function scope
    if (includedLib != null) {
      functionContext['library'] = includedLib;
    }

    // Evaluate operands and add them to the function context with parameter
    // names
    if (operand != null && functionDef.operand != null) {
      for (var i = 0;
          i < operand!.length && i < functionDef.operand!.length;
          i++) {
        final paramName = functionDef.operand![i].name;
        final operandValue = await operand![i].execute(context);
        functionContext[paramName] = operandValue;
      }
    }

    // Execute the function with the prepared context
    final result = await functionDef.execute(functionContext);

    // Restore the original library in context
    context['library'] = library;

    return result;
  }

  static const _notHandled = Object();

  Future<dynamic> _trySystemFunction(Map<String, dynamic> context) async {
    switch (name.toLowerCase()) {
      case 'descendents':
      case 'descendants':
        if (operand != null && operand!.isNotEmpty) {
          final value = await operand![0].execute(context);
          if (value == null) return null;
          final results = <dynamic>[];
          Descendents.collectDescendants(
            value,
            results,
            getModelResolver(context),
          );
          return results;
        }
        return null;
      default:
        return _notHandled;
    }
  }

  Future<dynamic> _fhirHelpers(Map<String, dynamic> context) async {
    switch (name) {
      case 'ToString':
        return _helperToString(context);
      case 'ToConcept':
        return _helperToConcept(context);
      case 'ToBoolean':
        return _helperToBoolean(context);
      case 'ToDate':
        return _helperToDate(context);
      case 'ToDateTime':
        return _helperToDateTime(context);
      case 'ToCode':
        return _helperToCode(context);
      case 'ToInteger':
        return _helperToInteger(context);
      case 'ToDecimal':
        return _helperToDecimal(context);
      case 'ToTime':
        return _helperToTime(context);
      case 'ToInterval':
        return _helperToInterval(context);
      case 'ToQuantity':
        return _helperToQuantity(context);
      case 'ToRatio':
        return _helperToRatio(context);
      case 'ToCalendarUnit':
        return _helperToCalendarUnit(context);
      case 'ToValue':
        return _helperToValue(context);
      case 'ToValueSet':
        return _helperToValueSet(context);
      case 'ToQuantityIgnoringComparator':
        return _helperToQuantity(context);
      // External FHIR functions – not implemented as CQL helpers
      case 'resolve':
      case 'reference':
      case 'extension':
      case 'modifierExtension':
      case 'hasValue':
      case 'getValue':
      case 'ofType':
      case 'is':
      case 'as':
      case 'elementDefinition':
      case 'slice':
      case 'checkModifiers':
      case 'conformsTo':
      case 'memberOf':
      case 'subsumes':
      case 'subsumedBy':
      case 'htmlChecks':
        return null;
      default:
        return _notHandled;
    }
  }

  Future<dynamic> _fhirCommon(Map<String, dynamic> context) async {
    switch (name) {
      case 'ToInterval':
        if (operand == null || operand!.isEmpty) return null;
        final value = await operand![0].execute(context);
        return _toInterval(value, getModelResolver(context));
      case 'ToString':
        return _helperToString(context);
      case 'ToConcept':
        return _helperToConcept(context);
      case 'ToCode':
        return _helperToCode(context);
      case 'ToQuantity':
        return _helperToQuantity(context);
      case 'ToDateTime':
        return _helperToDateTime(context);
      case 'ToDate':
        return _helperToDate(context);
      case 'ToBoolean':
        return _helperToBoolean(context);
      default:
        // Fall through to FHIRHelpers for unrecognized functions
        return _fhirHelpers(context);
    }
  }

  /// The string carried by [value]: raw strings and CQL System primitives
  /// directly; model types (e.g. FHIR string-flavored primitives) via the
  /// resolver's boundary conversion. `null` when [value] carries no string.
  static String? _stringValueOf(dynamic value, ModelResolver? mr) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is CqlPrimitive) return value.valueString;
    final converted = mr?.toCqlSystemType(value);
    if (converted is CqlPrimitive) return converted.valueString;
    return null;
  }

  Future<dynamic> _helperToString(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) {
      return null;
    }
    final mr = getModelResolver(context);
    final results = <String>[];
    for (final op in operand!) {
      final value = await op.execute(context);
      if (value == null) continue;
      final str = _stringValueOf(value, mr) ?? value.toString();
      results.add(str);
    }
    if (results.isEmpty) return null;
    return results.length == 1 ? results.first : results;
  }

  Future<dynamic> _helperToDateTime(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlDateTime) return value;
    if (value is CqlDate) {
      return CqlDateTime.fromString(value.valueString ?? '');
    }
    if (value is String) return CqlDateTime.fromString(value);
    return null;
  }

  Future<dynamic> _helperToInterval(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    return _toInterval(value, getModelResolver(context));
  }

  dynamic _toInterval(dynamic value, ModelResolver? mr) {
    if (value == null) return null;
    if (value is CqlInterval) return value;
    if (value is CqlDateTime || value is CqlDate) {
      return CqlInterval(
        low: value,
        high: value,
        lowClosed: true,
        highClosed: true,
      );
    }
    // Map with start/end or low/high (period/range-shaped raw data)
    if (value is Map<String, dynamic>) {
      final start = value['start'];
      final end = value['end'];
      if (start != null || end != null) {
        return CqlInterval(
          low: start != null ? CqlDateTime.fromString(start.toString()) : null,
          high: end != null ? CqlDateTime.fromString(end.toString()) : null,
          lowClosed: true,
          highClosed: true,
        );
      }
      final low = value['low'];
      final high = value['high'];
      if (low != null || high != null) {
        return CqlInterval(
          low: _quantityFromMap(low),
          high: _quantityFromMap(high),
          lowClosed: true,
          highClosed: true,
        );
      }
      return null;
    }
    // Model types (FHIR Period → Interval<DateTime>, Range →
    // Interval<Quantity>, instant → point interval) convert at the
    // resolver boundary.
    final converted = mr?.toCqlSystemType(value);
    if (identical(converted, value)) return null;
    return _toInterval(converted, null);
  }

  ValidatedQuantity? _quantityFromMap(dynamic value) {
    if (value is! Map<String, dynamic>) return null;
    final raw = value['value'];
    final numVal = raw is num ? raw : num.tryParse(raw?.toString() ?? '');
    if (numVal == null) return null;
    final unit = value['code']?.toString() ?? value['unit']?.toString() ?? '1';
    return ValidatedQuantity.fromNumber(numVal, unit: unit);
  }

  Future<dynamic> _helperToQuantity(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is ValidatedQuantity) return value;
    final converted = getModelResolver(context)?.toCqlSystemType(value);
    return converted is ValidatedQuantity ? converted : null;
  }

  Future<dynamic> _helperToBoolean(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlBoolean) return value;
    if (value is bool) return CqlBoolean(value);
    return null;
  }

  Future<dynamic> _helperToDate(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlDate) return value;
    if (value is CqlDateTime) {
      final str = value.valueString;
      if (str != null && str.length >= 10) {
        return CqlDate.fromString(str.substring(0, 10));
      }
    }
    if (value is String) return CqlDate.fromString(value);
    return null;
  }

  Future<dynamic> _helperToCode(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlCode) return value;
    if (value is Map<String, dynamic>) {
      return CqlCode(
        code: value['code']?.toString() ?? '',
        system: value['system']?.toString() ?? '',
        display: value['display']?.toString(),
      );
    }
    final converted = getModelResolver(context)?.toCqlSystemType(value);
    return converted is CqlCode ? converted : null;
  }

  Future<dynamic> _helperToInteger(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlInteger) return value;
    if (value is int) return CqlInteger(value);
    final converted = getModelResolver(context)?.toCqlSystemType(value);
    return converted is CqlInteger ? converted : null;
  }

  Future<dynamic> _helperToDecimal(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlDecimal) return value;
    if (value is double) return CqlDecimal(value);
    if (value is num) return CqlDecimal(value.toDouble());
    return null;
  }

  Future<dynamic> _helperToTime(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlTime) return value;
    if (value is String) return CqlTime(value);
    return null;
  }

  Future<dynamic> _helperToCalendarUnit(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    final str =
        _stringValueOf(value, getModelResolver(context)) ?? value.toString();
    const ucumToCql = {
      'ms': 'millisecond',
      's': 'second',
      'min': 'minute',
      'h': 'hour',
      'd': 'day',
      'wk': 'week',
      'mo': 'month',
      'a': 'year',
    };
    return ucumToCql[str] ?? str;
  }

  Future<dynamic> _helperToRatio(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is ValidatedRatio) return value;
    final converted = getModelResolver(context)?.toCqlSystemType(value);
    return converted is ValidatedRatio ? converted : null;
  }

  Future<dynamic> _helperToValueSet(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    final uri = _stringValueOf(value, getModelResolver(context));
    if (uri != null) {
      return CqlValueSet(id: uri, version: null, name: '');
    }
    return null;
  }

  Future<dynamic> _helperToValue(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    // CQL System values pass through (strings unwrap to raw String).
    if (value is CqlString) return value.valueString;
    if (value is CqlType || value is CqlInterval) return value;
    // Model values convert at the resolver boundary (FHIR primitives to
    // System primitives, Coding → Code, CodeableConcept → Concept,
    // Quantity/Ratio → System Quantity/Ratio, Period/Range → Interval).
    final converted = getModelResolver(context)?.toCqlSystemType(value);
    if (converted != null && !identical(converted, value)) {
      return converted is CqlString ? converted.valueString : converted;
    }
    // Everything else passthrough
    return value;
  }

  Future<dynamic> _helperToConcept(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) {
      return null;
    } else if (operand!.length == 1) {
      return ToConcept(operand: operand![0]).execute(context);
    } else {
      final results = <dynamic>[];
      for (final operand in this.operand!) {
        final result = await ToConcept(operand: operand).execute(context);
        if (result != null) {
          results.add(result);
        }
      }
      if (results.isEmpty) {
        return null;
      } else {
        return results;
      }
    }
  }
}
