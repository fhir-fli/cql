import 'package:cql/src/internal.dart';

/// Operator to return the 0-based index of the beginning of the given pattern
/// in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
/// Signature:
///
///PositionOf(pattern String, argument String) Integer
///Description:
///
///The PositionOf operator returns the 0-based index of the given pattern in
///the given string.
///
///If the pattern is not found, the result is -1.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the PositionOf operator:
///
///define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1
///define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1
///define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null
class PositionOf extends OperatorExpression {
  PositionOf({
    required this.pattern,
    required this.string,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PositionOf.fromJson(Map<String, dynamic> json) => PositionOf(
        pattern:
            CqlExpression.fromJson(json['pattern'] as Map<String, dynamic>),
        string: CqlExpression.fromJson(json['string'] as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlExpression pattern;
  final CqlExpression string;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'pattern': pattern.toJson(),
      'string': string.toJson(),
    };

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

    return data;
  }

  @override
  String get type => 'PositionOf';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];

  @override
  Future<CqlInteger?> execute(Map<String, dynamic> context) async {
    final patternValue = await pattern.execute(context);
    final stringValue = await string.execute(context);
    if (patternValue == null || stringValue == null) {
      return null;
    }
    if (patternValue is String && stringValue is String) {
      return CqlInteger(stringValue.indexOf(patternValue));
    }
    return null;
  }
}
