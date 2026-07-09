import 'package:cql/src/internal.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifierModel extends TypeSpecifierModel {
  ChoiceTypeSpecifierModel({
    this.choice,
  });

  ChoiceTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : choice = map['choice'] != null
            ? (map['choice'] as List)
                .map((e) =>
                    TypeSpecifierModel.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        super(type: 'ChoiceTypeSpecifier');

  /// Choice elements.
  List<TypeSpecifierModel>? choice;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'ChoiceTypeSpecifier',
    };
    if (choice != null) {
      map['choice'] = choice!.map((e) => e.toJson()).toList();
    }
    return map;
  }
}
