import 'dart:io';

import '../../../cql.dart';

class QdmModelInfoProvider implements ModelInfoProvider, NamespaceAware {
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
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo.xml'));
          case "4.2":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-4.2.xml'));
          case "4.3":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-4.3.xml'));
          case "5.0":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.0.xml'));
          case "5.0.1":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.0.1.xml'));
          case "5.0.2":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.0.2.xml'));
          case "5.3":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.3.xml'));
          case "5.4":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.4.xml'));
          case "5.5":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.5.xml'));
          case "5.6":
          case "":
            return ModelInfoReaderFactory.getReader("application/xml")
                .readFromFile(File('gov/healthit/qdm/qdm-modelinfo-5.6.xml'));
        }
      } catch (e, s) {
        // Do not throw, allow other providers to resolve
        print(s);
      }
    }

    return null;
  }
}
