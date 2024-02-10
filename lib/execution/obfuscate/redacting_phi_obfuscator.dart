import '../../cql.dart';

class RedactingPHIObfuscator implements PHIObfuscator {
  static const String redactedMessage = '<redacted>';

  @override
  String obfuscate(Object source) {
    return redactedMessage;
  }
}
