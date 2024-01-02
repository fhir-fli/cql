import '../../../../cql.dart';

/// As operator allowing casting the result of an expression to a given target type.
class As extends UnaryExpression {
  /// Target type for casting.
  QName? asType;

  /// Type specifier for casting.
  TypeSpecifier? asTypeSpecifier;

  /// Determines if strict type checking should be enforced.
  bool strict = false;

  As({required super.operand});

  factory As.fromJson(Map<String, dynamic> json) => As(
        operand: Expression.fromJson(json['operand']!),
      )
        ..asTypeSpecifier = json['asTypeSpecifier'] == null
            ? null
            : TypeSpecifier.fromJson(json['asTypeSpecifier'])
        ..asType =
            json['asType'] == null ? null : QName.fromFull(json['asType'])
        ..strict = json['strict'] ?? false;

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand,
        'asTypeSpecifier': asTypeSpecifier,
        'asType': asType,
        'strict': strict,
      };

  String get type => 'As';
}
