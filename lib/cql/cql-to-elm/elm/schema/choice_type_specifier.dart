import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'choice_type_specifier.g.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
@JsonSerializable()
class ChoiceTypeSpecifier extends TypeSpecifier {
  /// Choice elements.
  List<TypeSpecifier>? choice;

  final String type = 'ChoiceType';

  ChoiceTypeSpecifier({this.choice});

  factory ChoiceTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$ChoiceTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$ChoiceTypeSpecifierToJson(this);
}
