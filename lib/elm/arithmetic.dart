import 'dart:math';

import 'package:fhir/r4.dart';

import '../cql.dart';

class Add extends Expression {
  Add.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
    if (args.isEmpty) {
      return [];
    }

    final sum = args.reduce((x, y) {
      if (x is Uncertainty && !(y is Uncertainty)) {
        y = Uncertainty(low: y, high: y);
      } else if (y is Uncertainty && !(x is Uncertainty)) {
        x = Uncertainty(low: x, high: x);
      }

      if (x is CqlQuantity ||
          x is FhirDateTime ||
          x is FhirDate ||
          (x is FhirTime && x.isValid)) {
        return doAddition(x, y);
      } else if (x is Uncertainty && y is Uncertainty) {
        if (x.low is Quantity ||
            x.low is FhirDateTime ||
            x.low is FhirDate ||
            (x.low is FhirTime && (x.low as FhirTime).isValid)) {
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
      return [];
    }
    return sum;
  }
}

class Subtract extends Expression {
  Subtract.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
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
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
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

      if (x is CqlQuantity || y is CqlQuantity) {
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

    if (product.length == 1 && overflowsOrUnderflows(product.first)) {
      return [];
    }
    return product;
  }
}

class Divide extends Expression {
  Divide.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
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

      if (x is CqlQuantity) {
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
    if (quotient.length == 1 && overflowsOrUnderflows(quotient.first)) {
      return [];
    }
    return quotient;
  }
}

class TruncatedDivide extends Expression {
  TruncatedDivide.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
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
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
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
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
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
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
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
  List<int> execute(Context ctx) {
    final List<dynamic> arg = execArgs(ctx);
    if (arg.length == 1 && arg.first is num) {
      return [
        (arg.first as num) >= 0
            ? (arg.first as num).floor()
            : (arg.first as num).ceil()
      ];
    } else {
      return [];
    }
  }
}

class Abs extends Expression {
  Abs.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
    if (arg.length == 1 && arg.first.length == 1) {
      if (arg.first is CqlQuantity) {
        return [
          CqlQuantity(
              value: arg.first.value?.value == null
                  ? null
                  : FhirDecimal((arg.first.value!.value! as num).abs()),
              unit: arg.first.unit)
        ];
      } else {
        return [(arg.first as num).abs()];
      }
    } else {
      return [];
    }
  }
}

class Negate extends Expression {
  Negate.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
    if (arg.length == 1 && arg.first.length == 1) {
      if (arg.first is CqlQuantity) {
        return [
          CqlQuantity(
              value: arg.first.value?.value == null
                  ? null
                  : FhirDecimal(arg.first.value!.value! * -1),
              unit: arg.first.unit)
        ];
      } else {
        return [(arg.first as num) * -1];
      }
    } else {
      return [];
    }
  }
}

class Round extends Expression {
  List<Expression> precision;

  Round.fromJson(Map<String, dynamic> json)
      : precision = build(json['precision']),
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);

    final dec = precision.length == 1 ? precision.first.execute(ctx) : [0];
    if (arg.length != 1 || arg.first.length != 1 || arg.first is! num) {
      return [];
    } else {
      return (arg.first *
                  pow(10.0,
                      dec.length == 1 && dec.first is num ? dec.first : 0))
              .round() /
          pow(10.0, dec.length == 1 && dec.first is num ? dec.first : 0);
    }
  }
}

class Ln extends Expression {
  Ln.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
    if (arg.length != 1 || arg.first.length != 1 || arg.first is! num) {
      return [];
    } else {
      final ln = arg.first > 0 ? arg.first.log() : null;

      return decimalOrNull(ln);
    }
  }
}

class Exp extends Expression {
  Exp.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);
    if (arg.length != 1 || arg.first.length != 1 || arg.first is! num) {
      return [];
    } else {
      final power = [exp((arg.first as num))];

      if (overflowsOrUnderflows(power)) {
        return [];
      }
      return [power];
    }
  }
}

class Log extends Expression {
  Log.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    List<List<dynamic>> args = execArgs(ctx);
    if (args.any((x) => x.length != 1 && x.first is! num)) {
      return [];
    }
    final List<num> singleArgs =
        args.expand((element) => element.first).toList() as List<num>;

    final _log = singleArgs.reduce((x, y) => log(x) / log(y));

    return decimalOrNull(_log);
  }
}

class Power extends Expression {
  Power.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final args = execArgs(ctx);
    if (args.any((x) => x.isEmpty)) {
      return [];
    }

    final List<num> singleArgs =
        args.expand((element) => element.first).toList() as List<num>;

    final power = singleArgs.reduce((x, y) => pow(x, y));

    if (overflowsOrUnderflows(power)) {
      return [];
    }
    return [power];
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
  List<dynamic> execute(Context ctx) {
    if (MinValue.MIN_VALUES.containsKey(valueType)) {
      if (valueType == '{urn:hl7-org:elm-types:r1}DateTime') {
        final minDateTime = FhirDateTime(
            (MinValue.MIN_VALUES[valueType] as FhirDateTime).toString());
        // TODO(Dokotela): need to come back to this
        // minDateTime.timezoneOffset = ctx.getTimezoneOffset();
        return [minDateTime];
      } else {
        return [MinValue.MIN_VALUES[valueType]];
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
  List<dynamic> execute(Context ctx) {
    if (MaxValue.MAX_VALUES.containsKey(valueType)) {
      if (valueType == '{urn:hl7-org:elm-types:r1}DateTime') {
        final maxDateTime = FhirDateTime(
            (MaxValue.MAX_VALUES[valueType] as FhirDateTime).toString());
        // TODO(Dokotela): need to come back to this
        // maxDateTime.timezoneOffset = ctx.getTimezoneOffset();
        return [maxDateTime];
      } else {
        return [MaxValue.MAX_VALUES[valueType]];
      }
    } else {
      throw ArgumentError('Maximum not supported for $valueType');
    }
  }
}

class Successor extends Expression {
  Successor.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);

    try {
      final _successor = successor(arg);
      if (overflowsOrUnderflows(successor)) {
        return [];
      }
      return _successor is List ? _successor : [_successor];
    } on OverFlowException {
      return [];
    }
  }
}

class Predecessor extends Expression {
  Predecessor.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final arg = execArgs(ctx);

    try {
      if (arg.length != 1 || arg.first.length != 1) {
        return [];
      }
      final _predecessor = predecessor(arg);
      if (overflowsOrUnderflows(predecessor)) {
        return [];
      }
      return _predecessor is List ? _predecessor : [_predecessor];
    } on OverFlowException {
      return [];
    }
  }
}
