import 'package:cql/cql.dart';

/// Operator to convert the value of its argument to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is null.
/// If the argument is null, the result is null.
class ToInteger extends UnaryExpression {
  ToInteger({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToInteger.fromJson(Map<String, dynamic> json) => ToInteger(
        operand: CqlExpression.fromJson(json['operand']),
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
  String get type => 'ToInteger';
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
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
  List<String> getReturnTypes(CqlLibrary library) => const ['Integer'];

  @override
  Future<CqlInteger?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    switch (value) {
      case CqlInteger _:
        return value;
      case int _:
        return CqlInteger(value);
      case CqlBoolean _:
        return CqlInteger(value.valueBoolean == true ? 1 : 0);
      case bool _:
        return CqlInteger(value ? 1 : 0);
      case CqlLong _:
        final bigVal = value.valueBigInt;
        if (bigVal == null) return null;
        return CqlInteger(bigVal.toInt());
      case CqlDecimal _:
        final numVal = value.valueNum;
        if (numVal == null) return null;
        return CqlInteger(numVal.truncate());
      case CqlString _:
        return _parseStringToInteger(value.valueString ?? '');
      case String _:
        return _parseStringToInteger(value);
      default:
        return null;
    }
  }

  /// Parse string to integer with 32-bit signed range validation.
  /// CQL Integer is 32-bit signed: -2147483648 to 2147483647.
  /// If the string contains a decimal point, drop the fractional part.
  static CqlInteger? _parseStringToInteger(String s) {
    // Must match format: (+|-)?#0 or (+|-)?#0.0# (digits with optional decimal)
    if (!RegExp(r'^[+-]?\d+(\.\d+)?$').hasMatch(s)) return null;
    // If it has a decimal point, parse as double and truncate
    if (s.contains('.')) {
      final dbl = double.tryParse(s);
      if (dbl == null || dbl.isInfinite || dbl.isNaN) return null;
      final truncated = dbl.truncate();
      if (truncated > 2147483647 || truncated < -2147483648) return null;
      return CqlInteger(truncated);
    }
    final bigVal = BigInt.tryParse(s);
    if (bigVal == null) return null;
    if (bigVal > BigInt.from(2147483647) || bigVal < BigInt.from(-2147483648)) {
      return null;
    }
    return CqlInteger(bigVal.toInt());
  }
}
