import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// Operator to convert a Quantity to an equivalent Quantity with the given unit.
/// If the unit of the input quantity can be converted to the target unit,
/// the result is an equivalent Quantity with the target unit.
/// Otherwise, the result is null.
/// If either argument is null, the result is null.
class ConvertQuantity extends BinaryExpression {
  ConvertQuantity({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertQuantity.fromJson(Map<String, dynamic> json) =>
      ConvertQuantity(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
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
  String get type => 'ConvertQuantity';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    var left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left == null || right == null) return null;

    // A FHIR Quantity converts to a System Quantity at the resolver boundary.
    if (left is! ValidatedQuantity) {
      left = getModelResolver(context)?.toCqlSystemType(left);
    }

    String? targetUnit;
    if (right is CqlString) {
      targetUnit = right.valueString;
    } else if (right is String) {
      targetUnit = right;
    } else if (right is ValidatedQuantity) {
      targetUnit = right.unit;
    }
    if (targetUnit == null) return null;

    if (left is ValidatedQuantity) {
      try {
        final converted = left.convertTo(targetUnit);
        if (converted.isValid()) {
          return converted;
        }
        return null;
      } catch (_) {
        return null;
      }
    }
    return null;
  }
}
