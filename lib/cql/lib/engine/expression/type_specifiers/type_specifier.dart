import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

/// Abstract type for TypeSpecifier.
abstract class TypeSpecifier extends Expression {
  String get type;

  TypeSpecifier();

  factory TypeSpecifier.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'BoundParameterTypeSpecifier':
        return BoundParameterTypeSpecifier.fromJson(json);
      case 'ChoiceTypeSpecifier':
        return ChoiceTypeSpecifier.fromJson(json);
      case 'IntervalTypeSpecifier':
        return IntervalTypeSpecifier.fromJson(json);
      case 'ListTypeSpecifier':
        return ListTypeSpecifier.fromJson(json);
      case 'NamedTypeSpecifier':
        return NamedTypeSpecifier.fromJson(json);
      case 'ParameterTypeSpecifier':
        return ParameterTypeSpecifier.fromJson(json);
      case 'TupleTypeSpecifier':
        return TupleTypeSpecifier.fromJson(json);
      default:
        throw ArgumentError.value(
            json['type'], 'json', 'Invalid TypeSpecifier type');
    }
  }

  @override
  Map<String, dynamic> toJson() => {};
}

enum Types {
  @JsonValue('IntervalTypeSpecifier')
  intervalTypeSpecifier,
  @JsonValue('ListTypeSpecifier')
  listTypeSpecifier,
  @JsonValue('TupleTypeSpecifier')
  tupleTypeSpecifier,
  @JsonValue('ChoiceTypeSpecifier')
  choiceTypeSpecifier,
}
