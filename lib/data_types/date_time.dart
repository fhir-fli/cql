// Require MIN/MAX here because math.js requires this file, and when we make this file require
// math.js before it exports DateTime and Date, it errors due to the circular dependency...
// const { MAX_DATETIME_VALUE, MIN_DATETIME_VALUE } = require('../util/math');
import 'package:fhir/r4.dart';

final MIN_DATETIME_VALUE = FhirDateTime('0001-01-01T00:00:00.000');
final MAX_DATETIME_VALUE = FhirDateTime('9999-12-31T23:59:59.999');
final MIN_DATE_VALUE = FhirDate('0001-01-01');
final MAX_DATE_VALUE = FhirDate('9999-12-31');
final MIN_TIME_VALUE = FhirTime('00:00:00.000');
final MAX_TIME_VALUE = FhirTime('23:59:59.999');

const DATETIME_PRECISION_VALUE_MAP = {
  DateTimeUnit.year: 4,
  DateTimeUnit.month: 6,
  DateTimeUnit.day: 8,
  DateTimeUnit.hour: 10,
  DateTimeUnit.minute: 12,
  DateTimeUnit.second: 14,
  DateTimeUnit.millisecond: 17,
};

const TIME_PRECISION_VALUE_MAP = {
  DateTimeUnit.hour: 2,
  DateTimeUnit.minute: 4,
  DateTimeUnit.second: 6,
  DateTimeUnit.millisecond: 9,
};

bool compareWithDefaultResult(dynamic a, dynamic b, dynamic defaultResult) {
  if (!(a is Date || a is DateTime) || !(b is Date || b is DateTime)) {
    return false;
  }

  if (a.timezoneOffset != b.timezoneOffset) {
    b = b.convertToTimezoneOffset(a.timezoneOffset);
  }

  for (var field in a.constructor.FIELDS) {
    if (a[field] != null && b[field] != null) {
      if (field == 'second') {
        final aMillisecond = a['millisecond'] != null ? a['millisecond'] : 0;
        final aSecondAndMillisecond = a[field] + aMillisecond / 1000;
        final bMillisecond = b['millisecond'] != null ? b['millisecond'] : 0;
        final bSecondAndMillisecond = b[field] + bMillisecond / 1000;

        return aSecondAndMillisecond == bSecondAndMillisecond;
      }

      if (a[field] != b[field]) {
        return false;
      }
    } else if (a[field] == null && b[field] == null) {
      return true;
    } else {
      return defaultResult;
    }
  }

  return true;
}

int daysInMonth(int? year, int? month) {
  if (year == null || month == null) {
    throw ArgumentError('daysInMonth requires year and month as arguments');
  }
  // Month is 1-indexed here because of the 0 day
  return DateTime(year, month + 1, 0).day;
}

bool isValidDateStringFormat(dynamic string) {
  if (string is! String) {
    return false;
  }

  final format = LENGTH_TO_DATE_FORMAT_MAP[string.length];
  if (format == null) {
    return false;
  }

  return LuxonDateTime.fromFormat(string, format).isValid;
}

bool isValidDateTimeStringFormat(dynamic string) {
  if (string is! String) {
    return false;
  }

  if (RegExp(r'T[\d:.]*[+-]\d{2}$').hasMatch(string)) {
    string += ':00';
  }

  final formats = LENGTH_TO_DATETIME_FORMATS_MAP[string.length];
  if (formats == null) {
    return false;
  }

  return formats.any((fmt) => LuxonDateTime.fromFormat(string, fmt).isValid);
}

bool isPrecisionUnspecifiedOrGreaterThanDay(dynamic precision) {
  return precision == null || RegExp(r'^h|mi|s').hasMatch(precision);
}
