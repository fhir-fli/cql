import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'concept_def.g.dart';

@JsonSerializable()
class ConceptDefs {
  List<ConceptDef> def = <ConceptDef>[];

  ConceptDefs();

  factory ConceptDefs.fromJson(Map<String, dynamic> json) =>
      _$ConceptDefsFromJson(json);

  Map<String, dynamic> toJson() => _$ConceptDefsToJson(this);
}

/// The ConceptDef type defines a concept identifier that can then be used to
/// reference single concepts anywhere within an expression.
@JsonSerializable()
class ConceptDef extends Element {
  /// The name of the concept used for reference.
  String name;

  /// An optional display string used to describe the concept.
  String? display;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  /// A code that makes up the concept. All codes within a given concept must
  /// be synonyms.
  List<Ref> code;

  ConceptDef({
    required this.name,
    this.display,
    this.accessLevel = AccessModifier.public,
    required this.code,
  });

  factory ConceptDef.fromJson(Map<String, dynamic> json) =>
      _$ConceptDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConceptDefToJson(this);
}
