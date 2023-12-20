import 'dart:io';

import '../cql.dart';

abstract class SystemModelInfoProvider implements ModelInfoProvider {
  /// Sets the namespace manager for this provider.
  void setNamespaceManager(NamespaceManager namespaceManager);

  /// Checks if the given model identifier belongs to the system model.
  bool isSystemModelIdentifier(ModelIdentifier modelIdentifier);

  /// Loads the model information for the system model, or null if not found.
  @override
  ModelInfo load(ModelIdentifier modelIdentifier) {
    if (isSystemModelIdentifier(modelIdentifier)) {
      try {
        final data = ResourceProvider.getResourceAsBytes(
            '/org/hl7/elm/r1/system-modelinfo.xml');
        final reader = ModelInfoReaderFactory.getReader('application/xml');
        return reader.read(data);
      } on IOException catch (e, s) {
        // Don't throw, allow other providers to resolve.
        print(s);
      }
    }
    throw ArgumentError('Model identifier is not supported');
  }
}
