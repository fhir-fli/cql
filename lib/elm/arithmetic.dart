import 'dart:math';

import 'package:fhir/r4.dart';

import '../cql.dart';

class Add extends Expression {
  Add.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.isEmpty || args.any((x) => x.isEmpty)) {
      return [];
    }

    final sum = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
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
          return [
            Uncertainty(
                low: doAddition(x.low, y.low), high: doAddition(x.high, y.high))
          ];
        } else {
          return [Uncertainty(low: x.low + y.low, high: x.high + y.high)];
        }
      } else {
        return [x + y];
      }
    });

    if (sum.isNotEmpty && overflowsOrUnderflows(sum.first)) {
      return [];
    }
    return sum;
  }
}

class Subtract extends Expression {
  Subtract.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final difference = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is Quantity || x is FhirDateTime || x is FhirDate) {
        return doSubtraction(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity || x.low is DateTime || x.low is FhirDate) {
          return [
            Uncertainty(
                low: doSubtraction(x.low, y.high),
                high: doSubtraction(x.high, y.low))
          ];
        } else {
          return [Uncertainty(low: x.low - y.high, high: x.high - y.low)];
        }
      } else {
        return [x - y];
      }
    });

    if (difference.isNotEmpty && overflowsOrUnderflows(difference.first)) {
      return [];
    }
    return difference;
  }
}

class Multiply extends Expression {
  Multiply.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final product = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is ElmQuantity || y is ElmQuantity) {
        return doMultiplication(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity) {
          return [
            Uncertainty(
                low: doMultiplication(x.low, y.low),
                high: doMultiplication(x.high, y.high))
          ];
        } else {
          return [Uncertainty(low: x.low * y.low, high: x.high * y.high)];
        }
      } else {
        return [x * y];
      }
    });

    if (overflowsOrUnderflows(product)) {
      return [];
    }
    return product;
  }
}

class Divide extends Expression {
  Divide.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final quotient = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is ElmQuantity) {
        return doDivision(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity) {
          return [
            Uncertainty(
                low: doDivision(x.low, y.high), high: doDivision(x.high, y.low))
          ];
        } else {
          return [Uncertainty(low: x.low / y.high, high: x.high / y.low)];
        }
      } else {
        return x / y;
      }
    });

    // Note: Dart handles division by zero with Infinity, not overflow.
    if (overflowsOrUnderflows(quotient)) {
      return [];
    }
    return quotient;
  }
}

class TruncatedDivide extends Expression {
  TruncatedDivide.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final quotient = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
      return [x / y];
    });
    final truncatedQuotient = quotient.isEmpty
        ? []
        : [
            quotient.first >= 0 ? quotient.first.floor() : quotient.first.ceil()
          ];

    if (truncatedQuotient.isNotEmpty &&
        overflowsOrUnderflows(truncatedQuotient.first)) {
      return [];
    }
    return truncatedQuotient;
  }
}

class Modulo extends Expression {
  Modulo.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final modulo = args.reduce((a, b) {
      if (a.length != 1 || b.length != 1) {
        return [];
      }
      var x = a.first;
      var y = b.first;
      return [x % y];
    });

    return decimalOrNull(modulo);
  }
}

class Ceiling extends Expression {
  Ceiling.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg.length == 1 && arg.first is num) {
      return [(arg.first as num).ceil()];
    } else {
      return [];
    }
  }
}

class Floor extends Expression {
  Floor.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg.length == 1 && arg.first is num) {
      return [(arg.first as num).floor()];
    } else {
      return [];
    }
  }
}

class Truncate extends Expression {
  Truncate.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<int>> execute(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg.isNotEmpty &&
        arg.length == 1 &&
        arg.first.length == 1 &&
        arg.first.first is num) {
      return [
        (arg.first.first as num) >= 0
            ? (arg.first.first as num).floor()
            : (arg.first.first as num).ceil()
      ];
    } else {
      return [];
    }
  }
}

class Abs extends Expression {
  Abs.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg is ElmQuantity) {
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
  Negate.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);
    if (arg is ElmQuantity) {
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

  Round.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    precision = build(json['precision']);
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);

    final dec = precision != null ? await precision.execute(ctx) : 0;
    return (arg * pow(10.0, dec)).round() / pow(10.0, dec);
  }
}

class Ln extends Expression {
  Ln.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);

    final ln = arg > 0 ? arg.log() : null;

    return decimalOrNull(ln);
  }
}

class Exp extends Expression {
  Exp.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);

    final power = arg.exp();

    if (overflowsOrUnderflows(power)) {
      return [];
    }
    return power;
  }
}

class Log extends Expression {
  Log.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final log = args.reduce((x, y) => x.log() / y.log());

    return decimalOrNull(log);
  }
}

class Power extends Expression {
  Power.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final args = await execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final power = args.reduce((x, y) => x.pow(y));

    if (overflowsOrUnderflows(power)) {
      return [];
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

  MinValue.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    valueType = json['valueType'];
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
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

  MaxValue.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    valueType = json['valueType'];
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
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
  Successor.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);

    dynamic successor = null;
    try {
      successor = successor(
          arg); // Consider using the actual logic for successor from your `MathUtil` class
    } on OverFlowException {
      return [];
    }

    if (overflowsOrUnderflows(successor)) {
      return [];
    }
    return successor;
  }
}

class Predecessor extends Expression {
  Predecessor.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    final arg = await execArgs(ctx);

    dynamic predecessor = null;
    try {
      predecessor = predecessor(
          arg); // Consider using the actual logic for predecessor from your `MathUtil` class
    } on OverFlowException {
      return [];
    }

    if (overflowsOrUnderflows(predecessor)) {
      return [];
    }
    return predecessor;
  }
}
