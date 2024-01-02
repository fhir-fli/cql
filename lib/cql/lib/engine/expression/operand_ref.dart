import '../../cql.dart';

/// Expression allowing the value of an operand to be referenced within the body of a function definition.
class OperandRef extends Expression {
  /// Name of the referenced operand.
  String name;

  OperandRef({required this.name});

  factory OperandRef.fromJson(Map<String, dynamic> json) => OperandRef(
        name: json['name']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'name': name,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'OperandRef';
}
