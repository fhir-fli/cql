import 'dart:io';

import '../../cql.dart';

abstract class ModelInfoReader {
  // Replace this method with your actual XML parsing logic.
  ModelInfo read(String xmlContent);

  /// Reads model information from a file. throws IOException
  ModelInfo readFromFile(File file);

  /// Reads model information from a reader. throws IOException
  ModelInfo readFromFilePath(String filePath);

  /// Reads model information from an input stream. throws IOException
  ModelInfo readFromStream(Stream stream);

  /// Reads model information from a URL. throws IOException
  ModelInfo readFromUrl(Uri url);

  /// Reads model information from a URI. throws IOException
  ModelInfo readFromUri(Uri uri);

  /// Reads model information from a string. throws IOException
  ModelInfo readFromString(String string);
}