import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../cql.dart';

abstract class LiteralType extends CqlExpression {}

class LiteralNull extends LiteralType {
  LiteralNull();

  factory LiteralNull.fromJson(dynamic json) => LiteralNull();

  @override
  String toJson() => null.toString();

  @override
  String? execute(Map<String, dynamic> context) => null;
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
      'year': LiteralInteger(value: date.year).toJson(),
      'month': LiteralInteger(value: date.month).toJson(),
      'day': LiteralInteger(value: date.day).toJson(),
    };
  }

  @override
  FhirDate execute(Map<String, dynamic> context) => FhirDate(value);

  @override
  String get type => 'Date';
}

class LiteralDateTime extends LiteralType {
  final String value;

  LiteralDateTime({
    required this.value,
  });

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
  String toJson() {
    final dateTime = FhirDateTime(value);
    return {
      'type': type,
      'year': LiteralInteger(value: dateTime.year).toJson(),
      'month': LiteralInteger(value: dateTime.month).toJson(),
      'day': LiteralInteger(value: dateTime.day).toJson(),
      'hour': LiteralInteger(value: dateTime.hour).toJson(),
      'minute': LiteralInteger(value: dateTime.minute).toJson(),
      'second': LiteralInteger(value: dateTime.second).toJson(),
      'millisecond': LiteralInteger(value: dateTime.millisecond).toJson(),
    }.toString();
  }

  @override
  String get type => 'DateTime';

  @override
  FhirDateTime execute(Map<String, dynamic> context) => FhirDateTime(value);
}

class LiteralDecimal extends LiteralType {
  final double value;

  LiteralDecimal({required this.value});

  factory LiteralDecimal.fromJson(dynamic json) {
    if (json is num) {
      return LiteralDecimal(
        value: json.toDouble(),
      );
    } else if (json is String && double.tryParse(json) != null) {
      return LiteralDecimal(
        value: double.parse(json),
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralDecimal(
          value: (json['value'] as num).toDouble(),
        );
      } else if (json['value'] is String &&
          double.tryParse(json['value']) != null) {
        return LiteralDecimal(
          value: double.parse(json['value']),
        );
      }
    }
    throw ArgumentError('LiteralDecimal: Invalid json type');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  FhirDecimal execute(Map<String, dynamic> context) => FhirDecimal(value);

  @override
  String get type => 'Decimal';
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
      code: unit,
    );
  }

  @override
  String get type => 'Quantity';
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
}

class LiteralString extends LiteralType {
  final String value;

  LiteralString({required this.value});

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
}

class LiteralTime extends LiteralType {
  final String value;

  LiteralTime({required this.value});

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
  String toJson() => value;

  @override
  FhirTime execute(Map<String, dynamic> context) => FhirTime(value);
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
}
