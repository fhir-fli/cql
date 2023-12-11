import 'serializing.dart';

abstract class LibraryWriterProvider {
  LibraryWriter create(String contentType);
}
