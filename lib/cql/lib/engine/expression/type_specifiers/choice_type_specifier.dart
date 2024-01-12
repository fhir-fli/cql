import '../../../cql.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifier extends TypeSpecifier {
  /// Choice elements.
  List<TypeSpecifier>? choice;

  ChoiceTypeSpecifier({
    this.choice,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ChoiceTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return ChoiceTypeSpecifier(
      choice: json['choice'] != null
          ? (json['choice'] as List)
              .map((i) => TypeSpecifier.fromJson(i))
              .toList()
          : null,
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'choice': choice?.map((v) => v.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'ChoiceTypeSpecifier';
}
