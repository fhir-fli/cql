import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifier extends TypeSpecifier {
  @JsonKey(name: 'type')
  final String type = 'IntervalTypeSpecifier';

  TypeSpecifier? pointType;

  IntervalTypeSpecifier({this.pointType});

  factory IntervalTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      IntervalTypeSpecifier(
        pointType: json['pointType'] == null
            ? null
            : TypeSpecifier.fromJson(json['pointType'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{'type': 'IntervalTypeSpecifier'};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('pointType', pointType?.toJson());
    return val;
  }
}
