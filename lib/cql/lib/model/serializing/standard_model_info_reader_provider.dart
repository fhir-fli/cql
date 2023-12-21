import '../../cql.dart';

class StandardModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  bool isSupported() => true;

  @override
  ModelInfoReader create(String contentType) {
    return StandardModelInfoReader();
  }
}
