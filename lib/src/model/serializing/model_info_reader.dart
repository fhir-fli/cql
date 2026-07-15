import 'package:cql/src/internal.dart';

/// Parses ELM ModelInfo documents into [ModelInfo] instances.
///
/// Reading is string-based so the interface stays platform-independent;
/// obtaining the document content (file, network, embedded string) is the
/// caller's concern.
abstract class ModelInfoReader {
  /// Parses [xmlContent] (a ModelInfo XML document) into a [ModelInfo].
  ModelInfo read(String xmlContent);

  static dynamic removeAts(dynamic value) {
    if (value is String) {
      var newValue = value;
      if (newValue.startsWith('@')) {
        newValue = newValue.replaceFirst('@', '');
      }
      if (newValue.startsWith('xsi:')) {
        newValue = newValue.replaceFirst('xsi:', '');
      }
      if (newValue.startsWith('ns4:')) {
        newValue = newValue.replaceFirst('ns4:', '');
      }
      return newValue;
    } else if (value is List) {
      return value.map(removeAts).toList();
    } else if (value is Map) {
      return value
          .map((key, value) => MapEntry(removeAts(key), removeAts(value)));
    } else {
      return value;
    }
  }

  static dynamic removeModelName(dynamic value, String modelName) {
    if (value is String) {
      if (value.startsWith('$modelName.')) {
        return value.replaceFirst('$modelName.', '');
      } else {
        return value;
      }
    } else if (value is List) {
      return value.map((e) => removeModelName(e, modelName)).toList();
    } else if (value is Map) {
      return value.map(
        (key, value) => MapEntry(
          removeModelName(key, modelName),
          removeModelName(value, modelName),
        ),
      );
    } else {
      return value;
    }
  }
}
