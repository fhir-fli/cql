import 'package:fhir/primitive_types/time.dart' as time;

import '../../cql.dart';

/// Represents a String type
class LiteralString extends Literal {
  String value;

  LiteralString({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}String'));

  factory LiteralString.fromJson(Map<String, dynamic> json) =>
      LiteralString(value: json['value'] as String);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value;
}

/// Represents a boolean type
class LiteralBoolean extends Literal {
  bool value;

  LiteralBoolean({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Boolean'));

  factory LiteralBoolean.fromJson(Map<String, dynamic> json) =>
      LiteralBoolean(value: json['value'] as bool);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value.toString();
}

/// Represents a code type
class LiteralCode extends Literal {
  String code;
  String? display;
  String? system;
  String? version;

  LiteralCode({required this.code, this.display, this.system, this.version})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Code'));

  factory LiteralCode.fromJson(Map<String, dynamic> json) => LiteralCode(
        code: json['code'] as String,
        display: json['display'] as String?,
        system: json['system'] as String?,
        version: json['version'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'code': code,
        'display': display,
        'system': system,
        'version': version,
        'type': type,
      };

  @override
  String toString() => '$code${display != null ? ' ($display)' : ''} '
      '${system != null ? '[$system${version != null ? '|$version' : ''}]' : ''}';
}

/// Represents a concept type
class LiteralConcept extends Literal {
  List<LiteralCode> codes;
  String? display;

  LiteralConcept({required this.codes, this.display})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Concept'));

  factory LiteralConcept.fromJson(Map<String, dynamic> json) => LiteralConcept(
        codes: (json['codes'] as List<dynamic>)
            .map((dynamic e) => LiteralCode.fromJson(e as Map<String, dynamic>))
            .toList(),
        display: json['display'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'codes': codes.map((LiteralCode e) => e.toJson()).toList(),
        'display': display,
        'type': type,
      };

  @override
  String toString() =>
      codes.map((LiteralCode e) => e.toString()).join(', ').toString().trim();
}

/// Represents a date type
class LiteralDate extends Literal {
  String value;

  LiteralDate({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Date'));

  factory LiteralDate.fromJson(Map<String, dynamic> json) {
    if (json['value'] is String && DateTime.tryParse(json['value']) != null) {
      return LiteralDate(value: json['value']);
    } else {
      return LiteralDate(
          value:
              '${LiteralInteger.fromJson(json['year']).value.toString().padLeft(4, '0')}'
              '-${LiteralInteger.fromJson(json['month']).value.toString().padLeft(2, '0')}'
              '-${LiteralInteger.fromJson(json['day']).value.toString().padLeft(2, '0')}');
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value;
}

/// Represents a date-time type
class LiteralDateTime extends Literal {
  DateTime value;

  LiteralDateTime({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateTime'));

  factory LiteralDateTime.fromJson(Map<String, dynamic> json) {
    if (json['value'] is String && DateTime.tryParse(json['value']) != null) {
      return LiteralDateTime(value: DateTime.parse(json['value']));
    } else {
      return LiteralDateTime(
          value: DateTime(
        LiteralInteger.fromJson(json['year']).value,
        LiteralInteger.fromJson(json['month']).value,
        LiteralInteger.fromJson(json['day']).value,
        LiteralInteger.fromJson(json['hour']).value,
        LiteralInteger.fromJson(json['minute']).value,
        LiteralInteger.fromJson(json['second']).value,
        LiteralInteger.fromJson(json['millisecond']).value,
      ));
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value.toString(),
        'type': type,
      };

  @override
  String toString() => value.toString();
}

/// Represents a decimal type
class LiteralDecimal extends Literal {
  double value;

  LiteralDecimal({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Decimal'));

  factory LiteralDecimal.fromJson(Map<String, dynamic> json) =>
      LiteralDecimal(value: json['value'] as double);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value.toString(),
        'type': type,
      };

  @override
  String toString() => value.toString();
}

/// Represents an integer type
class LiteralInteger extends Literal {
  int value;

  LiteralInteger({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Integer'));

  factory LiteralInteger.fromJson(Map<String, dynamic> json) => LiteralInteger(
      value: json['value'] is int
          ? json['value'] as int
          : json['value'] is String
              ? int.parse(json['value'] as String)
              : throw ArgumentError(
                  'LiteralInteger.fromJson: value is not an int or String'));

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value.toString(),
        'type': type,
      };

  @override
  String toString() => value.toString();
}

/// Represents an integer type
class LiteralLongNumber extends Literal {
  BigInt value;

  LiteralLongNumber({required this.value})
      : super(
            valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}LongNumber'));

  factory LiteralLongNumber.fromJson(Map<String, dynamic> json) =>
      LiteralLongNumber(value: json['value'] as BigInt);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value.toString();
}

/// Represents a quantity type
class LiteralQuantity extends Literal {
  String? unit;
  LiteralDecimal value;
  String? _offset;
  static final List<String> _allowedOffsets = <String>[
    'or more',
    'or less',
    'less than',
    'more than',
  ];

  LiteralQuantity({required this.value, this.unit, String? offset})
      : _offset = _allowedOffsets.contains(offset) ? offset : null,
        super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Quantity'));

  factory LiteralQuantity.fromJson(Map<String, dynamic> json) =>
      LiteralQuantity(
        value: LiteralDecimal.fromJson(json['value'] as Map<String, dynamic>),
        unit: json['unit'] as String?,
      );

  String? get offset => _offset;

  @override
  Map<String, dynamic> toJson() => {
        'value': value.value,
        'unit': unit,
        'type': type,
      };

  @override
  String toString() => '${value.toString()}${unit != null ? ' $unit' : ''}';

  @override
  String get type => 'Quantity';
}

/// Represents a ratio type
class LiteralRatio extends Literal {
  LiteralQuantity denominator;
  LiteralQuantity numerator;

  LiteralRatio({required this.numerator, required this.denominator})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Ratio'));

  factory LiteralRatio.fromJson(Map<String, dynamic> json) => LiteralRatio(
        numerator:
            LiteralQuantity.fromJson(json['numerator'] as Map<String, dynamic>),
        denominator: LiteralQuantity.fromJson(
            json['denominator'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'numerator': numerator.toJson(),
        'denominator': denominator.toJson(),
        'type': type,
      };

  @override
  String toString() => '${numerator.toString()} : ${denominator.toString()}';
}

/// Represents a string type
class LiteralStringElement extends Literal {
  String value;

  LiteralStringElement({required this.value})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}StringElement'));

  factory LiteralStringElement.fromJson(Map<String, dynamic> json) =>
      LiteralStringElement(value: json['value'] as String);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value;
}

/// Represents a time type
class LiteralTime extends Literal {
  String? value;

  LiteralTime({this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Time'));

  factory LiteralTime.fromJson(Map<String, dynamic> json) =>
      LiteralTime(value: json['value'] as String);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };

  @override
  String toString() => value ?? '';
}

/// Represents an interval of integers
class LiteralIntegerInterval extends IntervalExpression {
  LiteralIntegerInterval({
    LiteralInteger? low,
    LiteralInteger? high,
    super.lowClosed,
    super.highClosed,
    LiteralInteger? lowClosedExpression,
    LiteralInteger? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralIntegerInterval.fromJson(Map<String, dynamic> json) =>
      LiteralIntegerInterval(
        low: json['low'] == null
            ? null
            : LiteralInteger.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralInteger.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralInteger.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralInteger.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed
    };
    if (low != null) {
      json['low'] = low!.toJson();
    } else if (lowClosedExpression != null) {
      json['low'] = lowClosedExpression!.toJson();
    }
    if (high != null) {
      json['high'] = high!.toJson();
    } else if (highClosedExpression != null) {
      json['high'] = highClosedExpression!.toJson();
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

/// Represents an interval of decimals
class LiteralDecimalInterval extends IntervalExpression {
  LiteralDecimalInterval({
    LiteralDecimal? low,
    LiteralDecimal? high,
    super.lowClosed,
    super.highClosed,
    LiteralDecimal? lowClosedExpression,
    LiteralDecimal? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralDecimalInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDecimalInterval(
        low: json['low'] == null
            ? null
            : LiteralDecimal.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralDecimal.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralDecimal.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralDecimal.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed
    };
    if (low != null) {
      json['low'] = low!.toJson();
    } else if (lowClosedExpression != null) {
      json['low'] = lowClosedExpression!.toJson();
    }
    if (high != null) {
      json['high'] = high!.toJson();
    } else if (highClosedExpression != null) {
      json['high'] = highClosedExpression!.toJson();
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

/// Represents an interval of quantities
class LiteralQuantityInterval extends IntervalExpression {
  LiteralQuantityInterval({
    LiteralQuantity? low,
    LiteralQuantity? high,
    super.lowClosed,
    super.highClosed,
    LiteralQuantity? lowClosedExpression,
    LiteralQuantity? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralQuantityInterval.fromJson(Map<String, dynamic> json) =>
      LiteralQuantityInterval(
        low: json['low'] == null
            ? null
            : LiteralQuantity.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralQuantity.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralQuantity.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralQuantity.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed
    };
    if (low != null) {
      json['low'] = low!.toJson();
    } else if (lowClosedExpression != null) {
      json['low'] = lowClosedExpression!.toJson();
    }
    if (high != null) {
      json['high'] = high!.toJson();
    } else if (highClosedExpression != null) {
      json['high'] = highClosedExpression!.toJson();
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

/// Represents an interval of dates
class LiteralDateInterval extends IntervalExpression {
  LiteralDateInterval({
    LiteralDate? low,
    LiteralDate? high,
    super.lowClosed,
    super.highClosed,
    LiteralDate? lowClosedExpression,
    LiteralDate? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralDateInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDateInterval(
        low: json['low'] == null
            ? null
            : LiteralDate.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralDate.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralDate.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralDate.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': 'Interval',
    };
    final LiteralDate? newLow = (low ?? lowClosedExpression) as LiteralDate?;
    if (newLow?.value != null) {
      final lowValue = DateTime.tryParse(newLow!.value);
      if (lowValue != null) {
        json['low'] = <String, dynamic>{'type': 'Date'};
        json['low']!['year'] = LiteralInteger(value: lowValue.year).toJson();
        json['low']!['month'] = LiteralInteger(value: lowValue.month).toJson();
        json['low']!['day'] = LiteralInteger(value: lowValue.day).toJson();
      }
    }
    final LiteralDate? newHigh = (high ?? highClosedExpression) as LiteralDate?;
    if (newHigh?.value != null) {
      final highValue = DateTime.tryParse(newHigh!.value);
      if (highValue != null) {
        json['high'] = <String, dynamic>{'type': 'Date'};
        json['high']!['year'] = LiteralInteger(value: highValue.year).toJson();
        json['high']!['month'] =
            LiteralInteger(value: highValue.month).toJson();
        json['high']!['day'] = LiteralInteger(value: highValue.day).toJson();
      }
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

/// Represents an interval of date-times
class LiteralDateTimeInterval extends IntervalExpression {
  LiteralDateTimeInterval({
    LiteralDateTime? low,
    LiteralDateTime? high,
    super.lowClosed,
    super.highClosed,
    LiteralDateTime? lowClosedExpression,
    LiteralDateTime? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralDateTimeInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDateTimeInterval(
        low: json['low'] == null
            ? null
            : LiteralDateTime.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralDateTime.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralDateTime.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralDateTime.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': 'Interval',
    };
    final LiteralDateTime? newLow =
        (low ?? lowClosedExpression) as LiteralDateTime?;
    if (newLow?.value != null) {
      final lowValue = newLow!.value;
      json['low'] = <String, dynamic>{'type': 'DateTime'};
      json['low']!['year'] = LiteralInteger(value: lowValue.year).toJson();
      json['low']!['month'] = LiteralInteger(value: lowValue.month).toJson();
      json['low']!['day'] = LiteralInteger(value: lowValue.day).toJson();
      json['low']!['hour'] = LiteralInteger(value: lowValue.hour).toJson();
      json['low']!['minute'] = LiteralInteger(value: lowValue.minute).toJson();
      json['low']!['second'] = LiteralInteger(value: lowValue.second).toJson();
      json['low']!['millisecond'] =
          LiteralInteger(value: lowValue.millisecond).toJson();
    }
    final LiteralDateTime? newHigh =
        (high ?? highClosedExpression) as LiteralDateTime?;
    if (newHigh?.value != null) {
      final highValue = newHigh!.value;
      json['high'] = <String, dynamic>{'type': 'DateTime'};
      json['high']!['year'] = LiteralInteger(value: highValue.year).toJson();
      json['high']!['month'] = LiteralInteger(value: highValue.month).toJson();
      json['high']!['day'] = LiteralInteger(value: highValue.day).toJson();
      json['high']!['hour'] = LiteralInteger(value: highValue.hour).toJson();
      json['high']!['minute'] =
          LiteralInteger(value: highValue.minute).toJson();
      json['high']!['second'] =
          LiteralInteger(value: highValue.second).toJson();
      json['high']!['millisecond'] =
          LiteralInteger(value: highValue.millisecond).toJson();
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

/// Represents an interval of times
class LiteralTimeInterval extends IntervalExpression {
  LiteralTimeInterval({
    LiteralTime? low,
    LiteralTime? high,
    super.lowClosed,
    super.highClosed,
    LiteralTime? lowClosedExpression,
    LiteralTime? highClosedExpression,
  }) : super(
          low: low,
          high: high,
          lowClosedExpression: lowClosedExpression,
          highClosedExpression: highClosedExpression,
        );

  factory LiteralTimeInterval.fromJson(Map<String, dynamic> json) =>
      LiteralTimeInterval(
        low: json['low'] == null
            ? null
            : LiteralTime.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralTime.fromJson(json['high'] as Map<String, dynamic>),
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
        lowClosedExpression: json['lowClosed'] != true
            ? null
            : LiteralTime.fromJson(json['lowClosedExpression']),
        highClosedExpression: json['highClosed'] != true
            ? null
            : LiteralTime.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': 'Time',
    };
    final LiteralTime? newLow = (low ?? lowClosedExpression) as LiteralTime?;
    if (newLow?.value != null) {
      final lowValue = time.FhirTime(newLow!.value);
      json['low'] = <String, dynamic>{'type': 'Time'};
      if (lowValue.hour != null) {
        json['low']!['hour'] = LiteralInteger(value: lowValue.hour!).toJson();
      }
      if (lowValue.minute != null) {
        json['low']!['minute'] =
            LiteralInteger(value: lowValue.minute!).toJson();
      }
      if (lowValue.second != null) {
        json['low']!['second'] =
            LiteralInteger(value: lowValue.second!).toJson();
      }
      if (lowValue.millisecond != null) {
        json['low']!['millisecond'] =
            LiteralInteger(value: lowValue.millisecond!).toJson();
      }
    }
    final LiteralTime? newHigh = (high ?? highClosedExpression) as LiteralTime?;
    if (newHigh?.value != null) {
      final highValue = time.FhirTime(newHigh!.value);
      json['high'] = <String, dynamic>{'type': 'Time'};

      if (highValue.hour != null) {
        json['high']!['hour'] = LiteralInteger(value: highValue.hour!).toJson();
      }
      if (highValue.minute != null) {
        json['high']!['minute'] =
            LiteralInteger(value: highValue.minute!).toJson();
      }
      if (highValue.second != null) {
        json['high']!['second'] =
            LiteralInteger(value: highValue.second!).toJson();
      }
      if (highValue.millisecond != null) {
        json['high']!['millisecond'] =
            LiteralInteger(value: highValue.millisecond!).toJson();
      }
    }
    return json;
  }

  @override
  String toString() => '${lowClosed ? '[' : '('}'
      '${low ?? lowClosedExpression ?? ''}, '
      '${high ?? highClosedExpression ?? ''}'
      '${highClosed ? ']' : ')'}';
}

const List<String> elmTypes = <String>[
  'String',
  'Boolean',
  'Code',
  'Concept',
  'Date',
  'DateTime',
  'Decimal',
  'Integer',
  'LongNumber',
  'Quantity',
  'Ratio',
  'StringElement',
  'Time',
  'Interval',
  'IntegerInterval',
  'DecimalInterval',
  'QuantityInterval',
  'DateInterval',
  'DateTimeInterval',
  'TimeInterval',
];
