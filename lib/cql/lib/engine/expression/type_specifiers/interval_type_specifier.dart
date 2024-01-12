import '../../../cql.dart';

/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifier extends TypeSpecifier {
  TypeSpecifier? pointType;

  IntervalTypeSpecifier({
    this.pointType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IntervalTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return IntervalTypeSpecifier(
      pointType: json['pointType'] == null
          ? null
          : json['pointType'] is Map<String, dynamic>
              ? TypeSpecifier.fromJson(json['pointType'])
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
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{'type': type};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('pointType', pointType?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'IntervalTypeSpecifier';
}
