import '../../cql.dart';

class NoOpPHIObfuscator implements PHIObfuscator {
  @override
  String obfuscate(Object source) {
    return source.toString();
  }
}
