import '../../cql.dart';

class QdmModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  bool isSupported() => true;

  @override
  ModelInfoReader create(String contentType) {
    return QdmModelInfoReader();
  }
}
