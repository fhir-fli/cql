import '../../../cql.dart';

/// The Min operator returns the minimum element in the source.
/// Comparison semantics are defined by the comparison operators for the type
/// of the values being aggregated.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// minimum<T>() T
/// Description:
///
/// The minimum operator returns the minimum representable value for the given
/// type.
///
/// The minimum operator is defined for the Integer, Long, Decimal, Quantity,
/// Date, DateTime, and Time types.
///
/// For Integer, minimum returns the minimum signed 32-bit integer, -231.
///
/// For Long, minimum returns the minimum signed 64-bit long, -263.
///
/// For Decimal, minimum returns the minimum representable decimal value,
/// (-1028 + 1) / 108 (-99999999999999999999.99999999).
///
/// For Quantity, minimum returns the minimum representable quantity, i.e. the
/// minimum representable decimal value with a default unit (1).
///
/// For Date, minimum returns the minimum representable date value,
/// DateTime(1, 1, 1).
///
/// For DateTime, minimum returns the minimum representable datetime value,
/// DateTime(1, 1, 1, 0, 0, 0, 0).
///
/// For Time, minimum returns the minimum representable time value,
/// Time(0, 0, 0, 0).
///
/// For any other type, attempting to invoke minimum results in an error.
///
/// Note that implementations may choose to represent the minimum DateTime
/// value using a constant offset such as UTC.
///
/// Note that if implementations support larger and/or more precise values than
/// the minimum required precision and scale for Decimal, DateTime, and Time
/// values, they will return the minimum representable decimal for the
/// implementation.
///
/// The following examples illustrate the behavior of the minimum operator:
///
/// define "IntegerMinimum": minimum Integer // -2147483648
/// define "LongMinimum": minimum Long // -9223372036854775808
/// define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000
/// define "ErrorMinimum": minimum Quantity
class Min extends AggregateExpression {
  Min({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Min.fromJson(Map<String, dynamic> json) => Min(
        source: CqlExpression.fromJson(json['source']!),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifierExpression.fromJson(e))
                .toList(),
        path: json['path'],
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'source': source.toJson(),
    };

    if (signature != null) {
      json['signature'] = List<dynamic>.from(signature!.map((x) => x.toJson()));
    }

    if (path != null) {
      json['path'] = path;
    }

    if (annotation != null) {
      json['annotation'] =
          List<dynamic>.from(annotation!.map((x) => x.toJson()));
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
  String get type => 'Min';
}
