import '../../cql.dart';

/// The Concept type represents a literal concept selector.
class Concept extends Expression {
  /// The codes that constitute the concept.
  late List<Code> code;

  /// An optional display string for the concept.
  late String? display;

  Concept({required this.code, this.display});
}
