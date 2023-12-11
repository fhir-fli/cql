import '../../cql.dart';

/// The Code type represents a literal code selector.
class Code extends Expression {
  /// The system of the code.
  late CodeSystemRef system;

  /// The code.
  late String code;

  /// An optional display string for the code.
  late String? display;

  Code({required this.system, required this.code, this.display});
}
