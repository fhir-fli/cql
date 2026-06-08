import 'package:fhir_cql/fhir_cql.dart';

class StandardModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  ModelInfoReader create(String contentType) {
    return StandardModelInfoReader();
  }

  @override
  bool isSupported() => true;
}
