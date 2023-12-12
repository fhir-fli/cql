import 'serializing.dart';

abstract class LibraryReaderProvider {
  LibraryReader create(String contentType);
}
