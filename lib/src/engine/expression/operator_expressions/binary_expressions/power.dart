import 'dart:math';

import 'package:cql/src/internal.dart';

/// Operator to raise the first argument to the power given by the second
/// argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// ^(argument Integer, exponent Integer) Integer
/// ^(argument Long, exponent Long) Long
/// ^(argument Decimal, exponent Decimal) Decimal
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The power (^) operator raises the first argument to the power given by the
/// second argument.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will.
/// be implicitly converted to Decimal.
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the power operator:
///
/// define "IntegerPower": 2^3 // 8
/// define "IntegerPowerFun": Power(2, 3) // 8
/// define "LongPower": 2L^3L // 8L
/// define "DecimalPower": 2.5^2.0 // 6.25
/// define "NegateIsNull": 2.5^null
class Power extends BinaryExpression {
  Power({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Power.compareFirst({
    required CqlExpression first,
    required CqlExpression second,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) {
    final operand = <CqlExpression>[];
    switch (first) {
      case LiteralInteger _:
        {
          if (second is LiteralInteger) {
            operand
              ..add(first)
              ..add(second);
          } else if (second is LiteralLong) {
            operand
              ..add(ToLong(operand: first))
              ..add(second);
          } else if (second is LiteralDecimal) {
            operand
              ..add(ToDecimal(operand: first))
              ..add(second);
          }
        }
      case LiteralLong _:
        {
          if (second is LiteralInteger) {
            operand
              ..add(first)
              ..add(ToLong(operand: second));
          } else if (second is LiteralLong) {
            operand
              ..add(first)
              ..add(second);
          } else if (second is LiteralDecimal) {
            operand
              ..add(ToDecimal(operand: first))
              ..add(second);
          }
        }
      case LiteralDecimal _:
        {
          if (second is LiteralInteger) {
            operand
              ..add(first)
              ..add(ToDecimal(operand: second));
          } else if (second is LiteralLong) {
            operand
              ..add(first)
              ..add(ToDecimal(operand: second));
          } else if (second is LiteralDecimal) {
            operand
              ..add(first)
              ..add(second);
          }
        }
      default:
        // Non-literal operand — let execution handle type checking
        operand.add(first);
        operand.add(second);
    }

    if (operand.length != 2) {
      // Literal case didn't match the right operand type — use raw operands
      operand
        ..clear()
        ..add(first)
        ..add(second);
    }

    return Power(
      operand: operand,
      annotation: annotation,
      localId: localId,
      locator: locator,
      resultTypeName: resultTypeName,
      resultTypeSpecifier: resultTypeSpecifier,
    );
  }

  factory Power.fromJson(Map<String, dynamic> json) => Power(
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
  String get type => 'Power';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Power must have two operands');
    } else {
      final first = await operand.first.execute(context);
      final second = await operand.last.execute(context);
      if (first == null || second == null) {
        return null;
      } else if (first is CqlInteger && second is CqlInteger) {
        final result = pow(first.valueNum!, second.valueNum!);
        // Negative exponents produce non-integer results
        if (result is double && result != result.roundToDouble()) {
          return CqlDecimal(result);
        }
        return CqlInteger.tryParse(result) ?? CqlDecimal(result.toDouble());
      } else if (first is CqlLong && second is CqlLong) {
        if (second.valueBigInt! < BigInt.zero) {
          return CqlDecimal(
            pow(first.valueBigInt!.toDouble(), second.valueBigInt!.toDouble())
                .toDouble(),
          );
        }
        return CqlLong(first.valueBigInt!.pow(second.valueBigInt!.toInt()));
      } else if (first is CqlDecimal && second is CqlDecimal) {
        return CqlDecimal(pow(first.valueNum!, second.valueNum!));
      } else {
        throw ArgumentError(
          'Power must have two operands of type Integer, Long, or Decimal',
        );
      }
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return operand.isEmpty ? [] : operand.first.getReturnTypes(library);
  }
}
