import '../elm.dart';

abstract class ElmLibraryWriter {
  void write(ElmLibrary library, Writer writer);

  String writeAsString(ElmLibrary library);
}
