import 'dart:math';

import 'package:cql/src/internal.dart';

/// Operator to return the nearest integer to its argument.
/// The semantics of round are defined as a traditional round, meaning that a
/// decimal value of 0.5 or higher will round to 1.
/// If the argument is null, the result is null.
/// Precision determines the decimal place at which the rounding will occur.
/// If precision is not specified or null, 0 is assumed.
/// Signature:
///
/// Round(argument Decimal) Decimal
/// Round(argument Decimal, precision Integer) Decimal
/// Description:
///
/// The Round operator returns the nearest whole number to its argument. The
/// semantics of round are defined as a traditional round, meaning that a
/// decimal value of 0.5 or higher will round to 1.
///
/// When invoked with an Integer argument, the argument will be implicitly
/// converted to Decimal.
///
/// If the argument is null, the result is null.
///
/// Precision determines the decimal place at which the rounding will occur.
/// If precision is not specified or null, 0 is assumed.
///
/// The following examples illustrate the behavior of the Round operator:
///
/// define "IntegerRound": Round(1) // 1
/// define "DecimalRound": Round(3.14159, 3) // 3.142
/// define "RoundIsNull": Round(null)
class Round extends OperatorExpression {
  Round({
    required this.operand,
    this.precision,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Round.fromJson(Map<String, dynamic> json) => Round(
        operand:
            CqlExpression.fromJson(json['operand'] as Map<String, dynamic>),
        precision: json['precision'] != null
            ? CqlExpression.fromJson(json['precision'] as Map<String, dynamic>)
            : null,
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
  final CqlExpression operand;
  final CqlExpression? precision;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

    if (precision != null) {
      data['precision'] = precision!.toJson();
    }

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
  String get type => 'Round';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Decimal'];

  @override
  Future<CqlDecimal?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) {
      return null;
    }

    double? numValue;
    if (value is CqlDecimal) {
      numValue = value.valueNum?.toDouble();
    } else if (value is CqlInteger) {
      numValue = value.valueNum?.toDouble();
    }

    if (numValue == null) return null;

    final precisionValue = await precision?.execute(context);
    var precisionInt = 0;
    if (precisionValue is CqlInteger && precisionValue.valueInt != null) {
      precisionInt = precisionValue.valueInt!;
    }

    final mod = pow(10.0, precisionInt).toDouble();
    final scaled = numValue * mod;
    // CQL rounding: round half up (toward positive infinity)
    final rounded = scaled.floor() + (scaled - scaled.floor() >= 0.5 ? 1 : 0);
    return CqlDecimal(rounded.toDouble() / mod);
  }
}
