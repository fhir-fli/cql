import 'dart:math';

import 'package:fhir/r4.dart';

import '../cql.dart';

class Add extends Expression {
  Add(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final sum = args.reduce((x, y) {
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is ElmQuantity ||
          x is FhirDateTime ||
          x is FhirDate ||
          (x is FhirTime && x.isValid)) {
        return doAddition(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity ||
            x.low is FhirDateTime ||
            x.low is FhirDate ||
            (x.low is FhirTime && x.low.isValid)) {
          return Uncertainty(
              low: doAddition(x.low, y.low), high: doAddition(x.high, y.high));
        } else {
          return Uncertainty(low: x.low + y.low, high: x.high + y.high);
        }
      } else {
        return x + y;
      }
    });

    if (overflowsOrUnderflows(sum)) {
      return null;
    }
    return sum;
  }
}

class Subtract extends Expression {
  Subtract(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final difference = args.reduce((x, y) {
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is Quantity || x is FhirDateTime || x is FhirDate) {
        return doSubtraction(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity || x.low is DateTime || x.low is FhirDate) {
          return Uncertainty(
              low: doSubtraction(x.low, y.high),
              high: doSubtraction(x.high, y.low));
        } else {
          return Uncertainty(low: x.low - y.high, high: x.high - y.low);
        }
      } else {
        return x - y;
      }
    });

    if (overflowsOrUnderflows(difference)) {
      return null;
    }
    return difference;
  }
}

class Multiply extends Expression {
  Multiply(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final product = args.reduce((x, y) {
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is ElmQuantity || y is ElmQuantity) {
        return doMultiplication(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity) {
          return Uncertainty(
              low: doMultiplication(x.low, y.low),
              high: doMultiplication(x.high, y.high));
        } else {
          return Uncertainty(low: x.low * y.low, high: x.high * y.high);
        }
      } else {
        return x * y;
      }
    });

    if (overflowsOrUnderflows(product)) {
      return null;
    }
    return product;
  }
}

class Divide extends Expression {
  Divide(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final quotient = args.reduce((x, y) {
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is ElmQuantity) {
        return doDivision(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity) {
          return Uncertainty(
              low: doDivision(x.low, y.high), high: doDivision(x.high, y.low));
        } else {
          return Uncertainty(low: x.low / y.high, high: x.high / y.low);
        }
      } else {
        return x / y;
      }
    });

    // Note: Dart handles division by zero with Infinity, not overflow.
    if (overflowsOrUnderflows(quotient)) {
      return null;
    }
    return quotient;
  }
}

class TruncatedDivide extends Expression {
  TruncatedDivide(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final quotient = args.reduce((x, y) => x / y);
    final truncatedQuotient =
        quotient >= 0 ? quotient.floor() : quotient.ceil();

    if (overflowsOrUnderflows(truncatedQuotient)) {
      return null;
    }
    return truncatedQuotient;
  }
}

class Modulo extends Expression {
  Modulo(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final modulo = args.reduce((x, y) => x % y);

    return decimalOrNull(modulo);
  }
}

class Ceiling extends Expression {
  Ceiling(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    return arg.ceil();
  }
}

class Floor extends Expression {
  Floor(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    return arg.floor();
  }
}

class Truncate extends Expression {
  Truncate(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    return arg >= 0 ? arg.floor() : arg.ceil();
  }
}

class Abs extends Expression {
  Abs(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    } else if (arg is ElmQuantity) {
      return ElmQuantity(
          value: arg.value?.value == null
              ? null
              : FhirDecimal(arg.value!.value!.abs()),
          unit: arg.unit);
    } else {
      return arg.abs();
    }
  }
}

class Negate extends Expression {
  Negate(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    } else if (arg is ElmQuantity) {
      return ElmQuantity(
          value: arg.value?.value == null
              ? null
              : FhirDecimal(arg.value!.value! * -1),
          unit: arg.unit);
    } else {
      return arg * -1;
    }
  }
}

class Round extends Expression {
  dynamic precision;

  Round(Map<String, dynamic> json) : super.fromJson(json) {
    precision = build(json['precision']);
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    final dec = precision != null ? await precision.execute(ctx) : 0;
    return (arg * pow(10.0, dec)).round() / pow(10.0, dec);
  }
}

class Ln extends Expression {
  Ln(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    final ln = arg > 0 ? arg.log() : null;

    return decimalOrNull(ln);
  }
}

class Exp extends Expression {
  Exp(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    final power = arg.exp();

    if (overflowsOrUnderflows(power)) {
      return null;
    }
    return power;
  }
}

class Log extends Expression {
  Log(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final log = args.reduce((x, y) => x.log() / y.log());

    return decimalOrNull(log);
  }
}

class Power extends Expression {
  Power(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = await execArgs(ctx);
    if (args == null || args.any((x) => x == null)) {
      return null;
    }

    final power = args.reduce((x, y) => x.pow(y));

    if (overflowsOrUnderflows(power)) {
      return null;
    }
    return power;
  }
}

class MinValue extends Expression {
  static Map<String, dynamic> MIN_VALUES = {
    '{urn:hl7-org:elm-types:r1}Integer': MIN_INT_VALUE,
    '{urn:hl7-org:elm-types:r1}Decimal': MIN_FLOAT_VALUE,
    '{urn:hl7-org:elm-types:r1}DateTime': MIN_DATETIME_VALUE,
    '{urn:hl7-org:elm-types:r1}Date': MIN_DATE_VALUE,
    '{urn:hl7-org:elm-types:r1}Time': MIN_TIME_VALUE
  };

  late final String valueType;

  MinValue(Map<String, dynamic> json) : super.fromJson(json) {
    valueType = json['valueType'];
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    if (MinValue.MIN_VALUES.containsKey(valueType)) {
      if (valueType == '{urn:hl7-org:elm-types:r1}DateTime') {
        final minDateTime = FhirDateTime(
            (MinValue.MIN_VALUES[valueType] as FhirDateTime).toString());
        // TODO(Dokotela): need to come back to this
        // minDateTime.timezoneOffset = ctx.getTimezoneOffset();
        return minDateTime;
      } else {
        return MinValue.MIN_VALUES[valueType];
      }
    } else {
      throw ArgumentError('Minimum not supported for $valueType');
    }
  }
}

class MaxValue extends Expression {
  static Map<String, dynamic> MAX_VALUES = {
    '{urn:hl7-org:elm-types:r1}Integer': MAX_INT_VALUE,
    '{urn:hl7-org:elm-types:r1}Decimal': MAX_FLOAT_VALUE,
    '{urn:hl7-org:elm-types:r1}DateTime': MAX_DATETIME_VALUE,
    '{urn:hl7-org:elm-types:r1}Date': MAX_DATE_VALUE,
    '{urn:hl7-org:elm-types:r1}Time': MAX_TIME_VALUE
  };

  late final String valueType;

  MaxValue(Map<String, dynamic> json) : super.fromJson(json) {
    valueType = json['valueType'];
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    if (MaxValue.MAX_VALUES.containsKey(valueType)) {
      if (valueType == '{urn:hl7-org:elm-types:r1}DateTime') {
        final maxDateTime = FhirDateTime(
            (MaxValue.MAX_VALUES[valueType] as FhirDateTime).toString());
        // TODO(Dokotela): need to come back to this
        // maxDateTime.timezoneOffset = ctx.getTimezoneOffset();
        return maxDateTime;
      } else {
        return MaxValue.MAX_VALUES[valueType];
      }
    } else {
      throw ArgumentError('Maximum not supported for $valueType');
    }
  }
}

class Successor extends Expression {
  Successor(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    dynamic successor = null;
    try {
      successor = successor(
          arg); // Consider using the actual logic for successor from your `MathUtil` class
    } on OverFlowException {
      return null;
    }

    if (overflowsOrUnderflows(successor)) {
      return null;
    }
    return successor;
  }
}

class Predecessor extends Expression {
  Predecessor(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg == null) {
      return null;
    }

    dynamic predecessor = null;
    try {
      predecessor = predecessor(
          arg); // Consider using the actual logic for predecessor from your `MathUtil` class
    } on OverFlowException {
      return null;
    }

    if (overflowsOrUnderflows(predecessor)) {
      return null;
    }
    return predecessor;
  }
}
