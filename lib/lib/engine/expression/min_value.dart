import '../../cql.dart';

/// Operator to return the minimum representable value for the given type.
/// The MinValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MinValue results in an error.
/// Note that implementations may choose to represent the minimum DateTime value using a constant offset such as UTC.
class MinValue extends Expression {
  final QName valueType;

  MinValue({
    required this.valueType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MinValue.fromJson(Map<String, dynamic> json) => MinValue(
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
  String get type => 'MinValue';
}
