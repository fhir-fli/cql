/// Common base class for all FHIR types
abstract class Any {}

/// Represents a boolean type
class Boolean extends Any {
  late bool value;
}

/// Represents a code type
class Code extends Any {
  late String code;
  late String? display;
  late String? system;
  late String? version;
}

/// Represents a concept type
class Concept {
  late List<Code> codes;
  late String? display;
}

/// Represents a date type
class Date extends Any {
  late String value;
}

/// Represents a date-time type
class DateTime extends Any {
  late String value;
}

/// Represents a decimal type
class Decimal extends Any {
  late double value;
}

/// Represents an integer type
class Integer extends Any {
  late int value;
}

/// Represents a quantity type
class Quantity extends Any {
  late Decimal value;
  late String? unit;
}

/// Represents a ratio type
class Ratio extends Any {
  late Quantity numerator;
  late Quantity denominator;
}

/// Represents a string type
class StringElement extends Any {
  late String value;
}

/// Represents a time type
class Time extends Any {
  late String? value;
}

/// Common base class for all interval types
abstract class Interval extends Any {
  late Boolean? lowClosed;
  late Boolean? highClosed;
}

/// Represents an interval of integers
class IntegerInterval extends Interval {
  late Integer? low;
  late Integer? high;
}

/// Represents an interval of decimals
class DecimalInterval extends Interval {
  late Decimal? low;
  late Decimal? high;
}

/// Represents an interval of quantities
class QuantityInterval extends Interval {
  late Quantity? low;
  late Quantity? high;
}

/// Represents an interval of dates
class DateInterval extends Interval {
  late Date? low;
  late Date? high;
}

/// Represents an interval of date-times
class DateTimeInterval extends Interval {
  late DateTime? low;
  late DateTime? high;
}

/// Represents an interval of times
class TimeInterval extends Interval {
  late Time? low;
  late Time? high;
}
