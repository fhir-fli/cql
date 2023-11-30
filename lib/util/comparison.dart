import 'package:fhir/r4.dart';

import '../cql.dart';

bool areNumbers(dynamic a, dynamic b) {
  return a is num && b is num;
}

bool areStrings(dynamic a, dynamic b) {
  return a is String && b is String;
}

bool areDateTimesOrQuantities(dynamic a, dynamic b) {
  return (a is DateTime && b is DateTime) ||
      (a is FhirDate && b is FhirDate) ||
      (a is Quantity && b is Quantity);
}

bool isUncertainty(dynamic x) {
  return x is Uncertainty;
}

bool? lessThan(dynamic a, dynamic b, [dynamic precision]) {
  if (areNumbers(a, b) || areStrings(a, b)) {
    return a < b;
  } else if (areDateTimesOrQuantities(a, b)) {
    return a.before(b, precision);
  } else if (isUncertainty(a)) {
    return a.lessThan(b);
  } else if (isUncertainty(b)) {
    return Uncertainty.from(a).lessThan(b);
  } else {
    return null;
  }
}

bool? lessThanOrEquals(dynamic a, dynamic b, [dynamic precision]) {
  if (areNumbers(a, b) || areStrings(a, b)) {
    return a <= b;
  } else if (areDateTimesOrQuantities(a, b)) {
    return a.sameOrBefore(b, precision);
  } else if (isUncertainty(a)) {
    return a.lessThanOrEquals(b);
  } else if (isUncertainty(b)) {
    return Uncertainty.from(a).lessThanOrEquals(b);
  } else {
    return null;
  }
}

bool? greaterThan(dynamic a, dynamic b, [dynamic precision]) {
  if (areNumbers(a, b) || areStrings(a, b)) {
    return a > b;
  } else if (areDateTimesOrQuantities(a, b)) {
    return a.after(b, precision);
  } else if (isUncertainty(a)) {
    return a.greaterThan(b);
  } else if (isUncertainty(b)) {
    return Uncertainty.from(a).greaterThan(b);
  } else {
    return null;
  }
}

bool? greaterThanOrEquals(dynamic a, dynamic b, [dynamic precision]) {
  if (areNumbers(a, b) || areStrings(a, b)) {
    return a >= b;
  } else if (areDateTimesOrQuantities(a, b)) {
    return a.sameOrAfter(b, precision);
  } else if (isUncertainty(a)) {
    return a.greaterThanOrEquals(b);
  } else if (isUncertainty(b)) {
    return Uncertainty.from(a).greaterThanOrEquals(b);
  } else {
    return null;
  }
}

bool? equivalent(dynamic a, dynamic b) {
  if (a == null && b == null) {
    return true;
  }
  if (a == null || b == null) {
    return false;
  }

  if (isCode(a)) {
    return codesAreEquivalent(a, b);
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
      return compareEveryItemInArrays(a, b, equivalent);
    case '_InternalLinkedHashMap<dynamic, dynamic>':
      return compareObjects(a, b, equivalent);
    case 'String':
      if (bClass == 'String') {
        a = a.replaceAll(RegExp(r'\s'), ' ');
        b = b.replaceAll(RegExp(r'\s'), ' ');
        return a.compareTo(b) == 0;
      }
      break;
  }

  return equals(a, b);
}

bool isCode(dynamic object) {
  return object.hasMatch != null && object.hasMatch is Function;
}

bool codesAreEquivalent(dynamic code1, dynamic code2) {
  return code1.hasMatch(code2);
}

List<String> getClassOfObjects(dynamic object1, dynamic object2) {
  return [object1, object2].map((obj) => obj.runtimeType.toString()).toList();
}

bool compareEveryItemInArrays(
    List<dynamic> array1, List<dynamic> array2, Function comparisonFunction) {
  return array1.length == array2.length &&
      List.generate(
        array1.length,
        (i) => comparisonFunction(array1[i], array2[i]),
      ).every((element) => element);
}

bool? compareObjects(dynamic a, dynamic b, Function comparisonFunction) {
  if (!classesEqual(a, b)) {
    return false;
  }
  return deepCompareKeysAndValues(a, b, comparisonFunction);
}

bool classesEqual(dynamic object1, dynamic object2) {
  return object2.runtimeType == object1.runtimeType &&
      object1.runtimeType == object2.runtimeType;
}

bool? deepCompareKeysAndValues(
    dynamic a, dynamic b, Function comparisonFunction) {
  var finalComparisonResult;
  var aKeys = getKeysFromObject(a).toList()..sort();
  var bKeys = getKeysFromObject(b).toList()..sort();
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

List<String> getKeysFromObject(dynamic object) {
  return object.keys.where((k) => !isFunction(object[k])).toList();
}

bool isFunction(dynamic input) {
  return input is Function;
  // Can add this back in, but need to included dart:mirrors
  // || {}.toString.call(input) == '[object Function]';
  // return reflect(input).type.reflectedType == Function;
}

bool? equals(a, b) {
  // Handle null cases first: spec says if either is null, return null
  if (a == null || b == null) {
    return null;
  }

  // If one is a Quantity, use the Quantity equals function
  if (a != null && a.isQuantity) {
    return a.equals(b);
  }

  // If one is a Ratio, use the ratio equals function
  if (a != null && a.isRatio) {
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

  // Return true if the objects are primitives and are strictly equal
  if ((a.runtimeType == b.runtimeType && a.runtimeType == String) ||
      a.runtimeType == int ||
      a.runtimeType == bool) {
    return a == b;
  }

  // Return false if they are instances of different classes
  var aClass = a.runtimeType.toString();
  var bClass = b.runtimeType.toString();
  if (aClass != bClass) {
    return false;
  }

  switch (aClass) {
    case 'DateTime':
      // Compare the ms since epoch
      return (a as DateTime).millisecondsSinceEpoch ==
          (b as DateTime).millisecondsSinceEpoch;
    case 'RegExp':
      // Compare the components of the regular expression
      return ['source', 'global', 'ignoreCase', 'multiline']
          .every((p) => (a as RegExp).pattern == (b as RegExp).pattern);
    case '_GrowableList':
      if (a.contains(null) ||
          a.contains(null) ||
          b.contains(null) ||
          b.contains(null)) {
        return null;
      }
      return compareEveryItemInArrays(a, b, equals);
    case '_InternalLinkedHashMap':
      return compareObjects(a, b, equals);
    case 'Function':
      return a.toString() == b.toString();
  }

  // If we made it this far, we can't handle it
  return false;
}
