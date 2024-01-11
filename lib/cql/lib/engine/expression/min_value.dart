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
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'valueType': valueType,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'MinValue';
}
