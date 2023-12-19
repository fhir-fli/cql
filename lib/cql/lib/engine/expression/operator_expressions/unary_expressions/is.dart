import '../../../../cql.dart';

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type specifier for testing.
  TypeSpecifier? isTypeSpecifier;

  /// Type to test against.
  QName? isType;

  Is({this.isTypeSpecifier, this.isType, required super.operand});

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['isTypeSpecifier'])
            : null,
        isType: json['isType'] != null ? QName.fromJson(json['isType']) : null,
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'isTypeSpecifier': isTypeSpecifier?.toJson(),
        'isType': isType?.toJson(),
        'operand': operand.toJson(),
      };
}
