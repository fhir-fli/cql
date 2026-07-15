import 'package:cql/src/internal.dart';

/// The CqlToElmBase type defines the abstract base type for all annotation
/// elements in the CQL Translator.
// Deliberate abstract base of the ELM annotation hierarchy (Annotation,
// CqlToElmInfo, ...), mirroring the ELM schema — not a function in disguise.
// ignore: one_member_abstracts
abstract class CqlToElmBase {
  CqlToElmBase();

  factory CqlToElmBase.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String?) {
      case 'Annotation':
        return Annotation.fromJson(json);
      case 'CqlToElmInfo':
        return CqlToElmInfo.fromJson(json);
      case 'CqlToElmError':
        return CqlToElmError.fromJson(json);
      case 'ErrorAnnotation':
        return ErrorAnnotation.fromJson(json);
      case 'Locator':
        return Locator.fromJson(json);
      case 'Tag':
        return Tag.fromJson(json);
      default:
        throw ArgumentError.value(
          json,
          'json',
          'Invalid CqlToElmBase type: ${json['type']}.',
        );
    }
  }

  Map<String, dynamic> toJson();
}
