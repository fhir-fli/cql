import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../../../cql.dart';

/// Operator to perform numeric subtraction of its arguments.
/// When subtracting quantities, the dimensions of each quantity must be the
/// same, but not necessarily the unit.
/// The Subtract operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be subtracted from a Date,
/// DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
///
/// Signature:
/// -(left Integer, right Integer) Integer
/// -(left Long, right Long) Long
/// -(left Decimal, right Decimal) Decimal
/// -(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The subtract (-) operator performs numeric subtraction of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will
/// be implicitly converted to Decimal.
///
/// When subtracting quantities, the dimensions of each quantity must be the
/// same, but not necessarily the unit. For example, units of 'cm' and 'm' can
/// be subtracted, but units of 'cm2' and 'cm' cannot. The unit of the result
/// will be the most granular unit of either input. Attempting to operate on
/// quantities with invalid units will result in a null. When a quantity has no
/// units specified, it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the subtract operator:
///
/// define "IntegerSubtract": 2 - 1 // 1
/// define "LongSubtract": 2L - 1L // 1L
/// define "DecimalSubtract": 3.14 - 3.12 // 0.02
/// define "QuantitySubtract": 3.14 'mg' - 3.12 'mg' // 0.02 'mg'
/// define "QuantitySubtractError": 3.14 'cm' - 3.12 'cm2'
/// define "SubtractIsNull": 3 - null
class Subtract extends BinaryExpression {
  Subtract({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Subtract.fromJson(Map<String, dynamic> json) => Subtract(
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
  String get type => 'Subtract';

  @override
  dynamic execute() {
    if (operand.length != 2) {
      return null;
    } else {
      final left = operand[0].execute();
      final right = operand[1].execute();
      // TODO(Dokotela) Some of the BigInt/FhirInteger64 - int/FhirInteger may be incorrect
      switch (left) {
        case FhirInteger _:
          return right is FhirInteger
              ? (left).isValid && right.isValid
                  ? FhirInteger(left.value! - right.value!)
                  : null
              : right is FhirDecimal
                  ? (left).isValid && right.isValid
                      ? FhirDecimal(double.parse(
                          UcumDecimal.fromInt(left.value!)
                              .subtract(UcumDecimal.fromDouble(right.value!))
                              .asUcumDecimal()))
                      : null
                  : right is FhirInteger64
                      ? (left).isValid && right.isValid
                          ? FhirInteger64(
                              (left.value as int) - right.value!.toInt())
                          : null
                      : null;
        case FhirInteger64 _:
          return right is FhirInteger64
              ? (left).isValid && right.isValid
                  ? FhirInteger64(left.value! - right.value!)
                  : null
              : right is FhirDecimal
                  ? (left).isValid && right.isValid
                      ? FhirDecimal(double.parse(
                          UcumDecimal.fromBigInt(left.value!)
                              .subtract(UcumDecimal.fromDouble(right.value!))
                              .asUcumDecimal()))
                      : null
                  : right is FhirInteger
                      ? (left).isValid && right.isValid
                          ? FhirInteger64(
                              left.value!.toInt() - right.value!.toInt())
                          : null
                      : null;
        case FhirDecimal _:
          return right is FhirDecimal
              ? (left).isValid && right.isValid
                  ? FhirDecimal(double.parse(UcumDecimal.fromDouble(left.value!)
                      .subtract(UcumDecimal.fromDouble(right.value!))
                      .asUcumDecimal()))
                  : null
              : right is FhirInteger
                  ? (left).isValid && right.isValid
                      ? FhirDecimal(double.parse(
                          UcumDecimal.fromDouble(left.value!)
                              .subtract(UcumDecimal.fromInt(right.value!))
                              .asUcumDecimal()))
                      : null
                  : right is FhirInteger64
                      ? (left).isValid && right.isValid
                          ? FhirDecimal(double.parse(UcumDecimal.fromDouble(
                                  left.value!)
                              .subtract(UcumDecimal.fromBigInt(right.value!))
                              .asUcumDecimal()))
                          : null
                      : null;
        case ValidatedQuantity _:
          return right is ValidatedQuantity
              ? (left).isValid() && right.isValid()
                  ? left - right
                  : right is FhirDecimal && right.isValid()
                      ? left - right
                      : null
              : null;
        default:
          return null;
      }
    }
  }
}
