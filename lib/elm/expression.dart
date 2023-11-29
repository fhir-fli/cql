import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:json_annotation/json_annotation.dart';

import '../cql.dart';

part 'expression.g.dart';

/// The Element type defines the abstract base type for all library elements in ELM.
@JsonSerializable()
class ElmElement {
  final String? localId;
  final String? locator;
  final QName? resultTypeName;
  final List<CqlToElmBase>? annotation;
  final TypeSpecifier? resultTypeSpecifier;

  const ElmElement({
    this.localId,
    this.locator,
    this.resultTypeName,
    this.annotation,
    this.resultTypeSpecifier,
  });

  factory ElmElement.fromJson(Map<String, dynamic> json) =>
      _$ElmElementFromJson(json);

  Map<String, dynamic> toJson() => _$ElmElementToJson(this);
}

@JsonSerializable()
class TypeSpecifier extends ElmElement {
  String? localId;
  String? locator;
  QName? resultTypeName;
  List<CqlToElmBase>? annotation;
  TypeSpecifier? resultTypeSpecifier;

  TypeSpecifier({
    this.localId,
    this.locator,
    this.resultTypeName,
    this.annotation,
    this.resultTypeSpecifier,
  });

  factory TypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$TypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$TypeSpecifierToJson(this);
}

@JsonSerializable()
class TupleElementDefinition extends ElmElement {
  String name;
  TypeSpecifier? type; // Deprecated, use elementType
  TypeSpecifier? elementType;

  TupleElementDefinition({required this.name});

  factory TupleElementDefinition.fromJson(Map<String, dynamic> json) =>
      _$TupleElementDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$TupleElementDefinitionToJson(this);
}

@JsonSerializable()
class Expression extends ElmElement {
  Expression([this.value]);

  dynamic value;

  factory Expression.fromJson(Map<String, dynamic> json) =>
      _$ExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}

@JsonSerializable()
class OperatorExpression extends Expression {
  List<TypeSpecifier>? signature;

  OperatorExpression({this.signature});

  factory OperatorExpression.fromJson(Map<String, dynamic> json) =>
      _$OperatorExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorExpressionToJson(this);
}

@JsonSerializable()
class UnaryExpression extends OperatorExpression {
  Expression? operand;

  UnaryExpression({this.operand});

  factory UnaryExpression.fromJson(Map<String, dynamic> json) =>
      _$UnaryExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$UnaryExpressionToJson(this);
}

@JsonSerializable()
class BinaryExpression extends OperatorExpression {
  List<Expression> operand;

  BinaryExpression({required this.operand});

  factory BinaryExpression.fromJson(Map<String, dynamic> json) =>
      _$BinaryExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$BinaryExpressionToJson(this);
}

@JsonSerializable()
class TernaryExpression extends OperatorExpression {
  List<Expression>? operand;

  TernaryExpression({this.operand});

  factory TernaryExpression.fromJson(Map<String, dynamic> json) =>
      _$TernaryExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$TernaryExpressionToJson(this);
}

@JsonSerializable()
class NaryExpression extends OperatorExpression {
  List<Expression>? operand;

  NaryExpression({this.operand});

  factory NaryExpression.fromJson(Map<String, dynamic> json) =>
      _$NaryExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$NaryExpressionToJson(this);
}

enum AccessModifier { Public, Private }

@JsonSerializable()
class ExpressionDef extends ElmElement {
  Expression? expression;
  String? name;
  String? context;
  AccessModifier accessLevel;

  ExpressionDef({
    required this.name,
    this.expression,
    this.context,
    this.accessLevel = AccessModifier.Public,
  });

  factory ExpressionDef.fromJson(Map<String, dynamic> json) =>
      _$ExpressionDefFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressionDefToJson(this);
}

@JsonSerializable()
class FunctionDef extends ExpressionDef {
  bool? external;
  List<OperandDef>? operand;

  FunctionDef({
    String? name,
    String? context,
    AccessModifier accessLevel = AccessModifier.Public,
    Expression? expression,
    this.external,
    this.operand,
  }) : super(
          name: name,
          context: context,
          accessLevel: accessLevel,
          expression: expression,
        );

  factory FunctionDef.fromJson(Map<String, dynamic> json) =>
      _$FunctionDefFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionDefToJson(this);
}

@JsonSerializable()
class ExpressionRef extends Expression {
  String? name;
  String? libraryName;

  ExpressionRef({this.name, this.libraryName});

  factory ExpressionRef.fromJson(Map<String, dynamic> json) =>
      _$ExpressionRefFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressionRefToJson(this);
}

@JsonSerializable()
class FunctionRef extends ExpressionRef {
  List<TypeSpecifier>? signature;
  List<Expression>? operand;

  FunctionRef({
    String? name,
    String? libraryName,
    this.signature,
    this.operand,
  }) : super(name: name, libraryName: libraryName);

  factory FunctionRef.fromJson(Map<String, dynamic> json) =>
      _$FunctionRefFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionRefToJson(this);
}

@JsonSerializable()
class ParameterDef extends ElmElement {
  String? name;
  String? parameterType;
  AccessModifier accessLevel;
  Expression? defaultExpr;
  TypeSpecifier? parameterTypeSpecifier;

  ParameterDef({
    this.name,
    this.parameterType,
    this.accessLevel = AccessModifier.Public,
    this.defaultExpr,
    this.parameterTypeSpecifier,
  });

  factory ParameterDef.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterDefToJson(this);
}

@JsonSerializable()
class ParameterRef extends Expression {
  String? name;
  String? libraryName;

  ParameterRef({this.name, this.libraryName});

  factory ParameterRef.fromJson(Map<String, dynamic> json) =>
      _$ParameterRefFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterRefToJson(this);
}

@JsonSerializable()
class OperandDef extends ElmElement {
  String? name;
  String? operandType;
  TypeSpecifier? operandTypeSpecifier;

  OperandDef({this.name, this.operandType, this.operandTypeSpecifier});

  factory OperandDef.fromJson(Map<String, dynamic> json) =>
      _$OperandDefFromJson(json);

  Map<String, dynamic> toJson() => _$OperandDefToJson(this);
}

@JsonSerializable()
class OperandRef extends Expression {
  String? name;

  OperandRef({this.name});

  factory OperandRef.fromJson(Map<String, dynamic> json) =>
      _$OperandRefFromJson(json);

  Map<String, dynamic> toJson() => _$OperandRefToJson(this);
}

@JsonSerializable()
class IdentifierRef extends Expression {
  String? name;
  String? libraryName;

  IdentifierRef({this.name, this.libraryName});

  factory IdentifierRef.fromJson(Map<String, dynamic> json) =>
      _$IdentifierRefFromJson(json);

  Map<String, dynamic> toJson() => _$IdentifierRefToJson(this);
}

@JsonSerializable()
class Literal extends Expression {
  late QName valueType;
  dynamic value;

  Literal({required this.valueType, this.value});

  factory Literal.fromJson(Map<String, dynamic> json) =>
      _$LiteralFromJson(json);

  Map<String, dynamic> toJson() => _$LiteralToJson(this);

  String? getValueType() => valueType.toString();

  String? getValue() => value.toString();
}

@JsonSerializable()
class TupleElement {
  late String name;
  late Expression value;

  TupleElement({required this.name, required this.value});

  factory TupleElement.fromJson(Map<String, dynamic> json) =>
      _$TupleElementFromJson(json);

  Map<String, dynamic> toJson() => _$TupleElementToJson(this);
}

@JsonSerializable()
class Tuple extends Expression {
  late List<TupleElement> element;

  Tuple({required this.element});

  factory Tuple.fromJson(Map<String, dynamic> json) => _$TupleFromJson(json);

  Map<String, dynamic> toJson() => _$TupleToJson(this);
}

@JsonSerializable()
class InstanceElement {
  late String name;
  late Expression value;

  InstanceElement({required this.name, required this.value});

  factory InstanceElement.fromJson(Map<String, dynamic> json) =>
      _$InstanceElementFromJson(json);

  Map<String, dynamic> toJson() => _$InstanceElementToJson(this);
}

@JsonSerializable()
class Instance extends Expression {
  late QName classType;
  late List<InstanceElement> element;

  Instance({required this.classType, required this.element});

  factory Instance.fromJson(Map<String, dynamic> json) =>
      _$InstanceFromJson(json);

  Map<String, dynamic> toJson() => _$InstanceToJson(this);
}

@JsonSerializable()
class Interval extends Expression {
  Object? low;
  Expression? lowClosedExpression;
  Object? high;
  Expression? highClosedExpression;
  bool lowClosed = true;
  bool highClosed = true;

  Interval({
    this.low,
    this.lowClosedExpression,
    this.high,
    this.highClosedExpression,
    this.lowClosed = true,
    this.highClosed = true,
  });

  factory Interval.fromJson(Map<String, dynamic> json) =>
      _$IntervalFromJson(json);

  Map<String, dynamic> toJson() => _$IntervalToJson(this);
}

@JsonSerializable()
class ElmList extends Expression {
  late TypeSpecifier? typeSpecifier;
  late List<Expression> element;

  ElmList({this.typeSpecifier, required this.element});

  factory ElmList.fromJson(Map<String, dynamic> json) =>
      _$ElmListFromJson(json);

  Map<String, dynamic> toJson() => _$ElmListToJson(this);
}

// Class representing the And operator
@JsonSerializable()
class And extends BinaryExpression {
  // Add properties if needed
  And({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory And.fromJson(Map<String, dynamic> json) => _$AndFromJson(json);

  Map<String, dynamic> toJson() => _$AndToJson(this);
}

// Class representing the Or operator
@JsonSerializable()
class Or extends BinaryExpression {
  // Add properties if needed
  Or({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Or.fromJson(Map<String, dynamic> json) => _$OrFromJson(json);

  Map<String, dynamic> toJson() => _$OrToJson(this);
}

// Class representing the Xor operator
@JsonSerializable()
class Xor extends BinaryExpression {
  // Add properties if needed
  Xor({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Xor.fromJson(Map<String, dynamic> json) => _$XorFromJson(json);

  Map<String, dynamic> toJson() => _$XorToJson(this);
}

// Class representing the Implies operator
@JsonSerializable()
class Implies extends BinaryExpression {
  // Add properties if needed
  Implies({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Implies.fromJson(Map<String, dynamic> json) =>
      _$ImpliesFromJson(json);

  Map<String, dynamic> toJson() => _$ImpliesToJson(this);
}

// Class representing the Not operator
@JsonSerializable()
class Not extends UnaryExpression {
  // Add properties if needed
  Not({required super.operand});

  factory Not.fromJson(Map<String, dynamic> json) => _$NotFromJson(json);

  Map<String, dynamic> toJson() => _$NotToJson(this);
}

// Class representing the If operator
@JsonSerializable()
class If extends Expression {
  Expression condition;
  Expression then;
  Expression elseClause;

  If(this.condition, this.then, this.elseClause);

  factory If.fromJson(Map<String, dynamic> json) => _$IfFromJson(json);

  Map<String, dynamic> toJson() => _$IfToJson(this);
}

// Class representing a single case item within a Case operator
@JsonSerializable()
class CaseItem extends ElmElement {
  late Expression when;
  late Expression then;

  CaseItem({required this.when, required this.then});

  factory CaseItem.fromJson(Map<String, dynamic> json) =>
      _$CaseItemFromJson(json);

  Map<String, dynamic> toJson() => _$CaseItemToJson(this);

  @override
  $ElementCopyWith<Element> get copyWith => throw UnimplementedError();

  @override
  List<FhirExtension>? get extension_ => toJson()['extension'];

  @override
  String? get fhirId => toJson()['id'];

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

// Class representing the Case operator
@JsonSerializable()
class Case extends Expression {
  Expression? comparand;
  List<CaseItem> caseItems;
  Expression elseClause;

  Case(this.caseItems, this.elseClause, {this.comparand});

  factory Case.fromJson(Map<String, dynamic> json) => _$CaseFromJson(json);

  Map<String, dynamic> toJson() => _$CaseToJson(this);
}

// Class representing the Null operator
@JsonSerializable()
class NullOperator extends Expression {
  String? valueType;

  NullOperator({this.valueType});

  factory NullOperator.fromJson(Map<String, dynamic> json) =>
      _$NullOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$NullOperatorToJson(this);
}

// Class representing the IsNull operator
@JsonSerializable()
class IsNull extends UnaryExpression {
  IsNull({required super.operand});

  factory IsNull.fromJson(Map<String, dynamic> json) => _$IsNullFromJson(json);

  Map<String, dynamic> toJson() => _$IsNullToJson(this);
}

/// Class representing the IsTrue operator.
/// The IsTrue operator determines whether or not its argument evaluates to true.
/// If the argument evaluates to true, the result is true;
/// if the argument evaluates to false or null, the result is false.
@JsonSerializable()
class IsTrue extends UnaryExpression {
  IsTrue({required super.operand});

  factory IsTrue.fromJson(Map<String, dynamic> json) => _$IsTrueFromJson(json);

  Map<String, dynamic> toJson() => _$IsTrueToJson(this);
}

/// Class representing the IsFalse operator.
/// The IsFalse operator determines whether or not its argument evaluates to false.
/// If the argument evaluates to false, the result is true;
/// if the argument evaluates to true or null, the result is false.
@JsonSerializable()
class IsFalse extends UnaryExpression {
  IsFalse({required super.operand});

  factory IsFalse.fromJson(Map<String, dynamic> json) =>
      _$IsFalseFromJson(json);

  Map<String, dynamic> toJson() => _$IsFalseToJson(this);
}

/// Class representing the Coalesce operator.
/// The Coalesce operator returns the first non-null result in a list of arguments.
/// If all arguments evaluate to null, the result is null.
/// The static type of the first argument determines the type of the result,
/// and all subsequent arguments must be of that same type.
@JsonSerializable()
class Coalesce extends NaryExpression {
  Coalesce({required super.operand});

  factory Coalesce.fromJson(Map<String, dynamic> json) =>
      _$CoalesceFromJson(json);

  Map<String, dynamic> toJson() => _$CoalesceToJson(this);
}

/// Class representing the Is operator.
/// The Is operator allows the type of a result to be tested.
/// If the run-time type of the argument is of the type being tested, the result of the operator is true;
/// otherwise, the result is false.
@JsonSerializable()
class Is extends UnaryExpression {
  TypeSpecifier? isTypeSpecifier;
  String? isType;

  Is({
    Expression? operand,
    this.isTypeSpecifier,
    this.isType,
  }) : super(operand: operand);

  factory Is.fromJson(Map<String, dynamic> json) => _$IsFromJson(json);

  Map<String, dynamic> toJson() => _$IsToJson(this);
}

/// Class representing the As operator.
/// The As operator allows the result of an expression to be cast as a given target type.
/// This allows expressions to be written that are statically typed against the expected run-time type of the argument.
/// If the argument is not of the specified type, and the strict attribute is false (the default), the result is null.
/// If the argument is not of the specified type and the strict attribute is true, an exception is thrown.
@JsonSerializable()
class As extends UnaryExpression {
  TypeSpecifier? asTypeSpecifier;
  String? asType;
  bool? strict;

  As({
    Expression? operand,
    this.asTypeSpecifier,
    this.asType,
    this.strict,
  }) : super(operand: operand);

  factory As.fromJson(Map<String, dynamic> json) => _$AsFromJson(json);

  Map<String, dynamic> toJson() => _$AsToJson(this);
}

/// Class representing the Convert operator.
/// The Convert operator converts a value to a specific type.
/// If no valid conversion exists from the actual value to the target type, the result is null.
@JsonSerializable()
class Convert extends UnaryExpression {
  TypeSpecifier? toTypeSpecifier;
  String? toType;

  Convert({
    Expression? operand,
    this.toTypeSpecifier,
    this.toType,
  }) : super(operand: operand);

  factory Convert.fromJson(Map<String, dynamic> json) =>
      _$ConvertFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertToJson(this);
}

/// Class representing the CanConvert operator.
/// The CanConvert operator returns true if the given value can be converted to a specific type, and false otherwise.
@JsonSerializable()
class CanConvert extends UnaryExpression {
  TypeSpecifier? toTypeSpecifier;
  String? toType;

  CanConvert({
    Expression? operand,
    this.toTypeSpecifier,
    this.toType,
  }) : super(operand: operand);

  factory CanConvert.fromJson(Map<String, dynamic> json) =>
      _$CanConvertFromJson(json);

  Map<String, dynamic> toJson() => _$CanConvertToJson(this);
}

@JsonSerializable()
class ToBoolean extends UnaryExpression {
  ToBoolean({required super.operand});

  String? convertThisToBoolean() => convertToBoolean(value);

  static String? convertToBoolean(dynamic value) {
    // Define the logic to convert the value to a Boolean according to the specified rules

    if (value == null) {
      return null;
    } else if (value is String) {
      switch (value.toLowerCase()) {
        case 'true':
        case 't':
        case 'yes':
        case 'y':
        case '1':
          return 'true';
        case 'false':
        case 'f':
        case 'no':
        case 'n':
        case '0':
          return 'false';
        default:
          return null;
      }
    } else if (value is int || value is double) {
      return value == 1 ? 'true' : (value == 0 ? 'false' : null);
    } else {
      return null;
    }
  }

  factory ToBoolean.fromJson(Map<String, dynamic> json) =>
      _$ToBooleanFromJson(json);

  Map<String, dynamic> toJson() => _$ToBooleanToJson(this);
}

@JsonSerializable()
class ConvertsToBoolean extends UnaryExpression {
  ConvertsToBoolean({required super.operand});

  bool checkThisBooleanValue() => checkBooleanValue(value);

  static bool checkBooleanValue(dynamic value) {
    if (value == null) {
      return false;
    } else if (value is String) {
      switch (value.toLowerCase()) {
        case 'true':
        case 't':
        case 'yes':
        case 'y':
        case '1':
          return true;
        case 'false':
        case 'f':
        case 'no':
        case 'n':
        case '0':
          return true;
        default:
          return false;
      }
    } else if (value is int || value is double) {
      return value == 1 || value == 0;
    } else {
      return false;
    }
  }

  factory ConvertsToBoolean.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToBooleanFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToBooleanToJson(this);
}

@JsonSerializable()
class ToConcept extends UnaryExpression {
  ToConcept({required super.operand});

  dynamic convertThisToConcept() => convertToConcept(value);

  static dynamic convertToConcept(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is List<String>) {
      return value.map((code) => {'code': code}).toList();
    } else if (value is String) {
      return {'code': value};
    } else {
      return null;
    }
  }

  factory ToConcept.fromJson(Map<String, dynamic> json) =>
      _$ToConceptFromJson(json);

  Map<String, dynamic> toJson() => _$ToConceptToJson(this);
}

@JsonSerializable()
class ConvertsToDate extends UnaryExpression {
  ConvertsToDate({required super.operand});

  bool isThisConvertsToDate() => isConvertsToDate(value);

  static bool isConvertsToDate(dynamic value) {
    if (value == null || value is! String) {
      return false;
    }

    // Date format: YYYY-MM-DD
    final dateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    return dateRegex.hasMatch(value);
  }

  factory ConvertsToDate.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToDateFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToDateToJson(this);
}

@JsonSerializable()
class ToDate extends UnaryExpression {
  ToDate({required super.operand});

  DateTime? convertThisToDate() => toDate(value);

  static DateTime? toDate(dynamic value) {
    if (value == null || value is! String) {
      return null;
    }

    // Date format: YYYY-MM-DD
    final dateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!dateRegex.hasMatch(value)) {
      return null;
    }

    try {
      return DateTime.parse(value);
    } catch (e) {
      return null;
    }
  }

  factory ToDate.fromJson(Map<String, dynamic> json) => _$ToDateFromJson(json);

  Map<String, dynamic> toJson() => _$ToDateToJson(this);
}

@JsonSerializable()
class ConvertsToDateTime extends UnaryExpression {
  ConvertsToDateTime({required super.operand});

  bool convertsThisToDateTime() => convertsToDateTime(value);

  static bool convertsToDateTime(dynamic value) {
    if (value == null || value is! String) {
      return false;
    }

    // Date time format: YYYY-MM-DDThh:mm:ss.fff(Z|((+|-)hh:mm))
    final dateTimeRegex = RegExp(
        r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{3}(Z|(\+|-)\d{2}:\d{2})?$');
    return dateTimeRegex.hasMatch(value);
  }

  factory ConvertsToDateTime.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToDateTimeFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToDateTimeToJson(this);
}

@JsonSerializable()
class ToDateTime extends UnaryExpression {
  ToDateTime({required super.operand});

  DateTime? toThisDateTime() => toDateTime(value);

  static DateTime? toDateTime(dynamic value) {
    if (value == null || value is! String) {
      return null;
    }

    final dateTimeRegex = RegExp(
        r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{3}(Z|(\+|-)\d{2}:\d{2})?$');
    if (!dateTimeRegex.hasMatch(value)) {
      return null;
    }

    try {
      return DateTime.parse(value);
    } catch (e) {
      return null;
    }
  }

  factory ToDateTime.fromJson(Map<String, dynamic> json) =>
      _$ToDateTimeFromJson(json);

  Map<String, dynamic> toJson() => _$ToDateTimeToJson(this);
}

@JsonSerializable()
class ConvertsToDecimal extends UnaryExpression {
  ConvertsToDecimal({required super.operand});

  bool convertsThisToDecimal() => convertsToDecimal(value);

  static bool convertsToDecimal(dynamic value) {
    if (value == null) {
      return false;
    }

    if (value is bool) {
      return true;
    }

    final decimalRegex = RegExp(r'^[+-]?(\d+(\.\d+)?|\.\d+)$');
    return decimalRegex.hasMatch(value.toString());
  }

  factory ConvertsToDecimal.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToDecimalFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToDecimalToJson(this);
}

@JsonSerializable()
class ToDecimal extends UnaryExpression {
  ToDecimal({required super.operand});

  num? toThisDecimal() => toDecimal(value);

  static num? toDecimal(dynamic value) {
    if (value == null) {
      return null;
    }

    if (value is bool) {
      return value ? 1.0 : 0.0;
    }

    final decimalRegex = RegExp(r'^[+-]?(\d+(\.\d+)?|\.\d+)$');
    final valueString = value.toString();
    if (!decimalRegex.hasMatch(valueString)) {
      return null;
    }

    return num.tryParse(valueString);
  }

  factory ToDecimal.fromJson(Map<String, dynamic> json) =>
      _$ToDecimalFromJson(json);

  Map<String, dynamic> toJson() => _$ToDecimalToJson(this);
}

@JsonSerializable()
class ConvertsToInteger extends UnaryExpression {
  ConvertsToInteger({required super.operand});

  bool convertsThisToInteger() => convertsToInteger(value);

  static bool convertsToInteger(dynamic value) {
    if (value == null) {
      return false;
    }

    if (value is bool) {
      return true;
    }

    final intRegex = RegExp(r'^[+-]?\d+$');
    final valueString = value.toString();
    if (!intRegex.hasMatch(valueString)) {
      return false;
    }

    try {
      int.parse(valueString);
      return true;
    } catch (_) {
      return false;
    }
  }

  factory ConvertsToInteger.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToIntegerFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToIntegerToJson(this);
}

@JsonSerializable()
class ToInteger extends UnaryExpression {
  ToInteger({required super.operand});

  int? toThisInteger() => toInteger(value);

  static int? toInteger(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is bool) {
      return value ? 1 : 0;
    } else if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return null;
      }

      RegExp integerRegex = RegExp(r'^[+-]?\d+$');

      if (!integerRegex.hasMatch(formattedvalue)) {
        return null; // Not a valid integer format
      }

      try {
        return int.parse(formattedvalue);
      } catch (e) {
        return null; // Parsing error
      }
    } else {
      return null; // Unsupported type
    }
  }

  factory ToInteger.fromJson(Map<String, dynamic> json) =>
      _$ToIntegerFromJson(json);

  Map<String, dynamic> toJson() => _$ToIntegerToJson(this);
}

@JsonSerializable()
class ConvertsToLong extends UnaryExpression {
  ConvertsToLong({required super.operand});

  bool convertsThisToLong() => convertsToLong(value);

  static bool convertsToLong(dynamic value) {
    if (value == null) {
      return false;
    } else if (value is bool) {
      return true;
    } else if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return false;
      }

      RegExp longRegex = RegExp(r'^[+-]?\d+$');

      if (!longRegex.hasMatch(formattedvalue)) {
        return false; // Not a valid long format
      }

      try {
        // Check if the parsed value fits in the range of a Dart 'int' type
        int parsedValue = int.parse(formattedvalue);
        return parsedValue >= -9223372036854775808 &&
            parsedValue <= 9223372036854775807;
      } catch (e) {
        return false; // Parsing error
      }
    } else {
      return false; // Unsupported type
    }
  }

  factory ConvertsToLong.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToLongFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToLongToJson(this);
}

@JsonSerializable()
class ToLong extends UnaryExpression {
  ToLong({required super.operand});

  int? convertThisToLong() => toLong(value);

  static int? toLong(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return null;
      }

      RegExp longRegex = RegExp(r'^[+-]?\d+$');

      if (!longRegex.hasMatch(formattedvalue)) {
        return null; // Not a valid long format
      }

      try {
        // Parsing the value to an integer
        int parsedValue = int.parse(formattedvalue);
        // Checking if the parsed value fits in the range of a Dart 'int' type (corresponds to Long in CQL)
        if (parsedValue >= -9223372036854775808 &&
            parsedValue <= 9223372036854775807) {
          return parsedValue;
        } else {
          return null; // Value out of Long range
        }
      } catch (e) {
        return null; // Parsing error
      }
    } else {
      return null; // Unsupported type
    }
  }

  factory ToLong.fromJson(Map<String, dynamic> json) => _$ToLongFromJson(json);

  Map<String, dynamic> toJson() => _$ToLongToJson(this);
}

@JsonSerializable()
class ConvertsToQuantity extends UnaryExpression {
  ConvertsToQuantity({required super.operand});

  bool convertsThisToQuantity() => convertsToQuantity(value);

  static bool convertsToQuantity(dynamic value) {
    if (value == null) {
      return false;
    } else if (value is int || value is double || value is Ratio) {
      return true;
    } else if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return false;
      }

      RegExp quantityRegex = RegExp(r"^[+-]?\d+(\.\d+)?(\s+\'[\w\s]+\'\s*)?$");

      if (!quantityRegex.hasMatch(formattedvalue)) {
        return false; // Not a valid quantity format
      }

      // Further validation for quantity value and unit designator (if present)
      List<String> parts = formattedvalue.split(' ');
      String quantityValue = parts[0];

      try {
        // Check if the parsed value is a valid decimal
        double parsedValue = double.parse(quantityValue);
        if (parsedValue.isNaN || parsedValue.isInfinite) {
          return false; // NaN or Infinite value is not valid
        }
      } catch (e) {
        return false; // Parsing error
      }

      // Check if the quantity format contains the unit designator
      if (parts.length > 1) {
        String unitDesignator = parts[1];
        // Implement validation for the unit designator (if needed)
        // This is a placeholder for checking the unit designator's validity
      }

      return true; // Valid quantity format
    } else {
      return false; // Unsupported type
    }
  }

  factory ConvertsToQuantity.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToQuantityFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToQuantityToJson(this);
}

@JsonSerializable()
class ToQuantity extends UnaryExpression {
  ToQuantity({required super.operand});

  ElmQuantity? toThisQuantity() => toQuantity(value);

  static ElmQuantity? toQuantity(dynamic value) {
    if (value == null) {
      return null;
    }

    if (value is int || value is double || value is num) {
      return ElmQuantity(value: FhirDecimal(value.toDouble()));
    }

    if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return null;
      }

      RegExp quantityRegex = RegExp(r'^([+-]?\d+(\.\d+)?)(\s*[a-zA-Z]+)?$');

      if (!quantityRegex.hasMatch(formattedvalue)) {
        return null; // Not a valid quantity format
      }

      try {
        List<String> parts = formattedvalue.split(' ');
        double parsedValue = double.parse(parts[0]);

        String unit = '1';
        if (parts.length > 1) {
          unit = parts.sublist(1).join(' ').trim();
        }

        return ElmQuantity(value: FhirDecimal(parsedValue), unit: unit);
      } catch (e) {
        return null; // Parsing error
      }
    }

    if (value is List && value.length == 2 && value.every((e) => e is num)) {
      double numerator = value[0].toDouble();
      double denominator = value[1].toDouble();
      if (denominator == 0) {
        return null; // Division by zero
      }
      return ElmQuantity(value: FhirDecimal(numerator / denominator));
    }

    return null; // Other types are not supported
  }

  factory ToQuantity.fromJson(Map<String, dynamic> json) =>
      _$ToQuantityFromJson(json);

  Map<String, dynamic> toJson() => _$ToQuantityToJson(this);
}

@JsonSerializable()
class ConvertsToRatio extends UnaryExpression {
  ConvertsToRatio({required super.operand});

  bool convertsThisToRatio() => convertsToRatio(value);

  static bool convertsToRatio(dynamic value) {
    if (value == null) {
      return false;
    }

    if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return false;
      }

      RegExp ratioRegex = RegExp(
          r'^\s*([+-]?\d+(\.\d+)?(\s*[a-zA-Z]+)?)\s*:\s*([+-]?\d+(\.\d+)?(\s*[a-zA-Z]+)?)\s*$');

      if (!ratioRegex.hasMatch(formattedvalue)) {
        return false; // Not a valid ratio format
      }

      List<String> parts = formattedvalue.split(':');
      ElmQuantity? firstQuantity = ToQuantity.toQuantity(parts[0].trim());
      ElmQuantity? secondQuantity = ToQuantity.toQuantity(parts[1].trim());

      return secondQuantity != null;
    }

    return false; // Unsupported type
  }

  factory ConvertsToRatio.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToRatioFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToRatioToJson(this);
}

@JsonSerializable()
class ToRatio extends UnaryExpression {
  ToRatio({required super.operand});

  List<Quantity>? toThisRatio() => toRatio(value);

  static List<Quantity>? toRatio(dynamic value) {
    if (value == null) {
      return null;
    }

    if (value is String) {
      String formattedvalue = value.trim();

      if (formattedvalue.isEmpty) {
        return null;
      }

      RegExp ratioRegex = RegExp(
          r'^\s*([+-]?\d+(\.\d+)?(\s*[a-zA-Z]+)?)\s*:\s*([+-]?\d+(\.\d+)?(\s*[a-zA-Z]+)?)\s*$');

      if (!ratioRegex.hasMatch(formattedvalue)) {
        return null; // Not a valid ratio format
      }

      List<String> parts = formattedvalue.split(':');
      ElmQuantity? firstQuantity = ToQuantity.toQuantity(parts[0].trim());
      ElmQuantity? secondQuantity = ToQuantity.toQuantity(parts[1].trim());

      return firstQuantity == null
          ? secondQuantity == null
              ? null
              : [secondQuantity]
          : secondQuantity == null
              ? [firstQuantity]
              : [firstQuantity, secondQuantity];
    }

    return null; // Unsupported type or invalid value
  }

  factory ToRatio.fromJson(Map<String, dynamic> json) =>
      _$ToRatioFromJson(json);

  Map<String, dynamic> toJson() => _$ToRatioToJson(this);
}

@JsonSerializable()
class ToList extends UnaryExpression {
  ToList({required super.operand});

  List<dynamic> toThisList() => toList(value);

  static List<dynamic> toList(dynamic operand) {
    if (operand == null) {
      return [];
    } else {
      return [operand];
    }
  }

  factory ToList.fromJson(Map<String, dynamic> json) => _$ToListFromJson(json);

  Map<String, dynamic> toJson() => _$ToListToJson(this);
}

@JsonSerializable()
class ToChars extends UnaryExpression {
  ToChars({required super.operand});

  List<String>? toThisChars() => toChars(value);

  static List<String>? toChars(dynamic value) {
    if (value == null || value is! String) {
      return null;
    } else {
      return value.split('');
    }
  }

  factory ToChars.fromJson(Map<String, dynamic> json) =>
      _$ToCharsFromJson(json);

  Map<String, dynamic> toJson() => _$ToCharsToJson(this);
}

@JsonSerializable()
class ConvertsToString extends UnaryExpression {
  ConvertsToString({required super.operand});

  bool convertThisToString() => convertsToString(value);

  static bool convertsToString(dynamic argument) {
    if (argument == null) {
      return false;
    } else {
      return argument is bool ||
          argument is int ||
          argument is double ||
          argument is DateTime ||
          argument is String ||
          argument is ElmQuantity ||
          argument is Ratio;
    }
  }

  factory ConvertsToString.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToStringFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToStringToJson(this);
}

@JsonSerializable()
class ToString extends UnaryExpression {
  ToString({required super.operand});

  String? toThisString() => toElmString(value);

  static String? toElmString(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is bool) {
      return value.toString();
    } else if (value is int || value is double) {
      return value.toString();
    } else if (value is DateTime) {
      return value.toIso8601String();
    } else if (value is String) {
      return value;
    } else if (value is ElmQuantity) {
      return '${value.value}${value.unit != null ? ' ${value.unit}' : ''}';
    } else if (value is Ratio) {
      return '${ToString.toElmString(value.numerator)}:${ToString.toElmString(value.denominator)}';
    } else {
      return null; // Unsupported type
    }
  }

  factory ToString.fromJson(Map<String, dynamic> json) =>
      _$ToStringFromJson(json);

  Map<String, dynamic> toJson() => _$ToStringToJson(this);
}

@JsonSerializable()
class ConvertsToTime extends UnaryExpression {
  ConvertsToTime({required super.operand});

  bool convertThisToTime() => convertsToTime(value);

  static bool convertsToTime(dynamic value) {
    if (value == null) {
      return false;
    } else if (value is String) {
      RegExp timeRegex = RegExp(
          r'^([01]\d|2[0-3]):([0-5]\d):([0-5]\d)(\.\d+)?$'); // Validates ISO-8601 time representation

      if (timeRegex.hasMatch(value)) {
        // Additional validation for a valid time-of-day value
        List<String> parts = value.split(':');
        int hours = int.parse(parts[0]);
        int minutes = int.parse(parts[1]);
        int seconds = int.parse(parts[2].split('.')[0]);

        if (hours >= 0 &&
            hours < 24 &&
            minutes >= 0 &&
            minutes < 60 &&
            seconds >= 0 &&
            seconds < 60) {
          return true;
        }
      }
      return false;
    } else {
      return false; // Unsupported type
    }
  }

  factory ConvertsToTime.fromJson(Map<String, dynamic> json) =>
      _$ConvertsToTimeFromJson(json);

  Map<String, dynamic> toJson() => _$ConvertsToTimeToJson(this);
}

@JsonSerializable()
class ToTime extends UnaryExpression {
  ToTime({required super.operand});

  DateTime? toThisTime() => toTime(value);

  static DateTime? toTime(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is String) {
      RegExp timeRegex = RegExp(
          r'^([01]\d|2[0-3]):([0-5]\d):([0-5]\d)(\.\d+)?$'); // Validates ISO-8601 time representation

      if (timeRegex.hasMatch(value)) {
        // Additional validation for a valid time-of-day value
        List<String> parts = value.split(':');
        int hours = int.parse(parts[0]);
        int minutes = int.parse(parts[1]);
        int seconds = int.parse(parts[2].split('.')[0]);

        if (hours >= 0 &&
            hours < 24 &&
            minutes >= 0 &&
            minutes < 60 &&
            seconds >= 0 &&
            seconds < 60) {
          return DateTime.parse('1970-01-01 $value');
        }
      }
      return null; // Invalid time format or value
    } else if (value is DateTime) {
      return DateTime(1970, 1, 1, value.hour, value.minute, value.second,
          value.millisecond);
    } else {
      return null; // Unsupported type
    }
  }

  factory ToTime.fromJson(Map<String, dynamic> json) => _$ToTimeFromJson(json);

  Map<String, dynamic> toJson() => _$ToTimeToJson(this);
}

@JsonSerializable()
class CanConvertQuantity extends BinaryExpression {
  CanConvertQuantity({required this.arg1, required this.arg2, this.targetUnit})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final String? targetUnit;

  bool canThisConvertQuantity() => canConvertQuantity(value, targetUnit);

  static bool canConvertQuantity(ElmQuantity quantity, [String? targetUnit]) {
    if (targetUnit == null) {
      return false;
    }
    // Implement conversion logic based on UCUM (Unified Code for Units of Measure)
    // Add your conversion logic here or integrate any external libraries for unit conversion

    // Placeholder logic assuming simple quantity conversion
    if (quantity.unit == targetUnit) {
      return true; // Quantity can be converted to the target unit
    } else {
      return false; // Quantity cannot be converted to the target unit
    }
  }

  factory CanConvertQuantity.fromJson(Map<String, dynamic> json) =>
      _$CanConvertQuantityFromJson(json);

  Map<String, dynamic> toJson() => _$CanConvertQuantityToJson(this);
}

@JsonSerializable()
class ConvertQuantity extends BinaryExpression {
  ConvertQuantity({required this.arg1, required this.arg2, this.targetUnit})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final String? targetUnit;

  ElmQuantity? convertThisQuantity() => convertQuantity(value, targetUnit);

  static ElmQuantity? convertQuantity(dynamic valueQuantity,
      [String? targetUnit]) {
    if (targetUnit == null) {
      return null;
    }

    // Placeholder logic assuming simple quantity conversion
    // Replace this with proper UCUM-compliant unit conversion logic
    if (valueQuantity is ElmQuantity && valueQuantity.unit == targetUnit) {
      return ElmQuantity(
          value: valueQuantity.value,
          unit: targetUnit); // Quantity with the same unit
    } else {
      // Implement proper unit conversion logic here based on UCUM
      // If conversion is not supported, handle appropriately (return null or throw an error)
      // Example: throw UnimplementedError('Unit conversion not supported');
      // Actual conversion logic would depend on the specific unit conversion rules
      // ...
      return null; // Placeholder for unsupported unit conversion
    }
  }

  // factory ConvertQuantity.fromJson(Map<String, dynamic> json) =>
  //     _$ConvertQuantityFromJson(json);

  // Map<String, dynamic> toJson() => _$ConvertQuantityToJson(this);
}

@JsonSerializable()
class Equal extends BinaryExpression {
  Equal({required this.arg1, required this.arg2, this.targetUnit})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final String? targetUnit;

  bool equalThis() => equals(value, targetUnit);

  static bool equals(dynamic arg1, dynamic arg2) {
    if (arg1 == null || arg2 == null) {
      return false;
    } else if (arg1 is int ||
        arg1 is double ||
        arg1 is String ||
        arg1 is bool) {
      return arg1 == arg2;
    } else if (arg1 is ElmQuantity && arg2 is ElmQuantity) {
      // Check if dimensions are the same
      // Note: This is a placeholder; actual quantity comparison might involve more complex logic
      return arg1.value == arg2.value;
    } else if (arg1 is Ratio && arg2 is Ratio) {
      // Check if numerator and denominator quantities are equal
      // This is a placeholder; actual ratio comparison might involve more complex logic
      return arg1.numerator == arg2.numerator &&
          arg1.denominator == arg2.denominator;
    } else if (arg1 is List && arg2 is List) {
      // Check list equality
      if (arg1.length != arg2.length) {
        return false;
      }
      for (int i = 0; i < arg1.length; i++) {
        if (!equals(arg1[i], arg2[i])) {
          return false;
        }
      }
      return true;
    } else if (arg1 is Map && arg2 is Map) {
      // Check map equality
      if (arg1.length != arg2.length) {
        return false;
      }
      for (var key in arg1.keys) {
        if (!arg2.containsKey(key) || !equals(arg1[key], arg2[key])) {
          return false;
        }
      }
      return true;
    } else if (arg1 is DateTime && arg2 is DateTime) {
      // Compare DateTime values
      // This is a placeholder; actual comparison involves comparing each precision
      return arg1 == arg2;
    } else {
      return false; // Unsupported type for comparison
    }
  }

  factory Equal.fromJson(Map<String, dynamic> json) => _$EqualFromJson(json);

  Map<String, dynamic> toJson() => _$EqualToJson(this);
}

@JsonSerializable()
class Equivalent extends BinaryExpression {
  Equivalent({required super.operand});

  static bool equivalent(dynamic arg1, dynamic arg2) {
    if (arg1 == null && arg2 == null) {
      return true;
    } else if (arg1 == null || arg2 == null) {
      return false;
    } else if (arg1 is int ||
        arg1 is double ||
        arg1 is String ||
        arg1 is bool) {
      return arg1 == arg2;
    } else if (arg1 is String && arg2 is String) {
      // Compare strings while ignoring case and normalizing whitespace
      return arg1.trim().toLowerCase() == arg2.trim().toLowerCase();
    } else if (arg1 is ElmQuantity && arg2 is ElmQuantity) {
      // Check if quantities are equivalent
      // This is a placeholder; actual quantity comparison might involve unit conversion and value comparison
      return false; // Implement logic for quantity equivalence here
    } else if (arg1 is Ratio && arg2 is Ratio) {
      // Check if ratios are equivalent
      // This is a placeholder; actual ratio comparison might involve more complex logic
      return arg1.numerator == arg2.numerator &&
          arg1.denominator == arg2.denominator;
    } else if (arg1 is List && arg2 is List) {
      // Check list equivalence
      if (arg1.length != arg2.length) {
        return false;
      }
      for (int i = 0; i < arg1.length; i++) {
        if (!equivalent(arg1[i], arg2[i])) {
          return false;
        }
      }
      return true;
    } else if (arg1 is Map && arg2 is Map) {
      // Check map equivalence
      if (arg1.length != arg2.length) {
        return false;
      }
      for (var key in arg1.keys) {
        if (!arg2.containsKey(key) || !equivalent(arg1[key], arg2[key])) {
          return false;
        }
      }
      return true;
    } else if (arg1 is DateTime && arg2 is DateTime) {
      // Compare DateTime values
      // This is a placeholder; actual comparison involves comparing each precision
      return arg1 == arg2;
    } else {
      return false; // Unsupported type for equivalence comparison
    }
  }

  factory Equivalent.fromJson(Map<String, dynamic> json) =>
      _$EquivalentFromJson(json);

  Map<String, dynamic> toJson() => _$EquivalentToJson(this);
}

@JsonSerializable()
class NotEqual extends BinaryExpression {
  NotEqual({required super.operand});

  static bool notEqual(dynamic arg1, dynamic arg2) {
    return !(Equal.equals(arg1, arg2));
  }

  factory NotEqual.fromJson(Map<String, dynamic> json) =>
      _$NotEqualFromJson(json);

  Map<String, dynamic> toJson() => _$NotEqualToJson(this);
}

@JsonSerializable()
class Less extends BinaryExpression {
  Less({required super.operand});

  static bool less(dynamic arg1, dynamic arg2) {
    if (arg1 == null || arg2 == null) {
      return false;
    } else if (arg1 is int || arg1 is double || arg1 is String) {
      // For simple types like int, double, and string
      if (arg1 is String && arg2 is String) {
        return arg1.compareTo(arg2) < 0;
      } else {
        return arg1 < arg2;
      }
    } else if (arg1 is DateTime && arg2 is DateTime) {
      // Comparison for DateTime values
      // This is a placeholder; actual comparison involves comparing each precision
      return arg1.isBefore(arg2);
    } else if (arg1 is ElmQuantity && arg2 is ElmQuantity) {
      // Comparison for quantities
      // This is a placeholder; actual comparison might involve unit conversion and value comparison
      return false; // Implement logic for quantity comparison here
    } else {
      return false; // Unsupported type for less comparison
    }
  }

  factory Less.fromJson(Map<String, dynamic> json) => _$LessFromJson(json);

  Map<String, dynamic> toJson() => _$LessToJson(this);
}

@JsonSerializable()
class Greater extends BinaryExpression {
  Greater({required super.operand});

  static bool greater(dynamic arg1, dynamic arg2) {
    if (arg1 == null || arg2 == null) {
      return false;
    } else if (arg1 is int || arg1 is double || arg1 is String) {
      // For simple types like int, double, and string
      if (arg1 is String && arg2 is String) {
        return arg1.compareTo(arg2) > 0;
      } else {
        return arg1 > arg2;
      }
    } else if (arg1 is DateTime && arg2 is DateTime) {
      // Comparison for DateTime values
      // This is a placeholder; actual comparison involves comparing each precision
      return arg1.isAfter(arg2);
    } else if (arg1 is ElmQuantity && arg2 is ElmQuantity) {
      // Comparison for quantities
      // This is a placeholder; actual comparison might involve unit conversion and value comparison
      return false; // Implement logic for quantity comparison here
    } else {
      return false; // Unsupported type for greater comparison
    }
  }

  factory Greater.fromJson(Map<String, dynamic> json) =>
      _$GreaterFromJson(json);

  Map<String, dynamic> toJson() => _$GreaterToJson(this);
}

@JsonSerializable()
class LessOrEqual extends BinaryExpression {
  LessOrEqual({required super.operand});

  static bool lessOrEqual(dynamic arg1, dynamic arg2) {
    if (arg1 == null || arg2 == null) {
      return false;
    } else if (arg1 is int || arg1 is double || arg1 is String) {
      // For simple types like int, double, and string
      if (arg1 is String && arg2 is String) {
        return arg1.compareTo(arg2) <= 0;
      } else {
        return arg1 <= arg2;
      }
    } else if (arg1 is DateTime && arg2 is DateTime) {
      // Comparison for DateTime values
      // This is a placeholder; actual comparison involves comparing each precision
      return FhirDateTime(arg1) == FhirDateTime(arg2);
    } else if (arg1 is ElmQuantity && arg2 is ElmQuantity) {
      // Comparison for quantities
      // This is a placeholder; actual comparison might involve unit conversion and value comparison
      return false; // Implement logic for quantity comparison here
    } else {
      return false; // Unsupported type for less or equal comparison
    }
  }

  factory LessOrEqual.fromJson(Map<String, dynamic> json) =>
      _$LessOrEqualFromJson(json);

  Map<String, dynamic> toJson() => _$LessOrEqualToJson(this);
}

/// The GreaterOrEqual operator returns true if the first argument is greater
/// than or equal to the second argument. (rest of the documentation)
@JsonSerializable()
class GreaterOrEqual extends BinaryExpression {
  GreaterOrEqual({required super.operand, required this.binaryExpression});
  BinaryExpression
      binaryExpression; // Assuming BinaryExpression is a defined class

  factory GreaterOrEqual.fromJson(Map<String, dynamic> json) =>
      _$GreaterOrEqualFromJson(json);

  Map<String, dynamic> toJson() => _$GreaterOrEqualToJson(this);
}

@JsonSerializable()
class Add extends BinaryExpression {
  BinaryExpression
      binaryExpression; // Assuming BinaryExpression is a defined class

  Add({required super.operand, required this.binaryExpression});

  factory Add.fromJson(Map<String, dynamic> json) => _$AddFromJson(json);

  Map<String, dynamic> toJson() => _$AddToJson(this);
}

@JsonSerializable()
class Subtract extends BinaryExpression {
  Subtract({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  factory Subtract.fromJson(Map<String, dynamic> json) =>
      _$SubtractFromJson(json);

  Map<String, dynamic> toJson() => _$SubtractToJson(this);
}

/// The Multiply operator performs numeric multiplication of its arguments.
/// For multiplication operations involving quantities, the resulting quantity
/// will have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// The Multiply operator is defined for the Integer, Long, Decimal, and Quantity types.
@JsonSerializable()
class Multiply extends BinaryExpression {
  Multiply({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  factory Multiply.fromJson(Map<String, dynamic> json) =>
      _$MultiplyFromJson(json);

  Map<String, dynamic> toJson() => _$MultiplyToJson(this);
}

/// The Divide operator performs numeric division of its arguments.
/// Note that the result type of Divide is Decimal, even if its arguments are
/// of type Integer. For integer division, use the truncated divide operator.
/// For division operations involving quantities, the resulting quantity will
/// have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the division cannot be represented, or the right argument
/// is 0, the result is null.
/// The Divide operator is defined for the Decimal and Quantity types.
@JsonSerializable()
class Divide extends BinaryExpression {
  Divide({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  factory Divide.fromJson(Map<String, dynamic> json) => _$DivideFromJson(json);

  Map<String, dynamic> toJson() => _$DivideToJson(this);
}

///  The TruncatedDivide operator performs integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument
/// is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer, Long, Decimal, and
/// Quantity types.
/// For TruncatedDivide operations involving quantities, the resulting quantity
/// will have the appropriate unit.
@JsonSerializable()
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory TruncatedDivide.fromJson(Map<String, dynamic> json) =>
      _$TruncatedDivideFromJson(json);

  Map<String, dynamic> toJson() => _$TruncatedDivideToJson(this);
}

/// The Modulo operator computes the remainder of the division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is
/// 0, the result is null.
/// The Modulo operator is defined for the Integer, Long, Decimal, and Quantity
/// types.
/// For Modulo operations involving quantities, the resulting quantity will have
/// the appropriate unit.
@JsonSerializable()
class Modulo extends BinaryExpression {
  Modulo({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Modulo.fromJson(Map<String, dynamic> json) => _$ModuloFromJson(json);

  Map<String, dynamic> toJson() => _$ModuloToJson(this);
}

/// The Ceiling operator returns the first integer greater than or equal to the argument.
/// If the argument is null, the result is null.
@JsonSerializable()
class Ceiling extends UnaryExpression {
  UnaryExpression
      unaryExpression; // Assuming UnaryExpression is a defined class

  Ceiling(this.unaryExpression);

  factory Ceiling.fromJson(Map<String, dynamic> json) =>
      _$CeilingFromJson(json);

  Map<String, dynamic> toJson() => _$CeilingToJson(this);
}

/// The Floor operator returns the first integer less than or equal to the argument.
/// If the argument is null, the result is null.
@JsonSerializable()
class Floor extends UnaryExpression {
  UnaryExpression
      unaryExpression; // Assuming UnaryExpression is a defined class

  Floor(this.unaryExpression);

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);

  Map<String, dynamic> toJson() => _$FloorToJson(this);
}

/// The Truncate operator returns the integer component of its argument.
/// If the argument is null, the result is null.
@JsonSerializable()
class Truncate extends UnaryExpression {
  UnaryExpression
      unaryExpression; // Assuming UnaryExpression is a defined class

  Truncate(this.unaryExpression);

  factory Truncate.fromJson(Map<String, dynamic> json) =>
      _$TruncateFromJson(json);

  Map<String, dynamic> toJson() => _$TruncateToJson(this);
}

/// The Abs operator returns the absolute value of its argument
/// When taking the absolute value of a quantity, the unit is unchanged.
/// If the argument is null, the result is null.
/// If the result of taking the absolute value of the argument cannot be
/// represented (e.g. Abs(minimum Integer)), the result is null.
/// The Abs operator is defined for the Integer, Long, Decimal, and Quantity types.
@JsonSerializable()
class Abs extends UnaryExpression {
  UnaryExpression
      unaryExpression; // Assuming UnaryExpression is a defined class

  Abs(this.unaryExpression);

  factory Abs.fromJson(Map<String, dynamic> json) => _$AbsFromJson(json);

  Map<String, dynamic> toJson() => _$AbsToJson(this);
}

/// The Negate operator returns the negative of its argument.
/// When negating quantities, the unit is unchanged.
/// If the argument is null, the result is null.
/// If the result of negating the argument cannot be represented
/// (e.g. -(minimum Integer)), the result is null.
/// The Negate operator is defined for the Integer, Long, Decimal, and Quantity types.
@JsonSerializable()
class Negate extends UnaryExpression {
  UnaryExpression
      unaryExpression; // Assuming UnaryExpression is a defined class

  Negate(this.unaryExpression);

  factory Negate.fromJson(Map<String, dynamic> json) => _$NegateFromJson(json);

  Map<String, dynamic> toJson() => _$NegateToJson(this);
}

/// The Round operator returns the nearest integer to its argument.
/// The semantics of round are defined as a traditional round, meaning that a
/// decimal value of 0.5 or higher will round to 1.
/// If the argument is null, the result is null.
/// Precision determines the decimal place at which the rounding will occur. If
/// precision is not specified or null, 0 is assumed.
@JsonSerializable()
class Round extends OperatorExpression {
  Expression operand;
  Expression? precision;

  Round({required this.operand, this.precision});

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

  Map<String, dynamic> toJson() => _$RoundToJson(this);
}

/// The Ln operator computes the natural logarithm of its argument.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Ln extends UnaryExpression {
  Ln({required super.operand});

  factory Ln.fromJson(Map<String, dynamic> json) => _$LnFromJson(json);

  Map<String, dynamic> toJson() => _$LnToJson(this);
}

/// The Exp operator returns e raised to the given power.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Exp extends UnaryExpression {
  Exp({super.operand});

  factory Exp.fromJson(Map<String, dynamic> json) => _$ExpFromJson(json);

  Map<String, dynamic> toJson() => _$ExpToJson(this);
}

/// The Log operator computes the logarithm of its first argument, using the
/// second argument as the base.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Log extends BinaryExpression {
  Log({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  Map<String, dynamic> toJson() => _$LogToJson(this);
}

/// The Power operator raises the first argument to the power given by the second argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Power extends BinaryExpression {
  Power({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Power.fromJson(Map<String, dynamic> json) => _$PowerFromJson(json);

  Map<String, dynamic> toJson() => _$PowerToJson(this);
}

/// The Successor operator returns the successor of the argument.
/// For example, the successor of 1 is 2. If the argument is already the
/// maximum value for the type, a run-time error is thrown.
/// The Successor operator is defined for the Integer, Long, Decimal, Date,
/// DateTime, and Time types.
/// [More documentation...]
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Successor extends UnaryExpression {
  Successor({required super.operand});

  factory Successor.fromJson(Map<String, dynamic> json) =>
      _$SuccessorFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessorToJson(this);
}

/// The Predecessor operator returns the predecessor of the argument.
/// For example, the predecessor of 2 is 1. If the argument is already the
/// minimum value for the type, a run-time error is thrown.
/// The Predecessor operator is defined for the Integer, Long, Decimal, Date,
/// DateTime, and Time types.
/// [More documentation...]
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
@JsonSerializable()
class Predecessor extends UnaryExpression {
  Predecessor({required super.operand});

  factory Predecessor.fromJson(Map<String, dynamic> json) =>
      _$PredecessorFromJson(json);

  Map<String, dynamic> toJson() => _$PredecessorToJson(this);
}

/// The MinValue operator returns the minimum representable value for the given type.
/// [Details about MinValue for different types...]
/// Note that implementations may choose to represent the minimum DateTime
/// value using a constant offset such as UTC.
@JsonSerializable()
class MinValue extends Expression {
  String valueType;

  MinValue(this.valueType);

  factory MinValue.fromJson(Map<String, dynamic> json) =>
      _$MinValueFromJson(json);

  Map<String, dynamic> toJson() => _$MinValueToJson(this);
}

/// The MaxValue operator returns the maximum representable value for the given type.
/// [Details about MaxValue for different types...]
/// Note that implementations may choose to represent the maximum DateTime
/// value using a constant offset such as UTC.
@JsonSerializable()
class MaxValue extends Expression {
  String valueType;

  MaxValue(this.valueType);

  factory MaxValue.fromJson(Map<String, dynamic> json) =>
      _$MaxValueFromJson(json);

  Map<String, dynamic> toJson() => _$MaxValueToJson(this);
}

/// The Precision operator returns the number of digits of precision in the value value.
/// [Details about Precision for Decimal, Date, DateTime, and Time values...]
/// If the argument is null, the result is null.
@JsonSerializable()
class Precision extends UnaryExpression {
  Precision({super.operand});

  factory Precision.fromJson(Map<String, dynamic> json) =>
      _$PrecisionFromJson(json);

  Map<String, dynamic> toJson() => _$PrecisionToJson(this);
}

/// The LowBoundary operator returns the least possible value of the value to the specified precision.
/// [Details about LowBoundary for Decimal, Date, DateTime, and Time values...]
/// If the value value is null, the result is null.
@JsonSerializable()
class LowBoundary extends BinaryExpression {
  LowBoundary({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final int? precision;

  factory LowBoundary.fromJson(Map<String, dynamic> json) =>
      _$LowBoundaryFromJson(json);

  Map<String, dynamic> toJson() => _$LowBoundaryToJson(this);
}

/// The HighBoundary operator returns the greatest possible value of the value
/// to the specified precision.
/// [Details about HighBoundary for Decimal, Date, DateTime, and Time values...]
/// If the value value is null, the result is null.
@JsonSerializable()
class HighBoundary extends BinaryExpression {
  HighBoundary({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final int? precision;

  factory HighBoundary.fromJson(Map<String, dynamic> json) =>
      _$HighBoundaryFromJson(json);

  Map<String, dynamic> toJson() => _$HighBoundaryToJson(this);
}

/// The Concatenate operator performs string concatenation of its arguments.
/// If any argument is null, the result is null.
@JsonSerializable()
class Concatenate extends NaryExpression {
  Concatenate({required this.arguments});

  final List<Expression> arguments;

  factory Concatenate.fromJson(Map<String, dynamic> json) =>
      _$ConcatenateFromJson(json);

  Map<String, dynamic> toJson() => _$ConcatenateToJson(this);
}

/// The Combine operator combines a list of strings, optionally separating each
/// string with the given separator.
/// If either argument is null, the result is null. If the source list is empty,
/// the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the value list are ignored.
@JsonSerializable()
class Combine extends OperatorExpression {
  final Expression source;
  final Expression? separator;

  Combine({required this.source, this.separator});

  factory Combine.fromJson(Map<String, dynamic> json) =>
      _$CombineFromJson(json);

  Map<String, dynamic> toJson() => _$CombineToJson(this);
}

/// The Split operator splits a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the
/// separator, the result is a list of strings containing one element that is
/// the value of the stringToSplit argument.
@JsonSerializable()
class Split extends OperatorExpression {
  Expression stringToSplit;
  Expression separator;

  Split({required this.stringToSplit, required this.separator});

  factory Split.fromJson(Map<String, dynamic> json) => _$SplitFromJson(json);

  Map<String, dynamic> toJson() => _$SplitToJson(this);
}

/// The SplitOnMatches operator splits a string into a list of strings using
/// matches of a regex pattern.
/// The separatorPattern argument is a regex pattern, following the same
/// semantics as the Matches operator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the
/// separator pattern, the result is a list of strings containing one element
/// that is the value value of the stringToSplit argument.
@JsonSerializable()
class SplitOnMatches extends OperatorExpression {
  Expression stringToSplit;
  Expression separatorPattern;

  SplitOnMatches({required this.stringToSplit, required this.separatorPattern});

  factory SplitOnMatches.fromJson(Map<String, dynamic> json) =>
      _$SplitOnMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$SplitOnMatchesToJson(this);
}

/// The Length operator returns the length of its argument.
/// For strings, the length is the number of characters in the string.
/// For lists, the length is the number of elements in the list.
/// If the argument is null, the result is 0.
@JsonSerializable()
class Length extends UnaryExpression {
  Length({required super.operand});

  factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);

  Map<String, dynamic> toJson() => _$LengthToJson(this);
}

/// The Upper operator returns the given string with all characters converted
/// to their upper case equivalents.
/// Note that the definition of uppercase for a given character is a
/// locale-dependent determination, and is not specified by CQL. Implementations
/// are expected to provide appropriate and consistent handling of locale for their environment.
/// If the argument is null, the result is null.
@JsonSerializable()
class Upper extends UnaryExpression {
  Upper({required super.operand});

  factory Upper.fromJson(Map<String, dynamic> json) => _$UpperFromJson(json);

  Map<String, dynamic> toJson() => _$UpperToJson(this);
}

/// The Lower operator returns the given string with all characters converted
/// to their lowercase equivalents.
/// Note that the definition of lowercase for a given character is a
/// locale-dependent determination,
/// and is not specified by CQL. Implementations are expected to provide
/// appropriate and consistent
/// handling of the locale for their environment.
/// If the argument is null, the result is null.
@JsonSerializable()
class Lower extends UnaryExpression {
  Lower({required super.operand});

  factory Lower.fromJson(Map<String, dynamic> json) => _$LowerFromJson(json);

  Map<String, dynamic> toJson() => _$LowerToJson(this);
}

/// The Indexer operator returns the indexth element in a string or list.
/// Indexes in strings and lists are defined to be 0-based.
/// If the index is less than 0 or greater than the length of the string or list being indexed,
/// the result is null.
/// If either argument is null, the result is null.
@JsonSerializable()
class Indexer extends BinaryExpression {
  Indexer({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Indexer.fromJson(Map<String, dynamic> json) =>
      _$IndexerFromJson(json);

  Map<String, dynamic> toJson() => _$IndexerToJson(this);
}

/// The PositionOf operator returns the 0-based index of the beginning given
/// pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
@JsonSerializable()
class PositionOf extends OperatorExpression {
  Expression pattern;
  Expression string;

  PositionOf(this.pattern, this.string);

  factory PositionOf.fromJson(Map<String, dynamic> json) =>
      _$PositionOfFromJson(json);

  Map<String, dynamic> toJson() => _$PositionOfToJson(this);
}

@JsonSerializable()
class LastPositionOf extends OperatorExpression {
  LastPositionOf({required this.pattern, required this.string});

  final Expression pattern;
  final Expression string;

  factory LastPositionOf.fromJson(Map<String, dynamic> json) =>
      _$LastPositionOfFromJson(json);

  Map<String, dynamic> toJson() => _$LastPositionOfToJson(this);
}

@JsonSerializable()
class Substring extends OperatorExpression {
  Substring({required this.stringToSub, required this.startIndex, this.length});

  final Expression stringToSub;
  final Expression startIndex;
  final Expression? length;

  factory Substring.fromJson(Map<String, dynamic> json) =>
      _$SubstringFromJson(json);

  Map<String, dynamic> toJson() => _$SubstringToJson(this);
}

@JsonSerializable()
class StartsWith extends BinaryExpression {
  StartsWith({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory StartsWith.fromJson(Map<String, dynamic> json) =>
      _$StartsWithFromJson(json);

  Map<String, dynamic> toJson() => _$StartsWithToJson(this);
}

@JsonSerializable()
class EndsWith extends BinaryExpression {
  EndsWith({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory EndsWith.fromJson(Map<String, dynamic> json) =>
      _$EndsWithFromJson(json);

  Map<String, dynamic> toJson() => _$EndsWithToJson(this);
}

@JsonSerializable()
class Matches extends BinaryExpression {
  Matches({required this.arg1, required this.arg2})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;

  factory Matches.fromJson(Map<String, dynamic> json) =>
      _$MatchesFromJson(json);

  Map<String, dynamic> toJson() => _$MatchesToJson(this);
}

@JsonSerializable()
class ReplaceMatches extends TernaryExpression {
  ReplaceMatches(
      {required this.pattern,
      required this.string,
      required this.substitution});

  final Expression pattern;
  final Expression string;
  final Expression substitution;

  factory ReplaceMatches.fromJson(Map<String, dynamic> json) =>
      _$ReplaceMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$ReplaceMatchesToJson(this);
}

enum ElmDateTimePrecision {
  Year,
  Month,
  Week,
  Day,
  Hour,
  Minute,
  Second,
  Millisecond,
}

@JsonSerializable()
class DurationBetween extends BinaryExpression {
  DurationBetween({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final ElmDateTimePrecision? precision;

  factory DurationBetween.fromJson(Map<String, dynamic> json) =>
      _$DurationBetweenFromJson(json);

  Map<String, dynamic> toJson() => _$DurationBetweenToJson(this);
}

@JsonSerializable()
class DifferenceBetween extends BinaryExpression {
  DifferenceBetween({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  final ElmDateTimePrecision? precision;

  factory DifferenceBetween.fromJson(Map<String, dynamic> json) =>
      _$DifferenceBetweenFromJson(json);

  Map<String, dynamic> toJson() => _$DifferenceBetweenToJson(this);
}

@JsonSerializable()
class DateFrom extends UnaryExpression {
  DateFrom({required super.operand});

  factory DateFrom.fromJson(Map<String, dynamic> json) =>
      _$DateFromFromJson(json);

  Map<String, dynamic> toJson() => _$DateFromToJson(this);
}

@JsonSerializable()
class TimeFrom extends UnaryExpression {
  TimeFrom({required super.operand});

  factory TimeFrom.fromJson(Map<String, dynamic> json) =>
      _$TimeFromFromJson(json);

  Map<String, dynamic> toJson() => _$TimeFromToJson(this);
}

@Deprecated('as of 1.4')
@JsonSerializable()
class TimezoneFrom extends UnaryExpression {
  TimezoneFrom({required super.operand});

  factory TimezoneFrom.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneFromToJson(this);
}

@JsonSerializable()
class TimezoneOffsetFrom extends UnaryExpression {
  TimezoneOffsetFrom({required super.operand});

  factory TimezoneOffsetFrom.fromJson(Map<String, dynamic> json) =>
      _$TimezoneOffsetFromFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneOffsetFromToJson(this);
}

@JsonSerializable()
class DateTimeComponentFrom extends UnaryExpression {
  DateTimeComponentFrom({required super.operand, this.precision});

  final ElmDateTimePrecision? precision;

  factory DateTimeComponentFrom.fromJson(Map<String, dynamic> json) =>
      _$DateTimeComponentFromFromJson(json);

  Map<String, dynamic> toJson() => _$DateTimeComponentFromToJson(this);
}

@JsonSerializable()
class TimeOfDay extends OperatorExpression {
  TimeOfDay({super.signature});

  factory TimeOfDay.fromJson(Map<String, dynamic> json) =>
      _$TimeOfDayFromJson(json);

  Map<String, dynamic> toJson() => _$TimeOfDayToJson(this);
}

@JsonSerializable()
class Today extends OperatorExpression {
  Today({super.signature});

  factory Today.fromJson(Map<String, dynamic> json) => _$TodayFromJson(json);

  Map<String, dynamic> toJson() => _$TodayToJson(this);
}

@JsonSerializable()
class Now extends OperatorExpression {
  Now({super.signature});

  factory Now.fromJson(Map<String, dynamic> json) => _$NowFromJson(json);

  Map<String, dynamic> toJson() => _$NowToJson(this);
}

/// Class representing the Date operator.
/// The Date operator constructs a date value from the given components.
@JsonSerializable()
class DateOperator extends OperatorExpression {
  Expression year;
  Expression? month;
  Expression? day;

  DateOperator({
    required this.year,
    this.month,
    this.day,
    super.signature,
  });

  factory DateOperator.fromJson(Map<String, dynamic> json) =>
      _$DateOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$DateOperatorToJson(this);
}

@JsonSerializable()
class DateTimeOperator extends OperatorExpression {
  DateTimeOperator({
    required this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
  });

  final Expression year;
  final Expression? month;
  final Expression? day;
  final Expression? hour;
  final Expression? minute;
  final Expression? second;
  final Expression? millisecond;
  final Expression? timezoneOffset;

  factory DateTimeOperator.fromJson(Map<String, dynamic> json) =>
      _$DateTimeOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$DateTimeOperatorToJson(this);
}

/// Class representing the Time operator.
/// The Time operator constructs a time value from the given components.
@JsonSerializable()
class TimeOperator extends OperatorExpression {
  Expression hour;
  Expression? minute;
  Expression? second;
  Expression? millisecond;

  TimeOperator({
    required this.hour,
    this.minute,
    this.second,
    this.millisecond,
    super.signature,
  });

  factory TimeOperator.fromJson(Map<String, dynamic> json) =>
      _$TimeOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$TimeOperatorToJson(this);
}

@JsonSerializable()
class SameAs extends BinaryExpression {
  SameAs(
      {required this.arg1, required this.arg2, ElmDateTimePrecision? precision})
      : super(operand: [Expression(arg1), Expression(arg2)]) {
    this.precision = precision;
  }
  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;
}

@JsonSerializable()
class SameOrBefore extends BinaryExpression {
  SameOrBefore(
      {required this.arg1, required this.arg2, ElmDateTimePrecision? precision})
      : super(operand: [Expression(arg1), Expression(arg2)]) {
    this.precision = precision;
  }
  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;
}

@JsonSerializable()
class SameOrAfter extends BinaryExpression {
  SameOrAfter(
      {required this.arg1, required this.arg2, ElmDateTimePrecision? precision})
      : super(operand: [Expression(arg1), Expression(arg2)]) {
    this.precision = precision;
  }
  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;
}

@JsonSerializable()
class PointFrom extends UnaryExpression {
  PointFrom({required super.operand});

  factory PointFrom.fromJson(Map<String, dynamic> json) =>
      _$PointFromFromJson(json);

  Map<String, dynamic> toJson() => _$PointFromToJson(this);
}

@JsonSerializable()
class Width extends UnaryExpression {
  Width({required super.operand});

  factory Width.fromJson(Map<String, dynamic> json) => _$WidthFromJson(json);

  Map<String, dynamic> toJson() => _$WidthToJson(this);
}

@JsonSerializable()
class Size extends UnaryExpression {
  Size({required super.operand});

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);

  Map<String, dynamic> toJson() => _$SizeToJson(this);
}

@JsonSerializable()
class Start extends UnaryExpression {
  Start({required super.operand});
}

@JsonSerializable()
class End extends UnaryExpression {
  End({required super.operand});

  factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);

  Map<String, dynamic> toJson() => _$EndToJson(this);
}

@JsonSerializable()
class Contains extends BinaryExpression {
  Contains({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Contains.fromJson(Map<String, dynamic> json) =>
      _$ContainsFromJson(json);

  Map<String, dynamic> toJson() => _$ContainsToJson(this);
}

@JsonSerializable()
class ProperContains extends BinaryExpression {
  ProperContains({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory ProperContains.fromJson(Map<String, dynamic> json) =>
      _$ProperContainsFromJson(json);

  Map<String, dynamic> toJson() => _$ProperContainsToJson(this);
}

@JsonSerializable()
class In extends BinaryExpression {
  In({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory In.fromJson(Map<String, dynamic> json) => _$InFromJson(json);

  Map<String, dynamic> toJson() => _$InToJson(this);
}

@JsonSerializable()
class ProperIn extends BinaryExpression {
  ProperIn({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory ProperIn.fromJson(Map<String, dynamic> json) =>
      _$ProperInFromJson(json);

  Map<String, dynamic> toJson() => _$ProperInToJson(this);
}

@JsonSerializable()
class Includes extends BinaryExpression {
  Includes({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Includes.fromJson(Map<String, dynamic> json) =>
      _$IncludesFromJson(json);

  Map<String, dynamic> toJson() => _$IncludesToJson(this);
}

@JsonSerializable()
class IncludedIn extends BinaryExpression {
  IncludedIn({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory IncludedIn.fromJson(Map<String, dynamic> json) =>
      _$IncludedInFromJson(json);

  Map<String, dynamic> toJson() => _$IncludedInToJson(this);
}

@JsonSerializable()
class ProperIncludes extends BinaryExpression {
  ProperIncludes({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory ProperIncludes.fromJson(Map<String, dynamic> json) =>
      _$ProperIncludesFromJson(json);

  Map<String, dynamic> toJson() => _$ProperIncludesToJson(this);
}

@JsonSerializable()
class ProperIncludedIn extends BinaryExpression {
  ProperIncludedIn({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory ProperIncludedIn.fromJson(Map<String, dynamic> json) =>
      _$ProperIncludedInFromJson(json);

  Map<String, dynamic> toJson() => _$ProperIncludedInToJson(this);
}

@JsonSerializable()
class Before extends BinaryExpression {
  Before({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Before.fromJson(Map<String, dynamic> json) => _$BeforeFromJson(json);

  Map<String, dynamic> toJson() => _$BeforeToJson(this);
}

@JsonSerializable()
class After extends BinaryExpression {
  After({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory After.fromJson(Map<String, dynamic> json) => _$AfterFromJson(json);

  Map<String, dynamic> toJson() => _$AfterToJson(this);
}

@JsonSerializable()
class Meets extends BinaryExpression {
  Meets({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Meets.fromJson(Map<String, dynamic> json) => _$MeetsFromJson(json);

  Map<String, dynamic> toJson() => _$MeetsToJson(this);
}

@JsonSerializable()
class MeetsBefore extends BinaryExpression {
  MeetsBefore({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory MeetsBefore.fromJson(Map<String, dynamic> json) =>
      _$MeetsBeforeFromJson(json);

  Map<String, dynamic> toJson() => _$MeetsBeforeToJson(this);
}

@JsonSerializable()
class MeetsAfter extends BinaryExpression {
  MeetsAfter({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory MeetsAfter.fromJson(Map<String, dynamic> json) =>
      _$MeetsAfterFromJson(json);

  Map<String, dynamic> toJson() => _$MeetsAfterToJson(this);
}

@JsonSerializable()
class Overlaps extends BinaryExpression {
  Overlaps({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Overlaps.fromJson(Map<String, dynamic> json) =>
      _$OverlapsFromJson(json);

  Map<String, dynamic> toJson() => _$OverlapsToJson(this);
}

@JsonSerializable()
class OverlapsBefore extends BinaryExpression {
  OverlapsBefore({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory OverlapsBefore.fromJson(Map<String, dynamic> json) =>
      _$OverlapsBeforeFromJson(json);

  Map<String, dynamic> toJson() => _$OverlapsBeforeToJson(this);
}

@JsonSerializable()
class OverlapsAfter extends BinaryExpression {
  OverlapsAfter({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory OverlapsAfter.fromJson(Map<String, dynamic> json) =>
      _$OverlapsAfterFromJson(json);

  Map<String, dynamic> toJson() => _$OverlapsAfterToJson(this);
}

@JsonSerializable()
class Starts extends BinaryExpression {
  Starts({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Starts.fromJson(Map<String, dynamic> json) => _$StartsFromJson(json);

  Map<String, dynamic> toJson() => _$StartsToJson(this);
}

@JsonSerializable()
class Ends extends BinaryExpression {
  Ends({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Ends.fromJson(Map<String, dynamic> json) => _$EndsFromJson(json);

  Map<String, dynamic> toJson() => _$EndsToJson(this);
}

@JsonSerializable()
class Collapse extends BinaryExpression {
  Collapse({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Collapse.fromJson(Map<String, dynamic> json) =>
      _$CollapseFromJson(json);

  Map<String, dynamic> toJson() => _$CollapseToJson(this);
}

@JsonSerializable()
class Expand extends BinaryExpression {
  Expand({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Expand.fromJson(Map<String, dynamic> json) => _$ExpandFromJson(json);

  Map<String, dynamic> toJson() => _$ExpandToJson(this);
}

@JsonSerializable()
class Union extends NaryExpression {
  Union({super.operand});

  factory Union.fromJson(Map<String, dynamic> json) => _$UnionFromJson(json);

  Map<String, dynamic> toJson() => _$UnionToJson(this);
}

@JsonSerializable()
class Intersect extends NaryExpression {
  Intersect({super.operand});

  factory Intersect.fromJson(Map<String, dynamic> json) =>
      _$IntersectFromJson(json);

  Map<String, dynamic> toJson() => _$IntersectToJson(this);
}

abstract mixin class Except {}

// TODO(Dokotela): both valid?
@JsonSerializable()
class ExceptListList extends NaryExpression with Except {
  ExceptListList({super.operand});

  factory ExceptListList.fromJson(Map<String, dynamic> json) =>
      _$ExceptListListFromJson(json);

  Map<String, dynamic> toJson() => _$ExceptListListToJson(this);
}

@JsonSerializable()
class ExceptIntervalInterval extends NaryExpression with Except {
  ExceptIntervalInterval({super.operand});

  factory ExceptIntervalInterval.fromJson(Map<String, dynamic> json) =>
      _$ExceptIntervalIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$ExceptIntervalIntervalToJson(this);
}

@JsonSerializable()
class Exists extends UnaryExpression {
  Exists({super.operand});

  factory Exists.fromJson(Map<String, dynamic> json) => _$ExistsFromJson(json);

  Map<String, dynamic> toJson() => _$ExistsToJson(this);
}

@JsonSerializable()
class Times extends BinaryExpression {
  Times({required this.arg1, required this.arg2, this.precision})
      : super(operand: [Expression(arg1), Expression(arg2)]);

  final dynamic arg1;
  final dynamic arg2;
  ElmDateTimePrecision? precision;

  factory Times.fromJson(Map<String, dynamic> json) => _$TimesFromJson(json);

  Map<String, dynamic> toJson() => _$TimesToJson(this);
}

@JsonSerializable()
class Filter extends Expression {
  Filter({required this.source, required this.condition, this.scope});

  final Expression source;
  final Expression condition;
  final String? scope;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}

@JsonSerializable()
class First extends OperatorExpression {
  First({required this.source, this.orderBy});

  Expression source;
  String? orderBy;

  factory First.fromJson(Map<String, dynamic> json) => _$FirstFromJson(json);

  Map<String, dynamic> toJson() => _$FirstToJson(this);
}

@JsonSerializable()
class Last extends OperatorExpression {
  Last({required this.source, this.orderBy});

  Expression source;
  String? orderBy;

  factory Last.fromJson(Map<String, dynamic> json) => _$LastFromJson(json);

  Map<String, dynamic> toJson() => _$LastToJson(this);
}

@JsonSerializable()
class Slice extends OperatorExpression {
  Slice(
      {required this.source, required this.startIndex, required this.endIndex});

  Expression source;
  Expression startIndex;
  Expression endIndex;

  factory Slice.fromJson(Map<String, dynamic> json) => _$SliceFromJson(json);

  Map<String, dynamic> toJson() => _$SliceToJson(this);
}

@JsonSerializable()
class IndexOf extends OperatorExpression {
  IndexOf({required this.source, required this.element});

  Expression source;
  Expression element;

  factory IndexOf.fromJson(Map<String, dynamic> json) =>
      _$IndexOfFromJson(json);

  Map<String, dynamic> toJson() => _$IndexOfToJson(this);
}

// Flatten operator
@JsonSerializable()
class Flatten extends UnaryExpression {
  Flatten({required super.operand});

  factory Flatten.fromJson(Map<String, dynamic> json) =>
      _$FlattenFromJson(json);

  Map<String, dynamic> toJson() => _$FlattenToJson(this);
}

// // Sort operator
@JsonSerializable()
class Sort extends Expression {
  Sort(Expression source, List<SortByItem> by)
      : source = source,
        by = by;

  Expression source;
  List<SortByItem> by;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

  Map<String, dynamic> toJson() => _$SortToJson(this);
}

// ForEach expression
@JsonSerializable()
class ForEach extends Expression {
  ForEach({required this.source, required this.element, this.scope});

  Expression source;
  Expression element;
  String? scope;

  factory ForEach.fromJson(Map<String, dynamic> json) =>
      _$ForEachFromJson(json);

  Map<String, dynamic> toJson() => _$ForEachToJson(this);
}

// Repeat expression
@JsonSerializable()
class Repeat extends Expression {
  Repeat({required this.source, required this.element, this.scope});

  Expression source;
  Expression element;
  String? scope;

  factory Repeat.fromJson(Map<String, dynamic> json) => _$RepeatFromJson(json);

  Map<String, dynamic> toJson() => _$RepeatToJson(this);
}

// Distinct operator
@JsonSerializable()
class Distinct extends UnaryExpression {
  Distinct({required super.operand});

  factory Distinct.fromJson(Map<String, dynamic> json) =>
      _$DistinctFromJson(json);

  Map<String, dynamic> toJson() => _$DistinctToJson(this);
}

// Current expression
@JsonSerializable()
class Current extends Expression {
  Current({this.scope});

  String? scope;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

// Iteration expression
@JsonSerializable()
class Iteration extends Expression {
  Iteration({this.scope});

  String? scope;

  factory Iteration.fromJson(Map<String, dynamic> json) =>
      _$IterationFromJson(json);

  Map<String, dynamic> toJson() => _$IterationToJson(this);
}

// Total expression
@JsonSerializable()
class Total extends Expression {
  Total({this.scope});

  String? scope;

  factory Total.fromJson(Map<String, dynamic> json) => _$TotalFromJson(json);

  Map<String, dynamic> toJson() => _$TotalToJson(this);
}

// SingletonFrom expression
@JsonSerializable()
class SingletonFrom extends UnaryExpression {
  SingletonFrom({required super.operand});

  factory SingletonFrom.fromJson(Map<String, dynamic> json) =>
      _$SingletonFromFromJson(json);

  Map<String, dynamic> toJson() => _$SingletonFromToJson(this);
}

// AggregateExpression abstract class
@JsonSerializable()
abstract class AggregateExpression extends Expression {
  AggregateExpression(
      {required this.signature, required this.source, String? path});

  List<TypeSpecifier> signature;
  Expression source;
  String? path;

  factory AggregateExpression.fromJson(Map<String, dynamic> json) =>
      _$AggregateExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateExpressionToJson(this);
}

// Aggregate operator
@JsonSerializable()
class Aggregate extends AggregateExpression {
  Aggregate(
      {required super.signature,
      required super.source,
      super.path,
      required this.iteration,
      this.initialValue});

  Expression iteration;
  Expression? initialValue;

  factory Aggregate.fromJson(Map<String, dynamic> json) =>
      _$AggregateFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateToJson(this);
}

// Count operator
@JsonSerializable()
class Count extends AggregateExpression {
  Count({required super.signature, required super.source, super.path});

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  Map<String, dynamic> toJson() => _$CountToJson(this);
}

// Sum operator
@JsonSerializable()
class Sum extends AggregateExpression {
  Sum({required super.signature, required super.source, super.path});

  factory Sum.fromJson(Map<String, dynamic> json) => _$SumFromJson(json);

  Map<String, dynamic> toJson() => _$SumToJson(this);
}

// Product operator
@JsonSerializable()
class Product extends AggregateExpression {
  Product({required super.signature, required super.source, super.path});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

// Min operator
@JsonSerializable()
class Min extends AggregateExpression {
  Min({required super.signature, required super.source, super.path});

  factory Min.fromJson(Map<String, dynamic> json) => _$MinFromJson(json);

  Map<String, dynamic> toJson() => _$MinToJson(this);
}

// Max operator
@JsonSerializable()
class Max extends AggregateExpression {
  Max({required super.signature, required super.source, super.path});

  factory Max.fromJson(Map<String, dynamic> json) => _$MaxFromJson(json);

  Map<String, dynamic> toJson() => _$MaxToJson(this);
}

// Avg operator
@JsonSerializable()
class Avg extends AggregateExpression {
  Avg({required super.signature, required super.source, super.path});

  factory Avg.fromJson(Map<String, dynamic> json) => _$AvgFromJson(json);

  Map<String, dynamic> toJson() => _$AvgToJson(this);
}

// GeometricMean operator
@JsonSerializable()
class GeometricMean extends AggregateExpression {
  GeometricMean({required super.signature, required super.source, super.path});

  factory GeometricMean.fromJson(Map<String, dynamic> json) =>
      _$GeometricMeanFromJson(json);

  Map<String, dynamic> toJson() => _$GeometricMeanToJson(this);
}

// Median operator
@JsonSerializable()
class Median extends AggregateExpression {
  Median({required super.signature, required super.source, super.path});

  factory Median.fromJson(Map<String, dynamic> json) => _$MedianFromJson(json);

  Map<String, dynamic> toJson() => _$MedianToJson(this);
}

// Mode operator
@JsonSerializable()
class Mode extends AggregateExpression {
  Mode({required super.signature, required super.source, super.path});

  factory Mode.fromJson(Map<String, dynamic> json) => _$ModeFromJson(json);

  Map<String, dynamic> toJson() => _$ModeToJson(this);
}

// Variance operator
@JsonSerializable()
class Variance extends AggregateExpression {
  Variance({required super.signature, required super.source, super.path});

  factory Variance.fromJson(Map<String, dynamic> json) =>
      _$VarianceFromJson(json);

  Map<String, dynamic> toJson() => _$VarianceToJson(this);
}

// PopulationVariance operator
@JsonSerializable()
class PopulationVariance extends AggregateExpression {
  PopulationVariance(
      {required super.signature, required super.source, super.path});

  factory PopulationVariance.fromJson(Map<String, dynamic> json) =>
      _$PopulationVarianceFromJson(json);

  Map<String, dynamic> toJson() => _$PopulationVarianceToJson(this);
}

// StdDev operator
@JsonSerializable()
class StdDev extends AggregateExpression {
  StdDev({required super.signature, required super.source, super.path});

  factory StdDev.fromJson(Map<String, dynamic> json) => _$StdDevFromJson(json);

  Map<String, dynamic> toJson() => _$StdDevToJson(this);
}

// PopulationStdDev operator
@JsonSerializable()
class PopulationStdDev extends AggregateExpression {
  PopulationStdDev(
      {required super.signature, required super.source, super.path});

  factory PopulationStdDev.fromJson(Map<String, dynamic> json) =>
      _$PopulationStdDevFromJson(json);

  Map<String, dynamic> toJson() => _$PopulationStdDevToJson(this);
}

// AllTrue operator
@JsonSerializable()
class AllTrue extends AggregateExpression {
  AllTrue({required super.signature, required super.source, super.path});

  factory AllTrue.fromJson(Map<String, dynamic> json) =>
      _$AllTrueFromJson(json);

  Map<String, dynamic> toJson() => _$AllTrueToJson(this);
}

// AnyTrue operator
@JsonSerializable()
class AnyTrue extends AggregateExpression {
  AnyTrue({required super.signature, required super.source, super.path});

  factory AnyTrue.fromJson(Map<String, dynamic> json) =>
      _$AnyTrueFromJson(json);

  Map<String, dynamic> toJson() => _$AnyTrueToJson(this);
}

// Property operator
@JsonSerializable()
class Property extends Expression {
  final String path;
  final String? scope;
  final Expression? source;

  Property({required this.path, this.scope, this.source});

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

// AliasedQuerySource element
@JsonSerializable()
class AliasedQuerySource extends ElmElement {
  AliasedQuerySource({this.expression, required this.alias});

  final Expression? expression;
  final String alias;

  factory AliasedQuerySource.fromJson(Map<String, dynamic> json) =>
      _$AliasedQuerySourceFromJson(json);

  Map<String, dynamic> toJson() => _$AliasedQuerySourceToJson(this);
}

// LetClause element
@JsonSerializable()
class LetClause extends ElmElement {
  LetClause({this.expression, required this.identifier});

  final Expression? expression;
  final String identifier;

  factory LetClause.fromJson(Map<String, dynamic> json) =>
      _$LetClauseFromJson(json);

  Map<String, dynamic> toJson() => _$LetClauseToJson(this);
}

// RelationshipClause element
@JsonSerializable()
abstract class RelationshipClause extends AliasedQuerySource {
  RelationshipClause({this.suchThat, super.expression, required super.alias});

  final Expression? suchThat;

  factory RelationshipClause.fromJson(Map<String, dynamic> json) =>
      _$RelationshipClauseFromJson(json);

  Map<String, dynamic> toJson() => _$RelationshipClauseToJson(this);
}

// With clause
@JsonSerializable()
class With extends RelationshipClause {
  With({super.expression, required super.alias});

  factory With.fromJson(Map<String, dynamic> json) => _$WithFromJson(json);

  Map<String, dynamic> toJson() => _$WithToJson(this);
}

// Without clause
@JsonSerializable()
class Without extends RelationshipClause {
  Without({super.expression, required super.alias});

  factory Without.fromJson(Map<String, dynamic> json) =>
      _$WithoutFromJson(json);

  Map<String, dynamic> toJson() => _$WithoutToJson(this);
}

// SortDirection enumeration
enum SortDirection { asc, ascending, desc, descending }

// SortByItem abstract type
@JsonSerializable()
abstract class SortByItem extends ElmElement {
  SortByItem({this.direction});

  final SortDirection? direction;

  factory SortByItem.fromJson(Map<String, dynamic> json) =>
      _$SortByItemFromJson(json);

  Map<String, dynamic> toJson() => _$SortByItemToJson(this);
}

// ByDirection element
@JsonSerializable()
class ByDirection extends SortByItem {
  ByDirection({super.direction});

  factory ByDirection.fromJson(Map<String, dynamic> json) =>
      _$ByDirectionFromJson(json);

  Map<String, dynamic> toJson() => _$ByDirectionToJson(this);
}

// ByColumn element
@JsonSerializable()
class ByColumn extends SortByItem {
  ByColumn({super.direction, this.path});

  final String? path;

  factory ByColumn.fromJson(Map<String, dynamic> json) =>
      _$ByColumnFromJson(json);

  Map<String, dynamic> toJson() => _$ByColumnToJson(this);
}

// ByExpression element
@JsonSerializable()
class ByExpression extends SortByItem {
  ByExpression({super.direction, required this.expression});

  final Expression expression;

  factory ByExpression.fromJson(Map<String, dynamic> json) =>
      _$ByExpressionFromJson(json);

  Map<String, dynamic> toJson() => _$ByExpressionToJson(this);
}

// SortClause element
@JsonSerializable()
class SortClause extends ElmElement {
  SortClause({required this.by});

  final List<SortByItem> by;

  factory SortClause.fromJson(Map<String, dynamic> json) =>
      _$SortClauseFromJson(json);

  Map<String, dynamic> toJson() => _$SortClauseToJson(this);
}

// ReturnClause element
@JsonSerializable()
class ReturnClause extends ElmElement {
  ReturnClause({required this.expression, this.distinct});

  final Expression expression;
  final bool? distinct;

  factory ReturnClause.fromJson(Map<String, dynamic> json) =>
      _$ReturnClauseFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnClauseToJson(this);
}

// AggregateClause element
@JsonSerializable()
class AggregateClause extends ElmElement {
  AggregateClause({
    required this.expression,
    this.starting,
    required this.identifier,
    this.distinct = false,
  });

  final Expression expression;
  final Expression? starting;
  final String identifier;
  final bool distinct;

  factory AggregateClause.fromJson(Map<String, dynamic> json) =>
      _$AggregateClauseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateClauseToJson(this);
}

// Query operator
@JsonSerializable()
class Query extends Expression {
  Query({
    required this.source,
    this.let,
    this.relationship,
    this.where,
    this.returnClause,
    this.aggregate,
    this.sort,
  });

  List<AliasedQuerySource> source;
  List<LetClause>? let;
  List<RelationshipClause>? relationship;
  Expression? where;
  ReturnClause? returnClause;
  AggregateClause? aggregate;
  SortClause? sort;
}

// AliasRef expression
@JsonSerializable()
class AliasRef extends Expression {
  AliasRef({this.name});

  final String? name;

  factory AliasRef.fromJson(Map<String, dynamic> json) =>
      _$AliasRefFromJson(json);

  Map<String, dynamic> toJson() => _$AliasRefToJson(this);
}

// QueryLetRef expression
@JsonSerializable()
class QueryLetRef extends Expression {
  QueryLetRef({this.name});

  final String? name;

  factory QueryLetRef.fromJson(Map<String, dynamic> json) =>
      _$QueryLetRefFromJson(json);

  Map<String, dynamic> toJson() => _$QueryLetRefToJson(this);
}

// Children operator
@JsonSerializable()
class Children extends OperatorExpression {
  Children({required this.source, super.signature});

  final Expression source;

  factory Children.fromJson(Map<String, dynamic> json) =>
      _$ChildrenFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenToJson(this);
}

// Descendents operator
@JsonSerializable()
class Descendents extends OperatorExpression {
  Descendents({required this.source, super.signature});

  final Expression source;

  factory Descendents.fromJson(Map<String, dynamic> json) =>
      _$DescendentsFromJson(json);

  Map<String, dynamic> toJson() => _$DescendentsToJson(this);
}

// Message operator
@JsonSerializable()
class Message extends OperatorExpression {
  Message({
    required this.source,
    required this.code,
    this.severity,
    this.message,
    super.signature,
  });

  Expression source;
  Expression? condition;
  Expression? code;
  Expression? severity;
  Expression? message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
