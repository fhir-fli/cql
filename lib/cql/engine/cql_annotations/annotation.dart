import '../../cql.dart';

/// Represents the Annotation type
abstract class Annotation {
  Annotation();

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      json.containsKey('translatorVersion')
          ? TranslatorAnnotation.fromJson(json)
          : ErrorAnnotation.fromJson(json);

  Map<String, dynamic> toJson() => {};
}
