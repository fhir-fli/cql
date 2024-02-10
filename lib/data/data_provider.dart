import '../cql.dart';

abstract class DataProvider implements ModelResolver, RetrieveProvider {
  // Dart does not support default methods in interfaces or abstract classes directly.
  // Instead, you can provide a method implementation that returns a specific instance.
  // Dart's factory constructor or a simple method can be used for this purpose.

  // This method mimics the default method in the Java interface.
  PHIObfuscator phiObfuscationSupplier() {
    // Returning an instance of NoOpPHIObfuscator directly, similar to the Java default method.
    return NoOpPHIObfuscator();
  }
}
