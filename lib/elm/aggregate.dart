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
    var items = await source.execute(ctx);
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

List<num> processQuantities(List<dynamic> values) {
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
  return quantities.map((ElmQuantity) => ElmQuantity.value?.value).toList();
}

bool hasOnlyQuantities(List<dynamic> arr) {
  return arr.every((x) => x is ElmQuantity);
}

bool hasSomeQuantities(List<dynamic> arr) {
  return arr.any((x) => x is ElmQuantity);
}

List<ElmQuantity> convertAllUnits(List<ElmQuantity> arr) {
  // Convert all quantities in the array to match the unit of the first item
  return arr.map((q) => q.convertUnit(arr[0].unit)).toList();
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
