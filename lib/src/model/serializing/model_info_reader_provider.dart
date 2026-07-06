import 'package:cql/src/internal.dart';

abstract class ModelInfoReaderProvider {
  bool isSupported();

  ModelInfoReader create(String contentType);
}
