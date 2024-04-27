import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:ucum/ucum.dart';

import '../../cql.dart';

abstract class LiteralType extends CqlExpression {
  @override
  String get type;
  String get valueType => '{urn:hl7-org:elm-types:r1}$type';

  static Type? typeToLiteral(Type type) {
    if (type == FhirBoolean) {
      return LiteralBoolean;
    } else if (type == FhirDate) {
      return LiteralDate;
    } else if (type == FhirDateTime) {
      return LiteralDateTime;
    } else if (type == FhirDecimal) {
      return LiteralDecimal;
    } else if (type == FhirInteger) {
      return LiteralInteger;
    } else if (type == FhirInteger64) {
      return LiteralLong;
    } else if (type == String) {
      return LiteralString;
    } else if (type == FhirTime) {
      return LiteralTime;
    } else if (type == ValidatedQuantity) {
      return LiteralQuantity;
    } else if (type == ValidatedRatio) {
      return LiteralRatio;
    } else if (type == Null) {
      return LiteralNull;
    } else {
      return null;
    }
  }

  static List<Type> get literalTypes => [
        LiteralBoolean,
        LiteralDate,
        LiteralDateTime,
        LiteralDecimal,
        LiteralInteger,
        LiteralLong,
        LiteralString,
        LiteralTime,
        LiteralQuantity,
        LiteralRatio,
        LiteralNull,
      ];
}

class LiteralNull extends LiteralType {
  LiteralNull();

  factory LiteralNull.fromJson(dynamic json) => LiteralNull();

  @override
  Map<String, dynamic> toJson() => {'type': type};

  @override
  String? execute(Map<String, dynamic> context) => null;

  @override
  String toString() => 'LiteralNull';

  @override
  String get type => 'Null';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [Null];
}

class LiteralBoolean extends LiteralType {
  final bool value;

  LiteralBoolean({required this.value});

  factory LiteralBoolean.fromJson(dynamic json) {
    if (json is bool) {
      return LiteralBoolean(
        value: json,
      );
    } else if (json is Map<String, dynamic>) {
      return LiteralBoolean(
        value: json['value'],
      );
    } else if (json is String && (json == 'true' || json == 'false')) {
      return LiteralBoolean(
        value: json == 'true',
      );
    }
    throw ArgumentError('LiteralBoolean: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  FhirBoolean execute(Map<String, dynamic> context) => FhirBoolean(value);

  @override
  String get type => 'Boolean';

  @override
  String toString() => 'LiteralBoolean: $value';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirBoolean];
}

class LiteralCode extends LiteralType {
  final String code;
  final String? display;
  final String? system;
  final String? version;

  LiteralCode({
    required this.code,
    this.display,
    this.system,
    this.version,
  });

  factory LiteralCode.fromJson(Map<String, dynamic> json) {
    return LiteralCode(
      code: json['code'],
      display: json['display'],
      system: json['system'],
      version: json['version'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      if (display != null) 'display': display,
      if (system != null) 'system': system,
      if (version != null) 'version': version,
    };
  }

  @override
  String get type => 'Code';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [CodeType];

  @override
  CodeType execute(Map<String, dynamic> context) => CodeType(
        code: code,
        display: display,
        system: system,
        version: version,
      );
}

class LiteralConcept extends LiteralType {
  final List<LiteralCode> codes;
  final String? display;

  LiteralConcept({
    required this.codes,
    this.display,
  });

  factory LiteralConcept.fromJson(Map<String, dynamic> json) {
    return LiteralConcept(
      codes: (json['codes'] as List)
          .map((code) => LiteralCode.fromJson(code))
          .toList(),
      display: json['display'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'codes': codes.map((code) => code.toJson()).toList(),
      if (display != null) 'display': display,
    };
  }

  @override
  String get type => 'Concept';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [ConceptType];

  @override
  ConceptType execute(Map<String, dynamic> context) {
    return ConceptType(
        display: display, codes: codes.map((e) => e.execute(context)).toList());
  }
}

abstract class LiteralVocabularyType extends LiteralType {
  final String id;
  final String? version;
  final String? name;

  LiteralVocabularyType({
    required this.id,
    this.version,
    this.name,
  });

  factory LiteralVocabularyType.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('codesystem')) {
      return LiteralValueSet.fromJson(json);
    } else {
      return LiteralCodeSystem.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson();
}

class LiteralValueSet extends LiteralVocabularyType {
  final List<LiteralCodeSystem>? codesystem;

  LiteralValueSet({
    required super.id,
    super.version,
    super.name,
    this.codesystem,
  });

  factory LiteralValueSet.fromJson(Map<String, dynamic> json) {
    return LiteralValueSet(
      id: json['id'],
      version: json['version'],
      name: json['name'],
      codesystem: (json['codesystem'] as List?)
          ?.map((cs) => LiteralCodeSystem.fromJson(cs))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (codesystem != null) {
      json['codesystem'] = codesystem!.map((cs) => cs.toJson()).toList();
    }
    return json;
  }

  @override
  String get type => 'ValueSet';
}

class LiteralCodeSystem extends LiteralVocabularyType {
  LiteralCodeSystem({
    required super.id,
    super.version,
    super.name,
  });

  factory LiteralCodeSystem.fromJson(Map<String, dynamic> json) {
    return LiteralCodeSystem(
      id: json['id'],
      version: json['version'],
      name: json['name'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  @override
  String get type => 'CodeSystem';
}

class LiteralDate extends LiteralType {
  final String value;

  LiteralDate({required this.value});

  factory LiteralDate.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDate(
        value: json,
      );
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value']) != null) {
      return LiteralDate(
        value: json['value'],
      );
    }
    throw ArgumentError('LiteralDate: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final date = FhirDate(value);
    return {
      'type': type,
      if (date.precision.hasYear)
        'year': LiteralInteger(value: date.year).toJson(),
      if (date.precision.hasMonth)
        'month': LiteralInteger(value: date.month).toJson(),
      if (date.precision.hasDay)
        'day': LiteralInteger(value: date.day).toJson(),
    };
  }

  @override
  FhirDate execute(Map<String, dynamic> context) => FhirDate(value);

  @override
  String get type => 'Date';

  @override
  String toString() => 'LiteralDate: $value';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirDate];
}

class LiteralDateTime extends LiteralType {
  final String value;

  LiteralDateTime({required this.value});

  factory LiteralDateTime.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDateTime(
        value: json,
      );
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value']) != null) {
      return LiteralDateTime(
        value: json['value'],
      );
    }
    throw ArgumentError('LiteralDateTime: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final dateTime = FhirDateTime(value);
    return {
      'type': type,
      'year': LiteralInteger(value: dateTime.year).toJson(),
      if (dateTime.precision.hasMonth)
        'month': LiteralInteger(value: dateTime.month).toJson(),
      if (dateTime.precision.hasDay)
        'day': LiteralInteger(value: dateTime.day).toJson(),
      if (dateTime.precision.hasHours)
        'hour': LiteralInteger(value: dateTime.hour).toJson(),
      if (dateTime.precision.hasMinutes)
        'minute': LiteralInteger(value: dateTime.minute).toJson(),
      if (dateTime.precision.hasSeconds)
        'second': LiteralInteger(value: dateTime.second).toJson(),
      if (dateTime.precision.hasMilliseconds)
        'millisecond': LiteralInteger(value: dateTime.millisecond).toJson(),
    };
  }

  @override
  String get type => 'DateTime';

  @override
  String toString() => 'LiteralDateTime: $value';

  @override
  FhirDateTime execute(Map<String, dynamic> context) => FhirDateTime(value);

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirDateTime];
}

class LiteralDecimal extends LiteralType {
  // TODO(Dokotela): in order to properly match decimal places
  final num value;
  final int? sigFigs;

  LiteralDecimal({required this.value, this.sigFigs});

  factory LiteralDecimal.fromString(String stringValue) {
    if (num.tryParse(stringValue) != null) {
      /// Remove any leading and trailing whitespaces
      String number = stringValue.trim();

      /// Check if the number includes a decimal point
      bool isDecimal = number.contains('.');

      /// Remove leading zeros, they are not significant
      number = number.replaceFirst(RegExp(r'^0+'), '');

      /// If the number is in decimal form, remove the decimal point for simplicity
      if (isDecimal) {
        number = number.replaceAll('.', '');
      }

      /// For a non-decimal number, trailing zeros are not significant
      if (!isDecimal) {
        number = number.replaceFirst(RegExp(r'0+$'), '');
      }

      // At this point, all remaining digits are significant
      return LiteralDecimal(
          value: num.parse(stringValue), sigFigs: number.length);
    }
    throw 'Incorrectly formed String for type LiteralDecimal: $stringValue';
  }

  factory LiteralDecimal.fromJson(dynamic json) {
    if (json is num) {
      return LiteralDecimal(
        value: json.toDouble(),
      );
    } else if (json is String && num.tryParse(json) != null) {
      return LiteralDecimal(
        value: num.parse(json),
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralDecimal(
          value: (json['value'] as num).toDouble(),
        );
      } else if (json['value'] is String &&
          num.tryParse(json['value']) != null) {
        return LiteralDecimal(
          value: num.parse(json['value']),
        );
      }
    }
    throw ArgumentError('LiteralDecimal: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': sigFigs == null
            ? value.toString()
            : value.toStringAsPrecision(sigFigs!),
        'type': 'Literal',
      };

  @override
  FhirDecimal execute(Map<String, dynamic> context) => FhirDecimal(value);

  @override
  String get type => 'Decimal';

  @override
  String toString() => 'LiteralDecimal: $value';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirDecimal];
}

class LiteralInteger extends LiteralType {
  final int value;

  LiteralInteger({required this.value});

  factory LiteralInteger.fromJson(dynamic json) {
    if (json is num) {
      return LiteralInteger(
        value: json.toInt(),
      );
    } else if (json is String && int.tryParse(json) != null) {
      return LiteralInteger(
        value: int.parse(json),
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralInteger(
          value: (json['value'] as num).toInt(),
        );
      } else if (json['value'] is String &&
          int.tryParse(json['value']) != null) {
        return LiteralInteger(
          value: int.parse(json['value']),
        );
      }
    }
    throw ArgumentError('LiteralInteger: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  FhirInteger execute(Map<String, dynamic> context) => FhirInteger(value);

  @override
  String get type => 'Integer';

  @override
  String toString() => 'LiteralInteger: $value';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirInteger];
}

class LiteralLong extends LiteralType {
  final BigInt value;

  LiteralLong({required this.value});

  factory LiteralLong.fromJson(dynamic json) {
    if (json is num) {
      return LiteralLong(
        value: BigInt.from(json),
      );
    } else if (json is String && BigInt.tryParse(json) != null) {
      return LiteralLong(
        value: BigInt.parse(json),
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralLong(
          value: BigInt.from(json['value'] as num),
        );
      } else if (json['value'] is String &&
          BigInt.tryParse(json['value']) != null) {
        return LiteralLong(
          value: BigInt.parse(json['value']),
        );
      }
    }
    throw ArgumentError('LiteralLong: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  FhirInteger64 execute(Map<String, dynamic> context) => FhirInteger64(value);

  @override
  String get type => 'Long';

  @override
  String toString() => 'LiteralLong: $value';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirInteger64];
}

class LiteralQuantity extends LiteralType {
  final LiteralDecimal value;
  final String? unit;

  LiteralQuantity({required this.value, this.unit});

  factory LiteralQuantity.fromJson(Map<String, dynamic> json) {
    return LiteralQuantity(
      value: LiteralDecimal.fromJson(json['value']),
      unit: json['unit'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': value.value,
      if (unit != null) 'unit': unit,
      'type': type,
    };
  }

  @override
  ValidatedQuantity execute(Map<String, dynamic> context) {
    return ValidatedQuantity(
      value: UcumDecimal.fromString(value.value.toString()),
      unit: unit,
    );
  }

  @override
  String get type => 'Quantity';

  @override
  String toString() => 'LiteralQuantity: ${value.value} $unit';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [ValidatedQuantity];
}

class LiteralRatio extends LiteralType {
  final LiteralQuantity numerator;
  final LiteralQuantity denominator;

  LiteralRatio({required this.numerator, required this.denominator});

  factory LiteralRatio.fromJson(Map<String, dynamic> json) {
    return LiteralRatio(
      numerator: LiteralQuantity.fromJson(json['numerator']),
      denominator: LiteralQuantity.fromJson(json['denominator']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'numerator': numerator.toJson(),
      'denominator': denominator.toJson(),
    };
  }

  @override
  String get type => 'Ratio';
}

class LiteralString extends LiteralType {
  final String value;

  LiteralString({required String value})
      : value = value
            .replaceAll(r'\n', '\n')
            .replaceAll(r'\t', '\t')
            .replaceAll(r'\b', '\b')
            .replaceAll(r'\r', '\r')
            .replaceAll(r'\\', '\\')
            .replaceAll(r"\'", "'")
            .replaceAll(r'\"', '"');

  factory LiteralString.fromJson(dynamic json) {
    if (json is String) {
      return LiteralString(
        value: json,
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String) {
        return LiteralString(
          value: json['value'],
        );
      }
    }
    throw ArgumentError('LiteralString: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value,
        'type': 'Literal',
      };

  @override
  String execute(Map<String, dynamic> context) => value;

  @override
  String get type => 'String';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [String];
}

class LiteralTime extends LiteralType {
  final String value;

  LiteralTime({required String value})
      : value = value.replaceFirst('@', '').replaceFirst('T', '');

  factory LiteralTime.fromOperandList({required List<CqlExpression> operand}) {
    String value = '';
    if (operand.isNotEmpty) {
      value = (operand[0] as LiteralInteger).value.toString();
      if (operand.length > 1) {
        value += ':${(operand[1] as LiteralInteger).value.toString()}';
        if (operand.length > 2) {
          value += ':${(operand[2] as LiteralInteger).value.toString()}';
          if (operand.length > 3) {
            value += '.${(operand[3] as LiteralInteger).value.toString()}';
          }
        }
      }
    }
    return LiteralTime(value: value);
  }

  factory LiteralTime.fromJson(dynamic json) {
    if (json is String && FhirTime(json).isValid) {
      return LiteralTime(
        value: json,
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String && FhirTime(json['value']).isValid) {
        return LiteralTime(
          value: json['value'],
        );
      }
    }
    throw ArgumentError('LiteralTime: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() {
    final date = FhirTime(value);
    final json = <String, dynamic>{'type': type};
    if (date.hour != null) {
      json['hour'] = LiteralInteger(value: date.hour!).toJson();
      if (date.minute != null) {
        json['minute'] = LiteralInteger(value: date.minute!).toJson();
        if (date.second != null) {
          json['second'] = LiteralInteger(value: date.second!).toJson();
          if (date.millisecond != null) {
            json['millisecond'] =
                LiteralInteger(value: date.millisecond!).toJson();
          }
        }
      }
    }
    return json;
  }

  @override
  String get type => 'Time';

  @override
  FhirTime execute(Map<String, dynamic> context) => FhirTime(value);

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [FhirTime];
}

abstract class LiteralIntervalType extends LiteralType {
  final LiteralBoolean? lowClosed;
  final LiteralBoolean? highClosed;

  LiteralIntervalType({this.lowClosed, this.highClosed});

  factory LiteralIntervalType.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('low')) {
      return LiteralIntegerInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDecimalInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralQuantityInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDateInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralDateTimeInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralTimeInterval.fromJson(json);
    } else {
      throw ArgumentError('Invalid interval type');
    }
  }

  @override
  Map<String, dynamic> toJson();
}

class LiteralIntegerInterval extends LiteralIntervalType {
  final LiteralInteger? low;
  final LiteralInteger? high;

  LiteralIntegerInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralIntegerInterval.fromJson(Map<String, dynamic> json) {
    return LiteralIntegerInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralInteger.fromJson(json['low']),
      high: LiteralInteger.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Integer>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) =>
      IntervalType<FhirInteger>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}

class LiteralDecimalInterval extends LiteralIntervalType {
  final LiteralDecimal? low;
  final LiteralDecimal? high;

  LiteralDecimalInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDecimalInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDecimalInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDecimal.fromJson(json['low']),
      high: LiteralDecimal.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Decimal>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) =>
      IntervalType<FhirDecimal>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}

class LiteralQuantityInterval extends LiteralIntervalType {
  final LiteralQuantity? low;
  final LiteralQuantity? high;

  LiteralQuantityInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralQuantityInterval.fromJson(Map<String, dynamic> json) {
    return LiteralQuantityInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralQuantity.fromJson(json['low']),
      high: LiteralQuantity.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Quantity>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) =>
      IntervalType<ValidatedQuantity>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}

class LiteralDateInterval extends LiteralIntervalType {
  final LiteralDate? low;
  final LiteralDate? high;

  LiteralDateInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDate.fromJson(json['low']),
      high: LiteralDate.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Date>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) => IntervalType<FhirDate>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}

class LiteralDateTimeInterval extends LiteralIntervalType {
  final LiteralDateTime? low;
  final LiteralDateTime? high;

  LiteralDateTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDateTime.fromJson(json['low']),
      high: LiteralDateTime.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<DateTime>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) =>
      IntervalType<FhirDateTime>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}

class LiteralTimeInterval extends LiteralIntervalType {
  final LiteralTime? low;
  final LiteralTime? high;

  LiteralTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralTime.fromJson(json['low']),
      high: LiteralTime.fromJson(json['high']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Time>';

  @override
  List<Type>? getReturnTypes(CqlLibrary library) => [IntervalType];

  @override
  IntervalType? execute(Map<String, dynamic> context) => IntervalType<FhirTime>(
        low: low?.execute(context),
        lowClosed: lowClosed?.execute(context).value,
        high: high?.execute(context),
        highClosed: highClosed?.execute(context).value,
      );
}
