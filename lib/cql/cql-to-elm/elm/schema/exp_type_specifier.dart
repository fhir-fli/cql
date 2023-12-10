// TypeSpecifier is the abstract base type for all type specifiers.

import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'exp_type_specifier.g.dart';

@JsonSerializable()
abstract class ExpTypeSpecifier extends Element {
  ExpTypeSpecifier();

  factory ExpTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$ExpTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$ExpTypeSpecifierToJson(this);
}
