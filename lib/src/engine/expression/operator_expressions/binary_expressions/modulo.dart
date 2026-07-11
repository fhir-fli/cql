import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// Operator to compute the remainder of the division of its arguments.
/// The Modulo operator is defined for the Integer and Decimal types.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is
/// 0, the result is null.
/// Signature:
///
/// mod(left Integer, right Integer) Integer
/// mod(left Long, right Long) Long
/// mod(left Decimal, right Decimal) Decimal
/// mod(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status. The Quantity overload for this operator is a new feature
/// being introduced in CQL 1.5, and has trial-use status.
///
/// Description:
///
/// The mod operator computes the remainder of the division of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will
/// be implicitly convert to Decimal.
///
/// When invoked with mixed Integer or Decimal, and Quantity arguments, the
/// Integer or Decimal argument will be implicitly converted to Quantity.
///
/// For modulo operations involving quantities, the resulting quantity will have
/// the appropriate unit.
///
/// If either argument is null, the result is null.
///
/// If the result of the modulo cannot be represented, or the right argument is
/// 0, the result is null.
///
/// The following examples illustrate the behavior of the mod operator:
///
/// define "IntegerModulo": 3 mod 2 // 1
/// define "LongModulo": 3L mod 2 // 1L
/// define "DecimalModulo": 2.5 mod 2 // 0.5
/// define "ModuloIsNull": 2.5 mod null
class Modulo extends BinaryExpression {
  Modulo({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Modulo.fromJson(Map<String, dynamic> json) => Modulo(
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (dynamic x) => CqlExpression.fromJson(x as Map<String, dynamic>),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
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
  String get type => 'Modulo';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    }

    // Modulo by zero returns null per the CQL spec
    if (right is CqlNumber && right.valueNum == 0) return null;
    if (right is CqlLong && right.valueBigInt == BigInt.zero) return null;

    try {
      switch (left) {
        case CqlInteger _:
          if (right is CqlInteger) {
            return CqlInteger.tryParse(left.valueNum! % right.valueNum!);
          } else if (right is CqlDecimal) {
            return CqlDecimal(
              double.parse(
                UcumDecimal.fromString(left.valueString)
                    .modulo(UcumDecimal.fromString(right.valueString))
                    .asUcumDecimal(),
              ),
            );
          } else if (right is CqlLong) {
            return CqlLong(
              BigInt.from(left.valueInt!) % (right.valueBigInt!),
            );
          }
        case CqlLong _:
          if (right is CqlInteger) {
            return CqlLong(
              left.valueBigInt! % BigInt.from(right.valueInt!),
            );
          } else if (right is CqlLong) {
            return CqlLong(left.valueBigInt! % right.valueBigInt!);
          } else if (right is CqlDecimal) {
            return CqlDecimal(
              double.parse(
                UcumDecimal.fromString(left.valueString)
                    .modulo(UcumDecimal.fromString(right.valueString))
                    .asUcumDecimal(),
              ),
            );
          }
        case CqlDecimal _:
          if (right is CqlInteger) {
            return CqlDecimal(
              double.parse(
                UcumDecimal.fromString(left.valueString)
                    .modulo(UcumDecimal.fromString(right.valueString))
                    .asUcumDecimal(),
              ),
            );
          } else if (right is CqlLong) {
            return CqlDecimal(
              double.parse(
                UcumDecimal.fromString(left.valueString)
                    .modulo(UcumDecimal.fromString(right.valueString))
                    .asUcumDecimal(),
              ),
            );
          } else if (right is CqlDecimal) {
            return CqlDecimal(
              double.parse(
                UcumDecimal.fromString(left.valueString)
                    .modulo(UcumDecimal.fromString(right.valueString))
                    .asUcumDecimal(),
              ),
            );
          } else if (right is ValidatedQuantity) {
            return ValidatedQuantity.fromString(left.valueString!) % right;
          }
        case ValidatedQuantity _:
          if (right is CqlDecimal && left.isValid()) {
            return left % ValidatedQuantity.fromString(right.valueString!);
          } else if (right is ValidatedQuantity) {
            return left % right;
          }
      }
    } catch (_) {
      return null;
    }

    return null;
  }
}
