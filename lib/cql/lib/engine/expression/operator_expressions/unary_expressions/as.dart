import '../../../../cql.dart';

/// As operator allowing casting the result of an expression to a given target type.
class As extends UnaryExpression {
  /// Type specifier for casting.
  TypeSpecifier? asTypeSpecifier;

  /// Target type for casting.
  QName? asType;

  /// Determines if strict type checking should be enforced.
  bool strict = false;

  As({required super.operand});

  factory As.fromJson(Map<String, dynamic> json) => As(
        operand: json['operand']!,
      )
        ..asTypeSpecifier = json['asTypeSpecifier']
        ..asType = json['asType']
        ..strict = json['strict'];

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
        'asTypeSpecifier': asTypeSpecifier,
        'asType': asType,
        'strict': strict,
      };
}