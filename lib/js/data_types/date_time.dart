import 'package:fhir/primitive_types/primitive_types.dart';

import '../cql.dart';

final MIN_DATETIME_VALUE = FhirDateTime('0001-01-01T00:00:00.000');
final MAX_DATETIME_VALUE = FhirDateTime('9999-12-31T23:59:59.999');
final MIN_DATE_VALUE = FhirDate('0001-01-01');
final MAX_DATE_VALUE = FhirDate('9999-12-31');
final MIN_TIME_VALUE = FhirTime('00:00:00.000');
final MAX_TIME_VALUE = FhirTime('23:59:59.999');

enum CqlDateTimeUnit {
  year,
  month,
  week,
  day,
  hour,
  minute,
  second,
  millisecond,
}

const precisionToUnit = <DateTimePrecision, CqlDateTimeUnit>{
  DateTimePrecision.yyyy: CqlDateTimeUnit.year,
  DateTimePrecision.yyyy_MM: CqlDateTimeUnit.month,
  DateTimePrecision.yyyy_MM_dd: CqlDateTimeUnit.day,
  DateTimePrecision.yyyy_MM_dd_T_Z: CqlDateTimeUnit.day,
  DateTimePrecision.yyyy_MM_dd_T_ZZ: CqlDateTimeUnit.day,
  DateTimePrecision.yyyy_MM_dd_T_HH: CqlDateTimeUnit.hour,
  DateTimePrecision.yyyy_MM_dd_T_HH_Z: CqlDateTimeUnit.hour,
  DateTimePrecision.yyyy_MM_dd_T_HHZZ: CqlDateTimeUnit.hour,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm: CqlDateTimeUnit.minute,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_Z: CqlDateTimeUnit.minute,
  DateTimePrecision.yyyy_MM_dd_T_HH_mmZZ: CqlDateTimeUnit.minute,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss: CqlDateTimeUnit.second,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z: CqlDateTimeUnit.second,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ: CqlDateTimeUnit.second,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS: CqlDateTimeUnit.millisecond,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z: CqlDateTimeUnit.millisecond,
  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ: CqlDateTimeUnit.millisecond,
  DateTimePrecision.full: CqlDateTimeUnit.millisecond
};

abstract class AbstractDate {
  DateTime dateTime;
  DateTimePrecision precision;

  /// Constructors
  AbstractDate({
    required this.dateTime,
    required this.precision,
  });

  AbstractDate fromDateTime(DateTime dateTime);
  AbstractDate copy();

  /// Getters and Getter-like functions
  // CqlDateTimeUnit? getPrecision() => UNIT_PRECISION_VALUE_MAP[unit];
  CqlDateTime? getDateTime();

  int? get year =>
      precision == DateTimePrecision.invalid ? null : dateTime.year;
  int? get month =>
      [DateTimePrecision.invalid, DateTimePrecision.yyyy].contains(precision)
          ? null
          : dateTime.month;
  int? get day => [
        DateTimePrecision.invalid,
        DateTimePrecision.yyyy,
        DateTimePrecision.yyyy_MM
      ].contains(precision)
          ? null
          : dateTime.day;
  int? get timeZoneOffset => [
        DateTimePrecision.yyyy,
        DateTimePrecision.yyyy_MM,
        DateTimePrecision.yyyy_MM_dd,
        DateTimePrecision.yyyy_MM_dd_T_HH,
        DateTimePrecision.yyyy_MM_dd_T_HH_mm,
        DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss,
        DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS
      ].contains(precision)
          ? null
          : [
              DateTimePrecision.yyyy_MM_dd_T_Z,
              DateTimePrecision.yyyy_MM_dd_T_HH_Z,
              DateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
              DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
              DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
              DateTimePrecision.full
            ].contains(precision)
              ? dateTime.timeZoneOffset.inHours
              : [
                  DateTimePrecision.yyyy_MM_dd_T_ZZ,
                  DateTimePrecision.yyyy_MM_dd_T_HHZZ,
                  DateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
                  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
                  DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ
                ].contains(precision)
                  ? 0
                  : null;

  bool get isDate;
  bool get isDateTime;

  CqlDateTimeUnit? get unit => precisionToUnit[precision];

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
    if (precision == DateTimePrecision.invalid) {
      throw Exception(
          'Tried to ceiling a field that has no ceiling value: $field');
    }
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

  int? unitToValue(CqlDateTimeUnit? unit) => unit == CqlDateTimeUnit.year
      ? year
      : unit == CqlDateTimeUnit.month
          ? month
          : unit == CqlDateTimeUnit.day
              ? day
              : null;

  bool isPrecise() => [year, month, day].every((field) => field != null);

  bool isImprecise() => !isPrecise();

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

  bool isLessPrecise(other) => !isSamePrecision(other) && !isMorePrecise(other);

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

  bool equals(other) => compareWithDefaultResult(this, other, null);

  bool equivalent(other) => compareWithDefaultResult(this, other, false);

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
      if (timeZoneOffset != other.timeZoneOffset) {
        other = other.convertTotimeZoneOffset(timeZoneOffset);
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
      if (timeZoneOffset != other.timeZoneOffset) {
        other = other.convertTotimeZoneOffset(timeZoneOffset);
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
      if (timeZoneOffset != other.timeZoneOffset) {
        other = other.convertTotimeZoneOffset(timeZoneOffset);
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
    if (!(other is CqlDate || other is CqlDateTime)) {
      return null;
    } else if (isDate && other is CqlDateTime) {
      return before(other, precision);
    } else if (isDateTime && other is CqlDate) {
      other = other.getDateTime();
    }

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timeZoneOffset != null &&
          timeZoneOffset != (other as CqlDateTime).timeZoneOffset) {
        other = other.convertTotimeZoneOffset(timeZoneOffset!);
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
    if (!(other is CqlDate || other is CqlDateTime)) {
      return null;
    } else if (isDate && other is CqlDateTime) {
      return after(other, precision);
    } else if (isDateTime && other is CqlDate) {
      other = other.getDateTime();
    }

    if (precision != null &&
        ![CqlDateTimeUnit.year, CqlDateTimeUnit.month, CqlDateTimeUnit.day]
            .contains(precision)) {
      throw Exception('Invalid precision: $precision');
    }

    if (isPrecisionUnspecifiedOrGreaterThanDay(precision)) {
      if (timeZoneOffset != null &&
          timeZoneOffset != (other as CqlDateTime).timeZoneOffset) {
        other = other.convertTotimeZoneOffset(timeZoneOffset!);
      }
    }

    for (final field in [
      CqlDateTimeUnit.year,
      CqlDateTimeUnit.month,
      CqlDateTimeUnit.day
    ]) {
      if (unitToValue(field) != null &&
          (other as CqlDateTime).unitToValue(field) != null) {
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
    if (offset == 0) {
      return copy();
    }

    // You would typically use date-time libraries for date manipulation.
    // For this translation, I'll simulate the behavior using Dart's DateTime.
    DateTime? dateTime = getDateTime()?.dateTime;

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
          if (year == null) {
            return null;
          } else if (field == CqlDateTimeUnit.month) {
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
      // TODO(Dokotela) not setup to do this
      // if (isDateTime && timeZoneOffset == null) {
      //   result?.timeZoneOffset = null;
      // }

      return result;
    }

    throw Exception('Unsupported field: $field');
  }

  Uncertainty? durationBetween(dynamic other, CqlDateTimeUnit unitField);

  Uncertainty? differenceBetween(dynamic other, CqlDateTimeUnit unitField);

  Uncertainty? toUncertainty();
}

class CqlDateTime extends AbstractDate {
  /// Constructors
  CqlDateTime({
    required super.dateTime,
    required super.precision,
  });

  CqlDateTime.fromDateTime(DateTime dateTime, [DateTimePrecision? precision])
      : super(
            dateTime: dateTime, precision: precision ?? DateTimePrecision.full);

  @override
  AbstractDate fromDateTime(DateTime dateTime) =>
      CqlDateTime.fromDateTime(dateTime);

  static CqlDateTime? parse(String? string) {
    if (string == null) {
      return null;
    }
    final precision = precisionFromDateTimeString(string);
    if (precision == DateTimePrecision.invalid) {
      return null;
    }
    final dateTime = precision.parse(string);
    return dateTime == null
        ? null
        : CqlDateTime.fromDateTime(dateTime, precision);
  }

  CqlDateTime copy() =>
      CqlDateTime(dateTime: this.dateTime, precision: this.precision);

  /// Getters and Getter-like functions
  CqlDateTime? getDateTime() => CqlDateTime.fromDateTime(dateTime);

  CqlDate? getDate() => CqlDate.fromDateTime(dateTime);

  // Times no longer have timeZoneOffsets, so we must explicitly set it to null
  CqlDateTime getTime() =>
      CqlDateTime(dateTime: DateTime(0), precision: precision);

  bool get isDateTime => true;
  bool get isDate => false;

  AbstractDate? successor() {
    switch (unit) {
      case CqlDateTimeUnit.year:
        return this.add(1, CqlDateTimeUnit.year);
      case CqlDateTimeUnit.month:
        return this.add(1, CqlDateTimeUnit.month);
      case CqlDateTimeUnit.day:
        return this.add(1, CqlDateTimeUnit.day);
      case CqlDateTimeUnit.hour:
        return this.add(1, CqlDateTimeUnit.hour);
      case CqlDateTimeUnit.minute:
        return this.add(1, CqlDateTimeUnit.minute);
      case CqlDateTimeUnit.second:
        return this.add(1, CqlDateTimeUnit.second);
      case CqlDateTimeUnit.millisecond:
        return this.add(1, CqlDateTimeUnit.millisecond);
      default:
        return null;
    }
  }

  AbstractDate? predecessor() {
    switch (unit) {
      case CqlDateTimeUnit.year:
        return this.add(-1, CqlDateTimeUnit.year);
      case CqlDateTimeUnit.month:
        return this.add(-1, CqlDateTimeUnit.month);
      case CqlDateTimeUnit.day:
        return this.add(-1, CqlDateTimeUnit.day);
      case CqlDateTimeUnit.hour:
        return this.add(-1, CqlDateTimeUnit.hour);
      case CqlDateTimeUnit.minute:
        return this.add(-1, CqlDateTimeUnit.minute);
      case CqlDateTimeUnit.second:
        return this.add(-1, CqlDateTimeUnit.second);
      case CqlDateTimeUnit.millisecond:
        return this.add(-1, CqlDateTimeUnit.millisecond);
      default:
        return null;
    }
  }

  CqlDateTime? convertTotimeZoneOffset([int timeZoneOffset = 0]) {
    final shiftedDT = CqlDateTime(
        dateTime: applytimeZoneOffset(dateTime, timeZoneOffset * 60),
        precision: precision);
    return shiftedDT.reducedPrecision(unitField: unit);
  }

  Uncertainty? differenceBetween(dynamic other, CqlDateTimeUnit unitField) {
    other = this._implicitlyConvert(other);
    if (other == null || other is! CqlDateTime) {
      return null;
    }

    /// According to CQL spec:
    /// * "Difference calculations are performed by truncating the datetime
    ///   values at the next precision, and then performing the corresponding
    ///   duration calculation on the truncated values."
    final Uncertainty? a = this.toUncertainty();
    final Uncertainty? b = other.toUncertainty();
    a?.low = truncateDateTime(a.low, unitField);
    a?.high = truncateDateTime(a.high, unitField);
    b?.low = truncateDateTime(b.low, unitField);
    b?.high = truncateDateTime(b.high, unitField);

    return a == null || b == null
        ? null
        : Uncertainty(
            low: wholeLuxonDuration(
                (a.low as DateTime).difference(b.high as DateTime), unitField),
            high: wholeLuxonDuration(
                (a.high as DateTime).difference(b.low as DateTime), unitField),
          );
  }

  Uncertainty? durationBetween(dynamic other, CqlDateTimeUnit unitField) {
    other = this._implicitlyConvert(other);
    if (other == null || other is! CqlDateTime) {
      return null;
    }
    final Uncertainty? a = this.toUncertainty();
    final Uncertainty? b = other.toUncertainty();
    print(a);
    print(b);
    print((a?.low as DateTime).difference(b?.high as DateTime));
    print((b?.low as DateTime).difference(a?.high as DateTime));
    return a == null || b == null
        ? null
        : Uncertainty(
            low: wholeLuxonDuration(
                (a.low as DateTime).difference(b.high as DateTime), unitField),
            high: wholeLuxonDuration(
                (b.low as DateTime).difference(a.high as DateTime), unitField),
          );
  }

  bool isUTC() => timeZoneOffset == 0;

  Uncertainty? toDurationUncertainty() {
    final DateTime low = toLuxonDateTime();
    final high = unit == null ? dateTime : endOf(low, unit!);
    return Uncertainty(low: low, high: high);
  }

  Uncertainty? toUncertainty() {
    final DateTime low = unit == null ? dateTime : startOf(dateTime, unit!);
    final high = unit == null ? dateTime : endOf(low, unit!);
    return Uncertainty(low: low, high: high);
  }

  DateTime toLuxonDateTime() {
    final offsetMins = [
      DateTimePrecision.yyyy_MM_dd_T_Z,
      DateTimePrecision.yyyy_MM_dd_T_ZZ,
      DateTimePrecision.yyyy_MM_dd_T_HH_Z,
      DateTimePrecision.yyyy_MM_dd_T_HHZZ,
      DateTimePrecision.yyyy_MM_dd_T_HH_mm_Z,
      DateTimePrecision.yyyy_MM_dd_T_HH_mmZZ,
      DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_Z,
      DateTimePrecision.yyyy_MM_dd_T_HH_mm_ssZZ,
      DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSS_Z,
      DateTimePrecision.yyyy_MM_dd_T_HH_mm_ss_SSSZZ,
      DateTimePrecision.full
    ].contains(precision)
        ? DateTime.now().timeZoneOffset.inMinutes * -1
        : dateTime.timeZoneOffset.inMinutes * 60;

    return dateTime.add(Duration(minutes: offsetMins));
  }

  DateTime applytimeZoneOffset(DateTime date, int offsetMinutes) {
    final sign = offsetMinutes.isNegative ? -1 : 1;
    final duration = Duration(minutes: offsetMinutes.abs());

    return date.add(Duration(
      hours: (duration.inHours * sign).toInt(),
      minutes: (duration.inMinutes % 60) * sign,
    ));
  }

  String toJSON() => this.toString();

  String _pad(int num) => num.toString().padLeft(2, '0');

  String toString() => isTime() ? toStringTime() : toStringDateTime();

  String toStringTime() {
    String str = '';
    final hour = [
      CqlDateTimeUnit.hour,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.second,
      CqlDateTimeUnit.millisecond,
    ].contains(unit);
    final minute = [
      CqlDateTimeUnit.hour,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.second,
      CqlDateTimeUnit.millisecond,
    ].contains(unit);
    final second = [
      CqlDateTimeUnit.hour,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.second,
      CqlDateTimeUnit.millisecond,
    ].contains(unit);
    final millisecond = [
      CqlDateTimeUnit.hour,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.minute,
      CqlDateTimeUnit.second,
      CqlDateTimeUnit.millisecond,
    ].contains(unit);
    if (hour) {
      str += _pad(dateTime.hour);
      if (minute) {
        str += ':' + _pad(dateTime.minute);
        if (second) {
          str += ':' + _pad(dateTime.second);
          if (millisecond) {
            str += '.' +
                (dateTime.millisecond < 10
                    ? '00'
                    : dateTime.millisecond < 100
                        ? '0'
                        : '') +
                dateTime.millisecond.toString();
          }
        }
      }
    }
    return str;
  }

  String toStringDateTime() {
    String str = '';
    str += year.toString();
    if (month != null) {
      str += '-' + _pad(month!);
      if (day != null) {
        str += '-' + _pad(day!);
        final stringTime = toStringTime();
        str += stringTime == '' ? stringTime : 'T$stringTime';
      }
    }

    if (timeZoneOffset != null) {
      str += dateTime.timeZoneOffset.inHours < 0 ? '-' : '+';
      final offsetHours = dateTime.timeZoneOffset.abs().inHours.floor();
      str += _pad(offsetHours);
      final offsetMin =
          ((dateTime.timeZoneOffset.abs().inHours - offsetHours) * 60).floor();
      str += ':' + _pad(offsetMin);
    }

    return str;
  }

  bool isTime() => year == 0 && month == 1 && day == 1;

  dynamic _implicitlyConvert(dynamic other) {
    if (other != null && other is CqlDate) {
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
          final nullFields = reduced?.dateTime == null
              ? null
              : _setFieldToNull(reduced!.dateTime, field);
          reduced =
              nullFields == null ? null : CqlDateTime.fromDateTime(nullFields);
        }
      }
    }
    return reduced;
  }
}

class CqlDate extends AbstractDate {
  CqlDate({required super.dateTime, required super.precision});

  CqlDate.fromDateTime(DateTime dateTime, [DateTimePrecision? precision])
      : super(
            dateTime: dateTime,
            precision: precision ?? DateTimePrecision.yyyy_MM_dd);

  static CqlDate? parse(String? string) {
    if (string == null) {
      return null;
    }

    final DateTimePrecision precision = precisionFromDateTimeString(string);

    if (!isValidDatePrecision(precision)) {
      return null;
    }

    final DateTime? dateTime = precision.parse(string);
    return dateTime == null ? null : CqlDate.fromDateTime(dateTime);
  }

  bool get isDate => true;

  bool get isDateTime => false;

  CqlDate copy() => CqlDate(dateTime: dateTime, precision: precision);

  AbstractDate? successor() {
    if (day != null) {
      return add(1, CqlDateTimeUnit.day);
    } else if (month != null) {
      return add(1, CqlDateTimeUnit.month);
    } else
      return add(1, CqlDateTimeUnit.year);
  }

  AbstractDate? predecessor() {
    if (day != null) {
      return add(-1, CqlDateTimeUnit.day);
    } else if (month != null) {
      return add(-1, CqlDateTimeUnit.month);
    } else
      return add(-1, CqlDateTimeUnit.year);
  }

  Uncertainty? differenceBetween(other, CqlDateTimeUnit unitField) {
    if (other != null && other is CqlDateTime) {
      return other.differenceBetween(this, unitField);
    }
    if (other == null || other is! CqlDate) {
      return null;
    }

    final a = this.toUncertainty();
    final b = other.toUncertainty();

    a?.low = truncateDateTime(a.low, unitField);
    a?.high = truncateDateTime(a.high, unitField);
    b?.low = truncateDateTime(b.low, unitField);
    b?.high = truncateDateTime(b.high, unitField);

    return a == null || b == null
        ? null
        : Uncertainty(
            low: wholeLuxonDuration(
                (a.low as DateTime).difference(b.high as DateTime), unitField),
            high: wholeLuxonDuration(
                (b.low as DateTime).difference(a.high as DateTime), unitField));
  }

  Uncertainty? durationBetween(other, unitField) {
    if (other != null && other is CqlDateTime) {
      return other.durationBetween(this, unitField);
    }
    if (other == null || other is! CqlDate) {
      return null;
    }

    final a = toUncertainty();
    final b = other.toUncertainty();

    return a == null || b == null
        ? null
        : Uncertainty(
            low: wholeLuxonDuration(
                (a.high as DateTime).difference(b.low as DateTime), unitField),
            high: wholeLuxonDuration(
                (b.high as DateTime).difference(a.low as DateTime), unitField));
  }

  Uncertainty? toUncertainty([CqlDateTimeUnit? unitField]) {
    final DateTime low = unit == null ? dateTime : startOf(dateTime, unit!);
    final high = unit == null ? dateTime : endOf(low, unit!);
    return Uncertainty(low: low, high: high);
  }

  String toJSON() => this.toString();

  @override
  String toString() {
    String str = '';
    str += year.toString();
    if (month != null) {
      str += '-' + month.toString().padLeft(2, '0');
      if (day != null) {
        str += '-' + day.toString().padLeft(2, '0');
      }
    }
    return str;
  }

  /// from the spec: the result will be a DateTime with the time components
  /// unspecified, except for the timezone offset, which will be set to the
  /// timezone offset of the evaluation request timestamp. (this last part is
  /// achieved by passing in the timeZoneOffset from the context)
  CqlDateTime getDateTime() => CqlDateTime(
      dateTime:
          dateTime.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0),
      precision: dateTime.timeZoneOffset == Duration.zero
          ? DateTimePrecision.yyyy_MM_dd_T_Z
          : DateTimePrecision.yyyy_MM_dd_T_ZZ);

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
          final nullFields = reduced?.dateTime == null
              ? null
              : _setFieldToNull(reduced!.dateTime, field);
          reduced = nullFields == null ? null : fromDateTime(nullFields);
        }
      }
    }
    return reduced;
  }

  @override
  CqlDate fromDateTime(DateTime dateTime) =>
      CqlDate(dateTime: dateTime, precision: DateTimePrecision.yyyy_MM_dd);
}

bool compareWithDefaultResult(dynamic a, dynamic b, dynamic defaultResult) {
  if (!(a is CqlDate || a is CqlDateTime) || !(b is CqlDate || b is DateTime)) {
    return false;
  }

  if (a.timeZoneOffset != b.timeZoneOffset) {
    b = b.convertTotimeZoneOffset(a.timeZoneOffset);
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
      return dateTime.copyWith(
          month: 12,
          day: 31,
          hour: 23,
          minute: 59,
          second: 59,
          millisecond: 999);
    case CqlDateTimeUnit.month:
      final nextMonth = dateTime.month < 12 ? dateTime.month + 1 : 1;
      final nextYear = nextMonth == 1 ? dateTime.year + 1 : dateTime.year;
      final endOfMonth = dateTime.copyWith(
          year: nextYear,
          month: nextMonth,
          day: 0,
          hour: 23,
          minute: 59,
          second: 59,
          millisecond: 999);
      return endOfMonth;
    case CqlDateTimeUnit.week:
      final diff = 7 - dateTime.weekday;
      final endOfWeek = dateTime.add(Duration(days: diff)).subtract(Duration(
          seconds: dateTime.second, milliseconds: dateTime.millisecond));
      return endOfWeek;
    case CqlDateTimeUnit.day:
      return dateTime.copyWith(
          hour: 23, minute: 59, second: 59, millisecond: 999);
    case CqlDateTimeUnit.hour:
      return dateTime.copyWith(minute: 59, second: 59, millisecond: 999);
    case CqlDateTimeUnit.minute:
      return dateTime.copyWith(second: 59, millisecond: 999);
    case CqlDateTimeUnit.second:
      return dateTime.copyWith(millisecond: 999);
    case CqlDateTimeUnit.millisecond:
      return dateTime;
    default:
      throw ArgumentError('Invalid unit: $unit');
  }
}

DateTime startOf(DateTime dateTime, CqlDateTimeUnit unit) {
  switch (unit) {
    case CqlDateTimeUnit.year:
      return dateTime.copyWith(
          month: 1, day: 1, hour: 0, minute: 0, second: 0, millisecond: 0);
    case CqlDateTimeUnit.month:
      final nextMonth = dateTime.month < 12 ? dateTime.month + 1 : 1;
      final nextYear = nextMonth == 1 ? dateTime.year + 1 : dateTime.year;
      return dateTime.copyWith(
          year: nextYear,
          month: nextMonth,
          day: 1,
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0);
    case CqlDateTimeUnit.week:
      final diff = dateTime.weekday - DateTime.monday;
      return dateTime.subtract(Duration(days: diff));
    case CqlDateTimeUnit.day:
      return dateTime.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);
    case CqlDateTimeUnit.hour:
      return dateTime.copyWith(minute: 0, second: 0, millisecond: 0);
    case CqlDateTimeUnit.minute:
      return dateTime.copyWith(second: 0, millisecond: 0);
    case CqlDateTimeUnit.second:
      return dateTime.copyWith(millisecond: 0);
    case CqlDateTimeUnit.millisecond:
      return dateTime;
    default:
      throw ArgumentError('Invalid unit: $unit');
  }
}

bool isValidDatePrecision(DateTimePrecision precision) => [
      DateTimePrecision.yyyy,
      DateTimePrecision.yyyy_MM,
      DateTimePrecision.yyyy_MM_dd,
      DateTimePrecision.yyyy_MM_dd_T_Z,
      DateTimePrecision.yyyy_MM_dd_T_ZZ
    ].contains(precision);

bool isValidDateStringFormat(dynamic string) => string is! String
    ? false
    : isValidDatePrecision(precisionFromDateTimeString(string));

bool isValidDateTimeStringFormat(dynamic string) => string is! String
    ? false
    : precisionFromDateTimeString(string) != DateTimePrecision.invalid;

DateTime truncateDateTime(DateTime luxonDT, CqlDateTimeUnit unit) {
  // Truncating by week (to the previous Sunday) requires different logic than the rest
  if (unit == CqlDateTimeUnit.week) {
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
    default:
      return dateTime; // No modification for unknown field
  }
}
