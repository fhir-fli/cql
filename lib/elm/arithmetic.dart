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
