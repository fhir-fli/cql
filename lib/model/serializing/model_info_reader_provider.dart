import 'package:fhir_cql/fhir_cql.dart';

abstract class ModelInfoReaderProvider {
  bool isSupported();

  ModelInfoReader create(String contentType);
}
