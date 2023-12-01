// Require MIN/MAX here because math.js requires this file, and when we make this file require
// math.js before it exports DateTime and Date, it errors due to the circular dependency...
// const { MAX_DATETIME_VALUE, MIN_DATETIME_VALUE } = require('../util/math');
import 'package:fhir/r4.dart';

Duration createDuration(int value, String unit) {
  Duration(
    days: 1,
    hours: 1,
    minutes: 1,
    milliseconds: 1,
    microseconds: 1,
    seconds: unit == 'seconds',
  );
}

class CustomDateTime {
  int year;
  int month;
  int day;
  int hour;
  int minute;
  int second;
  int millisecond;
  int weekday; // Assuming Monday is 1, Sunday is 7

  CustomDateTime(
      {required this.year,
      required this.month,
      required this.day,
      this.hour = 0,
      this.minute = 0,
      this.second = 0,
      this.millisecond = 0,
      this.weekday = 1});

  CustomDateTime set(Map<String, dynamic> changes) {
    if (changes.containsKey('weekday')) {
      weekday = changes['weekday'];
    }
    return this;
  }

  CustomDateTime minus(Map<String, dynamic> changes) {
    if (changes.containsKey('weeks') && weekday != 7) {
      weekday = 7;
      day -= 7;
    }
    return this;
  }

  CustomDateTime startOf(DateTimeUnit unit) {
    switch (unit) {
      case DateTimeUnit.year:
        month = 1;
        gotoMonthStart();
        break;
      case DateTimeUnit.month:
        gotoMonthStart();
        break;
      case DateTimeUnit.week:
        gotoWeekStart();
        break;
      case DateTimeUnit.day:
        hour = 0;
        minute = 0;
        second = 0;
        millisecond = 0;
        break;
      case DateTimeUnit.hour:
        minute = 0;
        second = 0;
        millisecond = 0;
        break;
      case DateTimeUnit.minute:
        second = 0;
        millisecond = 0;
        break;
      case DateTimeUnit.second:
        millisecond = 0;
        break;
      default:
        break;
    }
    return this;
  }

  void gotoMonthStart() {
    day = 1;
  }

  void gotoWeekStart() {
    day -= (weekday - 1); // Assuming Monday is 1, Sunday is 7
  }
}

CustomDateTime truncateCustomDateTime(
    CustomDateTime customDateTime, DateTimeUnit unit) {
  if (unit == DateTimeUnit.week) {
    if (customDateTime.weekday != 7) {
      customDateTime = customDateTime.set({'weekday': 7}).minus({'weeks': 1});
    }
    unit = DateTimeUnit.day;
  }
  return customDateTime.startOf(unit);
}

enum DurationUnit {
  years,
  months,
  weeks,
  days,
  hours,
  minutes,
  seconds,
  milliseconds,
}

num inUnit(Duration duration, DurationUnit unit) {
  switch (unit) {
    // TODO(Dokotela): check if this is a good enough calculation of years & months
    case DurationUnit.years:
      return duration.inDays / 365;
    case DurationUnit.months:
      return duration.inDays / 30;
    case DurationUnit.weeks:
      return duration.inDays / 7;
    case DurationUnit.days:
      return duration.inDays;
    case DurationUnit.hours:
      return duration.inHours;
    case DurationUnit.minutes:
      return duration.inMinutes;
    case DurationUnit.seconds:
      return duration.inSeconds;
    case DurationUnit.milliseconds:
      return duration.inMilliseconds;
  }
}

const LENGTH_TO_DATE_FORMAT_MAP = {
  4: 'yyyy',
  7: 'yyyy-MM',
  10: 'yyyy-MM-dd',
};

const LENGTH_TO_DATETIME_FORMATS_MAP = {
  'yyyy': '2012',
  'yyyy-MM': '2012-01',
  'yyyy-MM-dd': '2012-01-31',
  "yyyy-MM-dd'T''Z'": '2012-01-31TZ',
  "yyyy-MM-dd'T'ZZ": '2012-01-31T-04:00',
  "yyyy-MM-dd'T'HH": '2012-01-31T12',
  "yyyy-MM-dd'T'HH'Z'": '2012-01-31T12Z',
  "yyyy-MM-dd'T'HHZZ": '2012-01-31T12-04:00',
  "yyyy-MM-dd'T'HH:mm": '2012-01-31T12:30',
  "yyyy-MM-dd'T'HH:mm'Z'": '2012-01-31T12:30Z',
  "yyyy-MM-dd'T'HH:mmZZ": '2012-01-31T12:30-04:00',
  "yyyy-MM-dd'T'HH:mm:ss": '2012-01-31T12:30:59',
  "yyyy-MM-dd'T'HH:mm:ss'Z'": '2012-01-31T12:30:59Z',
  "yyyy-MM-dd'T'HH:mm:ssZZ": '2012-01-31T12:30:59-04:00',
  "yyyy-MM-dd'T'HH:mm:ss.SSS": '2012-01-31T12:30:59.000',
  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'": '2012-01-31T12:30:59.000Z',
  "yyyy-MM-dd'T'HH:mm:ss.SSSZZ": '2012-01-31T12:30:59.000-04:00',
};

int wholeLuxonDuration(Duration duration, DurationUnit unit) {
  final num value = inUnit(duration, unit);
  return value >= 0 ? value.floor() : value.ceil();
}

DateTime truncateDateTime(DateTime dateTime, DateTimeUnit unit) {
  if (unit == DateTimeUnit.week) {
    if (dateTime.weekday != DateTime.sunday) {
      dateTime =
          dateTime.subtract(Duration(days: dateTime.weekday - DateTime.sunday));
    }
    unit = DateTimeUnit.day;
  }
  return startOf(dateTime, unit);
}

DateTime startOf(DateTime dateTime, DateTimeUnit unit) {
  switch (unit) {
    case DateTimeUnit.year:
      return DateTime(dateTime.year);
    case DateTimeUnit.month:
      return DateTime(dateTime.year, dateTime.month);
    case DateTimeUnit.week:
    case DateTimeUnit.day:
      return DateTime(dateTime.year, dateTime.month, dateTime.day);
    case DateTimeUnit.hour:
      return DateTime(
          dateTime.year, dateTime.month, dateTime.day, dateTime.hour);
    case DateTimeUnit.minute:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute);
    case DateTimeUnit.second:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute, dateTime.second);
    case DateTimeUnit.millisecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond);
    default:
      return dateTime;
  }
}

final MIN_DATETIME_VALUE = FhirDateTime('0001-01-01T00:00:00.000');
final MAX_DATETIME_VALUE = FhirDateTime('9999-12-31T23:59:59.999');
final MIN_DATE_VALUE = FhirDate('0001-01-01');
final MAX_DATE_VALUE = FhirDate('9999-12-31');
final MIN_TIME_VALUE = FhirTime('00:00:00.000');
final MAX_TIME_VALUE = FhirTime('23:59:59.999');

enum DateTimeUnit {
  year,
  month,
  week,
  day,
  hour,
  minute,
  second,
  millisecond,
}

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

abstract class AbstractDate {
  int? year;
  int? month;
  int? day;

  AbstractDate({this.year, this.month, this.day});

  AbstractDate fromDateTime(DateTime dateTime);

  String? getPrecision();
  FhirDateTime getDateTime();
  AbstractDate copy();
  FhirDateTime toLuxonDateTime();
  bool get isDate;
  bool get isDateTime;

  int? stringToValue(String? string) => string == 'year'
      ? year
      : string == 'month'
          ? month
          : string == 'day'
              ? day
              : null;

  bool isPrecise() {
    return [year, month, day].every((field) => field != null);
  }

  bool isImprecise() {
    return !isPrecise();
  }

  bool isMorePrecise(other) {
    if (other is String && ['year', 'month', 'day'].contains(other)) {
      final int? value = stringToValue(other);
      if (value == null) {
        return false;
      }
    } else if (other is AbstractDate) {
      for (final field in ['year', 'month', 'day']) {
        if (other.stringToValue(field) != null &&
            stringToValue(field) == null) {
          return false;
        }
      }
    }
    return !isSamePrecision(other);
  }

  bool isLessPrecise(other) {
    return !isSamePrecision(other) && !isMorePrecise(other);
  }

  bool isSamePrecision(AbstractDate other) {
    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) == null) {
        return false;
      }
      if (stringToValue(field) == null && other.stringToValue(field) != null) {
        return false;
      }
    }
    return true;
  }

  bool equals(other) {
    return compareWithDefaultResult(this, other, null);
  }

  bool equivalent(other) {
    return compareWithDefaultResult(this, other, false);
  }

  bool? sameAs(other, [precision]) {
    if (!(other.isDate || other.isDateTime)) {
      return null;
    } else if (isDate && other.isDateTime) {
      return sameAs(other, precision);
    } else if (isDateTime && other.isDate) {
      other = other.getDateTime();
    }

    if (precision != null && ['year', 'month', 'day'].indexOf(precision) < 0) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) != null) {
        if (stringToValue(field) != other.stringToValue(field)) {
          return false;
        }
      } else if (stringToValue(field) == null &&
          other.stringToValue(field) == null) {
        if (precision == null) {
          return true;
        } else {
          return null;
        }
      } else {
        return null;
      }
      if (precision != null && precision == field) {
        break;
      }
    }

    return true;
  }

  bool? sameOrBefore(other, [precision]) {
    if (!(other.isDate || other.isDateTime)) {
      return null;
    } else if (isDate && other.isDateTime) {
      return sameOrBefore(other, precision);
    } else if (isDateTime && other.isDate) {
      other = other.getDateTime();
    }

    if (precision != null && !['year', 'month', 'day'].contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) != null) {
        if (stringToValue(field)! < other.stringToValue(field)!) {
          return true;
        } else if (stringToValue(field)! > other.stringToValue(field)!) {
          return false;
        }
      } else if (stringToValue(field) == null &&
          other.stringToValue(field) == null) {
        if (precision == null) {
          return true;
        } else {
          return null;
        }
      } else {
        return null;
      }
      if (precision != null && precision == field) {
        break;
      }
    }

    return true;
  }

  bool? sameOrAfter(other, [precision]) {
    if (!(other.isDate || other.isDateTime)) {
      return null;
    } else if (isDate && other.isDateTime) {
      return sameOrAfter(other, precision);
    } else if (isDateTime && other.isDate) {
      other = other.getDateTime();
    }

    if (precision != null && !['year', 'month', 'day'].contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) != null) {
        if (stringToValue(field)! > other.stringToValue(field)!) {
          return true;
        } else if (stringToValue(field)! < other.stringToValue(field)!) {
          return false;
        }
      } else if (stringToValue(field) == null &&
          other.stringToValue(field) == null) {
        if (precision == null) {
          return true;
        } else {
          return null;
        }
      } else {
        return null;
      }
      if (precision != null && precision == field) {
        break;
      }
    }

    return true;
  }

  bool? before(other, [precision]) {
    if (!(other.isDate || other.isDateTime)) {
      return null;
    } else if (isDate && other.isDateTime) {
      return before(other, precision);
    } else if (isDateTime && other.isDate) {
      other = other.getDateTime();
    }

    if (precision != null && !['year', 'month', 'day'].contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) != null) {
        if (stringToValue(field)! < other.stringToValue(field)!) {
          return true;
        } else if (stringToValue(field)! > other.stringToValue(field)!) {
          return false;
        }
      } else if (stringToValue(field) == null &&
          other.stringToValue(field) == null) {
        if (precision == null) {
          return false;
        } else {
          return null;
        }
      } else {
        return null;
      }
      if (precision != null && precision == field) {
        break;
      }
    }

    return false;
  }

  bool? after(other, [precision]) {
    if (!(other.isDate || other.isDateTime)) {
      return null;
    } else if (isDate && other.isDateTime) {
      return after(other, precision);
    } else if (isDateTime && other.isDate) {
      other = other.getDateTime();
    }

    if (precision != null && !['year', 'month', 'day'].contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in ['year', 'month', 'day']) {
      if (stringToValue(field) != null && other.stringToValue(field) != null) {
        if (stringToValue(field)! > other.stringToValue(field)!) {
          return true;
        } else if (stringToValue(field)! < other.stringToValue(field)!) {
          return false;
        }
      } else if (stringToValue(field) == null &&
          other.stringToValue(field) == null) {
        if (precision == null) {
          return false;
        } else {
          return null;
        }
      } else {
        return null;
      }
      if (precision != null && precision == field) {
        break;
      }
    }

    return false;
  }

  AbstractDate? add(int offset, field) {
    if (offset == 0 || year == null) {
      return copy();
    }

    // You would typically use date-time libraries for date manipulation.
    // For this translation, I'll simulate the behavior using Dart's DateTime.
    DateTime? dateTime = getDateTime().value;

    if (field == 'month' ||
        field == 'day' ||
        field == 'hour' ||
        field == 'minute' ||
        field == 'second' ||
        field == 'millisecond') {
      DateTime? newDateTime = dateTime;

      // Handle more precise offset
      if (field == 'month' ||
          field == 'day' ||
          field == 'hour' ||
          field == 'minute' ||
          field == 'second' ||
          field == 'millisecond') {
        if (stringToValue(field) == null && offset < 0) {
          if (field == 'month') {
            newDateTime = DateTime(year!, 1);
          } else if (field == 'day') {
            newDateTime = DateTime(year!, month!);
          } else if (field == 'hour') {
            newDateTime = DateTime(year!, month!, day!);
          } else if (field == 'minute') {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0);
          } else if (field == 'second') {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0,
                dateTime?.minute ?? 0);
          } else if (field == 'millisecond') {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0,
                dateTime?.minute ?? 0, dateTime?.second ?? 0);
          }
        }
      }

      // Do the actual addition
      if (field == 'month') {
        if (dateTime?.year == null) {
          return null;
        } else {
          newDateTime = DateTime(dateTime!.year, dateTime.month)
              .add(Duration(days: offset * 30));
        }
      } else if (field == 'day') {
        newDateTime = dateTime?.add(Duration(days: offset));
      } else if (field == 'hour') {
        newDateTime = dateTime?.add(Duration(hours: offset));
      } else if (field == 'minute') {
        newDateTime = dateTime?.add(Duration(minutes: offset));
      } else if (field == 'second') {
        newDateTime = dateTime?.add(Duration(seconds: offset));
      } else if (field == 'millisecond') {
        newDateTime = dateTime?.add(Duration(milliseconds: offset));
      }

      // Check for overflow or underflow
      if ((newDateTime?.isAfter(MAX_DATETIME_VALUE.value!) ?? false) ||
          (newDateTime?.isBefore(MIN_DATETIME_VALUE.value!) ?? false)) {
        return null;
      }

      // Create a new AbstractDate instance with adjusted values
      AbstractDate result =
          (this.runtimeType as AbstractDate).fromDateTime(newDateTime);

      // Reset to null if applicable
      if (isDateTime && timezoneOffset == null) {
        result.timezoneOffset = null;
      }

      return result;
    }

    throw Exception('Unsupported field: $field');
  }

  int getFieldFloor(field) {
    switch (field) {
      case 'month':
        return 1;
      case 'day':
        return 1;
      case 'hour':
        return 0;
      case 'minute':
        return 0;
      case 'second':
        return 0;
      case 'millisecond':
        return 0;
      default:
        throw Exception(
            'Tried to floor a field that has no floor value: $field');
    }
  }

  int getFieldCeiling(field) {
    switch (field) {
      case 'month':
        return 12;
      case 'day':
        return DateTime(year!, month! + 1, 0).day;
      case 'hour':
        return 23;
      case 'minute':
        return 59;
      case 'second':
        return 59;
      case 'millisecond':
        return 999;
      default:
        throw Exception(
            'Tried to ceiling a field that has no ceiling value: $field');
    }
  }
}

bool compareWithDefaultResult(dynamic a, dynamic b, dynamic defaultResult) {
  if (!(a is FhirDate || a is FhirDateTime) ||
      !(b is FhirDate || b is FhirDateTime)) {
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

  return FhirDateTime(string.substring(0, string.length)).isValid;
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

  return FhirDateTime(string.substring(0, string.length)).isValid;
}

bool isPrecisionUnspecifiedOrGreaterThanDay(dynamic precision) {
  return precision == null || RegExp(r'^h|mi|s').hasMatch(precision);
}
