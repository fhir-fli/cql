import '../../cql.dart';

/// The Concept type represents a literal concept selector.
class Concept extends Expression {
  /// The codes that constitute the concept.
  List<Code> code;

  /// An optional display string for the concept.
  String? display;

  final String type = 'Concept';

  Concept({required this.code, this.display});

  factory Concept.fromJson(Map<String, dynamic> json) {
    return Concept(
        code: (json['code'] as List).map((e) => Code.fromJson(e)).toList(),
        display: json['display']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (display != null) {
      json['display'] = display;
    }
    json['type'] = type;
    json['code'] = code.map((e) => e.toJson()).toList();
    return json;
  }
}
