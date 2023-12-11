import 'package:json_annotation/json_annotation.dart';

part 'narrative.g.dart';

/// Represents the Narrative type with mixed content
@JsonSerializable()
class Narrative {
  /// r attribute
  String? r;

  /// Nested Narrative elements
  List<Narrative>? s;

  Narrative({this.r, this.s});

  factory Narrative.fromJson(Map<String, dynamic> json) =>
      _$NarrativeFromJson(json);

  Map<String, dynamic> toJson() => _$NarrativeToJson(this);
}
