import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

/// Abstract type for TypeSpecifier.
abstract class TypeSpecifier {
  String get type;

  TypeSpecifier();

  factory TypeSpecifier.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'IntervalTypeSpecifier':
        return IntervalTypeSpecifier.fromJson(json);
      case 'ListTypeSpecifier':
        return ListTypeSpecifier.fromJson(json);
      case 'TupleTypeSpecifier':
        return TupleTypeSpecifier.fromJson(json);
      case 'ChoiceTypeSpecifier':
        return ChoiceTypeSpecifier.fromJson(json);
      default:
        throw ArgumentError.value(
            json['type'], 'json', 'Invalid TypeSpecifier type');
    }
  }

  Map<String, dynamic> toJson() => {};
}

enum Types {
  @JsonValue('IntervalTypeSpecifier')
  IntervalTypeSpecifier,
  @JsonValue('ListTypeSpecifier')
  ListTypeSpecifier,
  @JsonValue('TupleTypeSpecifier')
  TupleTypeSpecifier,
  @JsonValue('ChoiceTypeSpecifier')
  ChoiceTypeSpecifier,
}
