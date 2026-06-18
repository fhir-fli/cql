import 'package:cql/cql.dart';

class StandardModelInfoReaderProvider implements ModelInfoReaderProvider {
  @override
  ModelInfoReader create(String contentType) {
    return StandardModelInfoReader();
  }

  @override
  bool isSupported() => true;
}
