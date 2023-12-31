import 'dart:math';

import 'package:fhir/r4.dart';

import '../cql.dart';

abstract class AggregateExpression extends Expression {
  AggregateExpression.fromJson(Map<String, dynamic> json)
      : source = build(json['source']),
        super.fromJson(json);

  List<Expression> source;
}

class Count extends AggregateExpression {
  Count.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<int> execute(Context ctx) {
    if (source.length == 1) {
      var items = source.first.execute(ctx);
      if (typeIsArray(items)) {
        return [removeNulls(items).length];
      }
    }
    return [0];
  }
}

class Sum extends AggregateExpression {
  Sum.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<CqlQuantity> execute(Context ctx) {
    if (source.length != 1) {
      return <CqlQuantity>[];
    }
    var items = source.first.execute(ctx);
    if (!typeIsArray(items)) {
      return <CqlQuantity>[];
    }

    try {
      items = _processQuantities(items);
    } catch (e) {
      return <CqlQuantity>[];
    }

    if (items.length == 0) {
      return <CqlQuantity>[];
    }

    if (_hasOnlyQuantities(items)) {
      var values = _getValuesFromQuantities(items as List<CqlQuantity>);
      var sum = values.reduce((x, y) => x + y);
      return <CqlQuantity>[
        CqlQuantity(value: FhirDecimal(sum), unit: items[0].unit)
      ];
    } else {
      return <CqlQuantity>[items.reduce((x, y) => x + y)];
    }
  }
}

class Min extends AggregateExpression {
  Min.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final items = source.first.execute(ctx);
    if (items.isEmpty) {
      return [];
    }
    final listWithoutNulls = removeNulls(items);

    // Check for incompatible units and return null. We don't want to convert
    // the units for Min/Max, so we throw away the converted array if it succeeds
    try {
      _processQuantities(items);
    } catch (e) {
      return [];
    }

    if (listWithoutNulls.length == 0) {
      return [];
    }
    // We assume the list is an array of all the same type.
    var minimum = listWithoutNulls[0];
    for (final element in listWithoutNulls) {
      if (compLessThan(element, minimum) ?? false) {
        minimum = element;
      }
    }
    return minimum;
  }
}

class Max extends AggregateExpression {
  Max.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final items = source.first.execute(ctx);

    if (items.isEmpty) {
      return [];
    }
    final listWithoutNulls = removeNulls(items);

    // Check for incompatible units and return null. We don't want to convert
    // the units for Min/Max, so we throw away the converted array if it succeeds
    try {
      _processQuantities(items);
    } catch (e) {
      return [];
    }

    if (listWithoutNulls.length == 0) {
      return [];
    }
    // We assume the list is an array of all the same type.
    var maximum = listWithoutNulls[0];
    for (final element in listWithoutNulls) {
      if (compGreaterThan(element, maximum) ?? false) {
        maximum = element;
      }
    }
    return maximum;
  }
}

class Avg extends AggregateExpression {
  Avg.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final items = source.first.execute(ctx);
    if (items.isEmpty) {
      return [];
    }

    // Assuming `items` is a list of numeric values
    final listWithoutNulls = items.whereType<num>().toList();

    if (listWithoutNulls.isEmpty) {
      return [];
    }

    // Calculate the average
    final sum = listWithoutNulls.reduce((a, b) => a + b);
    final average = sum / listWithoutNulls.length;
    return [average];
  }
}

class Median extends AggregateExpression {
  Median.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    var items = source.first.execute(ctx);
    if (!typeIsArray(items)) {
      return [];
    }
    if (items.isEmpty) {
      return [];
    }

    try {
      items = _processQuantities(items);
    } catch (e) {
      return [];
    }

    if (!_hasOnlyQuantities(items)) {
      return [_medianOfNumbers(items as List<num>)];
    }

    final values = _getValuesFromQuantities(items as List<CqlQuantity>);
    final median = _medianOfNumbers(values);
    return [Quantity(value: FhirDecimal(median), unit: items[0].unit)];
  }
}

class Mode extends AggregateExpression {
  Mode.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final List<dynamic> items = source.first.execute(ctx);
    if (!typeIsArray(items) || items.isEmpty) {
      return [];
    }

    try {
      List<dynamic>? filtered = _processQuantities(items);
      if (_hasOnlyQuantities(filtered)) {
        final values = _getValuesFromQuantities(filtered as List<CqlQuantity>);
        var mode = this.mode(values);
        if (mode.length == 1) {
          mode = mode[0];
        }
        return [
          Quantity(
              value: FhirDecimal(mode), unit: (items[0] as CqlQuantity).unit)
        ];
      } else {
        final mode = this.mode(filtered);
        if (mode.length == 1) {
          return mode[0];
        } else {
          return mode;
        }
      }
    } catch (e) {
      return [];
    }
  }

  List<dynamic> mode(List<dynamic> arr) {
    var max = 0;
    final counts = <dynamic, int>{};
    var results = <dynamic>[];
    for (final elem in arr) {
      final cnt =
          (counts[elem] = (counts[elem] != null ? counts[elem]! : 0) + 1);
      if (cnt == max && !results.contains(elem)) {
        results.add(elem);
      } else if (cnt > max) {
        results = [elem];
        max = cnt;
      }
    }
    return results;
  }
}

enum StatisticType {
  standardDeviation,
  populationDeviation,
  standardVariance,
  populationVariance
}

class StdDev extends AggregateExpression {
  StdDev.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  StatisticType type = StatisticType.standardDeviation;

  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    var items = source.first.execute(ctx);
    if (!typeIsArray(items)) {
      return [];
    }

    try {
      items = _processQuantities(items);
    } catch (e) {
      return [];
    }

    if (items.isEmpty) {
      return [];
    }

    if (_hasOnlyQuantities(items)) {
      final values = _getValuesFromQuantities(items as List<CqlQuantity>);
      final stdDev = standardDeviation(values);
      return [Quantity(value: FhirDecimal(stdDev), unit: items[0].unit)];
    } else {
      return [standardDeviation(items as List<num>)];
    }
  }

  double standardDeviation(List<num> list) {
    final Map<StatisticType, double> val = stats(list);
    return val[type]!;
  }

  Map<StatisticType, double> stats(List<num> list) {
    final sum = list.reduce((x, y) => x + y);
    final mean = sum / list.length;
    var sumOfSquares = 0;

    for (final sq in list) {
      sumOfSquares += ((sq - mean) * (sq - mean)).toInt();
    }

    final stdVar = (1 / (list.length - 1)) * sumOfSquares;
    final popVar = (1 / list.length) * sumOfSquares;
    final stdDev = sqrt(stdVar);
    final popDev = sqrt(popVar);
    return {
      StatisticType.standardVariance: stdVar,
      StatisticType.populationVariance: popVar,
      StatisticType.standardDeviation: stdDev,
      StatisticType.populationDeviation: popDev
    };
  }
}

class Product extends AggregateExpression {
  Product.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    var items = source.first.execute(ctx);
    if (!typeIsArray(items)) {
      return [];
    }

    try {
      items = _processQuantities(items);
    } catch (e) {
      return [];
    }
    if (items.isEmpty) {
      return [];
    }

    if (_hasOnlyQuantities(items)) {
      final values = _getValuesFromQuantities(items as List<CqlQuantity>);
      final product = values.reduce((x, y) => x * y);
      // Units are not multiplied for the geometric product
      return [Quantity(value: FhirDecimal(product), unit: items[0].unit)];
    } else {
      return items.reduce((x, y) => x * y);
    }
  }
}

class GeometricMean extends AggregateExpression {
  GeometricMean.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    var items = source.first.execute(ctx);
    try {
      items = _processQuantities(items);
    } catch (e) {
      return [];
    }

    if (items.isEmpty) {
      return [];
    }

    if (_hasOnlyQuantities(items)) {
      final values = _getValuesFromQuantities(items as List<CqlQuantity>);
      final product = values.fold(1.0, (x, y) => x * y);
      final geoMean = pow(product, 1.0 / items.length);
      return [Quantity(value: FhirDecimal(geoMean), unit: items[0].unit)];
    } else {
      final product = items.fold(1.0, (x, y) => x * y);
      return [pow(product, 1.0 / items.length)];
    }
  }
}

class PopulationStdDev extends StdDev {
  PopulationStdDev.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  final StatisticType type = StatisticType.populationDeviation;
}

class Variance extends StdDev {
  Variance.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  final StatisticType type = StatisticType.standardVariance;
}

class PopulationVariance extends StdDev {
  PopulationVariance.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  final StatisticType type = StatisticType.populationVariance;
}

class AllTrue extends AggregateExpression {
  AllTrue.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final items = source.first.execute(ctx);
    return [allTrue(removeNulls(items))];
  }
}

class AnyTrue extends AggregateExpression {
  AnyTrue.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (source.length != 1) {
      return [];
    }
    final items = source.first.execute(ctx);
    return [anyTrue(items)];
  }
}

List<dynamic> _processQuantities(List<dynamic> values) {
  final items = removeNulls(values);
  if (_hasOnlyQuantities(items)) {
    return _convertAllUnits(items.cast<CqlQuantity>());
  } else if (_hasSomeQuantities(items)) {
    throw Exception(
        'Cannot perform aggregate operations on mixed values of Quantities and non Quantities');
  } else {
    return items.cast<num>();
  }
}

List<num> _getValuesFromQuantities(List<CqlQuantity> quantities) {
  quantities.removeWhere((element) => element.value?.value == null);
  return quantities.map((CqlQuantity) => CqlQuantity.value!.value!).toList();
}

bool _hasOnlyQuantities(List<dynamic> arr) {
  return arr.every((x) => x is CqlQuantity);
}

bool _hasSomeQuantities(List<dynamic> arr) {
  return arr.any((x) => x is CqlQuantity);
}

List<CqlQuantity> _convertAllUnits(List<CqlQuantity> arr) {
  // Convert all quantities in the array to match the unit of the first item
  return arr
      .map((Quantity q) => q.value?.value == null ||
              q.unit == null ||
              arr[0].unit == null
          ? q
          : q.copyWith(
              value: FhirDecimal(convertUnit(q.value!, q.unit!, arr[0].unit!) ??
                  q.value?.value),
              unit: arr[0].unit ?? q.unit))
      .toList();
}

num _medianOfNumbers(List<num> numbers) {
  final items = _numericalSort(numbers, 'asc');
  if (items.length % 2 == 1) {
    // Odd number of items
    return items[(items.length - 1) ~/ 2];
  } else {
    // Even number of items
    return (items[items.length ~/ 2 - 1] + items[items.length ~/ 2]) / 2;
  }
}

List<num> _numericalSort(List<num> things, String direction) {
  things.sort((a, b) {
    if (direction == 'asc' || direction == 'ascending') {
      return a.compareTo(b);
    } else {
      return b.compareTo(a);
    }
  });
  return things;
}
