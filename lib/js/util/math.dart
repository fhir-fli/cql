import 'package:fhir/r4.dart';

import '../cql.dart';

final dtMinDateTimeValue = MIN_DATETIME_VALUE;
final dtMaxDateTimeValue = MAX_DATETIME_VALUE;
final dtMinDateValue = MIN_DATE_VALUE;
final dtMaxDateValue = MAX_DATE_VALUE;
final dtMinTimeValue = MIN_TIME_VALUE;
final dtMaxTimeValue = MAX_TIME_VALUE;

const MAX_INT_VALUE = 2147483647;
const MIN_INT_VALUE = -2147483648;
const MAX_FLOAT_VALUE = 99999999999999999999.99999999;
const MIN_FLOAT_VALUE = -99999999999999999999.99999999;
const MIN_FLOAT_PRECISION_VALUE = 0.00000001; // equivalent to Math.pow(10, -8)

bool overflowsOrUnderflows(dynamic value) {
  if (value == null || (value is List && value.length != 1)) {
    return false;
  }
  if (value is List) {
    value = value.first;
  }
  if (value is CqlQuantity) {
    if (!isValidDecimal(value.value?.value)) {
      return true;
    }
  } else if (value is FhirDateTime) {
    if (value > dtMaxDateTimeValue) {
      return true;
    }
    if (value < dtMinDateTimeValue) {
      return true;
    }
  } else if (value is FhirDate) {
    if (value > dtMaxDateValue) {
      return true;
    }
    if (value < dtMinDateValue) {
      return true;
    }
  } else if (value is FhirTime) {
    if (value > dtMaxTimeValue) {
      return true;
    }
    if (value < dtMinTimeValue) {
      return true;
    }
  } else if (value is int) {
    if (!isValidInteger(value)) {
      return true;
    }
  } else if (value is Uncertainty) {
    return overflowsOrUnderflows(value.low) ||
        overflowsOrUnderflows(value.high);
  } else {
    if (!isValidDecimal(value)) {
      return true;
    }
  }
  return false;
}

bool isValidInteger(int integer) {
  if (integer.isNaN) {
    return false;
  }
  if (integer > MAX_INT_VALUE) {
    return false;
  }
  if (integer < MIN_INT_VALUE) {
    return false;
  }
  return true;
}

bool isValidDecimal(dynamic decimal) {
  if (decimal == null || decimal is! num) {
    return false;
  } else if (decimal.isNaN) {
    return false;
  } else if (decimal > MAX_FLOAT_VALUE) {
    return false;
  } else if (decimal < MIN_FLOAT_VALUE) {
    return false;
  } else {
    return true;
  }
}

double limitDecimalPrecision(double decimal) {
  String decimalString = decimal.toString();

  if (decimalString.contains('e')) {
    return decimal;
  }

  List<String> splitDecimalString = decimalString.split('.');
  String? decimalPoints =
      splitDecimalString.length > 1 ? splitDecimalString[1] : null;

  if (decimalPoints != null && decimalPoints.length > 8) {
    decimalString =
        '${splitDecimalString[0]}.${splitDecimalString[1].substring(0, 8)}';
  }

  return double.parse(decimalString);
}

class OverFlowException implements Exception {}

dynamic successor(dynamic val) {
  if (val is num) {
    if (val is int) {
      if (val >= MAX_INT_VALUE) {
        throw OverFlowException();
      } else {
        return val + 1;
      }
    } else {
      if (val >= MAX_FLOAT_VALUE) {
        throw OverFlowException();
      } else {
        return val + MIN_FLOAT_PRECISION_VALUE;
      }
    }
  } else if (val is CqlDateTime) {
    if (val.isTime()) {
      // TODO(Dokotela) this isn't right
      if (val.dateTime == MAX_TIME_VALUE.value) {
        throw OverFlowException();
      } else {
        return val.successor();
      }
    } else if (val.isDateTime) {
      if (val == MAX_DATETIME_VALUE) {
        throw OverFlowException();
      } else {
        return val.successor();
      }
    } else if (val.isDate) {
      if (val == MAX_DATE_VALUE) {
        throw OverFlowException();
      } else {
        return val.successor();
      }
    }
  } else if (val is Uncertainty) {
    final high = (() {
      try {
        return successor(val.high);
      } catch (e) {
        return val.high;
      }
    })();
    return Uncertainty(low: successor(val.low), high: high);
  } else if (val is Quantity) {
    final succ = val.copyWith(value: successor(val.value));
    return succ;
  } else if (val == null) {
    return null;
  }
}

dynamic predecessor(dynamic val) {
  if (val is num) {
    if (val is int) {
      if (val <= MIN_INT_VALUE) {
        throw OverFlowException();
      } else {
        return val - 1;
      }
    } else {
      if (val <= MIN_FLOAT_VALUE) {
        throw OverFlowException();
      } else {
        return val - MIN_FLOAT_PRECISION_VALUE;
      }
    }
  } else if (val is FhirTime) {
    if (val == MIN_TIME_VALUE) {
      throw OverFlowException();
    } else {
      return predecessor(val);
    }
  } else if (val is FhirDateTime) {
    if (val == MIN_DATETIME_VALUE) {
      throw OverFlowException();
    } else {
      return predecessor(val);
    }
  } else if (val is FhirDate) {
    if (val == MIN_DATE_VALUE) {
      throw OverFlowException();
    } else {
      return predecessor(val);
    }
  } else if (val is Uncertainty) {
    final low = (() {
      try {
        return predecessor(val.low);
      } catch (e) {
        return val.low;
      }
    })();
    return Uncertainty(low: low, high: predecessor(val.high));
  } else if (val is Quantity) {
    final pred = val.copyWith(value: predecessor(val.value));
    return pred;
  } else if (val == null) {
    return null;
  }
}

dynamic maxValueForInstance(dynamic val) {
  if (val is num) {
    if (val is int) {
      return MAX_INT_VALUE;
    } else {
      return MAX_FLOAT_VALUE;
    }
  } else if (val is FhirTime) {
    return FhirTime(MAX_TIME_VALUE.value);
  } else if (val is FhirDateTime) {
    return FhirDateTime(MAX_DATETIME_VALUE.value);
  } else if (val is FhirDate) {
    return FhirDate(MAX_DATE_VALUE.value);
  } else if (val is Quantity) {
    final val2 = val.copyWith(value: maxValueForInstance(val.value));
    return val2;
  } else {
    return null;
  }
}

dynamic maxValueForType(String type, [Quantity? quantityInstance]) {
  switch (type) {
    case '{urn:hl7-org:elm-types:r1}Integer':
      return MAX_INT_VALUE;
    case '{urn:hl7-org:elm-types:r1}Decimal':
      return MAX_FLOAT_VALUE;
    case '{urn:hl7-org:elm-types:r1}DateTime':
      return FhirDateTime(MAX_DATETIME_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Date':
      return FhirDate(MAX_DATE_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Time':
      return FhirTime(MAX_TIME_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Quantity':
      if (quantityInstance == null) {
        return null;
      }
      final maxQty = quantityInstance.copyWith(
          value: maxValueForInstance(quantityInstance.value));
      return maxQty;
    default:
      return null;
  }
}

dynamic minValueForInstance(dynamic val) {
  if (val is num) {
    if (val is int) {
      return MIN_INT_VALUE;
    } else {
      return MIN_FLOAT_VALUE;
    }
  } else if (val is FhirTime) {
    return FhirTime(MIN_TIME_VALUE.value);
  } else if (val is FhirDateTime) {
    return FhirDateTime(MIN_DATETIME_VALUE.value);
  } else if (val is FhirDate) {
    return FhirDate(MIN_DATE_VALUE.value);
  } else if (val is Quantity) {
    final val2 = val.copyWith(value: minValueForInstance(val.value));
    return val2;
  } else {
    return null;
  }
}

dynamic minValueForType(String type, [Quantity? quantityInstance]) {
  switch (type) {
    case '{urn:hl7-org:elm-types:r1}Integer':
      return MIN_INT_VALUE;
    case '{urn:hl7-org:elm-types:r1}Decimal':
      return MIN_FLOAT_VALUE;
    case '{urn:hl7-org:elm-types:r1}DateTime':
      return FhirDateTime(MIN_DATETIME_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Date':
      return FhirDate(MIN_DATE_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Time':
      return FhirTime(MIN_TIME_VALUE.value);
    case '{urn:hl7-org:elm-types:r1}Quantity':
      if (quantityInstance == null) {
        return null;
      }
      final minQty = quantityInstance.copyWith(
          value: minValueForInstance(quantityInstance.value));
      return minQty;
    default:
      return null;
  }
}

typedef MathFn = num Function(num);

num decimalAdjust(MathFn type, dynamic value, dynamic exp) {
  if (exp == null || exp == 0) {
    return type(value);
  }
  value = num.parse(value.toString());
  exp = num.parse(exp.toString());
  if (value.isNaN || !(exp is num && exp % 1 == 0)) {
    return double.nan;
  }
  value = (type(value +
          'e' +
          (value.toString().contains('e') ? '+' : '') +
          (-exp).toString()))
      .toDouble();
  value = (type(value +
          'e' +
          (value.toString().contains('e') ? '+' : '') +
          exp.toString()))
      .toDouble();
  return value;
}

List<num> decimalOrNull(dynamic value) =>
    (value is List && value.length == 1 && isValidDecimal(value.first))
        ? value as List<num>
        : isValidDecimal(value)
            ? [value]
            : <num>[];
