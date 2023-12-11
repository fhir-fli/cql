import '../../cql.dart';

/// Represents a boolean type
class LiteralBoolean extends Literal {
  LiteralBoolean()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Boolean'));
}

/// Represents a code type
class LiteralCode extends Literal {
  LiteralCode()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Code'));
}

/// Represents a concept type
class LiteralConcept extends Literal {
  LiteralConcept()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Concept'));
}

/// Represents a date type
class LiteralDate extends Literal {
  LiteralDate()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Date'));
}

/// Represents a date-time type
class LiteralDateTime extends Literal {
  LiteralDateTime()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateTime'));
}

/// Represents a decimal type
class LiteralDecimal extends Literal {
  LiteralDecimal()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Decimal'));
}

/// Represents an integer type
class LiteralInteger extends Literal {
  LiteralInteger()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Integer'));
}

/// Represents a quantity type
class LiteralQuantity extends Literal {
  LiteralQuantity()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Quantity'));
}

/// Represents a ratio type
class LiteralRatio extends Literal {
  LiteralRatio()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Ratio'));
}

/// Represents a string type
class LiteralStringElement extends Literal {
  LiteralStringElement()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}StringElement'));
}

/// Represents a time type
class LiteralTime extends Literal {
  LiteralTime()
      : super(valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Time'));
}

/// Common base class for all interval types
abstract class LiteralInterval extends Literal {
  LiteralInterval({QName? valueType})
      : super(
            valueType: valueType ??
                QName.fromFull('{urn:hl7-org:elm-types:r1}Interval'));
}

/// Represents an interval of integers
class LiteralIntegerInterval extends LiteralInterval {
  LiteralIntegerInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}IntegerInterval'));
}

/// Represents an interval of decimals
class LiteralDecimalInterval extends LiteralInterval {
  LiteralDecimalInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DecimalInterval'));
}

/// Represents an interval of quantities
class LiteralQuantityInterval extends LiteralInterval {
  LiteralQuantityInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}QuantityInterval'));
}

/// Represents an interval of dates
class LiteralDateInterval extends LiteralInterval {
  LiteralDateInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DateInterval'));
}

/// Represents an interval of date-times
class LiteralDateTimeInterval extends LiteralInterval {
  LiteralDateTimeInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}DateTimeInterval'));
}

/// Represents an interval of times
class LiteralTimeInterval extends LiteralInterval {
  LiteralTimeInterval()
      : super(
            valueType:
                QName.fromFull('{urn:hl7-org:elm-types:r1}TimeInterval'));
}

// import '../../cql.dart';

// /// Represents a boolean type
// class LiteralBoolean extends Literal {
//   late bool value;
// }

// /// Represents a code type
// class SimpleCode extends Any {
//   late String code;
//   late String? display;
//   late String? system;
//   late String? version;
// }

// /// Represents a concept type
// class SimpleConcept {
//   late List<SimpleCode> codes;
//   late String? display;
// }

// /// Represents a date type
// class SimpleDate extends Any {
//   late String value;
// }

// /// Represents a date-time type
// class SimpleDateTime extends Any {
//   late String value;
// }

// /// Represents a decimal type
// class SimpleDecimal extends Any {
//   late double value;
// }

// /// Represents an integer type
// class SimpleInteger extends Any {
//   late int value;
// }

// /// Represents a quantity type
// class SimpleQuantity extends Any {
//   late SimpleDecimal value;
//   late String? unit;
// }

// /// Represents a ratio type
// class SimpleRatio extends Any {
//   late SimpleQuantity numerator;
//   late SimpleQuantity denominator;
// }

// /// Represents a string type
// class SimpleStringElement extends Any {
//   late String value;
// }

// /// Represents a time type
// class SimpleTime extends Any {
//   late String? value;
// }

// /// Common base class for all interval types
// abstract class SimpleInterval extends Any {
//   late SimpleBoolean? lowClosed;
//   late SimpleBoolean? highClosed;
// }

// /// Represents an interval of integers
// class SimpleIntegerInterval extends SimpleInterval {
//   late SimpleInteger? low;
//   late SimpleInteger? high;
// }

// /// Represents an interval of decimals
// class SimpleDecimalInterval extends SimpleInterval {
//   late SimpleDecimal? low;
//   late SimpleDecimal? high;
// }

// /// Represents an interval of quantities
// class SimpleQuantityInterval extends SimpleInterval {
//   late SimpleQuantity? low;
//   late SimpleQuantity? high;
// }

// /// Represents an interval of dates
// class SimpleDateInterval extends SimpleInterval {
//   late SimpleDate? low;
//   late SimpleDate? high;
// }

// /// Represents an interval of date-times
// class SimpleDateTimeInterval extends SimpleInterval {
//   late DateTime? low;
//   late DateTime? high;
// }

// /// Represents an interval of times
// class SimpleTimeInterval extends SimpleInterval {
//   late SimpleTime? low;
//   late SimpleTime? high;
// }

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
