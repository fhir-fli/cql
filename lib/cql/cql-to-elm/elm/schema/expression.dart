// The Element type defines the abstract base type for all library elements in ELM.
import 'package:json_annotation/json_annotation.dart';

import '../elm.dart';

part 'expression.g.dart';

// The Expression type defines the abstract base type for all expressions used in the ELM expression language.
@JsonSerializable()
abstract class Expression extends Element {}

// TypeSpecifier is the abstract base type for all type specifiers.
@JsonSerializable()
abstract class ExpTypeSpecifier extends Element {}

// NamedTypeSpecifier defines a type identified by a name, such as Integer, String,
// Patient, or Encounter.
class ExpNamedTypeSpecifier extends ExpTypeSpecifier {
  // The name of the type identified by a QName.
  String? name;
}

// ExpIntervalTypeSpecifier defines an interval type by specifying the point type.
// Any type can serve as the point type for an interval, so long as it supports
// comparison operators, minimum and maximum value determination, as well as
// predecessor and successor functions.
class ExpIntervalTypeSpecifier extends ExpTypeSpecifier {
  ExpTypeSpecifier? pointType;
}

// ExpListTypeSpecifier defines a list type by specifying the type of elements the list may contain.
class ExpListTypeSpecifier extends ExpTypeSpecifier {
  ExpTypeSpecifier? elementType;
}

// TupleElementDefinition defines the name and type of a single element within a TupleTypeSpecifier.
class TupleElementDefinition extends Element {
  // This element is deprecated. New implementations should use the new elementType element.
  ExpTypeSpecifier? type;

  // The type of the tuple element.
  ExpTypeSpecifier? elementType;

  // The name of the tuple element.
  String? name;
}

// ExpTupleTypeSpecifier defines the possible elements of a tuple.
class ExpTupleTypeSpecifier extends ExpTypeSpecifier {
  List<TupleElementDefinition>? element;
}

// ExpChoiceTypeSpecifier defines the possible types of a choice type.
class ExpChoiceTypeSpecifier extends ExpTypeSpecifier {
  // This element is deprecated. New implementations should use the new choice element.
  List<ExpTypeSpecifier>? type;

  // The possible types of the choice.
  List<ExpTypeSpecifier>? choice;
}

/// Abstract base class for all built-in operators used in the ELM expression
/// language.
abstract class OperatorExpression extends Expression {
  /// Declared signature of the operator or function being called.
  List<ExpTypeSpecifier>? signature;
}

/// Abstract base class for expressions that take a single argument.
abstract class UnaryExpression extends OperatorExpression {
  /// Expression as the operand.
  late Expression operand;
}

/// Abstract base class for expressions that take two arguments.
abstract class BinaryExpression extends OperatorExpression {
  /// List of expressions as operands.
  List<Expression> operands;

  BinaryExpression({required this.operands});
}

/// Abstract base class for expressions that take three arguments.
abstract class TernaryExpression extends OperatorExpression {
  /// List of expressions as operands.
  late List<Expression> operands;
}

/// Abstract base class for an expression that takes any number of arguments,
/// including zero.
abstract class NaryExpression extends OperatorExpression {
  /// List of expressions as operands, can be zero or more.
  List<Expression>? operands;
}

/// Named function definition that can be invoked by any expression in the
/// artifact.
class FunctionDef extends ExpressionDef {
  /// List of operand definitions.
  List<OperandDef>? operand;

  /// Specifies if the function is external.
  bool? external;

  FunctionDef({this.operand, this.external}) : super(name: 'FunctionDef');
}

/// Expression that references a previously defined NamedExpression.
class ExpressionRef extends Expression {
  /// Name of the referenced expression.
  String name;

  /// Library name, optional.
  String? libraryName;

  ExpressionRef({required this.name, this.libraryName});
}

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  /// Declared signature of the function being called.
  List<ExpTypeSpecifier>? signature;

  /// Operands passed to the function.
  List<Expression>? operand;

  FunctionRef({this.signature, this.operand, required super.name});
}

/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Expression {
  /// Name of the referenced parameter.
  String name;

  /// Library name, optional.
  String? libraryName;

  ParameterRef({required this.name, this.libraryName});
}

/// Operand definition to a function within the body of a function definition.
class OperandDef extends Element {
  /// Type specifier for the operand.
  ExpTypeSpecifier? operandTypeSpecifier;

  /// Name of the operand.
  String name;

  /// Qualified name of the operand type, optional.
  QName? operandType;

  OperandDef({this.operandTypeSpecifier, required this.name, this.operandType});
}

/// Expression allowing the value of an operand to be referenced within the body of a function definition.
class OperandRef extends Expression {
  /// Name of the referenced operand.
  String name;

  OperandRef({required this.name});
}

/// Expression that references an unresolved or resolved identifier.
class IdentifierRef extends Expression {
  /// Name of the referenced identifier.
  String name;

  /// Library name, optional.
  String? libraryName;

  IdentifierRef({required this.name, this.libraryName});
}

/// Literal expression defining a single scalar value.
class Literal extends Expression {
  /// Qualified name of the value type.
  QName valueType;

  /// Value of the literal, optional.
  dynamic value;

  Literal({required this.valueType, this.value});
}

/// Element within a Tuple expression providing the value of a specific element within a tuple literal expression.
class TupleElement {
  /// Value expression of the tuple element.
  Expression value;

  /// Name of the tuple element.
  String name;

  TupleElement({required this.value, required this.name});
}

/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends Expression {
  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  Tuple({this.element});
}

/// Instance element used within an Instance expression.
class InstanceElement {
  /// Value expression of the instance element.
  Expression value;

  /// Required name of the instance element.
  String name;

  InstanceElement({required this.value, required this.name});
}

/// Expression allowing class instances to be built up.
class Instance extends Expression {
  /// Type of the class instance being built.
  QName classType;

  /// List of instance elements specifying values for the elements of the class instance.
  List<InstanceElement>? element;

  Instance({required this.classType, this.element});
}

/// Interval selector defining an interval value.
class ExpInterval extends Expression {
  /// Low bound expression of the interval.
  Expression? low;

  /// Low bound closed expression of the interval.
  Expression? lowClosedExpression;

  /// High bound expression of the interval.
  Expression? high;

  /// High bound closed expression of the interval.
  Expression? highClosedExpression;

  /// Low bound closed status, defaults to true.
  bool lowClosed = true;

  /// High bound closed status, defaults to true.
  bool highClosed = true;

  ExpInterval(
      {this.low,
      this.lowClosedExpression,
      this.high,
      this.highClosedExpression,
      this.lowClosed = true,
      this.highClosed = true});
}

/// List selector returning a List value.
class ListExpression extends Expression {
  /// Type specifier for the list, if provided.
  ExpTypeSpecifier? typeSpecifier;

  /// Elements of the list evaluated in order.
  List<Expression>? element;

  ListExpression({this.typeSpecifier, this.element});
}

/// And operator returning the logical conjunction of its arguments.
class And extends BinaryExpression {
  And({required super.operands});
}

/// Or operator returning the logical disjunction of its arguments.
class Or extends BinaryExpression {
  Or({required super.operands});
}

/// Xor operator returning the exclusive or of its arguments.
class Xor extends BinaryExpression {
  Xor({required super.operands});
}

/// Implies operator returning the logical implication of its arguments.
class Implies extends BinaryExpression {
  Implies({required super.operands});
}

/// Not operator returning the logical negation of its argument.
class Not extends UnaryExpression {}

/// If operator evaluating a condition and returning the appropriate argument.
class If extends Expression {
  /// Condition expression.
  Expression condition;

  /// Then expression.
  Expression then;

  /// Else expression.
  Expression elseExpr;

  If({required this.condition, required this.then, required this.elseExpr});
}

/// Represents an element within a case operator, specifying conditions and their corresponding actions.
class CaseItem extends Element {
  /// Condition to evaluate.
  late Expression when;

  /// Action to perform if the condition is met.
  late Expression then;

  CaseItem({required this.when, required this.then});
}

/// Represents a case operator allowing multiple conditional expressions to be chained together.
class Case extends Expression {
  /// Expression to compare against.
  Expression? comparand;

  /// List of case items specifying conditions and actions.
  late List<CaseItem> caseItem;

  /// Action to perform if none of the conditions are met.
  late Expression elseExpr;

  Case({this.comparand, required this.caseItem, required this.elseExpr});
}

/// Null operator returning a null or missing information marker.
class NullExpression extends Expression {
  /// Type of the returned value, if specified.
  QName? valueType;

  NullExpression({this.valueType});
}

/// IsNull operator determining whether its argument evaluates to null.
class IsNull extends UnaryExpression {}

/// IsTrue operator determining whether its argument evaluates to true.
class IsTrue extends UnaryExpression {}

/// IsFalse operator determining whether its argument evaluates to false.
class IsFalse extends UnaryExpression {}

/// Coalesce operator returning the first non-null result in a list of arguments.
class Coalesce extends NaryExpression {}

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type specifier for testing.
  ExpTypeSpecifier? isTypeSpecifier;

  /// Type to test against.
  QName? isType;

  Is({this.isTypeSpecifier, this.isType});
}

/// As operator allowing casting the result of an expression to a given target type.
class As extends UnaryExpression {
  /// Type specifier for casting.
  ExpTypeSpecifier? asTypeSpecifier;

  /// Target type for casting.
  QName? asType;

  /// Determines if strict type checking should be enforced.
  bool strict = false;
}

/// Operator for converting a value to a specific type.
/// Converts a value to a specific type.
/// The result of the operator is the value of the argument converted to the
/// target type, if possible.
/// If no valid conversion exists from the actual value to the target type,
/// the result is null.
/// This operator supports conversion between String and each of Boolean,
/// Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from Integer
/// to Decimal or Quantity, from Decimal to Quantity, between Date and DateTime,
/// from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is performed using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class Convert extends UnaryExpression {
  /// Type specifier for the target type.
  ExpTypeSpecifier? toTypeSpecifier;

  /// Target type to convert to.
  QName? toType;

  Convert({this.toTypeSpecifier, this.toType});
}

/// Operator to check if a value can be converted to a specific type.
/// Returns true if the given value can be converted to a specific type,
/// and false otherwise.
/// This operator returns true for conversion between String and each of
/// Boolean, Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from
/// Integer to Decimal or Quantity, from Decimal to Quantity, between Date and
/// DateTime, from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is checked using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class CanConvert extends UnaryExpression {
  /// Type specifier for the target type.
  ExpTypeSpecifier? toTypeSpecifier;

  /// Target type to convert to.
  QName? toType;

  CanConvert({this.toTypeSpecifier, this.toType});
}

/// Operator to convert the value of its argument to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is null.
/// If the argument is null, the result is null.
class ToBoolean extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToBoolean extends UnaryExpression {}

/// Operator to convert a value of type Code to a Concept value with the given Code.
/// If the Code has a display value, the resulting Concept will have the same display value.
/// If the argument is null, the result is null.
class ToConcept extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Date value.
/// The operator expects the string to be formatted using the ISO-8601 date representation: YYYY-MM-DD.
/// If the input string is not formatted correctly or does not represent a valid date value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToDate extends UnaryExpression {}

/// Operator to convert the value of its argument to a Date value.
/// The operator expects the string to be formatted using the ISO-8601 date representation: YYYY-MM-DD.
/// If the input string is not formatted correctly or does not represent a valid date value, the result is null.
/// If the argument is null, the result is null.
class ToDate extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a DateTime value.
/// For String values, the operator expects the string to be formatted using the ISO-8601 datetime representation: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm.
/// If the input string is not formatted correctly or does not represent a valid DateTime value, the result is false.
/// DateTime values may be specified to any precision. If no timezone offset is supplied, the timezone offset of the evaluation request timestamp is assumed.
/// If the argument is null, the result is null.
class ConvertsToDateTime extends UnaryExpression {}

/// Operator to convert the value of its argument to a DateTime value.
/// For String values, the operator expects the string to be formatted using the ISO-8601 datetime representation: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm.
/// If the input string is not formatted correctly or does not represent a valid DateTime value, the result is null.
/// DateTime values may be specified to any precision. If no timezone offset is supplied, the timezone offset of the evaluation request timestamp is assumed.
/// If the argument is null, the result is null.
/// For Date values, the result is a DateTime with the time components unspecified, except the timezone offset, which is set to the timezone offset of the evaluation request timestamp.
class ToDateTime extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Decimal value.
/// The operator accepts strings using the following format: (+|-)?#0(.0#)?
/// If the input string is not formatted correctly or cannot be interpreted as a valid Decimal value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToDecimal extends UnaryExpression {}

/// Operator to convert the value of its argument to a Decimal value.
/// The operator accepts strings using the following format: (+|-)?#0(.0#)?
/// If the input string is not formatted correctly or cannot be interpreted as a valid Decimal value, the result is null.
/// If the argument is null, the result is null.
class ToDecimal extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToInteger extends UnaryExpression {}

/// Operator to convert the value of its argument to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is null.
/// If the argument is null, the result is null.
class ToInteger extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by a decimal point,
/// at least one digit, and any number of additional digits, all optionally followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Quantity value, the result is false.
/// For Integer, Decimal, and Ratio values, the operator simply returns true.
/// If the argument is null, the result is null.
class ConvertsToQuantity extends UnaryExpression {}

/// Operator to convert the value of its argument to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by a decimal point,
/// at least one digit, and any number of additional digits, all optionally followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Quantity value, the result is null.
/// For Integer and Decimal values, the result is a Quantity with the value of the integer or decimal input, and the default unit ('1').
/// For Ratio values, the operation is equivalent to the result of dividing the numerator of the ratio by the denominator.
/// If the argument is null, the result is null.
class ToQuantity extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Ratio value.
/// The operator accepts strings using the following format: <quantity>:<quantity>,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is false.
/// If the argument is null, the result is null.
class ConvertsToRatio extends UnaryExpression {}

/// Operator to convert the value of its argument to a Ratio value.
/// The operator accepts strings using the format: <quantity>:<quantity>,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is null.
/// If the argument is null, the result is null.
class ToRatio extends UnaryExpression {}

/// Operator to return its argument as a List value.
/// The operator accepts a singleton value of any type and returns a list with the value as the single element.
/// If the argument is null, the operator returns an empty list.
/// The operator is effectively shorthand for "if operand is null then { } else { operand }".
/// The operator is used to implement list promotion efficiently.
class ToList extends UnaryExpression {}

/// Operator to take a string and returns a list with one string for each character in the input.
/// If the argument is null, the result is null.
class ToChars extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a String value.
/// The operator returns true if the argument is any of the following types: Boolean, Integer, Decimal, DateTime, Date, Time, Quantity, Ratio.
/// If the argument is null, the result is null.
class ConvertsToString extends UnaryExpression {}

/// Operator to convert the value of its argument to a String value.
/// The operator uses specific string representations for each type:
/// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '<unit>'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: <quantity>:<quantity>
/// If the argument is null, the result is null.
class ToString extends UnaryExpression {}

/// Operator to check if the value of its argument can be converted to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is false.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// If the argument is null, the result is null.
class ConvertsToTime extends UnaryExpression {}

/// Operator to convert the value of its argument to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// In addition, the string must be interpretable as a valid time-of-day value.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is null.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// For DateTime values, the result is the same as extracting the Time component from the DateTime value.
/// If the argument is null, the result is null.
class ToTime extends UnaryExpression {}

/// Operator to check if the Quantity can be converted to an equivalent Quantity with the given Unit.
/// Returns true if the conversion is valid according to the UCUM conversion.
/// If either argument is null, the result is null.
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({required super.operands});
}

/// Operator to convert a Quantity to an equivalent Quantity with the given unit.
/// If the unit of the input quantity can be converted to the target unit,
/// the result is an equivalent Quantity with the target unit.
/// Otherwise, the result is null.
/// If either argument is null, the result is null.
class ConvertQuantity extends BinaryExpression {
  ConvertQuantity({required super.operands});
}

// Comparison Operators

/// Operator to check if the arguments are equal.
/// Returns true if the arguments are equal, false if they are known unequal, and null otherwise.
/// Equality semantics are defined to be value-based.
/// If either argument is null, the result is null.
class Equal extends BinaryExpression {
  Equal({required super.operands});
}

/// Operator to check if the arguments are the same value or both null.
/// Returns true if the arguments are the same value or both null, and false otherwise.
/// Equivalence is the same as equality except for null behavior and specific type semantics.
/// If either argument is null, the result is null.
class Equivalent extends BinaryExpression {
  Equivalent({required super.operands});
}

/// Operator to check if its arguments are not the same value.
/// Returns true if its arguments are not the same value.
/// This operator is a shorthand for invoking logical negation of the Equal operator.
class NotEqual extends BinaryExpression {
  NotEqual({required super.operands});
}

/// Operator to check if the first argument is less than the second argument.
/// Returns true if the first argument is less than the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The Less operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class Less extends BinaryExpression {
  Less({required super.operands});
}

/// Operator to check if the first argument is greater than the second argument.
/// Returns true if the first argument is greater than the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The Greater operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class Greater extends BinaryExpression {
  Greater({required super.operands});
}

/// Operator to check if the first argument is less than or equal to the second argument.
/// Returns true if the first argument is less than or equal to the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The LessOrEqual operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class LessOrEqual extends BinaryExpression {
  LessOrEqual({required super.operands});
}

/// Operator to check if the first argument is greater than or equal to the second argument.
/// Returns true if the first argument is greater than or equal to the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The GreaterOrEqual operator is defined for the Integer, Decimal, String, Date, DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to healthcare variance.
class GreaterOrEqual extends BinaryExpression {
  GreaterOrEqual({required super.operands});
}

/// Operator to perform numeric addition of its arguments.
/// When adding quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// The Add operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be added to a Date, DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the addition cannot be represented (i.e., arithmetic overflow), the result is null.
class Add extends BinaryExpression {
  Add({required super.operands});
}

/// Operator to perform numeric subtraction of its arguments.
/// When subtracting quantities, the dimensions of each quantity must be the same, but not necessarily the unit.
/// The Subtract operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be subtracted from a Date, DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Subtract extends BinaryExpression {
  Subtract({required super.operands});
}

/// Operator to perform numeric multiplication of its arguments.
/// For multiplication operations involving quantities, the resulting quantity will have the appropriate unit.
/// The Multiply operator is defined for the Integer, Decimal, and Quantity types.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Multiply extends BinaryExpression {
  Multiply({required super.operands});
}

/// Operator to perform numeric division of its arguments.
/// Note that the result type of Divide is Decimal, even if its arguments are of type Integer.
/// For division operations involving quantities, the resulting quantity will have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the division cannot be represented, or the right argument is 0, the result is null.
/// The Divide operator is defined for the Decimal and Quantity types.
class Divide extends BinaryExpression {
  Divide({required super.operands});
}

/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({required super.operands});
}

/// Operator to compute the remainder of the division of its arguments.
/// The Modulo operator is defined for the Integer and Decimal types.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is 0, the result is null.
class Modulo extends BinaryExpression {
  Modulo({required super.operands});
}

/// Operator to return the first integer greater than or equal to the argument.
/// If the argument is null, the result is null.
class Ceiling extends UnaryExpression {}

/// Operator to return the first integer less than or equal to the argument.
/// If the argument is null, the result is null.
class Floor extends UnaryExpression {}

/// Operator to return the integer component of its argument.
/// If the argument is null, the result is null.
class Truncate extends UnaryExpression {}

/// Operator to return the absolute value of its argument.
/// When taking the absolute value of a quantity, the unit is unchanged.
/// If the argument is null or the result of taking the absolute value cannot be represented, the result is null.
/// The Abs operator is defined for the Integer, Decimal, and Quantity types.
class Abs extends UnaryExpression {}

/// Operator to return the negative of its argument.
/// When negating quantities, the unit is unchanged.
/// If the argument is null or the result of negating the argument cannot be represented, the result is null.
/// The Negate operator is defined for the Integer, Decimal, and Quantity types.
class Negate extends UnaryExpression {}

/// Operator to return the nearest integer to its argument.
/// The semantics of round are defined as a traditional round, meaning that a decimal value of 0.5 or higher will round to 1.
/// If the argument is null, the result is null.
/// Precision determines the decimal place at which the rounding will occur. If precision is not specified or null, 0 is assumed.
class Round extends OperatorExpression {
  final Expression operand;
  final Expression? precision;

  Round(this.operand, {this.precision});

  // Add any required constructor or methods here.
}

/// Operator to compute the natural logarithm of its argument.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Ln extends UnaryExpression {}

/// Operator to return e raised to the given power.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Exp extends UnaryExpression {}

/// Operator to compute the logarithm of its first argument, using the second argument as the base.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Log extends BinaryExpression {
  Log({required super.operands});
}

/// Operator to raise the first argument to the power given by the second argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Power extends BinaryExpression {
  Power({required super.operands});
}

/// Operator to return the successor of the argument.
/// The Successor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Successor extends UnaryExpression {}

/// Operator to return the predecessor of the argument.
/// The Predecessor operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Predecessor extends UnaryExpression {}

/// Operator to return the minimum representable value for the given type.
/// The MinValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MinValue results in an error.
/// Note that implementations may choose to represent the minimum DateTime value using a constant offset such as UTC.
class MinValue extends Expression {
  final QName valueType;

  MinValue(this.valueType);

  // Add any required constructor or methods here.
}

/// Operator to return the maximum representable value for the given type.
/// The MaxValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MaxValue results in an error.
/// Note that implementations may choose to represent the maximum DateTime value using a constant offset such as UTC.
class MaxValue extends Expression {
  final QName valueType;

  MaxValue(this.valueType);

  // Add any required constructor or methods here.
}

/// Operator to return the number of digits of precision in the input value.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the argument is null, the result is null.
class Precision extends UnaryExpression {}

/// Operator to return the least possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class LowBoundary extends BinaryExpression {
  LowBoundary({required super.operands});
}

/// Operator to return the greatest possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class HighBoundary extends BinaryExpression {
  HighBoundary({required super.operands});
}

/// Operator to perform string concatenation of its arguments.
/// If any argument is null, the result is null.
class Concatenate extends NaryExpression {}

/// Operator to combine a list of strings, optionally separating each string with the given separator.
/// If either argument is null, the result is null. If the source list is empty, the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the input list are ignored.
class Combine extends OperatorExpression {
  final Expression source;
  final Expression? separator;

  Combine(this.source, [this.separator]);

  // Add any required constructor or methods here.
}

/// Operator to split a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator,
/// the result is a list of strings containing one element that is the value of the stringToSplit argument.
class Split extends OperatorExpression {
  final Expression stringToSplit;
  final Expression? separator;

  Split(this.stringToSplit, [this.separator]);

  // Add any required constructor or methods here.
}

/// Operator to split a string into a list of strings using matches of a regex pattern.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator pattern,
/// the result is a list of strings containing one element that is the input value of the stringToSplit argument.
class SplitOnMatches extends OperatorExpression {
  final Expression stringToSplit;
  final Expression separatorPattern;

  SplitOnMatches(this.stringToSplit, this.separatorPattern);

  // Add any required constructor or methods here.
}

/// Operator to return the length of its argument.
/// For strings, the length is the number of characters in the string.
/// For lists, the length is the number of elements in the list.
/// If the argument is null, the result is 0.
class Length extends UnaryExpression {}

/// Operator to convert the given string with all characters converted to their upper case equivalents.
/// If the argument is null, the result is null.
class Upper extends UnaryExpression {}

/// Operator to convert the given string with all characters converted to their lowercase equivalents.
/// If the argument is null, the result is null.
class Lower extends UnaryExpression {}

/// Operator to return the indexth element in a string or list.
/// Indexes in strings and lists are defined to be 0-based.
/// If the index is less than 0 or greater than the length of the string or list being indexed, the result is null.
/// If either argument is null, the result is null.
class Indexer extends BinaryExpression {
  Indexer({required super.operands});
}

/// Operator to return the 0-based index of the beginning of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class PositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  PositionOf(this.pattern, this.string);

  // Add any required constructor or methods here.
}

/// Operator to return the 0-based index of the beginning of the last appearance of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class LastPositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  LastPositionOf(this.pattern, this.string);

  // Add any required constructor or methods here.
}

/// Operator to return the string within stringToSub, starting at the 0-based index startIndex, and consisting of length characters.
/// If length is omitted, the substring returned starts at startIndex and continues to the end of stringToSub.
/// If stringToSub or startIndex is null, or startIndex is out of range, the result is null.
class Substring extends OperatorExpression {
  final Expression stringToSub;
  final Expression startIndex;
  final Expression? length;

  Substring(this.stringToSub, this.startIndex, [this.length]);

  // Add any required constructor or methods here.
}

/// Operator to return true if the given string starts with the given prefix.
/// If the prefix is the empty string, the result is true.
/// If either argument is null, the result is null.
class StartsWith extends BinaryExpression {
  StartsWith({required super.operands});
}

/// Operator to return true if the given string ends with the given suffix.
/// If the suffix is the empty string, the result is true.
/// If either argument is null, the result is null.
class EndsWith extends BinaryExpression {
  EndsWith({required super.operands});
}

/// Operator to return true if the given string matches the given regular expression pattern.
/// If either argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class Matches extends BinaryExpression {
  Matches({required super.operands});
}

/// Operator to match the given string using the regular expression pattern, replacing each match with the given substitution.
/// The substitution string may refer to identified match groups in the regular expression.
/// If any argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class ReplaceMatches extends TernaryExpression {}

/// Temporal Operators

/// Enum to specify the units of precision available for temporal operations.
enum DateTimePrecision {
  Year,
  Month,
  Week,
  Day,
  Hour,
  Minute,
  Second,
  Millisecond,
}

/// Operator to return the number of whole calendar periods for the specified precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// The result of this operation is always an integer; any fractional periods are dropped.
/// If either argument is null, the result is null.
class DurationBetween extends BinaryExpression {
  final DateTimePrecision precision;

  DurationBetween({required this.precision, required super.operands});

  // Add any required constructor or methods here.
}

/// Operator to return the number of boundaries crossed for the specified precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// Because this operation is only counting boundaries crossed, the result is always an integer.
/// If either argument is null, the result is null.
class DifferenceBetween extends BinaryExpression {
  final DateTimePrecision precision;

  DifferenceBetween({required this.precision, required super.operands});

  // Add any required constructor or methods here.
}

/// Operator to return the date (with no time components specified) of the argument.
/// If the argument is null, the result is null.
class DateFrom extends UnaryExpression {}

/// Operator to return the Time of the argument.
/// When extracting the time from a DateTime value, implementations should normalize to the timezone offset of the evaluation request timestamp.
/// If the argument is null, the result is null.
class TimeFrom extends UnaryExpression {}

/// Operator to return the timezone offset of the argument.
/// If the argument is null, the result is null.
class TimezoneOffsetFrom extends UnaryExpression {}

/// Operator to return the specified component of the argument.
/// If the argument is null, the result is null.
/// The precision must be one of Year, Month, Day, Hour, Minute, Second, or Millisecond.
class DateTimeComponentFrom extends UnaryExpression {
  final DateTimePrecision precision;

  DateTimeComponentFrom(this.precision);
}

/// Operator to return the time-of-day of the start timestamp associated with the evaluation request.
class TimeOfDay extends OperatorExpression {}

/// Operator to return the date (with no time component) of the start timestamp associated with the evaluation request.
class Today extends OperatorExpression {}

/// Operator to return the date and time of the start timestamp associated with the evaluation request.
/// Now is defined to always return the same value within any given evaluation.
class Now extends OperatorExpression {}

/// Operator to construct a date value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, month may be null, but if it is, day must be null as well.
class ExpDate extends OperatorExpression {
  final Expression year;
  final Expression? month;
  final Expression? day;

  ExpDate(this.year, [this.month, this.day]);
}

/// Operator to construct a DateTime value from the given components.
/// At least one component other than timezoneOffset must be specified,
/// and no component may be specified at a precision below an unspecified precision.
/// For example, hour may be null, but if it is, minute, second, and millisecond must all be null as well.
/// If timezoneOffset is not specified, it is defaulted to the timezone offset of the evaluation request.
class ExpDateTime extends OperatorExpression {
  final Expression year;
  final Expression? month;
  final Expression? day;
  final Expression? hour;
  final Expression? minute;
  final Expression? second;
  final Expression? millisecond;
  final Expression? timezoneOffset;

  ExpDateTime(
    this.year, {
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
  });
}

/// Operator to construct a time value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, minute may be null, but if it is, second, and millisecond must all be null as well.
class ExpTime extends OperatorExpression {
  final Expression hour;
  final Expression? minute;
  final Expression? second;
  final Expression? millisecond;

  ExpTime(
    this.hour, {
    this.minute,
    this.second,
    this.millisecond,
  });
}

/// Operator to compare two Date, DateTime, or Time values to the specified precision for equality.
/// The SameAs operator compares values starting from the year or hour component down to the specified precision.
/// If all values are specified and have the same value for each component, then the result is true.
/// If a compared component is specified in both dates but the values are not the same, then the result is false.
/// Otherwise, the result is null, as there is not enough information to make a determination.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// If either argument is null, the result is null.
class SameAs extends BinaryExpression {
  final DateTimePrecision? precision;

  SameAs({this.precision, required super.operands});
}

/// Operator to compare two Date, DateTime, or Time values to the specified precision to determine if the first argument is the same or before the second argument.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour, minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or millisecond.
class SameOrBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  SameOrBefore({this.precision, required super.operands});
}

/// Operator to compare two Date, DateTime, or Time values to the specified precision to determine if the first argument is the same or after the second argument.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour, minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or millisecond.
class SameOrAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  SameOrAfter({this.precision, required super.operands});
}

/// Operator to extract the single point from the source interval.
/// The source interval must be a unit interval (an interval with the same starting and ending boundary), otherwise, a run-time error is thrown.
/// If the source interval is null, the result is null.
class PointFrom extends UnaryExpression {}

/// Operator to return the width of an interval (End(i) - Start(i)).
/// Note: This operator is not defined for intervals of type Date, DateTime, and Time.
/// If the argument is null, the result is null.
class Width extends UnaryExpression {}

/// Operator to return the size of an interval (End(i) - Start(i) + point-size), where point-size is determined by: Successor(Minimum_T) - Minimum_T.
/// Note: This operator is not defined for intervals of type Date, DateTime, and Time.
/// If the argument is null, the result is null.
class Size extends UnaryExpression {}

/// Operator to return the starting point of an interval.
/// If the low boundary of the interval is open, this operator returns the Successor of the low value of the interval.
/// If the low boundary of the interval is closed and the low value of the interval is not null, this operator returns the low value of the interval. Otherwise, the result is the minimum value of the point type of the interval.
/// If the argument is null, the result is null.
class Start extends UnaryExpression {}

/// Operator to return the ending point of an interval.
/// If the high boundary of the interval is open, this operator returns the Predecessor of the high value of the interval.
/// If the high boundary of the interval is closed and the high value of the interval is not null, this operator returns the high value of the interval. Otherwise, the result is the maximum value of the point type of the interval.
/// If the argument is null, the result is null.
class End extends UnaryExpression {}

/// Operator to check if the first operand contains the second operand.
/// Returns true if the given point is greater than or equal to the starting point of the interval and less than or equal to the ending point of the interval.
/// For open interval boundaries, exclusive comparison operators are used. For closed interval boundaries, if the interval boundary is null, the result of the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is false. If the second argument is null, the result is null.
class Contains extends BinaryExpression {
  final DateTimePrecision? precision;

  Contains({this.precision, required super.operands});
}

/// Operator to check if the first operand properly contains the second operand.
/// Returns true if the given point is greater than the starting point of the interval and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperContains extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperContains({this.precision, required super.operands});
}

/// Operator to test for membership in an interval or list.
/// Returns true if the given point is greater than or equal to the starting point of the interval and less than or equal to the ending point of the interval.
/// For open interval boundaries, exclusive comparison operators are used. For closed interval boundaries, if the interval boundary is null, the result of the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is null. If the second argument is null, the result is false.
class In extends BinaryExpression {
  final DateTimePrecision? precision;

  In({this.precision, required super.operands});
}

/// Operator to test for proper membership in an interval or list.
/// Returns true if the given point is greater than the starting point and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIn extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIn({this.precision, required super.operands});
}

/// Operator to check if the first operand completely includes the second operand.
/// Returns true if the starting point of the first interval is less than or equal to the starting point of the second interval, and the ending point of the first interval is greater than or equal to the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Includes extends BinaryExpression {
  final DateTimePrecision? precision;

  Includes({this.precision, required super.operands});
}

/// Operator to check if the first operand is completely included in the second operand.
/// Returns true if the starting point of the first interval is greater than or equal to the starting point of the second interval,
/// and the ending point of the first interval is less than or equal to the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class IncludedIn extends BinaryExpression {
  final DateTimePrecision? precision;

  IncludedIn({this.precision, required super.operands});
}

/// Operator to check if the first operand includes the second and is strictly larger.
/// Returns true if the first interval includes every element of the second interval,
/// using equality semantics, and the first interval is strictly larger.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludes extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIncludes({this.precision, required super.operands});
}

/// Operator to check if the first operand is included in the second and is strictly smaller.
/// Returns true if every element of the first interval is included in the second interval,
/// using equality semantics, and the first interval is strictly smaller.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludedIn extends BinaryExpression {
  final DateTimePrecision? precision;

  ProperIncludedIn({this.precision, required super.operands});
}

/// Operator to determine if the first interval ends before the second interval starts.
/// Returns true if the ending point of the first interval is less than the starting point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Before extends BinaryExpression {
  final DateTimePrecision? precision;

  Before({this.precision, required super.operands});
}

/// Operator to determine if the first interval starts after the second interval ends.
/// Returns true if the starting point of the first interval is greater than the ending point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class After extends BinaryExpression {
  final DateTimePrecision? precision;

  After({this.precision, required super.operands});
}

/// Operator to determine if the first interval ends immediately before the second interval starts
/// or if the first interval starts immediately after the second interval ends.
/// Returns true if End(i1) = Predecessor(Start(i2)) or End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Meets extends BinaryExpression {
  final DateTimePrecision? precision;

  Meets(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval ends immediately before the second interval starts.
/// Returns true if End(i1) = Predecessor(Start(i2)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class MeetsBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  MeetsBefore(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval starts immediately after the second interval ends.
/// Returns true if End(i2) = Predecessor(Start(i1)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class MeetsAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  MeetsAfter(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval overlaps the second interval.
/// Returns true if End(i1) >= Start(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Overlaps extends BinaryExpression {
  final DateTimePrecision? precision;

  Overlaps(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval starts before and overlaps the second interval.
/// Returns true if Start(i1) < Start(i2) and End(i1) >= Start(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class OverlapsBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  OverlapsBefore(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval overlaps and ends after the second interval.
/// Returns true if End(i1) > End(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class OverlapsAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  OverlapsAfter(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval starts the second interval.
/// Returns true if Start(i1) = Start(i2) and End(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Starts extends BinaryExpression {
  final DateTimePrecision? precision;

  Starts(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to determine if the first interval ends the second interval.
/// Returns true if Start(i1) >= Start(i2) and End(i1) = End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Ends extends BinaryExpression {
  final DateTimePrecision? precision;

  Ends(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}

/// Operator to get the unique set of intervals that completely cover the ranges present in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap or meet.
/// The operation combines successive intervals in the input that either overlap or meet.
/// If the per argument is null, it's constructed based on the coarsest precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list contains a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
class Collapse extends BinaryExpression {
  Collapse(
      {required Expression left,
      required Expression right,
      required super.operands});
}

/// Operator returns the set of intervals of size per for all the ranges present in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap or meet.
/// The operation combines successive intervals in the input that either overlap or meet.
/// If the per argument is null, it's constructed based on the coarsest precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list contains a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
class Expand extends BinaryExpression {
  Expand({required super.operands});
}

/// Union operator returns the union of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, this operator returns a list with all unique elements from both arguments, using equality semantics, with null elements considered equal.
/// For the interval overload, this operator returns the interval that starts at the earliest starting point in either argument and ends at the latest starting point in either argument. If the arguments do not overlap or meet, returns null.
/// If either argument is null, the operation is performed as though the argument was an empty list.
class Union extends NaryExpression {}

/// Intersect operator returns the intersection of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, returns a list with the elements that appear in both lists using equality semantics. Null elements are considered equal for intersection purposes. The operator is defined with set semantics.
/// For the interval overload, returns the interval that defines the overlapping portion of both arguments. If the arguments do not overlap, returns null.
/// If either argument is null, the result is null.
class Intersect extends NaryExpression {}

/// Except operator returns the set difference of the two arguments.
/// This operator has two overloads: List, List and Interval, Interval.
/// For the list overload, returns a list with elements from the first operand not in the second, using equality semantics, with null elements considered equal. The operator is defined with set semantics.
/// For the interval overload, returns the portion of the first interval that does not overlap with the second. If the second argument is properly contained within the first and does not start or end it, returns null.
/// If the first argument is null, the result is null. If the second argument is null, the operation is performed as though the second argument was an empty list.
class Except extends NaryExpression {}

/// Exists operator returns true if the list contains any elements.
/// If the argument is null, the result is false.
class Exists extends UnaryExpression {}

/// Times operator performs the cartesian product of two lists of tuples.
/// The return type of a Times operator is a tuple with all the components from the tuple types of both arguments.
/// If either argument is null, the result is null.
class Times extends BinaryExpression {
  Times({required super.operands});
}

/// Filter operator returns a list with only those elements in the source list for which the condition element evaluates to true.
/// If the source argument is null, the result is null.
class Filter extends Expression {
  Filter({
    required Expression source,
    required Expression condition,
    required this.scope,
  });

  final String scope;
}

/// First operator returns the first element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the first element.
/// If the argument is null, the result is null.
class First extends OperatorExpression {
  First({
    required Expression source,
    required this.orderBy,
  });

  final String orderBy;
}

/// Last operator returns the last element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the last element.
/// If the argument is null, the result is null.
class Last extends OperatorExpression {
  Last({
    required Expression source,
    required this.orderBy,
  });

  final String orderBy;
}

/// The Slice operator returns a portion of the elements in a list, beginning at the start index and ending just before the ending index.
/// If the source list is null, the result is null.
/// If the startIndex is null, the slice begins at the first element of the list.
/// If the endIndex is null, the slice continues to the last element of the list.
/// If the startIndex or endIndex is less than 0, or if the endIndex is less than the startIndex, the result is an empty list.
class Slice extends OperatorExpression {
  Slice({
    required Expression source,
    required Expression startIndex,
    required Expression endIndex,
  });
}

/// The IndexOf operator returns the 0-based index of the given element in the given source list.
/// The operator uses equality semantics as defined in the Equal operator to determine the index.
/// If the list is empty or no element is found, the result is -1.
/// If either argument is null, the result is null.
class IndexOf extends OperatorExpression {
  IndexOf({
    required Expression source,
    required Expression element,
  });
}

/// The Flatten operator flattens a list of lists into a single list.
/// If the argument is null, the result is null.
class Flatten extends UnaryExpression {}

/// The Sort operator returns a list with all the elements in source, sorted as described by the by element.
/// When the sort elements do not provide a unique ordering, the order of duplicates is unspecified.
/// If the argument is null, the result is null.
class Sort extends Expression {
  Sort({
    required Expression source,
    required List<SortByItem> by,
  });
}

/// The ForEach expression iterates over the list of elements in the source element.
/// It returns a list with the same number of elements, where each element in the new list is the result of evaluating the element expression for each element in the source list.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class ForEach extends Expression {
  ForEach({
    required Expression source,
    required Expression element,
    required this.scope,
  });

  final String scope;
}

/// The Repeat expression performs successive ForEach until no new elements are returned.
/// It uses equality comparison semantics as defined in the Equal operator.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class Repeat extends Expression {
  Repeat({
    required Expression source,
    required Expression element,
    required this.scope,
  });

  final String scope;
}

/// The Distinct operator returns a list containing only the unique elements within the input list.
/// The operator uses equality comparison semantics as defined in the Equal operator.
/// Nulls are considered equal for the purposes of distinct determination.
/// If the source argument is null, the result is null.
class Distinct extends UnaryExpression {}

/// The Current expression returns the value of the object currently in scope.
/// It's an error to invoke the Current operator outside of a scoped operation.
class Current extends Expression {
  Current({required this.scope});

  final String scope;
}

/// The Iteration expression returns the current iteration number of a scoped operation.
class Iteration extends Expression {
  Iteration({required this.scope});

  final String scope;
}

/// The Total expression returns the current value of the total aggregation accumulator in an aggregate operation.
class Total extends Expression {
  Total({required this.scope});

  final String scope;
}

/// The SingletonFrom expression extracts a single element from the source list.
/// If the source list is empty, the result is null.
/// If the source list contains one element, that element is returned.
/// If the list contains more than one element, a run-time error is thrown.
/// If the source list is null, the result is null.
class SingletonFrom extends UnaryExpression {}

/// Abstract base class for Aggregate expressions performing operations on lists of data.
abstract class AggregateExpression extends Expression {
  AggregateExpression({
    required this.signature,
    required Expression source,
    required this.path,
  });

  final List<ExpTypeSpecifier>? signature;
  final String? path;
}

/// The Aggregate operator performs custom aggregation by evaluating an expression for each element of the source.
/// If a path is specified, the aggregation is performed for the value of the property specified by the path for each element of the source.
/// If the list is null, the result is null.
class Aggregate extends AggregateExpression {
  Aggregate({
    required this.iteration,
    required Expression source,
    required this.initialValue,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  final Expression iteration;
  final Expression? initialValue;
}

/// The Count operator returns the number of non-null elements in the source.
/// If a path is specified, the count returns the number of elements that have a value for the property specified by the path.
/// If the list is empty, the result is 0.
/// If the list is null, the result is 0.
class Count extends AggregateExpression {
  Count({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Sum operator returns the sum of non-null elements in the source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class Sum extends AggregateExpression {
  Sum({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Product operator returns the geometric product of non-null elements in the source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class Product extends AggregateExpression {
  Product({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Min operator returns the minimum element in the source.
/// Comparison semantics are defined by the comparison operators for the type of the values being aggregated.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Min extends AggregateExpression {
  Min({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Max operator returns the maximum element in the source.
/// Comparison semantics are defined by the comparison operators for the type of the values being aggregated.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Max extends AggregateExpression {
  Max({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Avg operator returns the average of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Avg extends AggregateExpression {
  Avg({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The GeometricMean operator returns the geometric mean of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class GeometricMean extends AggregateExpression {
  GeometricMean({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Median operator returns the median of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Median extends AggregateExpression {
  Median({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Mode operator returns the statistical mode of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Mode extends AggregateExpression {
  Mode({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Variance operator returns the statistical variance of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class Variance extends AggregateExpression {
  Variance({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The PopulationVariance operator returns the statistical population variance of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationVariance extends AggregateExpression {
  PopulationVariance({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The StdDev operator returns the statistical standard deviation of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class StdDev extends AggregateExpression {
  StdDev({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The PopulationStdDev operator returns the statistical standard deviation of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationStdDev extends AggregateExpression {
  PopulationStdDev({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The AllTrue operator returns true if all the non-null elements in source are true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, true is returned.
/// If the source is null, the result is true.
class AllTrue extends AggregateExpression {
  AllTrue({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The AnyTrue operator returns true if any non-null element in source is true.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, false is returned.
/// If the source is null, the result is false.
class AnyTrue extends AggregateExpression {
  AnyTrue({
    required Expression source,
    List<ExpTypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}

/// The Property operator returns the value of the property on source specified by the path attribute.
/// If the result of evaluating source is null, the result is null.
/// The path attribute may include qualifiers (.) and indexers ([x]). Indexers must be literal integer values.
/// If the path attribute contains qualifiers or indexers, each qualifier or indexer is traversed to obtain the actual value.
/// If the object of the property access at any point in traversing the path is null, the result is null.
/// If a scope is specified, the name is used to resolve the scope in which the path will be resolved.
/// Property expressions can also be used to access the individual points and closed indicators for interval types using the property names low, high, lowClosed, and highClosed.
class Property extends Expression {
  Property({
    required this.path,
    this.source,
    this.scope,
  });

  final String path;
  final Expression? source;
  final String? scope;
}

/// The AliasedQuerySource element defines a single source for inclusion in a query scope.
/// The type of the source is determined by the expression element, and the source can be accessed within the query scope by the given alias.
class AliasedQuerySource extends Element {
  AliasedQuerySource({
    required this.expression,
    required this.alias,
  });

  final Expression expression;
  final String alias;
}

/// The LetClause element allows any number of expression definitions to be introduced within a query scope.
/// Defined expressions can be referenced by name within the query scope.
class LetClause extends Element {
  LetClause({
    required this.expression,
    required this.identifier,
  });

  final Expression expression;
  final String identifier;
}

/// The RelationshipClause element allows related sources to be used to restrict the elements included from another source in a query scope.
/// Note that the elements referenced by the relationship clause can only be accessed within the suchThat condition, and that elements of the related source are not included in the query scope.
abstract class RelationshipClause extends AliasedQuerySource {
  RelationshipClause({
    required Expression expression,
    required this.suchThat,
    required String alias,
  }) : super(expression: expression, alias: alias);

  final Expression suchThat;
}

/// The With clause restricts the elements of a given source to only those elements that have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-join in database languages.
class With extends RelationshipClause {
  With({
    required Expression expression,
    required Expression suchThat,
    required String alias,
  }) : super(
          expression: expression,
          suchThat: suchThat,
          alias: alias,
        );
}

/// The Without clause restricts the elements of a given source to only those elements that do not have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-difference in database languages.
class Without extends RelationshipClause {
  Without({
    required Expression expression,
    required Expression suchThat,
    required String alias,
  }) : super(
          expression: expression,
          suchThat: suchThat,
          alias: alias,
        );
}

/// Enumeration for sort directions.
enum SortDirection { asc, ascending, desc, descending }

/// The SortByItem element specifies the direction for sorting.
abstract class SortByItem extends Element {
  final SortDirection direction;

  SortByItem({required this.direction});
}

/// The ByDirection element specifies that the sort should be performed using the given direction.
/// This approach is used when the result of the query is a list of non-tuple elements and only the sort direction needs to be specified.
class ByDirection extends SortByItem {
  ByDirection({required SortDirection direction}) : super(direction: direction);
}

/// The ByColumn element specifies that the sort should be performed using the given column and direction.
/// This approach is used to specify the sort order for a query when the result is a list of tuples.
class ByColumn extends SortByItem {
  final String path;

  ByColumn({
    required SortDirection direction,
    required this.path,
  }) : super(direction: direction);
}

/// The ByExpression element specifies that the sort should be performed using the given expression and direction.
/// This approach is used to specify the sort order as a calculated expression.
class ByExpression extends SortByItem {
  final Expression expression;

  ByExpression({
    required SortDirection direction,
    required this.expression,
  }) : super(direction: direction);
}

/// The SortClause element defines the sort order for the query.
class SortClause extends Element {
  SortClause({required List<SortByItem> by}) : _by = by;

  final List<SortByItem> _by;
  List<SortByItem> get by => List.unmodifiable(_by);
}

/// The ReturnClause element defines the shape of the result set of the query.
class ReturnClause extends Element {
  ReturnClause({
    required this.expression,
    this.distinct = true,
  });

  final Expression expression;
  final bool distinct;
}

/// The Query operator represents a clause-based query.
class Query extends Expression {
  Query({
    required List<AliasedQuerySource> source,
    List<LetClause>? let,
    List<RelationshipClause>? relationship,
    Expression? where,
    ReturnClause? returnClause,
    SortClause? sort,
  })  : _source = source,
        _let = let,
        _relationship = relationship,
        _where = where,
        _returnClause = returnClause,
        _sort = sort;

  final List<AliasedQuerySource> _source;
  List<AliasedQuerySource> get source => List.unmodifiable(_source);

  final List<LetClause>? _let;
  List<LetClause>? get let => _let != null ? List.unmodifiable(_let!) : null;

  final List<RelationshipClause>? _relationship;
  List<RelationshipClause>? get relationship =>
      _relationship != null ? List.unmodifiable(_relationship!) : null;

  final Expression? _where;
  Expression? get where => _where;

  final ReturnClause? _returnClause;
  ReturnClause? get returnClause => _returnClause;

  final SortClause? _sort;
  SortClause? get sort => _sort;
}

/// The AliasRef expression allows for the reference of a specific source within the scope of a query.
class AliasRef extends Expression {
  AliasRef({required this.name});

  final String name;
}

/// The QueryLetRef expression allows for the reference of a specific let definition within the scope of a query.
class QueryLetRef extends Expression {
  QueryLetRef({required this.name});

  final String name;
}

/// For structured types, the Children operator returns a list of all the values of the elements of the type.
/// For list types, the result is the same as invoking Children on each element in the list and flattening the resulting lists into a single result.
class Children extends OperatorExpression {
  Children({required Expression source});
}

/// For structured types, the Descendents operator returns a list of all the values of the elements of the type, recursively.
/// For list types, the result is the same as invoking Descendents on each element in the list and flattening the resulting lists into a single result.
class Descendents extends OperatorExpression {
  Descendents({required Expression source});
}

/// The Message operator is used to support errors, warnings, messages, and tracing in an ELM evaluation environment.
class Message extends OperatorExpression {
  Message({
    required this.source,
    this.condition,
    this.code,
    this.severity,
    this.message,
  });

  final Expression source;
  final Expression? condition;
  final Expression? code;
  final Expression? severity;
  final Expression? message;
}
