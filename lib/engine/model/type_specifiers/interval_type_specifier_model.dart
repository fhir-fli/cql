import '../../../cql.dart';

/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifierModel extends TypeSpecifierModel {
  TypeSpecifierModel? pointTypeSpecifier;

  String? pointType;

  IntervalTypeSpecifierModel({
    this.pointTypeSpecifier,
    this.pointType,
  });
}
