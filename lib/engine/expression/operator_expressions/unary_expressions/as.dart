import '../../../../cql.dart';

/// As operator allowing casting the result of an expression to a given target type.
class As extends UnaryExpression {
  /// Target type for casting.
  QName? asType;

  /// Type specifier for casting.
  TypeSpecifierExpression? asTypeSpecifier;

  /// Determines if strict type checking should be enforced.
  bool strict = false;

  As({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory As.fromJson(Map<String, dynamic> json) => As(
        operand: CqlExpression.fromJson(json['operand']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      )
        ..asTypeSpecifier = json['asTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(json['asTypeSpecifier'])
        ..asType =
            json['asType'] == null ? null : QName.fromFull(json['asType'])
        ..strict = json['strict'] ?? false;

  //     if (asType != null) 'asType': asType!.toJson(),
  //     'type': type,
  //     'operand': operand.toJson(),
  //     if (asTypeSpecifier != null) 'asTypeSpecifier': asTypeSpecifier!.toJson(),
  //   };
  // }

  @override
  String get type => 'As';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };
    if (operand is! NullExpression && operand is! Property) {
      data['strict'] = strict;
    }
    if (asType != null) {
      data['asType'] = asType!.toJson();
    }

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
    }

    data['strict'] = strict;

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
    }

    return data;
  }
}
