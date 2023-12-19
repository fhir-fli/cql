import '../../../cql.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifier extends TypeSpecifier {
  /// Choice elements.
  List<TypeSpecifier>? choice;

  @override
  final String type = 'ChoiceType';

  ChoiceTypeSpecifier({this.choice});

  factory ChoiceTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return ChoiceTypeSpecifier(
      choice: json['choice'] != null
          ? (json['choice'] as List)
              .map((i) => TypeSpecifier.fromJson(i))
              .toList()
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'choice': choice?.map((v) => v.toJson()).toList(),
      };
}
