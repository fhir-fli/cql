import '../../../cql.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifierModel extends TypeSpecifierModel {
  /// Choice elements.
  List<TypeSpecifierModel>? choice;

  ChoiceTypeSpecifierModel({
    this.choice,
  });
}
