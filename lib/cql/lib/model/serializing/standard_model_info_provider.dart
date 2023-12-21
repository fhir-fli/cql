import '../../../cql.dart';

class StandardModelInfoProvider implements ModelInfoProvider, NamespaceAware {
  NamespaceManager? namespaceManager;

  @override
  void setNamespaceManager(NamespaceManager namespaceManager) {
    this.namespaceManager = namespaceManager;
  }

  bool isQDMModelIdentifier(ModelIdentifier modelIdentifier) {
    if (namespaceManager != null && namespaceManager!.hasNamespaces) {
      return modelIdentifier.id == "QDM" &&
          (modelIdentifier.system == null ||
              modelIdentifier.system == "urn:healthit-gov");
    }
    return modelIdentifier.id == "QDM";
  }

  @override
  ModelInfo? load(ModelIdentifier modelIdentifier) {
    if (isQDMModelIdentifier(modelIdentifier)) {
      final localVersion = modelIdentifier.version ?? "";
      try {
        switch (localVersion) {
          case "4.1.2":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo);
          case "4.2":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelconfig42);
          case "4.3":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo43);
          case "5.0":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo50);
          case "5.0.1":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo501);
          case "5.0.2":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo502);
          case "5.3":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo53);
          case "5.4":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo54);
          case "5.5":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo55);
          case "5.6":
          case "":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(qdmmodelinfo56);
        }
      } catch (e, s) {
        // Do not throw, allow other providers to resolve
        print(s);
      }
    }

    return null;
  }
}
