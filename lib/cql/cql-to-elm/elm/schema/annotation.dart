import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'annotation.g.dart';

/// Represents the Annotation type
@JsonSerializable()
class Annotation {
  /// Narrative element
  Narrative? s;

  /// Locator element
  Locator? locator;

  Annotation({this.s, this.locator});

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationToJson(this);
}
