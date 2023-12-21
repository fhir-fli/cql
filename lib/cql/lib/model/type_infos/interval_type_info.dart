import '../../cql.dart';

/// Represents an interval type, extending [TypeInfo].
///
/// The [IntervalTypeInfo] type represents an interval type, extending [TypeInfo],
/// incorporating a pointTypeSpecifier element and pointType attribute.
class IntervalTypeInfo extends TypeInfo {
  /// Point type specifier element.
  TypeSpecifier? pointTypeSpecifier;

  /// Point type as a string.
  String? pointType;

  final String type = 'IntervalTypeInfo';

  IntervalTypeInfo({
    this.pointTypeSpecifier,
    this.pointType,
  });

  factory IntervalTypeInfo.fromJson(Map<String, dynamic> json) {
    return IntervalTypeInfo(
      pointTypeSpecifier: json['pointTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['pointTypeSpecifier'])
          : null,
      pointType: json['pointType'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (pointTypeSpecifier != null) {
      data['pointTypeSpecifier'] = pointTypeSpecifier!.toJson();
    }
    if (pointType != null) {
      data['pointType'] = pointType;
    }
    return data;
  }
}
