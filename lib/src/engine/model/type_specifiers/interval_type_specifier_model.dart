import 'package:cql/src/internal.dart';

/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifierModel extends TypeSpecifierModel {
  IntervalTypeSpecifierModel({
    this.pointTypeSpecifier,
    this.pointType,
  });

  IntervalTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : pointTypeSpecifier = map['pointTypeSpecifier'] != null
            ? TypeSpecifierModel.fromJson(
                map['pointTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
        pointType = map['pointType'] as String?,
        super(type: 'IntervalTypeSpecifier');
  TypeSpecifierModel? pointTypeSpecifier;

  String? pointType;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'IntervalTypeSpecifier',
    };
    if (pointTypeSpecifier != null) {
      map['pointTypeSpecifier'] = pointTypeSpecifier!.toJson();
    }
    if (pointType != null) {
      map['pointType'] = pointType;
    }
    return map;
  }
}
