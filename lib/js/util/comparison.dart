import 'package:fhir/r4.dart';

import '../cql.dart';

bool compAreNumbers(dynamic a, dynamic b) {
  return a is num && b is num;
}

bool compAreStrings(dynamic a, dynamic b) {
  return a is String && b is String;
}

bool compAreDateTimesOrQuantities(dynamic a, dynamic b) {
  return (a is DateTime && b is DateTime) ||
      (a is FhirDate && b is FhirDate) ||
      (a is Quantity && b is Quantity);
}

bool compIsUncertainty(dynamic x) {
  return x is Uncertainty;
}

bool? compLessThan(dynamic a, dynamic b, [dynamic precision]) {
  if (compAreNumbers(a, b) || compAreStrings(a, b)) {
    return a < b;
  } else if (compAreDateTimesOrQuantities(a, b)) {
    return a.before(b, precision);
  } else if (compIsUncertainty(a)) {
    return a.lessThan(b);
  } else if (compIsUncertainty(b)) {
    return Uncertainty.from(a).lessThan(b);
  } else {
    return null;
  }
}

bool? compLessThanOrEquals(dynamic a, dynamic b, [dynamic precision]) {
  if (compAreNumbers(a, b) || compAreStrings(a, b)) {
    return a <= b;
  } else if (compAreDateTimesOrQuantities(a, b)) {
    return a.sameOrBefore(b, precision);
  } else if (compIsUncertainty(a)) {
    return a.lessThanOrEquals(b);
  } else if (compIsUncertainty(b)) {
    return Uncertainty.from(a).lessThanOrEquals(b);
  } else {
    return null;
  }
}

bool? compGreaterThan(dynamic a, dynamic b, [dynamic precision]) {
  if (compAreNumbers(a, b) || compAreStrings(a, b)) {
    return a > b;
  } else if (compAreDateTimesOrQuantities(a, b)) {
    return a.after(b, precision);
  } else if (compIsUncertainty(a)) {
    return a.greaterThan(b);
  } else if (compIsUncertainty(b)) {
    return Uncertainty.from(a).greaterThan(b);
  } else {
    return null;
  }
}

bool? compGreaterThanOrEquals(dynamic a, dynamic b, [dynamic precision]) {
  if (compAreNumbers(a, b) || compAreStrings(a, b)) {
    return a >= b;
  } else if (compAreDateTimesOrQuantities(a, b)) {
    return a.sameOrAfter(b, precision);
  } else if (compIsUncertainty(a)) {
    return a.greaterThanOrEquals(b);
  } else if (compIsUncertainty(b)) {
    return Uncertainty.from(a).greaterThanOrEquals(b);
  } else {
    return null;
  }
}

bool? compEquivalent(dynamic a, dynamic b) {
  if (a == null && b == null) {
    return true;
  }
  if (a == null || b == null) {
    return false;
  }

  if (compIsCode(a)) {
    return compCodesAreEquivalent(a, b);
  }

  if (a.isQuantity) {
    return a.equals(b);
  }

  if (a is Function) {
    return Function.apply(a, [b]);
  }

  var aClass = a.runtimeType.toString();
  var bClass = b.runtimeType.toString();

  switch (aClass) {
    case 'List<dynamic>':
      return compCompareEveryItemInArrays(a, b, compEquivalent);
    case '_InternalLinkedHashMap<dynamic, dynamic>':
      return compCompareObjects(a, b, compEquivalent);
    case 'String':
      if (bClass == 'String') {
        a = a.replaceAll(RegExp(r'\s'), ' ');
        b = b.replaceAll(RegExp(r'\s'), ' ');
        return a.compcompAreTo(b) == 0;
      }
      break;
  }

  return compEquals(a, b);
}

bool compIsCode(dynamic object) {
  return object.hasMatch != null && object.hasMatch is Function;
}

bool compCodesAreEquivalent(dynamic code1, dynamic code2) {
  return code1.hasMatch(code2);
}

List<String> compGetClassOfObjects(dynamic object1, dynamic object2) {
  return [object1, object2].map((obj) => obj.runtimeType.toString()).toList();
}

bool compCompareEveryItemInArrays(
    List<dynamic> array1, List<dynamic> array2, Function comparisonFunction) {
  return array1.length == array2.length &&
      List.generate(
        array1.length,
        (i) => comparisonFunction(array1[i], array2[i]),
      ).every((element) => element);
}

bool? compCompareObjects(dynamic a, dynamic b, Function comparisonFunction) {
  if (!compClassesEqual(a, b)) {
    return false;
  }
  return compDeepCompareKeysAndValues(a, b, comparisonFunction);
}

bool compClassesEqual(dynamic object1, dynamic object2) {
  return object2.runtimeType == object1.runtimeType &&
      object1.runtimeType == object2.runtimeType;
}

bool? compDeepCompareKeysAndValues(
    dynamic a, dynamic b, Function comparisonFunction) {
  var finalComparisonResult;
  var aKeys = compGetKeysFromObject(a).toList()..sort();
  var bKeys = compGetKeysFromObject(b).toList()..sort();
  var shouldReturnNull = false;

  if (aKeys.length == bKeys.length &&
      List.generate(
        aKeys.length,
        (index) => aKeys[index] == bKeys[index],
      ).every((element) => element)) {
    finalComparisonResult = aKeys.every((key) {
      if (a[key] == null && b[key] == null) {
        return true;
      }
      var comparisonResult = comparisonFunction(a[key], b[key]);
      if (comparisonResult == null) {
        shouldReturnNull = true;
      }
      return comparisonResult;
    });
  } else {
    finalComparisonResult = false;
  }

  if (shouldReturnNull) {
    return null;
  }
  return finalComparisonResult;
}

List<String> compGetKeysFromObject(dynamic object) {
  return object.keys.where((k) => !compIsFunction(object[k])).toList();
}

bool compIsFunction(dynamic input) {
  return input is Function;
  // Can add this back in, but need to included dart:mirrors
  // || {}.toString.call(input) == '[object Function]';
  // return reflect(input).type.reflectedType == Function;
}

bool? compEquals(a, b) {
  // Handle null cases first: spec says if either is null, return null
  if (a == null || b == null) {
    return null;
  }

  // If one is a Quantity, use the Quantity equals function
  if (a != null && a is CqlQuantity) {
    return a.equals(b);
  }

  // If one is a Ratio, use the ratio equals function
  if (a != null && a is CqlRatio) {
    return a.equals(b);
  }

  // If one is an Uncertainty, convert the other to an Uncertainty
  if (a is Uncertainty) {
    b = Uncertainty.from(b);
  } else if (b is Uncertainty) {
    a = Uncertainty.from(a);
  }

  // Use overloaded 'equals' function if it is available
  if (a is Function && b is Function) {
    return a == b;
  }

  // Return true if the objects compAre primitives and compAre strictly equal
  if ((a.runtimeType == b.runtimeType && a.runtimeType == String) ||
      a.runtimeType == int ||
      a.runtimeType == bool) {
    return a == b;
  }

  // Return false if they compAre instances of different classes
  var aClass = a.runtimeType.toString();
  var bClass = b.runtimeType.toString();
  if (aClass != bClass) {
    return false;
  }

  switch (aClass) {
    case 'DateTime':
      // CompcompAre the ms since epoch
      return (a as DateTime).millisecondsSinceEpoch ==
          (b as DateTime).millisecondsSinceEpoch;
    case 'RegExp':
      // CompcompAre the components of the regular expression
      return ['source', 'global', 'ignoreCase', 'multiline']
          .every((p) => (a as RegExp).pattern == (b as RegExp).pattern);
    case '_GrowableList':
      if (a.contains(null) ||
          a.contains(null) ||
          b.contains(null) ||
          b.contains(null)) {
        return null;
      }
      return compCompareEveryItemInArrays(a, b, compEquals);
    case '_InternalLinkedHashMap':
      return compCompareObjects(a, b, compEquals);
    case 'Function':
      return a.toString() == b.toString();
  }

  // If we made it this far, we can't handle it
  return false;
}
