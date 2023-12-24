import '../../cql.dart';

/// The Code type represents a literal code selector.
class Code extends Expression {
  /// The code.
  String code;

  /// An optional display string for the code.
  String? display;

  /// The system of the code.
  CodeSystemRef system;

  Code({
    required this.code,
    this.display,
    required this.system,
  });

  factory Code.fromJson(Map<String, dynamic> json) {
    return Code(
      code: json['code'] as String,
      display: json['display'] as String?,
      system: CodeSystemRef.fromJson(json['system'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['code'] = code;
    if (display != null) {
      json['display'] = display;
    }
    json['type'] = type;
    json['system'] = system.toJson();
    return json;
  }

  String get type => 'Code';
}
