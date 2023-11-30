import 'dart:math';

import 'package:fhir/r4.dart';

import '../cql.dart';

abstract class AggregateExpression extends Expression {
  AggregateExpression({required this.source, this.signature, this.path});

  AggregateExpression.fromJson(Map<String, dynamic> json)
      : source = build(json['source']);

  dynamic source;
  List<TypeSpecifier>? signature;
  String? path;
}

class Count extends AggregateExpression {
  Count(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    if (source is Expression) {
      var items = await (source as Expression).exec(ctx);
      if (typeIsArray(items)) {
        return removeNulls(items).length;
      }
    }
    return 0;
  }
}

class Sum extends AggregateExpression {
  Sum(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    var items = await source.exec(ctx);
    if (!typeIsArray(items)) {
      return null;
    }

    try {
      items = processQuantities(items);
    } catch (e) {
      return null;
    }

    if (items.length == 0) {
      return null;
    }

    if (hasOnlyQuantities(items)) {
      var values = getValuesFromQuantities(items);
      var sum = values.reduce((x, y) => x + y);
      return ElmQuantity(value: FhirDecimal(sum), unit: items[0].unit);
    } else {
      return items.reduce((x, y) => x + y);
    }
  }
}

class Min extends AggregateExpression {
  Min(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final list = await this.source.exec(ctx);
    if (list == null) {
      return null;
    }
    final listWithoutNulls = removeNulls(list);

    // Check for incompatible units and return null. We don't want to convert
    // the units for Min/Max, so we throw away the converted array if it succeeds
    try {
      processQuantities(list);
    } catch (e) {
      return null;
    }

    if (listWithoutNulls.length == 0) {
      return null;
    }
    // We assume the list is an array of all the same type.
    var minimum = listWithoutNulls[0];
    for (final element in listWithoutNulls) {
      if (lessThan(element, minimum) ?? false) {
        minimum = element;
      }
    }
    return minimum;
  }
}

class Max extends AggregateExpression {
  Max(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final items = await this.source.exec(ctx);
    if (items == null) {
      return null;
    }
    final listWithoutNulls = removeNulls(items);

    // Check for incompatible units and return null. We don't want to convert
    // the units for Min/Max, so we throw away the converted array if it succeeds
    try {
      processQuantities(items);
    } catch (e) {
      return null;
    }

    if (listWithoutNulls.length == 0) {
      return null;
    }
    // We assume the list is an array of all the same type.
    var maximum = listWithoutNulls[0];
    for (final element in listWithoutNulls) {
      if (greaterThan(element, maximum) ?? false) {
        maximum = element;
      }
    }
    return maximum;
  }
}

class Avg extends AggregateExpression {
  Avg(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final items = await this.source.exec(ctx);
    if (items == null || items.isEmpty) {
      return null;
    }

    // Assuming `items` is a list of numeric values
    final listWithoutNulls = items.whereType<num>().toList();

    if (listWithoutNulls.isEmpty) {
      return null;
    }

    // Calculate the average
    final sum = listWithoutNulls.reduce((a, b) => a + b);
    final average = sum / listWithoutNulls.length;
    return average;
  }
}

class Median extends AggregateExpression {
  Median(Map<String, dynamic> json) : super.fromJson(json);

  Future<dynamic> exec(Context ctx) async {
    var items = await this.source.exec(ctx);
    if (!typeIsArray(items)) {
      return null;
    }
    if (items.isEmpty) {
      return null;
    }

    try {
      items = processQuantities(items);
    } catch (e) {
      return null;
    }

    if (!hasOnlyQuantities(items)) {
      return medianOfNumbers(items);
    }

    final values = getValuesFromQuantities(items);
    final median = medianOfNumbers(values);
    return Quantity(value: FhirDecimal(median), unit: items[0].unit);
  }
}

class Mode extends AggregateExpression {
  Mode(Map<String, dynamic> json) : super.fromJson(json);

  Future<dynamic> exec(Context ctx) async {
    final items = await this.source.exec(ctx);
    if (!typeIsArray(items)) {
      return null;
    }
    if (items.isEmpty) {
      return null;
    }

    List<dynamic>? filtered;
    try {
      filtered = processQuantities(items);
    } catch (e) {
      return null;
    }

    if (hasOnlyQuantities(filtered)) {
      final values = getValuesFromQuantities(filtered as List<ElmQuantity>);
      var mode = this.mode(values);
      if (mode.length == 1) {
        mode = mode[0];
      }
      return Quantity(value: FhirDecimal(mode), unit: items[0].unit);
    } else {
      final mode = this.mode(filtered);
      if (mode.length == 1) {
        return mode[0];
      } else {
        return mode;
      }
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
  StdDev(Map<String, dynamic> json) : super.fromJson(json);
  StatisticType type = StatisticType.standardDeviation;

  Future<dynamic> exec(Context ctx) async {
    var items = await this.source.exec(ctx);
    if (!typeIsArray(items)) {
      return null;
    }

    try {
      items = processQuantities(items);
    } catch (e) {
      return null;
    }

    if (items.isEmpty) {
      return null;
    }

    if (hasOnlyQuantities(items)) {
      final values = getValuesFromQuantities(items);
      final stdDev = standardDeviation(values);
      return Quantity(value: FhirDecimal(stdDev), unit: items[0].unit);
    } else {
      return standardDeviation(items);
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
  Product(Map<String, dynamic> json) : super.fromJson(json);

  Future<dynamic> exec(Context ctx) async {
    var items = await this.source.exec(ctx);
    if (!typeIsArray(items)) {
      return null;
    }

    try {
      items = processQuantities(items);
    } catch (e) {
      return null;
    }
    if (items.isEmpty) {
      return null;
    }

    if (hasOnlyQuantities(items)) {
      final values = getValuesFromQuantities(items);
      final product = values.reduce((x, y) => x * y);
      // Units are not multiplied for the geometric product
      return Quantity(value: FhirDecimal(product), unit: items[0].unit);
    } else {
      return items.reduce((x, y) => x * y);
    }
  }
}

class GeometricMean extends AggregateExpression {
  GeometricMean(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    var items = await source.exec(ctx);
    if (items is! List) {
      return null;
    }

    try {
      items = processQuantities(items);
    } catch (e) {
      return null;
    }

    if (items.isEmpty) {
      return null;
    }

    if (hasOnlyQuantities(items)) {
      final values = getValuesFromQuantities(items as List<ElmQuantity>);
      final product = values.fold(1.0, (x, y) => x * y);
      final geoMean = pow(product, 1.0 / items.length);
      return Quantity(value: FhirDecimal(geoMean), unit: items[0].unit);
    } else {
      final product = items.fold(1.0, (x, y) => x * y);
      return pow(product, 1.0 / items.length);
    }
  }
}

class PopulationStdDev extends StdDev {
  PopulationStdDev(Map<String, dynamic> json) : super(json);
  final StatisticType type = StatisticType.populationDeviation;
}

class Variance extends StdDev {
  Variance(Map<String, dynamic> json) : super(json);
  final StatisticType type = StatisticType.standardVariance;
}

class PopulationVariance extends StdDev {
  PopulationVariance(Map<String, dynamic> json) : super(json);
  final StatisticType type = StatisticType.populationVariance;
}

class AllTrue extends AggregateExpression {
  AllTrue(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final items = await source.execute(ctx);
    return allTrue(removeNulls(items));
  }
}

class AnyTrue extends AggregateExpression {
  AnyTrue(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final items = await source.execute(ctx);
    return anyTrue(items);
  }
}

List<dynamic> processQuantities(List<dynamic> values) {
  final items = removeNulls(values);
  if (hasOnlyQuantities(items)) {
    return convertAllUnits(items.cast<ElmQuantity>());
  } else if (hasSomeQuantities(items)) {
    throw Exception(
        'Cannot perform aggregate operations on mixed values of Quantities and non Quantities');
  } else {
    return items.cast<num>();
  }
}

List<num> getValuesFromQuantities(List<ElmQuantity> quantities) {
  quantities.removeWhere((element) => element.value?.value == null);
  return quantities.map((ElmQuantity) => ElmQuantity.value!.value!).toList();
}

bool hasOnlyQuantities(List<dynamic> arr) {
  return arr.every((x) => x is ElmQuantity);
}

bool hasSomeQuantities(List<dynamic> arr) {
  return arr.any((x) => x is ElmQuantity);
}

List<ElmQuantity> convertAllUnits(List<ElmQuantity> arr) {
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

num medianOfNumbers(List<num> numbers) {
  final items = numericalSort(numbers, 'asc');
  if (items.length % 2 == 1) {
    // Odd number of items
    return items[(items.length - 1) ~/ 2];
  } else {
    // Even number of items
    return (items[items.length ~/ 2 - 1] + items[items.length ~/ 2]) / 2;
  }
}

List<num> numericalSort(List<num> things, String direction) {
  things.sort((a, b) {
    if (direction == 'asc' || direction == 'ascending') {
      return a.compareTo(b);
    } else {
      return b.compareTo(a);
    }
  });
  return things;
}
