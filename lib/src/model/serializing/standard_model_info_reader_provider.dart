import 'package:cql/src/internal.dart';

class StandardModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  ModelInfoReader create(String contentType) {
    return StandardModelInfoReader();
  }

  @override
  bool isSupported() => true;
}
