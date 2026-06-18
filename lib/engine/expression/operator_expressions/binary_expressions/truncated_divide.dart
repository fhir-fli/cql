import 'package:ucum/ucum.dart';

import 'package:cql/cql.dart';

/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument
/// is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
/// Signature:
///
/// div(left Integer, right Integer) Integer
/// div(left Decimal, right Decimal) Decimal
/// div(left Long, right Long) Long
/// div(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has trial-use status. The Quantity overload for this operator is a new feature being introduced in CQL 1.5, and has trial-use status.
///
/// Description:
///
/// The div operator performs truncated division of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will be implicitly converted to Decimal
///
/// When invoked with mixed Integer or Decimal and Quantity arguments, the Integer or Decimal argument will be implicitly converted to Quantity.
///
/// For division operations involving quantities, the resulting quantity will have the appropriate unit.
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
///
/// The following examples illustrate the behavior of the div operator:
///
/// define "IntegerTruncatedDivide": 4 div 2 // 2
/// define "LongTruncatedDivide": 4L div 2L // 2L
/// define "DecimalTruncatedDivide": 4.14 div 2.06 // 2
/// define "TruncatedDivideIsNull": 3 div null
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TruncatedDivide.fromJson(Map<String, dynamic> json) =>
      TruncatedDivide(
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'TruncatedDivide';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    }

    // Division by zero returns null per the CQL spec
    if (right is CqlNumber && right.valueNum == 0) return null;
    if (right is CqlLong && right.valueBigInt == BigInt.zero) return null;

    try {
      switch (left) {
        case CqlInteger _:
          {
            if (right is CqlInteger) {
              return CqlInteger(left.valueNum! ~/ right.valueNum!);
            } else if (right is CqlLong) {
              return CqlLong(
                  BigInt.from(left.valueNum!) ~/ right.valueBigInt!);
            } else if (right is CqlDecimal) {
              return CqlDecimal(left.valueNum! ~/ right.valueNum!);
            }
          }
          break;
        case CqlLong _:
          {
            if (right is CqlInteger) {
              return CqlLong(
                  left.valueBigInt! ~/ BigInt.from(right.valueNum!));
            } else if (right is CqlLong) {
              return CqlLong(left.valueBigInt! ~/ right.valueBigInt!);
            } else if (right is CqlDecimal) {
              return CqlDecimal(
                  left.valueBigInt!.toDouble() ~/ right.valueNum!);
            }
          }
          break;
        case CqlDecimal _:
          {
            if (right is CqlInteger) {
              return CqlDecimal(left.valueNum! ~/ right.valueNum!);
            } else if (right is CqlLong) {
              return CqlDecimal(
                  left.valueNum! ~/ right.valueBigInt!.toDouble());
            } else if (right is CqlDecimal) {
              return CqlDecimal(left.valueNum! ~/ right.valueNum!);
            } else if (right is ValidatedQuantity && right.isValid()) {
              return ValidatedQuantity.fromNumber(left.valueNum!) ~/ right;
            }
          }
          break;
        case ValidatedQuantity _:
          {
            if (right is CqlDecimal && left.isValid()) {
              return left ~/ ValidatedQuantity.fromNumber(right.valueNum!);
            } else if (right is ValidatedQuantity &&
                left.isValid() &&
                right.isValid()) {
              final leftNum = left.value.asDouble;
              final rightNum = right.value.asDouble;
              if (rightNum == 0) {
                return null;
              }
              final truncated = (leftNum / rightNum).truncateToDouble();
              return ValidatedQuantity(
                  value: UcumDecimal.fromDouble(truncated), unit: left.unit);
            }
          }
          break;
      }
    } catch (_) {
      return null;
    }

    return null;
  }
}
