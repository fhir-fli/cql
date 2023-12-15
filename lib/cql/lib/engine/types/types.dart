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
}

/// Represents a date type
class LiteralDate extends Literal {
  String value;
  LiteralDate({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Date'));

  factory LiteralDate.fromJson(Map<String, dynamic> json) =>
      LiteralDate(value: json['value'] as String);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };
}

/// Represents a date-time type
class LiteralDateTime extends Literal {
  DateTime value;
  LiteralDateTime({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateTime'));

  factory LiteralDateTime.fromJson(Map<String, dynamic> json) =>
      LiteralDateTime(value: json['value'] as DateTime);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value.toString(),
        'type': type,
      };
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
        'value': value,
        'type': type,
      };
}

/// Represents an integer type
class LiteralInteger extends Literal {
  int value;
  LiteralInteger({required this.value})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Integer'));

  factory LiteralInteger.fromJson(Map<String, dynamic> json) =>
      LiteralInteger(value: json['value'] as int);

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value,
        'type': type,
      };
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
}

/// Represents a quantity type
class LiteralQuantity extends Literal {
  LiteralDecimal value;
  String? unit;
  LiteralQuantity({required this.value, this.unit})
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Quantity'));

  factory LiteralQuantity.fromJson(Map<String, dynamic> json) =>
      LiteralQuantity(
        value: LiteralDecimal.fromJson(json['value'] as Map<String, dynamic>),
        unit: json['unit'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'value': value.toJson(),
        'unit': unit,
        'type': type,
      };
}

/// Represents a ratio type
class LiteralRatio extends Literal {
  LiteralQuantity numerator;
  LiteralQuantity denominator;
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
}

/// Common base class for all interval types
abstract class LiteralInterval extends Literal {
  LiteralInterval({QName? valueType})
      : super(
            valueType: valueType ??
                QName.fromFull('{urn:hl7-org:elm-types:r1}Interval'));

  factory LiteralInterval.fromJson(Map<String, dynamic> json) {
    final String valueType = json['valueType'];
    switch (valueType) {
      case '{urn:hl7-org:elm-types:r1}IntegerInterval':
        return LiteralIntegerInterval.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}DecimalInterval':
        return LiteralDecimalInterval.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}QuantityInterval':
        return LiteralQuantityInterval.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}DateInterval':
        return LiteralDateInterval.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}DateTimeInterval':
        return LiteralDateTimeInterval.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}TimeInterval':
        return LiteralTimeInterval.fromJson(json);
      default:
        throw ArgumentError('Unknown interval type: $valueType');
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'type': type,
      };
}

/// Represents an interval of integers
class LiteralIntegerInterval extends LiteralInterval {
  LiteralInteger? low;
  LiteralInteger? high;

  LiteralIntegerInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}IntegerInterval'));

  factory LiteralIntegerInterval.fromJson(Map<String, dynamic> json) =>
      LiteralIntegerInterval(
        low: json['low'] == null
            ? null
            : LiteralInteger.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralInteger.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toJson(),
        'high': high?.toJson(),
        'type': type,
      };
}

/// Represents an interval of decimals
class LiteralDecimalInterval extends LiteralInterval {
  LiteralDecimal? low;
  LiteralDecimal? high;
  LiteralDecimalInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DecimalInterval'));

  factory LiteralDecimalInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDecimalInterval(
        low: json['low'] == null
            ? null
            : LiteralDecimal.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralDecimal.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toJson(),
        'high': high?.toJson(),
        'type': type,
      };
}

/// Represents an interval of quantities
class LiteralQuantityInterval extends LiteralInterval {
  LiteralQuantity? low;
  LiteralQuantity? high;
  LiteralQuantityInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}QuantityInterval'));

  factory LiteralQuantityInterval.fromJson(Map<String, dynamic> json) =>
      LiteralQuantityInterval(
        low: json['low'] == null
            ? null
            : LiteralQuantity.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralQuantity.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toJson(),
        'high': high?.toJson(),
        'type': type,
      };
}

/// Represents an interval of dates
class LiteralDateInterval extends LiteralInterval {
  LiteralDate? low;
  LiteralDate? high;
  LiteralDateInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DateInterval'));

  factory LiteralDateInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDateInterval(
        low: json['low'] == null
            ? null
            : LiteralDate.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralDate.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toJson(),
        'high': high?.toJson(),
        'type': type,
      };
}

/// Represents an interval of date-times
class LiteralDateTimeInterval extends LiteralInterval {
  DateTime? low;
  DateTime? high;
  LiteralDateTimeInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DateTimeInterval'));

  factory LiteralDateTimeInterval.fromJson(Map<String, dynamic> json) =>
      LiteralDateTimeInterval(
        low: json['low'] == null ? null : DateTime.parse(json['low'] as String),
        high: json['high'] == null
            ? null
            : DateTime.parse(json['high'] as String),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toIso8601String(),
        'high': high?.toIso8601String(),
        'type': type,
      };
}

/// Represents an interval of times
class LiteralTimeInterval extends LiteralInterval {
  LiteralTime? low;
  LiteralTime? high;
  LiteralTimeInterval({this.low, this.high})
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}TimeInterval'));

  factory LiteralTimeInterval.fromJson(Map<String, dynamic> json) =>
      LiteralTimeInterval(
        low: json['low'] == null
            ? null
            : LiteralTime.fromJson(json['low'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : LiteralTime.fromJson(json['high'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType.toJson(),
        'low': low?.toJson(),
        'high': high?.toJson(),
        'type': type,
      };
}

const List<String> elmTypes = <String>[
  'Boolean',
  'Code',
  'Concept',
  'Date',
  'DateTime',
  'Decimal',
  'Integer',
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
