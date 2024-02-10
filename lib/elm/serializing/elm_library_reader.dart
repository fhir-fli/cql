import 'dart:io';

import '../../cql.dart';

abstract class LibraryReader {
  Library readFromFile(File file);

  Library readFromUrl(Uri url);

  Library readFromUri(Uri uri);

  Library readFromString(String string);

  Library readFromInputStream(Stream inputStream);
}
