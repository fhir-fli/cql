import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../../../cql.dart';

/// Operator to perform numeric addition of its arguments.
/// When adding quantities, the dimensions of each quantity must be the same,
/// but not necessarily the unit.
/// The Add operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be added to a Date, DateTime, or
/// Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the addition cannot be represented (i.e., arithmetic
/// overflow), the result is null.
///
/// Signature:
/// +(left Integer, right Integer) Integer
/// +(left Long, right Long) Long
/// +(left Decimal, right Decimal) Decimal
/// +(left Quantity, right Quantity) Quantity
///
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The add (+) operator performs numeric addition of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal, the Long argument will be
/// implicitly converted to Decimal.
///
/// When invoked with mixed Decimal and Quantity arguments, the Decimal
/// argument will be implicitly converted to Quantity.
///
/// When adding quantities, the dimensions of each quantity must be the same,
/// but not necessarily the unit. For example, units of 'cm' and 'm' can be
/// added, but units of 'cm2' and 'cm' cannot. The unit of the result will be
/// the most granular unit of either input. Attempting to operate on quantities
/// with invalid units will result in a null. When a quantity has no units
/// specified, it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the addition cannot be represented (i.e. arithmetic
/// overflow), the result is null.
/// The following examples illustrate the behavior of the add operator:
/// define "IntegerAdd": 2 + 2 // 4
/// define "IntegerAddIsNull": 2 + null
/// define "LongAdd": 25L + 5 // 30L
/// define "DecimalAdd": 2.5 + 5 // 7.5
/// define "QuantityAdd": -5.5 'mg' + 2 'mg' // -3.5 'mg'
/// define "QuantityAddIsNull": -5.5 'cm' + 2 'cm2'

class Add extends BinaryExpression {
  Add({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Add.fromJson(Map<String, dynamic> json) => Add(
        operand: List<CqlExpression>.from(
          json['operand'].map((x) => CqlExpression.fromJson(x)),
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
    final Map<String, dynamic> json = {
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
  String get type => 'Add';

  @override
  dynamic execute() {
    if (operand.length != 2) {
      return null;
    } else {
      final lhs = operand[0].execute();
      final rhs = operand[1].execute();
      // TODO(Dokotela) Some of the BigInt/FhirInteger64 + int/FhirInteger may be incorrect
      switch (lhs.runtimeType) {
        case FhirInteger:
          return rhs is FhirInteger
              ? (lhs as FhirInteger).isValid && rhs.isValid
                  ? FhirInteger(lhs.value! + rhs.value!)
                  : null
              : rhs is FhirDecimal
                  ? (lhs as FhirInteger).isValid && rhs.isValid
                      ? FhirDecimal(lhs.value! + rhs.value!)
                      : null
                  : rhs is FhirInteger64
                      ? (lhs as FhirInteger).isValid && rhs.isValid
                          ? FhirInteger64(
                              (lhs.value as int) + rhs.value!.toInt())
                          : null
                      : null;
        case FhirInteger64:
          return rhs is FhirInteger64
              ? (lhs as FhirInteger64).isValid && rhs.isValid
                  ? FhirInteger64(lhs.value! + rhs.value!)
                  : null
              : rhs is FhirDecimal
                  ? (lhs as FhirInteger64).isValid && rhs.isValid
                      ? FhirDecimal(lhs.value!.toDouble() + rhs.value!)
                      : null
                  : rhs is FhirInteger
                      ? (lhs as FhirInteger64).isValid && rhs.isValid
                          ? FhirInteger64(
                              lhs.value!.toInt() + rhs.value!.toInt())
                          : null
                      : null;
        case FhirDecimal:
          return rhs is FhirDecimal
              ? (lhs as FhirDecimal).isValid && rhs.isValid
                  ? FhirDecimal(lhs.value! + rhs.value!)
                  : null
              : rhs is FhirInteger
                  ? (lhs as FhirDecimal).isValid && rhs.isValid
                      ? FhirDecimal(lhs.value! + rhs.value!.toDouble())
                      : null
                  : rhs is FhirInteger64
                      ? (lhs as FhirDecimal).isValid && rhs.isValid
                          ? FhirDecimal(lhs.value! + rhs.value!.toDouble())
                          : null
                      : null;
        case ValidatedQuantity:
          return rhs is ValidatedQuantity
              ? (lhs as ValidatedQuantity).isValid() && rhs.isValid()
                  ? lhs + rhs
                  : rhs is FhirDecimal && rhs.isValid()
                      ? lhs + rhs
                      : null
              : null;
        default:
          return null;
      }
    }
  }
}