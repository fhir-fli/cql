import 'package:fhir/primitive_types/primitive_types.dart';

import '../cql.dart';

final MIN_DATETIME_VALUE = FhirDateTime('0001-01-01T00:00:00.000');
final MAX_DATETIME_VALUE = FhirDateTime('9999-12-31T23:59:59.999');
final MIN_DATE_VALUE = FhirDate('0001-01-01');
final MAX_DATE_VALUE = FhirDate('9999-12-31');
final MIN_TIME_VALUE = FhirTime('00:00:00.000');
final MAX_TIME_VALUE = FhirTime('23:59:59.999');

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

const DATETIME_PRECISION_VALUE_MAP = <CqlDateTimeUnit, int>{
  CqlDateTimeUnit.year: 4,
  CqlDateTimeUnit.month: 6,
  CqlDateTimeUnit.day: 8,
  CqlDateTimeUnit.hour: 10,
  CqlDateTimeUnit.minute: 12,
  CqlDateTimeUnit.second: 14,
  CqlDateTimeUnit.millisecond: 17,
};

const TIME_PRECISION_VALUE_MAP = <CqlDateTimeUnit, int>{
  CqlDateTimeUnit.hour: 2,
  CqlDateTimeUnit.minute: 4,
  CqlDateTimeUnit.second: 6,
  CqlDateTimeUnit.millisecond: 9,
};

enum CqlDateTimeUnit {
  year,
  month,
  week,
  day,
  hour,
  minute,
  second,
  millisecond,
  microsecond,
}

abstract class AbstractDate {
  FhirDateTimeBase value;

  AbstractDate({required int year, int? month, int? day})
      : value = FhirDate.fromUnits(year: year, month: month, day: day);

  AbstractDate fromDateTime(DateTime dateTime);

  CqlDateTimeUnit? getPrecision();
  FhirDateTimeBase? getDateTime();
  AbstractDate copy();
  int? get year => value.year;
  int? get month => value.month;
  int? get day => value.day;
  bool get isDate;
  bool get isDateTime;
  int? get timezoneOffset => value.value?.timeZoneOffset.inHours;

  int? unitToValue(CqlDateTimeUnit? unit) => unit == CqlDateTimeUnit.year
      ? value.year
      : unit == CqlDateTimeUnit.month
          ? value.month
          : unit == CqlDateTimeUnit.day
              ? value.day
              : null;

  bool isPrecise() {
    return [year, month, day].every((field) => field != null);
  }

  bool isImprecise() {
    return !isPrecise();
  }

  bool isMorePrecise(other) {
    if (other is CqlDateTimeUnit &&
        [CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(other)) {
      final int? value = unitToValue(other);
      if (value == null) {
        return false;
      }
    } else if (other is AbstractDate) {
      for (final field in [
        CqlDateTimeUnit.year,
        CqlDateTimeUnit.month,
        CqlDateTimeUnit.day
      ]) {
        if (other.unitToValue(field) != null && unitToValue(field) == null) {
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
    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) == null) {
        return false;
      }
      if (unitToValue(field) == null && other.unitToValue(field) != null) {
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

    if (precision != null &&
        [CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
                .indexOf(precision) <
            0) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) != null) {
        if (unitToValue(field) != other.unitToValue(field)) {
          return false;
        }
      } else if (unitToValue(field) == null &&
          other.unitToValue(field) == null) {
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

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) != null) {
        if (unitToValue(field)! < other.unitToValue(field)!) {
          return true;
        } else if (unitToValue(field)! > other.unitToValue(field)!) {
          return false;
        }
      } else if (unitToValue(field) == null &&
          other.unitToValue(field) == null) {
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

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) != null) {
        if (unitToValue(field)! > other.unitToValue(field)!) {
          return true;
        } else if (unitToValue(field)! < other.unitToValue(field)!) {
          return false;
        }
      } else if (unitToValue(field) == null &&
          other.unitToValue(field) == null) {
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

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) != null) {
        if (unitToValue(field)! < other.unitToValue(field)!) {
          return true;
        } else if (unitToValue(field)! > other.unitToValue(field)!) {
          return false;
        }
      } else if (unitToValue(field) == null &&
          other.unitToValue(field) == null) {
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

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timezoneOffset != other.timezoneOffset) {
        other = other.convertToTimezoneOffset(timezoneOffset);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null && other.unitToValue(field) != null) {
        if (unitToValue(field)! > other.unitToValue(field)!) {
          return true;
        } else if (unitToValue(field)! < other.unitToValue(field)!) {
          return false;
        }
      } else if (unitToValue(field) == null &&
          other.unitToValue(field) == null) {
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
    DateTime? dateTime = getDateTime()?.value;

    if (field == CqlDateTimeUnit.month ||
        field == CqlDateTimeUnit.day ||
        field == CqlDateTimeUnit.hour ||
        field == CqlDateTimeUnit.minute ||
        field == CqlDateTimeUnit.second ||
        field == CqlDateTimeUnit.millisecond) {
      DateTime? newDateTime = dateTime;

      // Handle more precise offset
      if (field == CqlDateTimeUnit.month ||
          field == CqlDateTimeUnit.day ||
          field == CqlDateTimeUnit.hour ||
          field == CqlDateTimeUnit.minute ||
          field == CqlDateTimeUnit.second ||
          field == CqlDateTimeUnit.millisecond) {
        if (unitToValue(field) == null && offset < 0) {
          if (field == CqlDateTimeUnit.month) {
            newDateTime = DateTime(year!, 1);
          } else if (field == CqlDateTimeUnit.day) {
            newDateTime = DateTime(year!, month!);
          } else if (field == CqlDateTimeUnit.hour) {
            newDateTime = DateTime(year!, month!, day!);
          } else if (field == CqlDateTimeUnit.minute) {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0);
          } else if (field == CqlDateTimeUnit.second) {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0,
                dateTime?.minute ?? 0);
          } else if (field == CqlDateTimeUnit.millisecond) {
            newDateTime = DateTime(year!, month!, day!, dateTime?.hour ?? 0,
                dateTime?.minute ?? 0, dateTime?.second ?? 0);
          }
        }
      }

      // Do the actual addition
      if (field == CqlDateTimeUnit.month) {
        if (dateTime?.year == null) {
          return null;
        } else {
          newDateTime = DateTime(dateTime!.year, dateTime.month)
              .add(Duration(days: offset * 30));
        }
      } else if (field == CqlDateTimeUnit.day) {
        newDateTime = dateTime?.add(Duration(days: offset));
      } else if (field == CqlDateTimeUnit.hour) {
        newDateTime = dateTime?.add(Duration(hours: offset));
      } else if (field == CqlDateTimeUnit.minute) {
        newDateTime = dateTime?.add(Duration(minutes: offset));
      } else if (field == CqlDateTimeUnit.second) {
        newDateTime = dateTime?.add(Duration(seconds: offset));
      } else if (field == CqlDateTimeUnit.millisecond) {
        newDateTime = dateTime?.add(Duration(milliseconds: offset));
      }

      // Check for overflow or underflow
      if ((newDateTime?.isAfter(MAX_DATETIME_VALUE.value!) ?? false) ||
          (newDateTime?.isBefore(MIN_DATETIME_VALUE.value!) ?? false)) {
        return null;
      }

      // Create a new AbstractDate instance with adjusted values
      AbstractDate? result = newDateTime == null
          ? null
          : (this.runtimeType as AbstractDate).fromDateTime(newDateTime);

      // Reset to null if applicable
      if (isDateTime && timezoneOffset == null) {
        // TODO(Dokotela): fix this
        // result?.timezoneOffset = null;
      }

      return result;
    }

    throw Exception('Unsupported field: $field');
  }

  int getFieldFloor(field) {
    switch (field) {
      case CqlDateTimeUnit.month:
        return 1;
      case CqlDateTimeUnit.day:
        return 1;
      case CqlDateTimeUnit.hour:
        return 0;
      case CqlDateTimeUnit.minute:
        return 0;
      case CqlDateTimeUnit.second:
        return 0;
      case CqlDateTimeUnit.millisecond:
        return 0;
      default:
        throw Exception(
            'Tried to floor a field that has no floor value: $field');
    }
  }

  int getFieldCeiling(field) {
    switch (field) {
      case CqlDateTimeUnit.month:
        return 12;
      case CqlDateTimeUnit.day:
        return DateTime(year!, month! + 1, 0).day;
      case CqlDateTimeUnit.hour:
        return 23;
      case CqlDateTimeUnit.minute:
        return 59;
      case CqlDateTimeUnit.second:
        return 59;
      case CqlDateTimeUnit.millisecond:
        return 999;
      default:
        throw Exception(
            'Tried to ceiling a field that has no ceiling value: $field');
    }
  }

  Uncertainty? durationBetween(dynamic other, CqlDateTimeUnit unitField);

  Uncertainty? differenceBetween(dynamic other, CqlDateTimeUnit unitField);
}

class CqlDateTime extends AbstractDate {
  int? hour;
  int? minute;
  int? second;
  int? millisecond;

  int? get timezoneOffset;

  static FhirDateTime? parse(String? string) {
    if (string == null) {
      return null;
    }

    RegExp regExp = RegExp(
        r'(\d{4})(-(\d{2}))?(-(\d{2}))?(T((\d{2})(:(\d{2})(:(\d{2})(\.(\d+))?)?)?)?(Z|(([+-])(\d{2})(:?(\d{2}))?))?)?');
    Match? matches = regExp.firstMatch(string);

    if (matches == null) {
      return null;
    }

    String? years = matches.group(1);
    String? months = matches.group(3);
    String? days = matches.group(5);
    String? hours = matches.group(8);
    String? minutes = matches.group(10);
    String? seconds = matches.group(12);
    String? milliseconds = matches.group(14);
    if (milliseconds != null) {
      milliseconds = normalizeMillisecondsField(milliseconds);
    }
    if (milliseconds != null && matches.group(14) != null) {
      string = normalizeMillisecondsFieldInString(string, matches.group(14)!);
    }

    if (!isValidDateTimeStringFormat(string)) {
      return null;
    }

    // Convert the args to integers
    List<int?> args =
        [years, months, days, hours, minutes, seconds, milliseconds].map((arg) {
      return arg != null ? int.tryParse(arg) : null;
    }).toList();

    // Convert timezone offset to decimal and add it to arguments
    if (matches.group(18) != null) {
      int num = int.parse(matches.group(18)!);
      num +=
          matches.group(20) != null ? int.parse(matches.group(20)!) ~/ 60 : 0;
      args.add(matches.group(17) == '+' ? num : num * -1);
    } else if (matches.group(15) == 'Z') {
      args.add(0);
    }

    return FhirDateTime.fromUnits(
      year: args[0] ?? 1,
      month: args[1] ?? 1,
      day: args[2] ?? 1,
      hour: args[3] ?? 0,
      minute: args[4] ?? 0,
      second: args[5] ?? 0,
      millisecond: args[6] ?? 0,
      timezoneOffset: args.length > 7 ? args[7] : null,
    );
  }

  static CqlDateTime fromJSDate(dynamic date, [dynamic timezoneOffset]) {
    if (date is CqlDateTime) {
      return date;
    }
    if (timezoneOffset != null) {
      date = DateTime.fromMillisecondsSinceEpoch(
          date.millisecondsSinceEpoch + timezoneOffset * 60 * 60 * 1000);
      return CqlDateTime(
          year: date.year,
          month: date.month,
          day: date.day,
          hour: date.hour,
          minute: date.minute,
          second: date.second,
          millisecond: date.millisecond,
          timezoneOffset: date.timeZoneOffset);
    } else {
      return CqlDateTime(
        year: date.year,
        month: date.month,
        day: date.day,
        hour: date.hour,
        minute: date.minute,
        second: date.second,
        millisecond: date.millisecond,
      );
    }
  }

  CqlDateTime.fromDateTime(DateTime dateTime)
      : super(year: dateTime.year, month: dateTime.month, day: dateTime.day) {
    this.hour = dateTime.hour;
    this.minute = dateTime.minute;
    this.second = dateTime.second;
    this.millisecond = dateTime.millisecond;
    ;
  }

  CqlDateTime({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? timezoneOffset,
  }) : super(year: year ?? 1, month: month, day: day) {
    this.hour = hour;
    this.minute = minute;
    this.second = second;
    this.millisecond = millisecond;
    if (timezoneOffset == null) {
      timezoneOffset = (DateTime.now().timeZoneOffset.inHours) * -1;
    } else {
      timezoneOffset = timezoneOffset;
    }
  }

  bool get isDateTime => true;

  bool get isDate => false;

  CqlDateTime copy() {
    return CqlDateTime(
      year: this.year,
      month: this.month,
      day: this.day,
      hour: this.hour,
      minute: this.minute,
      second: this.second,
      millisecond: this.millisecond,
      timezoneOffset: this.timezoneOffset,
    );
  }

  AbstractDate? successor() {
    if (this.millisecond != null) {
      return this.add(1, CqlDateTimeUnit.millisecond);
    } else if (this.second != null) {
      return this.add(1, CqlDateTimeUnit.second);
    } else if (this.minute != null) {
      return this.add(1, CqlDateTimeUnit.minute);
    } else if (this.hour != null) {
      return this.add(1, CqlDateTimeUnit.hour);
    } else if (this.day != null) {
      return this.add(1, CqlDateTimeUnit.day);
    } else if (this.month != null) {
      return this.add(1, CqlDateTimeUnit.month);
    } else if (this.year != null) {
      return this.add(1, CqlDateTimeUnit.year);
    }
    return null;
  }

  AbstractDate? predecessor() {
    if (this.millisecond != null) {
      return this.add(-1, CqlDateTimeUnit.millisecond);
    } else if (this.second != null) {
      return this.add(-1, CqlDateTimeUnit.second);
    } else if (this.minute != null) {
      return this.add(-1, CqlDateTimeUnit.minute);
    } else if (this.hour != null) {
      return this.add(-1, CqlDateTimeUnit.hour);
    } else if (this.day != null) {
      return this.add(-1, CqlDateTimeUnit.day);
    } else if (this.month != null) {
      return this.add(-1, CqlDateTimeUnit.month);
    } else if (this.year != null) {
      return this.add(-1, CqlDateTimeUnit.year);
    }
    return null;
  }

  // DateTime convertToTimezoneOffset([int timezoneOffset = 0]) {
  //   final shiftedLuxonDT =
  //       this.toLuxonDateTime().setZone(FixedOffsetZone(timezoneOffset * 60));
  //   final shiftedDT = fromLuxonDateTime(shiftedLuxonDT);
  //   return shiftedDT.reducedPrecision(this.getPrecision());
  // }

  Uncertainty? differenceBetween(dynamic other, CqlDateTimeUnit unitField) {
    other = this._implicitlyConvert(other);
    if (other == null || other is! CqlDateTime) {
      return null;
    }

    final Uncertainty? a = this.toLuxonUncertainty();
    final b = other.toLuxonUncertainty();
    if ([
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      'week',
      CqlDateTimeUnit.day
    ].contains(unitField)) {
      a?.low = a.low.toUtc(); //(0, keepLocalTime: true);
      a?.high = a.high.toUtc(); //(0, keepLocalTime: true);
      b?.low = b.low.toUtc(); //(0, keepLocalTime: true);
      b?.high = b.high.toUtc(); //(0, keepLocalTime: true);
    }

    a?.low = truncateLuxonDateTime(a.low, unitField);
    a?.high = truncateLuxonDateTime(a.high, unitField);
    b?.low = truncateLuxonDateTime(b.low, unitField);
    b?.high = truncateLuxonDateTime(b.high, unitField);

    return Uncertainty(
      low: wholeLuxonDuration(b?.low.diff(a?.high, unitField), unitField),
      high: wholeLuxonDuration(b?.high.diff(a?.low, unitField), unitField),
    );
  }

  Uncertainty? durationBetween(dynamic other, CqlDateTimeUnit unitField) {
    other = this._implicitlyConvert(other);
    if (other == null || !other.isDateTime) {
      return null;
    }
    final a = this.toLuxonUncertainty();
    final b = other.toLuxonUncertainty();
    return Uncertainty(
      low: wholeLuxonDuration(b.low.diff(a?.high, unitField), unitField),
      high: wholeLuxonDuration(b.high.diff(a?.low, unitField), unitField),
    );
  }

  bool isUTC() {
    // A timezoneOffset of 0 indicates UTC time.
    return timezoneOffset == 0;
  }

  CqlDateTimeUnit? getPrecision() {
    CqlDateTimeUnit? result;
    if (year != null) {
      result = CqlDateTimeUnit.year;
    } else {
      return result;
    }
    if (month != null) {
      result = CqlDateTimeUnit.month;
    } else {
      return result;
    }
    if (day != null) {
      result = CqlDateTimeUnit.day;
    } else {
      return result;
    }
    if (hour != null) {
      result = CqlDateTimeUnit.hour;
    } else {
      return result;
    }
    if (minute != null) {
      result = CqlDateTimeUnit.minute;
    } else {
      return result;
    }
    if (second != null) {
      result = CqlDateTimeUnit.second;
    } else {
      return result;
    }
    if (millisecond != null) {
      result = CqlDateTimeUnit.millisecond;
    }
    return result;
  }

  int? getPrecisionValue() {
    return isTime()
        ? TIME_PRECISION_VALUE_MAP[this.getPrecision()]
        : DATETIME_PRECISION_VALUE_MAP[this.getPrecision()];
  }

  // LuxonDateTime toLuxonDateTime() {
  //   final offsetMins = timezoneOffset != null
  //       ? timezoneOffset * 60
  //       : jsDate().getTimezoneOffset() * -1;
  //   return LuxonDateTime.fromObject({
  //     CqlDateTimeUnit.year: year,
  //     CqlDateTimeUnit.month: month,
  //     CqlDateTimeUnit.day: day,
  //     CqlDateTimeUnit.hour: hour,
  //     CqlDateTimeUnit.minute: minute,
  //     CqlDateTimeUnit.second: second,
  //     CqlDateTimeUnit.millisecond: millisecond,
  //     'zone': FixedOffsetZone.instance(offsetMins),
  //   });
  // }

  Uncertainty? toLuxonUncertainty() {
    final DateTime? low = this.value.value;
    if (low == null) {
      return null;
    } else {
      final high = endOf(low, getPrecision()!);
      return Uncertainty(low: low, high: high);
    }
  }

  // DateTime toJSDate([bool ignoreTimezone = false]) {
  //   var luxonDT = this.toLuxonDateTime();
  //   // I don't know if anyone is using "ignoreTimezone" anymore (we aren't), but just in case
  //   if (ignoreTimezone) {
  //     final offset = jsDate().getTimezoneOffset() * -1;
  //     luxonDT = luxonDT.setZone(FixedOffsetZone.instance(offset),
  //         keepLocalTime: true);
  //   }
  //   return luxonDT.toJSDate();
  // }

  String toJSON() {
    return this.toString();
  }

  String _pad(int num) {
    return num.toString().padLeft(2, '0');
  }

  String toString() {
    if (isTime()) {
      return toStringTime();
    } else {
      return toStringDateTime();
    }
  }

  String toStringTime() {
    String str = '';
    if (hour != null) {
      str += _pad(hour!);
      if (minute != null) {
        str += ':' + _pad(minute!);
        if (second != null) {
          str += ':' + _pad(second!);
          if (millisecond != null) {
            str += '.' +
                (millisecond! < 10
                    ? '00'
                    : millisecond! < 100
                        ? '0'
                        : '') +
                millisecond!.toString();
          }
        }
      }
    }
    return str;
  }

  String toStringDateTime() {
    String str = '';
    if (year != null) {
      str += year.toString();
      if (month != null) {
        str += '-' + _pad(month!);
        if (day != null) {
          str += '-' + _pad(day!);
          if (hour != null) {
            str += 'T' + _pad(hour!);
            if (minute != null) {
              str += ':' + _pad(minute!);
              if (second != null) {
                str += ':' + _pad(second!);
                if (millisecond != null) {
                  str += '.' +
                      (millisecond! < 10
                          ? '00'
                          : millisecond! < 100
                              ? '0'
                              : '') +
                      millisecond!.toString();
                }
              }
            }
          }
        }
      }
    }

    if (str.contains('T') && timezoneOffset != null) {
      str += timezoneOffset! < 0 ? '-' : '+';
      final offsetHours = timezoneOffset!.abs().floor();
      str += _pad(offsetHours);
      final offsetMin = ((timezoneOffset!.abs() - offsetHours) * 60).floor();
      str += ':' + _pad(offsetMin);
    }

    return str;
  }

  FhirDateTime? getDateTime() {
    return value.value == null ? null : FhirDateTime(value.value);
  }

  DateTime getDate() {
    return DateTime(year ?? 1, month ?? 1, day ?? 1);
  }

  DateTime getTime() {
    // Times no longer have timezoneOffsets, so we must explicitly set it to null
    return DateTime(
        0, 1, 1, hour ?? 0, minute ?? 0, second ?? 0, millisecond ?? 0);
  }

  bool isTime() {
    return year == 0 && month == 1 && day == 1;
  }

  _implicitlyConvert(dynamic other) {
    if (other != null && other.isDate) {
      return other.getDateTime();
    }
    return other;
  }

  CqlDateTime? reducedPrecision({CqlDateTimeUnit? unitField}) {
    CqlDateTime? reduced = copy();
    if (unitField != null && unitField != CqlDateTimeUnit.millisecond) {
      final fields = [
        CqlDateTimeUnit.year,
        CqlDateTimeUnit.month,
        CqlDateTimeUnit.day,
        CqlDateTimeUnit.hour,
        CqlDateTimeUnit.minute,
        CqlDateTimeUnit.second,
        CqlDateTimeUnit.millisecond,
      ];
      final fieldIndex = fields.indexOf(unitField);
      if (fieldIndex != -1) {
        final fieldsToRemove = fields.sublist(fieldIndex + 1);
        for (final field in fieldsToRemove) {
          final nullFields = reduced?.value.value == null
              ? null
              : _setFieldToNull(reduced!.value.value!, field);
          reduced =
              nullFields == null ? null : CqlDateTime.fromDateTime(nullFields);
        }
      }
    }
    return reduced;
  }

  @override
  AbstractDate fromDateTime(DateTime dateTime) => CqlDateTime(
        year: dateTime.year,
        month: dateTime.month,
        day: dateTime.day,
        hour: dateTime.hour,
        minute: dateTime.minute,
        second: dateTime.second,
        millisecond: dateTime.millisecond,
        timezoneOffset: dateTime.timeZoneOffset.inHours,
      );
}

class CqlDate extends AbstractDate {
  static CqlDate? parse(String? string) {
    if (string == null) {
      return null;
    }

    final matches = RegExp(r'(\d{4})(-(\d{2}))?(-(\d{2}))?').firstMatch(string);

    if (matches == null) {
      return null;
    }
    final years = matches.group(1);
    final months = matches.group(3);
    final days = matches.group(5);

    if (!isValidDateStringFormat(string)) {
      return null;
    }

    // Convert args to integers
    final args = [years, months, days]
        .map((arg) => arg != null ? int.parse(arg) : arg)
        .toList();
    final argsInt = args.cast<int>();

    return CqlDate(argsInt[0], argsInt[1], argsInt[2]);
  }

  CqlDate(int year, [int? month = null, int? day = null])
      : super(year: year, month: month, day: day);

  bool get isDate {
    return true;
  }

  bool get isDateTime {
    return false;
  }

  CqlDate copy() {
    return CqlDate(year ?? 1, month, day);
  }

  AbstractDate? successor() {
    if (day != null) {
      return add(1, CqlDateTimeUnit.day);
    } else if (month != null) {
      return add(1, CqlDateTimeUnit.month);
    } else if (year != null) {
      return add(1, CqlDateTimeUnit.year);
    }
    return null;
  }

  AbstractDate? predecessor() {
    if (day != null) {
      return add(-1, CqlDateTimeUnit.day);
    } else if (month != null) {
      return add(-1, CqlDateTimeUnit.month);
    } else if (year != null) {
      return add(-1, CqlDateTimeUnit.year);
    }
    return null;
  }

  Uncertainty? differenceBetween(other, CqlDateTimeUnit unitField) {
    if (other != null && other is AbstractDate) {
      return other.differenceBetween(this, unitField);
    }
    if (other == null || !other.isDate) {
      return null;
    }

    final a = toLuxonUncertainty();
    final b = other.toLuxonUncertainty();

    a?.low = truncateLuxonDateTime(a.low, unitField);
    a?.high = truncateLuxonDateTime(a.high, unitField);
    b.low = truncateLuxonDateTime(b.low, unitField);
    b.high = truncateLuxonDateTime(b.high, unitField);

    return Uncertainty(
      low: a?.low.difference(b.high, unitField),
      high: b.low.difference(a?.high, unitField),
    );
  }

  Uncertainty? durationBetween(other, unitField) {
    // TODO(Dokotela): make this not a comment
    // if (other != null && other.isDateTime) {
    //   return durationBetween(other, unitField);
    // }
    if (other == null || !other.isDate) {
      return null;
    }

    final a = toLuxonUncertainty();
    final b = other.toLuxonUncertainty();

    return Uncertainty(
      low: a?.high.difference(b.low, unitField),
      high: b.high.difference(a?.low, unitField),
    );
  }

  CqlDateTimeUnit? getPrecision() {
    CqlDateTimeUnit? result;
    if (year != null) {
      result = CqlDateTimeUnit.year;
    } else {
      return result;
    }

    if (month != null) {
      result = CqlDateTimeUnit.month;
    } else {
      return result;
    }

    if (day != null) {
      result = CqlDateTimeUnit.day;
    } else {
      return result;
    }
    return result;
  }

  getPrecisionValue() {
    return DATETIME_PRECISION_VALUE_MAP[this.getPrecision()];
  }

  FhirDateTime toLuxonDateTime() {
    return FhirDateTime.fromUnits(
      year: year ?? 1,
      month: month ?? 1,
      day: day ?? 1,
      // TODO(Dokotela): are timezones really that important?
      // timezoneOffset: FixedOffsetZone.utcInstance,
    );
  }

  Uncertainty? toLuxonUncertainty() {
    final low = this.toLuxonDateTime();
    if (low.value == null) {
      return null;
    } else {
      final high = startOf(
          endOf(low.value!, (getPrecision() ?? CqlDateTimeUnit.day)),
          CqlDateTimeUnit.day);
      return Uncertainty(low: low, high: high);
    }
  }

  CqlDateTime toJSDate() {
    final y = year;
    final mo = month != null ? month! - 1 : 0;
    final d = day != null ? day! : 1;
    return CqlDateTime(year: y ?? 0, month: mo, day: d);
  }

  // static CqlDate fromJSDate(dynamic date) {
  //   if (date is DateTime) {
  //     return date as Date;
  //   }
  //   return Date(date.year, date.month + 1, date.day);
  // }

  // static Date fromLuxonDateTime(LuxonDateTime luxonDT) {
  //   if (luxonDT is Date) {
  //     return luxonDT;
  //   }
  //   return Date(luxonDT.year, luxonDT.month, luxonDT.day);
  // }

  String toJSON() {
    return this.toString();
  }

  @override
  String toString() {
    String str = '';
    if (year != null) {
      str += year.toString();
      if (month != null) {
        str += '-' + month.toString().padLeft(2, '0');
        if (day != null) {
          str += '-' + day.toString().padLeft(2, '0');
        }
      }
    }
    return str;
  }

  FhirDateTime getDateTime([int? timeZoneOffset]) {
    if (year != null && month != null && day != null) {
      return FhirDateTime.fromUnits(
          year: year!,
          month: month!,
          day: day!,
          timezoneOffset: timeZoneOffset);
    } else {
      return FhirDateTime.fromUnits(year: year!, month: month!, day: day!);
    }
  }

  CqlDate? reducedPrecision({CqlDateTimeUnit? unitField}) {
    CqlDate? reduced = copy();
    if (unitField != null && unitField != CqlDateTimeUnit.millisecond) {
      final fields = [
        CqlDateTimeUnit.year,
        CqlDateTimeUnit.month,
        CqlDateTimeUnit.day,
        CqlDateTimeUnit.hour,
        CqlDateTimeUnit.minute,
        CqlDateTimeUnit.second,
        CqlDateTimeUnit.millisecond,
      ];
      final fieldIndex = fields.indexOf(unitField);
      if (fieldIndex != -1) {
        final fieldsToRemove = fields.sublist(fieldIndex + 1);
        for (final field in fieldsToRemove) {
          final nullFields = reduced?.value.value == null
              ? null
              : _setFieldToNull(reduced!.value.value!, field);
          reduced = nullFields == null ? null : fromDateTime(nullFields);
        }
      }
    }
    return reduced;
  }

  @override
  CqlDate fromDateTime(DateTime dateTime) {
    return CqlDate(dateTime.year, dateTime.month, dateTime.day);
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
      if (field == CqlDateTimeUnit.second) {
        final aMillisecond = a[CqlDateTimeUnit.millisecond] != null
            ? a[CqlDateTimeUnit.millisecond]
            : 0;
        final aSecondAndMillisecond = a[field] + aMillisecond / 1000;
        final bMillisecond = b[CqlDateTimeUnit.millisecond] != null
            ? b[CqlDateTimeUnit.millisecond]
            : 0;
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

bool isPrecisionUnspecifiedOrGreaterThanDay(dynamic precision) {
  return precision == null || RegExp(r'^h|mi|s').hasMatch(precision);
}

DateTime endOf(DateTime dateTime, CqlDateTimeUnit unit) {
  switch (unit) {
    case CqlDateTimeUnit.year:
      return DateTime(dateTime.year, 12, 31, 23, 59, 59, 999);
    case CqlDateTimeUnit.month:
      final nextMonth = dateTime.month < 12 ? dateTime.month + 1 : 1;
      final nextYear = nextMonth == 1 ? dateTime.year + 1 : dateTime.year;
      final endOfMonth = DateTime(nextYear, nextMonth, 0, 23, 59, 59, 999);
      return endOfMonth;
    case CqlDateTimeUnit.week:
      final diff = 7 - dateTime.weekday;
      final endOfWeek = dateTime.add(Duration(days: diff)).subtract(Duration(
          seconds: dateTime.second,
          milliseconds: dateTime.millisecond,
          microseconds: dateTime.microsecond));
      return endOfWeek;
    case CqlDateTimeUnit.day:
      return DateTime(
          dateTime.year, dateTime.month, dateTime.day, 23, 59, 59, 999);
    case CqlDateTimeUnit.hour:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, 59, 59, 999);
    case CqlDateTimeUnit.minute:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute, 59, 999);
    case CqlDateTimeUnit.second:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute, dateTime.second, 999);
    case CqlDateTimeUnit.millisecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          999);
    default:
      throw ArgumentError('Invalid unit: $unit');
  }
}

DateTime startOf(DateTime dateTime, CqlDateTimeUnit unit) {
  switch (unit) {
    case CqlDateTimeUnit.year:
      return DateTime(dateTime.year);
    case CqlDateTimeUnit.month:
      final nextMonth = dateTime.month < 12 ? dateTime.month + 1 : 1;
      final nextYear = nextMonth == 1 ? dateTime.year + 1 : dateTime.year;
      return DateTime(nextYear, nextMonth, 1);
    case CqlDateTimeUnit.week:
      final diff = dateTime.weekday - DateTime.monday;
      return dateTime.subtract(Duration(days: diff));
    case CqlDateTimeUnit.day:
      return DateTime(dateTime.year, dateTime.month, dateTime.day);
    case CqlDateTimeUnit.hour:
      return DateTime(
          dateTime.year, dateTime.month, dateTime.day, dateTime.hour);
    case CqlDateTimeUnit.minute:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute);
    case CqlDateTimeUnit.second:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute, dateTime.second);
    case CqlDateTimeUnit.millisecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond);
    case CqlDateTimeUnit.microsecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond);
    default:
      throw ArgumentError('Invalid unit: $unit');
  }
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

DateTime truncateLuxonDateTime(DateTime luxonDT, CqlDateTimeUnit unit) {
  // Truncating by week (to the previous Sunday) requires different logic than the rest
  if (unit == 'week') {
    // Sunday is ISO weekday 7
    if (luxonDT.weekday != DateTime.sunday) {
      luxonDT = luxonDT
          .subtract(Duration(days: luxonDT.weekday - DateTime.sunday))
          .subtract(Duration(days: 7));
    }
    unit = CqlDateTimeUnit.day;
  }

  return startOf(luxonDT, unit);
}

int? wholeLuxonDuration(Duration duration, CqlDateTimeUnit unit) {
  final num? value = inUnit(duration, unit);
  return value == null
      ? null
      : value >= 0
          ? value.floor()
          : value.ceil();
}

num? inUnit(Duration duration, CqlDateTimeUnit unit) {
  switch (unit) {
    case CqlDateTimeUnit.year:
      return duration.inDays / 365;
    case CqlDateTimeUnit.month:
      return duration.inDays / 30;
    case CqlDateTimeUnit.week:
      return duration.inDays / 7;
    case CqlDateTimeUnit.day:
      return duration.inDays;
    case CqlDateTimeUnit.hour:
      return duration.inHours;
    case CqlDateTimeUnit.minute:
      return duration.inMinutes;
    case CqlDateTimeUnit.second:
      return duration.inSeconds;
    case CqlDateTimeUnit.millisecond:
      return duration.inMilliseconds;
    case CqlDateTimeUnit.microsecond:
      return duration.inMicroseconds;
  }
}

DateTime _setFieldToNull(DateTime dateTime,
    [CqlDateTimeUnit field = CqlDateTimeUnit.millisecond]) {
  switch (field) {
    case CqlDateTimeUnit.year:
      return DateTime(dateTime.year);
    case CqlDateTimeUnit.month:
      return DateTime(dateTime.year, dateTime.month);
    case CqlDateTimeUnit.day:
      return DateTime(dateTime.year, dateTime.month, dateTime.day);
    case CqlDateTimeUnit.hour:
      return DateTime(
          dateTime.year, dateTime.month, dateTime.day, dateTime.hour);
    case CqlDateTimeUnit.minute:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute);
    case CqlDateTimeUnit.second:
      return DateTime(dateTime.year, dateTime.month, dateTime.day,
          dateTime.hour, dateTime.minute, dateTime.second);
    case CqlDateTimeUnit.millisecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond);
    case CqlDateTimeUnit.microsecond:
      return DateTime(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond);
    default:
      return dateTime; // No modification for unknown field
  }
}
