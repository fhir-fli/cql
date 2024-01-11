import '../../../../cql.dart';

/// As operator allowing casting the result of an expression to a given target type.
class As extends UnaryExpression {
  /// Target type for casting.
  QName? asType;

  /// Type specifier for casting.
  TypeSpecifier? asTypeSpecifier;

  /// Determines if strict type checking should be enforced.
  bool strict = false;

  As({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

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
  Map<String, dynamic> toJson() {
    return {
      if (operand is! NullExpression && operand is! Property) 'strict': strict,
      if (asType != null) 'asType': asType!.toJson(),
      'type': type,
      'operand': operand.toJson(),
      if (asTypeSpecifier != null) 'asTypeSpecifier': asTypeSpecifier!.toJson(),
    };
  }

  @override
  String get type => 'As';
}
