import '../../cql.dart';

abstract class LibraryWriter {
  void write(Library library, Writer writer);

  String writeAsString(Library library);
}
