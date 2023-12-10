import '../../schema/schema.dart';
import 'writer.dart';

abstract class LibraryWriter {
  void write(Library library, Writer writer);

  String writeAsString(Library library);
}
