import 'package:cql/src/internal.dart';

/// Operator to check if the Quantity can be converted to an equivalent Quantity with the given Unit.
/// Returns true if the conversion is valid according to the UCUM conversion.
/// If either argument is null, the result is null.
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CanConvertQuantity.fromJson(Map<String, dynamic> json) =>
      CanConvertQuantity(
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (x) => CqlExpression.fromJson(x as Map<String, dynamic>),
          ),
        ),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'CanConvertQuantity';

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left == null || right == null) return null;
    try {
      final result = await ConvertQuantity(operand: operand).execute(context);
      return CqlBoolean(result != null);
    } catch (_) {
      return CqlBoolean(false);
    }
  }
}
