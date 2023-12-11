/// Common base class for all FHIR types
abstract class Any {}

/// Represents a boolean type
class SimpleBoolean extends Any {
  late bool value;
}

/// Represents a code type
class SimpleCode extends Any {
  late String code;
  late String? display;
  late String? system;
  late String? version;
}

/// Represents a concept type
class SimpleConcept {
  late List<SimpleCode> codes;
  late String? display;
}

/// Represents a date type
class SimpleDate extends Any {
  late String value;
}

/// Represents a date-time type
class SimpleDateTime extends Any {
  late String value;
}

/// Represents a decimal type
class SimpleDecimal extends Any {
  late double value;
}

/// Represents an integer type
class SimpleInteger extends Any {
  late int value;
}

/// Represents a quantity type
class SimpleQuantity extends Any {
  late SimpleDecimal value;
  late String? unit;
}

/// Represents a ratio type
class SimpleRatio extends Any {
  late SimpleQuantity numerator;
  late SimpleQuantity denominator;
}

/// Represents a string type
class SimpleStringElement extends Any {
  late String value;
}

/// Represents a time type
class SimpleTime extends Any {
  late String? value;
}

/// Common base class for all interval types
abstract class SimpleInterval extends Any {
  late SimpleBoolean? lowClosed;
  late SimpleBoolean? highClosed;
}

/// Represents an interval of integers
class SimpleIntegerInterval extends SimpleInterval {
  late SimpleInteger? low;
  late SimpleInteger? high;
}

/// Represents an interval of decimals
class SimpleDecimalInterval extends SimpleInterval {
  late SimpleDecimal? low;
  late SimpleDecimal? high;
}

/// Represents an interval of quantities
class SimpleQuantityInterval extends SimpleInterval {
  late SimpleQuantity? low;
  late SimpleQuantity? high;
}

/// Represents an interval of dates
class SimpleDateInterval extends SimpleInterval {
  late SimpleDate? low;
  late SimpleDate? high;
}

/// Represents an interval of date-times
class SimpleDateTimeInterval extends SimpleInterval {
  late DateTime? low;
  late DateTime? high;
}

/// Represents an interval of times
class SimpleTimeInterval extends SimpleInterval {
  late SimpleTime? low;
  late SimpleTime? high;
}
