import 'dart:async';
import 'dart:io';

// import 'package:antlr4/antlr4.dart';

class DartProperties {
  static const int serialVersionUID = 4112578634029874840;

  final Map<String, String> data = {};
  // static final Unsafe unsafe =
  //     Unsafe.getUnsafe(); // Replace with your platform-specific implementation

  DartProperties? defaults; // Use final to ensure initialization later

  // Check if a property exists
  bool containsKey(String key) => data.containsKey(key);

  // Remove a propertyu
  void removeProperty(String key) => data.remove(key);

  // Clear all properties
  void clear() => data.clear();

  // Load properties from a file
  String? loadFromFile(String filePath) {
    try {
      final contents = File(filePath).readAsStringSync();
      return _parseProperties(contents);
    } on FileSystemException catch (e) {
      print('Error loading file: $e');
      return null;
    }
  }

  // Load properties from a stream
  Future<void> loadFromStream(Stream<String> stream) async {
    await stream
        .fold('', (String content, String line) => content + line)
        .then((String contents) => _parseProperties(contents));
  }

  // Store properties to a file
  void storeToFile(String filePath) {
    final output = _buildPropertiesString();
    File(filePath).writeAsStringSync(output);
  }

  void storeToStream(StreamSink<String> sink) {
    sink.add(_buildPropertiesString());
  }

  String? getProperty(String key) {
    return data[key];
  }

  Future<void> load(Stream? inStream) async {
    if (inStream == null) {
      throw ArgumentError("inStream parameter cannot be null");
    } else {
      inStream.map((value) => loadFromInputStream(value));
    }
  }

  Future<void> loadFromInputStream(Stream? inStream) async {
    assert(inStream != null, "inStream parameter cannot be null");
    inStream!.map((value) {
      if (value is String) {
        _load0(value);
      }
    });
  }

  String loadConvert(List<int> input, int offset, int length) {
    final StringBuffer output = StringBuffer();
    final end = offset + length;
    int start = offset;

    int charCode;
    while (offset < end) {
      charCode = input[offset++];
      if (charCode == '\\'.codeUnits[0]) {
        break;
      }
    }

    if (offset == end) {
      return String.fromCharCodes(input, start, length);
    } else {
      output.clear();
      --offset;
      output.writeAll(input.sublist(start, offset - start));

      while (true) {
        while (true) {
          while (offset < end) {
            charCode = input[offset++];
            if (charCode == '\\'.codeUnits[0]) {
              charCode = input[offset++];
              if (charCode == 'u'.codeUnits[0]) {
                if (offset > end - 4) {
                  throw ArgumentError("Malformed \\uxxxx encoding.");
                }

                int value = 0;

                for (int i = 0; i < 4; ++i) {
                  charCode = input[offset++];
                  int hexValue;
                  switch (charCode) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57: // Digits (0-9)
                      hexValue = value << 4 + charCode - 48;
                      break;
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                    case 69:
                    case 70: // Uppercase hex digits (A-F)
                      hexValue = value << 4 + 10 + charCode - 65;
                      break;
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102: // Lowercase hex digits (a-f)
                      hexValue = value << 4 + 10 + charCode - 97;
                      break;
                    case 59: // Semicolon
                    case 63: // Question mark
                    case 60: // Less than
                    case 61: // Equal
                    case 62: // Greater than
                    case 64: // At symbol
                      hexValue = value <<
                          4 + charCode - 55; // Special escape characters
                      break;
                    default: // Invalid character
                      throw ArgumentError("Malformed \\uxxxx encoding.");
                  }

                  value = hexValue;
                }

                output.writeCharCode(value);
              } else {
                if (charCode == 't'.codeUnits[0]) {
                  charCode = '\t'.codeUnits[0];
                } else if (charCode == 'r'.codeUnits[0]) {
                  charCode = '\r'.codeUnits[0];
                } else if (charCode == 'n'.codeUnits[0]) {
                  charCode = '\n'.codeUnits[0];
                } else if (charCode == 'f'.codeUnits[0]) {
                  charCode = '\f'.codeUnits[0];
                }

                output.writeCharCode(charCode);
              }
            } else {
              output.writeCharCode(charCode);
            }
          }

          return output.toString();
        }
      }
    }
  }

  void put(String key, String value) {
    data[key] = value;
  }

  Set<String> stringPropertyNames() {
    final h = <String, String>{};
    enumerateStringProperties(h);
    return h.keys.toSet();
  }

  void enumerateStringProperties(Map<String, String> h) {
    if (defaults != null) {
      defaults!.enumerateStringProperties(h);
    }

    for (final entry in entrySet()) {
      final key = entry.key;
      final value = entry.value;
      if (key is String && value is String) {
        h[key] = value;
      }
    }
  }

  Set<MapEntry<Object, Object>> entrySet() {
    final entries = <MapEntry<Object, Object>>{};
    for (final entry in data.entries) {
      // Convert value to desired object type
      entries.add(MapEntry<Object, Object>(entry.key, entry));
    }
    return entries;
  }

  // Helper function to parse properties from string
  String? _parseProperties(String contents) {
    try {
      final lines = contents.split('\n');
      for (final line in lines) {
        final trimmedLine = line.trim();
        if (trimmedLine.isNotEmpty && !trimmedLine.startsWith('#')) {
          final parts = trimmedLine.split('=');
          if (parts.length == 2) {
            data[parts[0].trim()] = parts[1].trim();
          } else {
            print('Invalid property format: $line');
          }
        }
      }
      return null;
    } on FormatException catch (e) {
      print('Error parsing properties: $e');
      return null;
    }
  }

  // Helper function to build a string representation of properties
  String _buildPropertiesString() {
    final buffer = StringBuffer();
    for (final entry in data.entries) {
      buffer.writeln('${entry.key}=${entry.value}');
    }
    return buffer.toString();
  }

  Future<void> _load0(String inString) async {
    if (inString.isEmpty) {
      return;
    }

    int valueStart = inString.length;
    bool hasSeparator = false;
    bool precedingBackslash = false;

    for (int i = 0; i < inString.length; ++i) {
      final String c = inString[i];
      if ((c == '=' || c == ':') && !precedingBackslash) {
        valueStart = i + 1;
        hasSeparator = true;
        break;
      } else if ((c == ' ' || c == '\t' || c == '\f') && !precedingBackslash) {
        valueStart = i + 1;
        break;
      } else if (c == '\\') {
        precedingBackslash = !precedingBackslash;
      } else {
        precedingBackslash = false;
      }
    }

    for (int i = valueStart; i < inString.length; ++i) {
      final String c = inString[i];
      if (c != ' ' && c != '\t' && c != '\f') {
        if (hasSeparator || c != '=' && c != ':') {
          break;
        }
        hasSeparator = true;
      }
    }

    final int keyLen = inString.length;
    final List<int> inputBytes = inString.codeUnits;

    final key = loadConvert(inputBytes, 0, keyLen);
    final value =
        loadConvert(inputBytes, valueStart, inString.length - valueStart);
    put(key, value);
  }
}
