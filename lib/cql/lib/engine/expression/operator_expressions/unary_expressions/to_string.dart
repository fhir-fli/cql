import '../../../../cql.dart';

/// Operator to convert the value of its argument to a String value.
/// The operator uses specific string representations for each type:
/// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '<unit>'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: <quantity>:<quantity>
/// If the argument is null, the result is null.
class ToString extends UnaryExpression {
  ToString({required super.operand});

  factory ToString.fromJson(Map<String, dynamic> json) => ToString(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
