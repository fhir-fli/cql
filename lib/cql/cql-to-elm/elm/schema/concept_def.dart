import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'concept_def.g.dart';

@JsonSerializable()
class ConceptDefs {
  List<ConceptDef>? concepts;

  ConceptDefs({this.concepts});

  factory ConceptDefs.fromJson(Map<String, dynamic> json) =>
      _$ConceptDefsFromJson(json);

  Map<String, dynamic> toJson() => _$ConceptDefsToJson(this);
}

/// The ConceptDef type defines a concept identifier that can then be used to
/// reference single concepts anywhere within an expression.
@JsonSerializable()
class ConceptDef extends Element {
  /// A code that makes up the concept. All codes within a given concept must
  /// be synonyms.
  late List<CodeRef> code;

  /// The name of the concept used for reference.
  late String name;

  /// An optional display string used to describe the concept.
  late String? display;

  /// Specifies the access level; default is Public.
  late AccessModifier accessLevel;

  ConceptDef(
      {required this.code,
      required this.name,
      this.display,
      this.accessLevel = AccessModifier.Public});

  factory ConceptDef.fromJson(Map<String, dynamic> json) =>
      _$ConceptDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConceptDefToJson(this);
}
