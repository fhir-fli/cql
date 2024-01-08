import '../../../../cql.dart';

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type to test against.
  QName? isType;

  /// Type specifier for testing.
  TypeSpecifier? isTypeSpecifier;

  Is({this.isTypeSpecifier, this.isType, required super.operand});

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['isTypeSpecifier'])
            : null,
        isType: json['isType'] != null ? QName.fromJson(json['isType']) : null,
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        if (isType != null) 'isType': isType!.toJson(),
        'type': type,
        'operand': operand.toJson(),
        if (isTypeSpecifier != null)
          'toTypeSpecifier': isTypeSpecifier!.toJson(),
      };

  @override
  String get type => 'Is';
}
