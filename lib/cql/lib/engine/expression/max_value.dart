import '../../cql.dart';

/// Operator to return the maximum representable value for the given type.
/// The MaxValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MaxValue results in an error.
/// Note that implementations may choose to represent the maximum DateTime value using a constant offset such as UTC.
class MaxValue extends Expression {
  final QName valueType;

  MaxValue({
    required this.valueType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MaxValue.fromJson(Map<String, dynamic> json) => MaxValue(
        valueType: QName.fromFull(json['valueType']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {
      'type': type,
      'valueType': valueType,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'MaxValue';
}
