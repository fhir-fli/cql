import 'package:fhir/r4.dart';

import '../cql.dart';

final utils = UcumLhcUtils.getInstance();

const CQL_TO_UCUM_DATE_UNITS = {
  'years': 'a_g',
  'year': 'a_g',
  'months': 'mo_g',
  'month': 'mo_g',
  'weeks': 'wk',
  'week': 'wk',
  'days': 'd',
  'day': 'd',
  'hours': 'h',
  'hour': 'h',
  'minutes': 'min',
  'minute': 'min',
  'seconds': 's',
  'second': 's',
  'milliseconds': 'ms',
  'millisecond': 'ms'
};

const UCUM_TO_CQL_DATE_UNITS = {
  'a': 'year',
  'a_j': 'year',
  'a_g': 'year',
  'mo': 'month',
  'mo_j': 'month',
  'mo_g': 'month',
  'wk': 'week',
  'd': 'day',
  'h': 'hour',
  'min': 'minute',
  's': 'second',
  'ms': 'millisecond'
};

final unitValidityCache = Map<String, dynamic>();

Map<String, dynamic>? checkUnit(dynamic unit,
    [bool allowEmptyUnits = true, bool allowCQLDateUnits = true]) {
  if (allowEmptyUnits) {
    unit = fixEmptyUnit(unit);
  }
  if (allowCQLDateUnits) {
    unit = fixCQLDateUnit(unit);
  }
  if (!unitValidityCache.containsKey(unit)) {
    final result = utils.validateUnitString(unit, suggest: true);
    if (result.status == 'valid') {
      unitValidityCache[unit] = {'valid': true};
    } else {
      var msg = 'Invalid UCUM unit: \'$unit\'.';
      if (result.ucumCode != null) {
        msg += ' Did you mean \'${result.ucumCode}\'?';
      }
      unitValidityCache[unit] = {'valid': false, 'message': msg};
    }
  }
  return unitValidityCache[unit];
}

num? convertUnit(FhirDecimal fromVal, String fromUnit, String toUnit,
    [bool adjustPrecision = true]) {
  fromUnit = fixUnit(fromUnit);
  toUnit = fixUnit(toUnit);

  final result = utils.convertUnitTo(fromVal.value, fromUnit, toUnit);
  if (result.status != 'succeeded') {
    return null;
  }
  return adjustPrecision
      ? decimalAdjust((num number) => number.round(), result.toVal, -8)
      : result.toVal;
}

List<dynamic> normalizeUnitsWhenPossible(
    dynamic val1, dynamic unit1, dynamic val2, dynamic unit2) {
  final useCQLDateUnits = CQL_TO_UCUM_DATE_UNITS.containsKey(unit1) &&
      CQL_TO_UCUM_DATE_UNITS.containsKey(unit2);

  String resultConverter(dynamic unit) {
    return useCQLDateUnits ? convertToCQLDateUnit(unit) : unit;
  }

  unit1 = fixUnit(unit1);
  unit2 = fixUnit(unit2);

  if (unit1 == unit2) {
    return [val1, unit1, val2, unit2];
  }

  final baseUnit1 = getBaseUnitAndPower(unit1)[0];
  final baseUnit2 = getBaseUnitAndPower(unit2)[0];
  final result = convertToBaseUnit(val2, unit2, baseUnit1);

  if (result[0] == null) {
    return [val1, resultConverter(unit1), val2, resultConverter(unit2)];
  }

  final newVal2 = result[0] as num;
  final newUnit2 = result[1];

  if (newVal2 >= val2) {
    return [val1, resultConverter(unit1), newVal2, resultConverter(newUnit2)];
  }

  final result2 = convertToBaseUnit(val1, unit1, baseUnit2);

  if (result2[0] == null) {
    return [val1, resultConverter(unit1), newVal2, resultConverter(newUnit2)];
  }

  final newVal1 = result2[0] as num;
  final newUnit1 = result2[1];

  return [newVal1, resultConverter(newUnit1), val2, resultConverter(unit2)];
}

String? convertToCQLDateUnit(dynamic unit) {
  if (CQL_TO_UCUM_DATE_UNITS.containsKey(unit)) {
    return unit.replaceAll(RegExp(r's$'), '');
  } else if (UCUM_TO_CQL_DATE_UNITS.containsKey(unit)) {
    return UCUM_TO_CQL_DATE_UNITS[unit]!;
  } else {
    return null;
  }
}

int? compareUnits(dynamic unit1, dynamic unit2) {
  try {
    final c = convertUnit(1, unit1, unit2);
    if (c != null) {
      if (c > 1) {
        return 1;
      } else if (c < 1) {
        return -1;
      }
      return 0;
    }
  } catch (e) {
    return null;
  }
  return null;
}

dynamic getProductOfUnits(dynamic unit1, dynamic unit2) {
  unit1 = fixEmptyUnit(unit1);
  unit2 = fixEmptyUnit(unit2);

  if (!(checkUnit(unit1)?['valid'] ?? false) ||
      !(checkUnit(unit2)?['valid'] ?? false)) {
    return null;
  }

  if (unit1.indexOf('/') >= 0 || unit2.indexOf('/') >= 0) {
    final match1 = RegExp(r'([^/]*)(\/(.*))?').firstMatch(unit1);
    final match2 = RegExp(r'([^/]*)(\/(.*))?').firstMatch(unit2);

    final newNum = getProductOfUnits(match1?[1], match2?[1]);
    final newDen = getProductOfUnits(match1?[3], match2?[3]);

    return getQuotientOfUnits(newNum, newDen);
  }

  final factorPowerMap = <String, int>{};
  final factors = [...unit1.split('.'), ...unit2.split('.')];
  factors.forEach((factor) {
    final List<dynamic> baseAndPower = getBaseUnitAndPower(factor);
    final baseUnit = baseAndPower[0] as String;
    final power = baseAndPower[1] as int;

    if (baseUnit == '1' || power == 0) {
      return;
    }

    final accumulatedPower = (factorPowerMap[baseUnit] ?? 0) + power;
    factorPowerMap[baseUnit] = accumulatedPower;
  });

  final result = factorPowerMap.entries
      .map((entry) => '${entry.key}${entry.value > 1 ? entry.value : ''}')
      .join('.');
  return fixUnit(result);
}

dynamic getQuotientOfUnits(dynamic unit1, dynamic unit2) {
  unit1 = fixEmptyUnit(unit1);
  unit2 = fixEmptyUnit(unit2);

  if (!(checkUnit(unit1)?['valid'] ?? false) ||
      !(checkUnit(unit2)?['valid'] ?? false)) {
    return null;
  }

  if (unit1.indexOf('/') == -1 && unit2.indexOf('/') == -1) {
    final factorPowerMap = <String, int>{};
    unit1.split('.').forEach((factor) {
      final List<dynamic> baseAndPower = getBaseUnitAndPower(factor);
      final baseUnit = baseAndPower[0] as String;
      final power = baseAndPower[1] as int;

      final accumulatedPower = (factorPowerMap[baseUnit] ?? 0) + power;
      factorPowerMap[baseUnit] = accumulatedPower;
    });

    unit2.split('.').forEach((factor) {
      final List<dynamic> baseAndPower = getBaseUnitAndPower(factor);
      final baseUnit = baseAndPower[0] as String;
      final power = baseAndPower[1] as int;

      final accumulatedPower = (factorPowerMap[baseUnit] ?? 0) - power;
      factorPowerMap[baseUnit] = accumulatedPower;
    });

    final numerator = factorPowerMap.entries
        .where((entry) => entry.key != '1' && entry.value > 0)
        .map((entry) => '${entry.key}${entry.value > 1 ? entry.value : ''}')
        .join('.');

    var denominator = factorPowerMap.entries
        .where((entry) => entry.key != '1' && entry.value < 0)
        .map((entry) =>
            '${entry.key}${entry.value < -1 ? entry.value * -1 : ''}')
        .join('.');

    denominator =
        RegExp(r'[.]').hasMatch(denominator) ? '($denominator)' : denominator;
    return fixUnit('$numerator${denominator != '' ? '/$denominator' : ''}');
  }

  if (unit1 == unit2) {
    return '1';
  } else if (unit2 == '1') {
    return unit1;
  } else {
    final denominator = RegExp(r'[./]').hasMatch(unit2) ? '($unit2)' : unit2;

    if (unit1 == '1') {
      return '/$denominator';
    }
    return '$unit1/$denominator';
  }
}

List<dynamic> convertToBaseUnit(
    dynamic fromVal, dynamic fromUnit, dynamic toBaseUnit) {
  final fromPower = getBaseUnitAndPower(fromUnit)[1];
  final toUnit = fromPower == 1 ? toBaseUnit : '$toBaseUnit$fromPower';
  final newVal = convertUnit(fromVal, fromUnit, toUnit);
  return newVal != null ? [newVal, toUnit] : [];
}

List<dynamic> getBaseUnitAndPower(dynamic unit) {
  if (RegExp(r'[./]').hasMatch(unit)) {
    return [unit, 1];
  }
  unit = fixUnit(unit);
  final match =
      RegExp(r'^(.*[^-\d])?([-]?\d*)$').firstMatch(unit)?.groups([1, 2]);
  var term = match?[0] ?? '';
  var power = match?[1] ?? '1';

  if (term.isEmpty) {
    term = power;
    power = '1';
  } else if (power.isEmpty) {
    power = '1';
  }

  return [term, int.tryParse(power)];
}

dynamic fixEmptyUnit(dynamic unit) {
  if (unit == null || (unit is String && unit.trim().isEmpty)) {
    return '1';
  }
  return unit;
}

dynamic fixCQLDateUnit(dynamic unit) {
  return CQL_TO_UCUM_DATE_UNITS[unit] ?? unit;
}

dynamic fixUnit(dynamic unit) {
  return fixCQLDateUnit(fixEmptyUnit(unit));
}
