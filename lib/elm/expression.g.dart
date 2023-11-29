// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElmElement _$ElmElementFromJson(Map<String, dynamic> json) => ElmElement(
      localId: json['localId'] as String?,
      locator: json['locator'] as String?,
      resultTypeName: json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>),
      annotation: (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultTypeSpecifier: json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ElmElementToJson(ElmElement instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
    };

TypeSpecifier _$TypeSpecifierFromJson(Map<String, dynamic> json) =>
    TypeSpecifier(
      localId: json['localId'] as String?,
      locator: json['locator'] as String?,
      resultTypeName: json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>),
      annotation: (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultTypeSpecifier: json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeSpecifierToJson(TypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
    };

TupleElementDefinition _$TupleElementDefinitionFromJson(
        Map<String, dynamic> json) =>
    TupleElementDefinition(
      name: json['name'] as String,
    )
      ..type = json['type'] == null
          ? null
          : TypeSpecifier.fromJson(json['type'] as Map<String, dynamic>)
      ..elementType = json['elementType'] == null
          ? null
          : TypeSpecifier.fromJson(json['elementType'] as Map<String, dynamic>);

Map<String, dynamic> _$TupleElementDefinitionToJson(
        TupleElementDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'elementType': instance.elementType,
    };

Expression _$ExpressionFromJson(Map<String, dynamic> json) => Expression(
      json['value'],
    );

Map<String, dynamic> _$ExpressionToJson(Expression instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

OperatorExpression _$OperatorExpressionFromJson(Map<String, dynamic> json) =>
    OperatorExpression(
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$OperatorExpressionToJson(OperatorExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
    };

UnaryExpression _$UnaryExpressionFromJson(Map<String, dynamic> json) =>
    UnaryExpression(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UnaryExpressionToJson(UnaryExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

BinaryExpression _$BinaryExpressionFromJson(Map<String, dynamic> json) =>
    BinaryExpression(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BinaryExpressionToJson(BinaryExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

TernaryExpression _$TernaryExpressionFromJson(Map<String, dynamic> json) =>
    TernaryExpression(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TernaryExpressionToJson(TernaryExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

NaryExpression _$NaryExpressionFromJson(Map<String, dynamic> json) =>
    NaryExpression(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$NaryExpressionToJson(NaryExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ExpressionDef _$ExpressionDefFromJson(Map<String, dynamic> json) =>
    ExpressionDef(
      name: json['name'] as String?,
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      context: json['context'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
    );

Map<String, dynamic> _$ExpressionDefToJson(ExpressionDef instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
      'context': instance.context,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
    };

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};

FunctionDef _$FunctionDefFromJson(Map<String, dynamic> json) => FunctionDef(
      name: json['name'] as String?,
      context: json['context'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      external: json['external'] as bool?,
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => OperandDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FunctionDefToJson(FunctionDef instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
      'context': instance.context,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
      'external': instance.external,
      'operand': instance.operand,
    };

ExpressionRef _$ExpressionRefFromJson(Map<String, dynamic> json) =>
    ExpressionRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ExpressionRefToJson(ExpressionRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

FunctionRef _$FunctionRefFromJson(Map<String, dynamic> json) => FunctionRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$FunctionRefToJson(FunctionRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ParameterDef _$ParameterDefFromJson(Map<String, dynamic> json) => ParameterDef(
      name: json['name'] as String?,
      parameterType: json['parameterType'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
      defaultExpr: json['defaultExpr'] == null
          ? null
          : Expression.fromJson(json['defaultExpr'] as Map<String, dynamic>),
      parameterTypeSpecifier: json['parameterTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['parameterTypeSpecifier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParameterDefToJson(ParameterDef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parameterType': instance.parameterType,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
      'defaultExpr': instance.defaultExpr,
      'parameterTypeSpecifier': instance.parameterTypeSpecifier,
    };

ParameterRef _$ParameterRefFromJson(Map<String, dynamic> json) => ParameterRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ParameterRefToJson(ParameterRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

OperandDef _$OperandDefFromJson(Map<String, dynamic> json) => OperandDef(
      name: json['name'] as String?,
      operandType: json['operandType'] as String?,
      operandTypeSpecifier: json['operandTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['operandTypeSpecifier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OperandDefToJson(OperandDef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'operandType': instance.operandType,
      'operandTypeSpecifier': instance.operandTypeSpecifier,
    };

OperandRef _$OperandRefFromJson(Map<String, dynamic> json) => OperandRef(
      name: json['name'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$OperandRefToJson(OperandRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
    };

IdentifierRef _$IdentifierRefFromJson(Map<String, dynamic> json) =>
    IdentifierRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$IdentifierRefToJson(IdentifierRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

Literal _$LiteralFromJson(Map<String, dynamic> json) => Literal(
      valueType: QName.fromJson(json['valueType'] as Map<String, dynamic>),
      value: json['value'],
    );

Map<String, dynamic> _$LiteralToJson(Literal instance) => <String, dynamic>{
      'valueType': instance.valueType,
      'value': instance.value,
    };

TupleElement _$TupleElementFromJson(Map<String, dynamic> json) => TupleElement(
      name: json['name'] as String,
      value: Expression.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TupleElementToJson(TupleElement instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

Tuple _$TupleFromJson(Map<String, dynamic> json) => Tuple(
      element: (json['element'] as List<dynamic>)
          .map((e) => TupleElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$TupleToJson(Tuple instance) => <String, dynamic>{
      'value': instance.value,
      'element': instance.element,
    };

InstanceElement _$InstanceElementFromJson(Map<String, dynamic> json) =>
    InstanceElement(
      name: json['name'] as String,
      value: Expression.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InstanceElementToJson(InstanceElement instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

Instance _$InstanceFromJson(Map<String, dynamic> json) => Instance(
      classType: QName.fromJson(json['classType'] as Map<String, dynamic>),
      element: (json['element'] as List<dynamic>)
          .map((e) => InstanceElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$InstanceToJson(Instance instance) => <String, dynamic>{
      'value': instance.value,
      'classType': instance.classType,
      'element': instance.element,
    };

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
      low: json['low'],
      lowClosedExpression: json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>),
      high: json['high'],
      highClosedExpression: json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>),
      lowClosed: json['lowClosed'] as bool? ?? true,
      highClosed: json['highClosed'] as bool? ?? true,
    )..value = json['value'];

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'value': instance.value,
      'low': instance.low,
      'lowClosedExpression': instance.lowClosedExpression,
      'high': instance.high,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
    };

ElmList _$ElmListFromJson(Map<String, dynamic> json) => ElmList(
      typeSpecifier: json['typeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>),
      element: (json['element'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$ElmListToJson(ElmList instance) => <String, dynamic>{
      'value': instance.value,
      'typeSpecifier': instance.typeSpecifier,
      'element': instance.element,
    };

And _$AndFromJson(Map<String, dynamic> json) => And(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AndToJson(And instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Or _$OrFromJson(Map<String, dynamic> json) => Or(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$OrToJson(Or instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Xor _$XorFromJson(Map<String, dynamic> json) => Xor(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$XorToJson(Xor instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Implies _$ImpliesFromJson(Map<String, dynamic> json) => Implies(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ImpliesToJson(Implies instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Not _$NotFromJson(Map<String, dynamic> json) => Not(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$NotToJson(Not instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

If _$IfFromJson(Map<String, dynamic> json) => If(
      Expression.fromJson(json['condition'] as Map<String, dynamic>),
      Expression.fromJson(json['then'] as Map<String, dynamic>),
      Expression.fromJson(json['elseClause'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$IfToJson(If instance) => <String, dynamic>{
      'value': instance.value,
      'condition': instance.condition,
      'then': instance.then,
      'elseClause': instance.elseClause,
    };

CaseItem _$CaseItemFromJson(Map<String, dynamic> json) => CaseItem(
      when: Expression.fromJson(json['when'] as Map<String, dynamic>),
      then: Expression.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CaseItemToJson(CaseItem instance) => <String, dynamic>{
      'when': instance.when,
      'then': instance.then,
    };

Case _$CaseFromJson(Map<String, dynamic> json) => Case(
      (json['caseItems'] as List<dynamic>)
          .map((e) => CaseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      Expression.fromJson(json['elseClause'] as Map<String, dynamic>),
      comparand: json['comparand'] == null
          ? null
          : Expression.fromJson(json['comparand'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$CaseToJson(Case instance) => <String, dynamic>{
      'value': instance.value,
      'comparand': instance.comparand,
      'caseItems': instance.caseItems,
      'elseClause': instance.elseClause,
    };

NullOperator _$NullOperatorFromJson(Map<String, dynamic> json) => NullOperator(
      valueType: json['valueType'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$NullOperatorToJson(NullOperator instance) =>
    <String, dynamic>{
      'value': instance.value,
      'valueType': instance.valueType,
    };

IsNull _$IsNullFromJson(Map<String, dynamic> json) => IsNull(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IsNullToJson(IsNull instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

IsTrue _$IsTrueFromJson(Map<String, dynamic> json) => IsTrue(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IsTrueToJson(IsTrue instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

IsFalse _$IsFalseFromJson(Map<String, dynamic> json) => IsFalse(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IsFalseToJson(IsFalse instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Coalesce _$CoalesceFromJson(Map<String, dynamic> json) => Coalesce(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CoalesceToJson(Coalesce instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Is _$IsFromJson(Map<String, dynamic> json) => Is(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
      isTypeSpecifier: json['isTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['isTypeSpecifier'] as Map<String, dynamic>),
      isType: json['isType'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IsToJson(Is instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'isTypeSpecifier': instance.isTypeSpecifier,
      'isType': instance.isType,
    };

As _$AsFromJson(Map<String, dynamic> json) => As(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
      asTypeSpecifier: json['asTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['asTypeSpecifier'] as Map<String, dynamic>),
      asType: json['asType'] as String?,
      strict: json['strict'] as bool?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AsToJson(As instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'asTypeSpecifier': instance.asTypeSpecifier,
      'asType': instance.asType,
      'strict': instance.strict,
    };

Convert _$ConvertFromJson(Map<String, dynamic> json) => Convert(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
      toTypeSpecifier: json['toTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['toTypeSpecifier'] as Map<String, dynamic>),
      toType: json['toType'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertToJson(Convert instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'toTypeSpecifier': instance.toTypeSpecifier,
      'toType': instance.toType,
    };

CanConvert _$CanConvertFromJson(Map<String, dynamic> json) => CanConvert(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
      toTypeSpecifier: json['toTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['toTypeSpecifier'] as Map<String, dynamic>),
      toType: json['toType'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CanConvertToJson(CanConvert instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'toTypeSpecifier': instance.toTypeSpecifier,
      'toType': instance.toType,
    };

ToBoolean _$ToBooleanFromJson(Map<String, dynamic> json) => ToBoolean(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToBooleanToJson(ToBoolean instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToBoolean _$ConvertsToBooleanFromJson(Map<String, dynamic> json) =>
    ConvertsToBoolean(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToBooleanToJson(ConvertsToBoolean instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToConcept _$ToConceptFromJson(Map<String, dynamic> json) => ToConcept(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToConceptToJson(ToConcept instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToDate _$ConvertsToDateFromJson(Map<String, dynamic> json) =>
    ConvertsToDate(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToDateToJson(ConvertsToDate instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToDate _$ToDateFromJson(Map<String, dynamic> json) => ToDate(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToDateToJson(ToDate instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToDateTime _$ConvertsToDateTimeFromJson(Map<String, dynamic> json) =>
    ConvertsToDateTime(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToDateTimeToJson(ConvertsToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToDateTime _$ToDateTimeFromJson(Map<String, dynamic> json) => ToDateTime(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToDateTimeToJson(ToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToDecimal _$ConvertsToDecimalFromJson(Map<String, dynamic> json) =>
    ConvertsToDecimal(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToDecimalToJson(ConvertsToDecimal instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToDecimal _$ToDecimalFromJson(Map<String, dynamic> json) => ToDecimal(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToDecimalToJson(ToDecimal instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToInteger _$ConvertsToIntegerFromJson(Map<String, dynamic> json) =>
    ConvertsToInteger(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToIntegerToJson(ConvertsToInteger instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToInteger _$ToIntegerFromJson(Map<String, dynamic> json) => ToInteger(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToIntegerToJson(ToInteger instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToLong _$ConvertsToLongFromJson(Map<String, dynamic> json) =>
    ConvertsToLong(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToLongToJson(ConvertsToLong instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToLong _$ToLongFromJson(Map<String, dynamic> json) => ToLong(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToLongToJson(ToLong instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToQuantity _$ConvertsToQuantityFromJson(Map<String, dynamic> json) =>
    ConvertsToQuantity(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToQuantityToJson(ConvertsToQuantity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToQuantity _$ToQuantityFromJson(Map<String, dynamic> json) => ToQuantity(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToQuantityToJson(ToQuantity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToRatio _$ConvertsToRatioFromJson(Map<String, dynamic> json) =>
    ConvertsToRatio(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToRatioToJson(ConvertsToRatio instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToRatio _$ToRatioFromJson(Map<String, dynamic> json) => ToRatio(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToRatioToJson(ToRatio instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToList _$ToListFromJson(Map<String, dynamic> json) => ToList(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToListToJson(ToList instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToChars _$ToCharsFromJson(Map<String, dynamic> json) => ToChars(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToCharsToJson(ToChars instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToString _$ConvertsToStringFromJson(Map<String, dynamic> json) =>
    ConvertsToString(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToStringToJson(ConvertsToString instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToString _$ToStringFromJson(Map<String, dynamic> json) => ToString(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToStringToJson(ToString instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ConvertsToTime _$ConvertsToTimeFromJson(Map<String, dynamic> json) =>
    ConvertsToTime(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertsToTimeToJson(ConvertsToTime instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ToTime _$ToTimeFromJson(Map<String, dynamic> json) => ToTime(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ToTimeToJson(ToTime instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

CanConvertQuantity _$CanConvertQuantityFromJson(Map<String, dynamic> json) =>
    CanConvertQuantity(
      arg1: json['arg1'],
      arg2: json['arg2'],
      targetUnit: json['targetUnit'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CanConvertQuantityToJson(CanConvertQuantity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'targetUnit': instance.targetUnit,
    };

ConvertQuantity _$ConvertQuantityFromJson(Map<String, dynamic> json) =>
    ConvertQuantity(
      arg1: json['arg1'],
      arg2: json['arg2'],
      targetUnit: json['targetUnit'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConvertQuantityToJson(ConvertQuantity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'targetUnit': instance.targetUnit,
    };

Equal _$EqualFromJson(Map<String, dynamic> json) => Equal(
      arg1: json['arg1'],
      arg2: json['arg2'],
      targetUnit: json['targetUnit'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EqualToJson(Equal instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'targetUnit': instance.targetUnit,
    };

Equivalent _$EquivalentFromJson(Map<String, dynamic> json) => Equivalent(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EquivalentToJson(Equivalent instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

NotEqual _$NotEqualFromJson(Map<String, dynamic> json) => NotEqual(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$NotEqualToJson(NotEqual instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Less _$LessFromJson(Map<String, dynamic> json) => Less(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LessToJson(Less instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Greater _$GreaterFromJson(Map<String, dynamic> json) => Greater(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GreaterToJson(Greater instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

LessOrEqual _$LessOrEqualFromJson(Map<String, dynamic> json) => LessOrEqual(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LessOrEqualToJson(LessOrEqual instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

GreaterOrEqual _$GreaterOrEqualFromJson(Map<String, dynamic> json) =>
    GreaterOrEqual(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
      binaryExpression: BinaryExpression.fromJson(
          json['binaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GreaterOrEqualToJson(GreaterOrEqual instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'binaryExpression': instance.binaryExpression,
    };

Add _$AddFromJson(Map<String, dynamic> json) => Add(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
      binaryExpression: BinaryExpression.fromJson(
          json['binaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AddToJson(Add instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'binaryExpression': instance.binaryExpression,
    };

Subtract _$SubtractFromJson(Map<String, dynamic> json) => Subtract(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SubtractToJson(Subtract instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Multiply _$MultiplyFromJson(Map<String, dynamic> json) => Multiply(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MultiplyToJson(Multiply instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Divide _$DivideFromJson(Map<String, dynamic> json) => Divide(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DivideToJson(Divide instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

TruncatedDivide _$TruncatedDivideFromJson(Map<String, dynamic> json) =>
    TruncatedDivide(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TruncatedDivideToJson(TruncatedDivide instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Modulo _$ModuloFromJson(Map<String, dynamic> json) => Modulo(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ModuloToJson(Modulo instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Ceiling _$CeilingFromJson(Map<String, dynamic> json) => Ceiling(
      UnaryExpression.fromJson(json['unaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>);

Map<String, dynamic> _$CeilingToJson(Ceiling instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'unaryExpression': instance.unaryExpression,
    };

Floor _$FloorFromJson(Map<String, dynamic> json) => Floor(
      UnaryExpression.fromJson(json['unaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>);

Map<String, dynamic> _$FloorToJson(Floor instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'unaryExpression': instance.unaryExpression,
    };

Truncate _$TruncateFromJson(Map<String, dynamic> json) => Truncate(
      UnaryExpression.fromJson(json['unaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>);

Map<String, dynamic> _$TruncateToJson(Truncate instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'unaryExpression': instance.unaryExpression,
    };

Abs _$AbsFromJson(Map<String, dynamic> json) => Abs(
      UnaryExpression.fromJson(json['unaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>);

Map<String, dynamic> _$AbsToJson(Abs instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'unaryExpression': instance.unaryExpression,
    };

Negate _$NegateFromJson(Map<String, dynamic> json) => Negate(
      UnaryExpression.fromJson(json['unaryExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>);

Map<String, dynamic> _$NegateToJson(Negate instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'unaryExpression': instance.unaryExpression,
    };

Round _$RoundFromJson(Map<String, dynamic> json) => Round(
      operand: Expression.fromJson(json['operand'] as Map<String, dynamic>),
      precision: json['precision'] == null
          ? null
          : Expression.fromJson(json['precision'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$RoundToJson(Round instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'precision': instance.precision,
    };

Ln _$LnFromJson(Map<String, dynamic> json) => Ln(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LnToJson(Ln instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Exp _$ExpFromJson(Map<String, dynamic> json) => Exp(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExpToJson(Exp instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Log _$LogFromJson(Map<String, dynamic> json) => Log(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LogToJson(Log instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Power _$PowerFromJson(Map<String, dynamic> json) => Power(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PowerToJson(Power instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Successor _$SuccessorFromJson(Map<String, dynamic> json) => Successor(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SuccessorToJson(Successor instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Predecessor _$PredecessorFromJson(Map<String, dynamic> json) => Predecessor(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PredecessorToJson(Predecessor instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

MinValue _$MinValueFromJson(Map<String, dynamic> json) => MinValue(
      json['valueType'] as String,
    )..value = json['value'];

Map<String, dynamic> _$MinValueToJson(MinValue instance) => <String, dynamic>{
      'value': instance.value,
      'valueType': instance.valueType,
    };

MaxValue _$MaxValueFromJson(Map<String, dynamic> json) => MaxValue(
      json['valueType'] as String,
    )..value = json['value'];

Map<String, dynamic> _$MaxValueToJson(MaxValue instance) => <String, dynamic>{
      'value': instance.value,
      'valueType': instance.valueType,
    };

Precision _$PrecisionFromJson(Map<String, dynamic> json) => Precision(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PrecisionToJson(Precision instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

LowBoundary _$LowBoundaryFromJson(Map<String, dynamic> json) => LowBoundary(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision: json['precision'] as int?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LowBoundaryToJson(LowBoundary instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': instance.precision,
    };

HighBoundary _$HighBoundaryFromJson(Map<String, dynamic> json) => HighBoundary(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision: json['precision'] as int?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$HighBoundaryToJson(HighBoundary instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': instance.precision,
    };

Concatenate _$ConcatenateFromJson(Map<String, dynamic> json) => Concatenate(
      arguments: (json['arguments'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConcatenateToJson(Concatenate instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arguments': instance.arguments,
    };

Combine _$CombineFromJson(Map<String, dynamic> json) => Combine(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      separator: json['separator'] == null
          ? null
          : Expression.fromJson(json['separator'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CombineToJson(Combine instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'separator': instance.separator,
    };

Split _$SplitFromJson(Map<String, dynamic> json) => Split(
      stringToSplit:
          Expression.fromJson(json['stringToSplit'] as Map<String, dynamic>),
      separator: Expression.fromJson(json['separator'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SplitToJson(Split instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'stringToSplit': instance.stringToSplit,
      'separator': instance.separator,
    };

SplitOnMatches _$SplitOnMatchesFromJson(Map<String, dynamic> json) =>
    SplitOnMatches(
      stringToSplit:
          Expression.fromJson(json['stringToSplit'] as Map<String, dynamic>),
      separatorPattern:
          Expression.fromJson(json['separatorPattern'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SplitOnMatchesToJson(SplitOnMatches instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'stringToSplit': instance.stringToSplit,
      'separatorPattern': instance.separatorPattern,
    };

Length _$LengthFromJson(Map<String, dynamic> json) => Length(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LengthToJson(Length instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Upper _$UpperFromJson(Map<String, dynamic> json) => Upper(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UpperToJson(Upper instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Lower _$LowerFromJson(Map<String, dynamic> json) => Lower(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LowerToJson(Lower instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Indexer _$IndexerFromJson(Map<String, dynamic> json) => Indexer(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IndexerToJson(Indexer instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

PositionOf _$PositionOfFromJson(Map<String, dynamic> json) => PositionOf(
      Expression.fromJson(json['pattern'] as Map<String, dynamic>),
      Expression.fromJson(json['string'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PositionOfToJson(PositionOf instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'pattern': instance.pattern,
      'string': instance.string,
    };

LastPositionOf _$LastPositionOfFromJson(Map<String, dynamic> json) =>
    LastPositionOf(
      pattern: Expression.fromJson(json['pattern'] as Map<String, dynamic>),
      string: Expression.fromJson(json['string'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LastPositionOfToJson(LastPositionOf instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'pattern': instance.pattern,
      'string': instance.string,
    };

Substring _$SubstringFromJson(Map<String, dynamic> json) => Substring(
      stringToSub:
          Expression.fromJson(json['stringToSub'] as Map<String, dynamic>),
      startIndex:
          Expression.fromJson(json['startIndex'] as Map<String, dynamic>),
      length: json['length'] == null
          ? null
          : Expression.fromJson(json['length'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SubstringToJson(Substring instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'stringToSub': instance.stringToSub,
      'startIndex': instance.startIndex,
      'length': instance.length,
    };

StartsWith _$StartsWithFromJson(Map<String, dynamic> json) => StartsWith(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$StartsWithToJson(StartsWith instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

EndsWith _$EndsWithFromJson(Map<String, dynamic> json) => EndsWith(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EndsWithToJson(EndsWith instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

Matches _$MatchesFromJson(Map<String, dynamic> json) => Matches(
      arg1: json['arg1'],
      arg2: json['arg2'],
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MatchesToJson(Matches instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
    };

ReplaceMatches _$ReplaceMatchesFromJson(Map<String, dynamic> json) =>
    ReplaceMatches(
      pattern: Expression.fromJson(json['pattern'] as Map<String, dynamic>),
      string: Expression.fromJson(json['string'] as Map<String, dynamic>),
      substitution:
          Expression.fromJson(json['substitution'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ReplaceMatchesToJson(ReplaceMatches instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'pattern': instance.pattern,
      'string': instance.string,
      'substitution': instance.substitution,
    };

DurationBetween _$DurationBetweenFromJson(Map<String, dynamic> json) =>
    DurationBetween(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DurationBetweenToJson(DurationBetween instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

const _$ElmDateTimePrecisionEnumMap = {
  ElmDateTimePrecision.Year: 'Year',
  ElmDateTimePrecision.Month: 'Month',
  ElmDateTimePrecision.Week: 'Week',
  ElmDateTimePrecision.Day: 'Day',
  ElmDateTimePrecision.Hour: 'Hour',
  ElmDateTimePrecision.Minute: 'Minute',
  ElmDateTimePrecision.Second: 'Second',
  ElmDateTimePrecision.Millisecond: 'Millisecond',
};

DifferenceBetween _$DifferenceBetweenFromJson(Map<String, dynamic> json) =>
    DifferenceBetween(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DifferenceBetweenToJson(DifferenceBetween instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

DateFrom _$DateFromFromJson(Map<String, dynamic> json) => DateFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DateFromToJson(DateFrom instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

TimeFrom _$TimeFromFromJson(Map<String, dynamic> json) => TimeFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TimeFromToJson(TimeFrom instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

TimezoneFrom _$TimezoneFromFromJson(Map<String, dynamic> json) => TimezoneFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TimezoneFromToJson(TimezoneFrom instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

TimezoneOffsetFrom _$TimezoneOffsetFromFromJson(Map<String, dynamic> json) =>
    TimezoneOffsetFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TimezoneOffsetFromToJson(TimezoneOffsetFrom instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

DateTimeComponentFrom _$DateTimeComponentFromFromJson(
        Map<String, dynamic> json) =>
    DateTimeComponentFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DateTimeComponentFromToJson(
        DateTimeComponentFrom instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

TimeOfDay _$TimeOfDayFromJson(Map<String, dynamic> json) => TimeOfDay(
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$TimeOfDayToJson(TimeOfDay instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
    };

Today _$TodayFromJson(Map<String, dynamic> json) => Today(
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$TodayToJson(Today instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
    };

Now _$NowFromJson(Map<String, dynamic> json) => Now(
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$NowToJson(Now instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
    };

DateOperator _$DateOperatorFromJson(Map<String, dynamic> json) => DateOperator(
      year: Expression.fromJson(json['year'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : Expression.fromJson(json['month'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : Expression.fromJson(json['day'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$DateOperatorToJson(DateOperator instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

DateTimeOperator _$DateTimeOperatorFromJson(Map<String, dynamic> json) =>
    DateTimeOperator(
      year: Expression.fromJson(json['year'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : Expression.fromJson(json['month'] as Map<String, dynamic>),
      day: json['day'] == null
          ? null
          : Expression.fromJson(json['day'] as Map<String, dynamic>),
      hour: json['hour'] == null
          ? null
          : Expression.fromJson(json['hour'] as Map<String, dynamic>),
      minute: json['minute'] == null
          ? null
          : Expression.fromJson(json['minute'] as Map<String, dynamic>),
      second: json['second'] == null
          ? null
          : Expression.fromJson(json['second'] as Map<String, dynamic>),
      millisecond: json['millisecond'] == null
          ? null
          : Expression.fromJson(json['millisecond'] as Map<String, dynamic>),
      timezoneOffset: json['timezoneOffset'] == null
          ? null
          : Expression.fromJson(json['timezoneOffset'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DateTimeOperatorToJson(DateTimeOperator instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
      'millisecond': instance.millisecond,
      'timezoneOffset': instance.timezoneOffset,
    };

TimeOperator _$TimeOperatorFromJson(Map<String, dynamic> json) => TimeOperator(
      hour: Expression.fromJson(json['hour'] as Map<String, dynamic>),
      minute: json['minute'] == null
          ? null
          : Expression.fromJson(json['minute'] as Map<String, dynamic>),
      second: json['second'] == null
          ? null
          : Expression.fromJson(json['second'] as Map<String, dynamic>),
      millisecond: json['millisecond'] == null
          ? null
          : Expression.fromJson(json['millisecond'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$TimeOperatorToJson(TimeOperator instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
      'millisecond': instance.millisecond,
    };

SameAs _$SameAsFromJson(Map<String, dynamic> json) => SameAs(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SameAsToJson(SameAs instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

SameOrBefore _$SameOrBeforeFromJson(Map<String, dynamic> json) => SameOrBefore(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SameOrBeforeToJson(SameOrBefore instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

SameOrAfter _$SameOrAfterFromJson(Map<String, dynamic> json) => SameOrAfter(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SameOrAfterToJson(SameOrAfter instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

PointFrom _$PointFromFromJson(Map<String, dynamic> json) => PointFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PointFromToJson(PointFrom instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Width _$WidthFromJson(Map<String, dynamic> json) => Width(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$WidthToJson(Width instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Size _$SizeFromJson(Map<String, dynamic> json) => Size(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SizeToJson(Size instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Start _$StartFromJson(Map<String, dynamic> json) => Start(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$StartToJson(Start instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

End _$EndFromJson(Map<String, dynamic> json) => End(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EndToJson(End instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Contains _$ContainsFromJson(Map<String, dynamic> json) => Contains(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ContainsToJson(Contains instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

ProperContains _$ProperContainsFromJson(Map<String, dynamic> json) =>
    ProperContains(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProperContainsToJson(ProperContains instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

In _$InFromJson(Map<String, dynamic> json) => In(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$InToJson(In instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

ProperIn _$ProperInFromJson(Map<String, dynamic> json) => ProperIn(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProperInToJson(ProperIn instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Includes _$IncludesFromJson(Map<String, dynamic> json) => Includes(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IncludesToJson(Includes instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

IncludedIn _$IncludedInFromJson(Map<String, dynamic> json) => IncludedIn(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IncludedInToJson(IncludedIn instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

ProperIncludes _$ProperIncludesFromJson(Map<String, dynamic> json) =>
    ProperIncludes(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProperIncludesToJson(ProperIncludes instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

ProperIncludedIn _$ProperIncludedInFromJson(Map<String, dynamic> json) =>
    ProperIncludedIn(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProperIncludedInToJson(ProperIncludedIn instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Before _$BeforeFromJson(Map<String, dynamic> json) => Before(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BeforeToJson(Before instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

After _$AfterFromJson(Map<String, dynamic> json) => After(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AfterToJson(After instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Meets _$MeetsFromJson(Map<String, dynamic> json) => Meets(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MeetsToJson(Meets instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

MeetsBefore _$MeetsBeforeFromJson(Map<String, dynamic> json) => MeetsBefore(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MeetsBeforeToJson(MeetsBefore instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

MeetsAfter _$MeetsAfterFromJson(Map<String, dynamic> json) => MeetsAfter(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MeetsAfterToJson(MeetsAfter instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Overlaps _$OverlapsFromJson(Map<String, dynamic> json) => Overlaps(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$OverlapsToJson(Overlaps instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

OverlapsBefore _$OverlapsBeforeFromJson(Map<String, dynamic> json) =>
    OverlapsBefore(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$OverlapsBeforeToJson(OverlapsBefore instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

OverlapsAfter _$OverlapsAfterFromJson(Map<String, dynamic> json) =>
    OverlapsAfter(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$OverlapsAfterToJson(OverlapsAfter instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Starts _$StartsFromJson(Map<String, dynamic> json) => Starts(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$StartsToJson(Starts instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Ends _$EndsFromJson(Map<String, dynamic> json) => Ends(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EndsToJson(Ends instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Collapse _$CollapseFromJson(Map<String, dynamic> json) => Collapse(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CollapseToJson(Collapse instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Expand _$ExpandFromJson(Map<String, dynamic> json) => Expand(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExpandToJson(Expand instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Union _$UnionFromJson(Map<String, dynamic> json) => Union(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UnionToJson(Union instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Intersect _$IntersectFromJson(Map<String, dynamic> json) => Intersect(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IntersectToJson(Intersect instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ExceptListList _$ExceptListListFromJson(Map<String, dynamic> json) =>
    ExceptListList(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExceptListListToJson(ExceptListList instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

ExceptIntervalInterval _$ExceptIntervalIntervalFromJson(
        Map<String, dynamic> json) =>
    ExceptIntervalInterval(
      operand: (json['operand'] as List<dynamic>?)
          ?.map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExceptIntervalIntervalToJson(
        ExceptIntervalInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Exists _$ExistsFromJson(Map<String, dynamic> json) => Exists(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExistsToJson(Exists instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Times _$TimesFromJson(Map<String, dynamic> json) => Times(
      arg1: json['arg1'],
      arg2: json['arg2'],
      precision:
          $enumDecodeNullable(_$ElmDateTimePrecisionEnumMap, json['precision']),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList()
      ..operand = (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TimesToJson(Times instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision],
    };

Filter _$FilterFromJson(Map<String, dynamic> json) => Filter(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      condition: Expression.fromJson(json['condition'] as Map<String, dynamic>),
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'value': instance.value,
      'source': instance.source,
      'condition': instance.condition,
      'scope': instance.scope,
    };

First _$FirstFromJson(Map<String, dynamic> json) => First(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      orderBy: json['orderBy'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FirstToJson(First instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'orderBy': instance.orderBy,
    };

Last _$LastFromJson(Map<String, dynamic> json) => Last(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      orderBy: json['orderBy'] as String?,
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LastToJson(Last instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'orderBy': instance.orderBy,
    };

Slice _$SliceFromJson(Map<String, dynamic> json) => Slice(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      startIndex:
          Expression.fromJson(json['startIndex'] as Map<String, dynamic>),
      endIndex: Expression.fromJson(json['endIndex'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SliceToJson(Slice instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
    };

IndexOf _$IndexOfFromJson(Map<String, dynamic> json) => IndexOf(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      element: Expression.fromJson(json['element'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$IndexOfToJson(IndexOf instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'element': instance.element,
    };

Flatten _$FlattenFromJson(Map<String, dynamic> json) => Flatten(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FlattenToJson(Flatten instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Sort _$SortFromJson(Map<String, dynamic> json) => Sort(
      Expression.fromJson(json['source'] as Map<String, dynamic>),
      (json['by'] as List<dynamic>)
          .map((e) => SortByItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$SortToJson(Sort instance) => <String, dynamic>{
      'value': instance.value,
      'source': instance.source,
      'by': instance.by,
    };

ForEach _$ForEachFromJson(Map<String, dynamic> json) => ForEach(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      element: Expression.fromJson(json['element'] as Map<String, dynamic>),
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ForEachToJson(ForEach instance) => <String, dynamic>{
      'value': instance.value,
      'source': instance.source,
      'element': instance.element,
      'scope': instance.scope,
    };

Repeat _$RepeatFromJson(Map<String, dynamic> json) => Repeat(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      element: Expression.fromJson(json['element'] as Map<String, dynamic>),
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$RepeatToJson(Repeat instance) => <String, dynamic>{
      'value': instance.value,
      'source': instance.source,
      'element': instance.element,
      'scope': instance.scope,
    };

Distinct _$DistinctFromJson(Map<String, dynamic> json) => Distinct(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DistinctToJson(Distinct instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'value': instance.value,
      'scope': instance.scope,
    };

Iteration _$IterationFromJson(Map<String, dynamic> json) => Iteration(
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$IterationToJson(Iteration instance) => <String, dynamic>{
      'value': instance.value,
      'scope': instance.scope,
    };

Total _$TotalFromJson(Map<String, dynamic> json) => Total(
      scope: json['scope'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$TotalToJson(Total instance) => <String, dynamic>{
      'value': instance.value,
      'scope': instance.scope,
    };

SingletonFrom _$SingletonFromFromJson(Map<String, dynamic> json) =>
    SingletonFrom(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SingletonFromToJson(SingletonFrom instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

AggregateExpression _$AggregateExpressionFromJson(Map<String, dynamic> json) =>
    AggregateExpression(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$AggregateExpressionToJson(
        AggregateExpression instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Aggregate _$AggregateFromJson(Map<String, dynamic> json) => Aggregate(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
      iteration: Expression.fromJson(json['iteration'] as Map<String, dynamic>),
      initialValue: json['initialValue'] == null
          ? null
          : Expression.fromJson(json['initialValue'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$AggregateToJson(Aggregate instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
      'iteration': instance.iteration,
      'initialValue': instance.initialValue,
    };

Count _$CountFromJson(Map<String, dynamic> json) => Count(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Sum _$SumFromJson(Map<String, dynamic> json) => Sum(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$SumToJson(Sum instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Min _$MinFromJson(Map<String, dynamic> json) => Min(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$MinToJson(Min instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Max _$MaxFromJson(Map<String, dynamic> json) => Max(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$MaxToJson(Max instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Avg _$AvgFromJson(Map<String, dynamic> json) => Avg(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$AvgToJson(Avg instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

GeometricMean _$GeometricMeanFromJson(Map<String, dynamic> json) =>
    GeometricMean(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$GeometricMeanToJson(GeometricMean instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Median _$MedianFromJson(Map<String, dynamic> json) => Median(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$MedianToJson(Median instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Mode _$ModeFromJson(Map<String, dynamic> json) => Mode(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ModeToJson(Mode instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Variance _$VarianceFromJson(Map<String, dynamic> json) => Variance(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$VarianceToJson(Variance instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

PopulationVariance _$PopulationVarianceFromJson(Map<String, dynamic> json) =>
    PopulationVariance(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$PopulationVarianceToJson(PopulationVariance instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

StdDev _$StdDevFromJson(Map<String, dynamic> json) => StdDev(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$StdDevToJson(StdDev instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

PopulationStdDev _$PopulationStdDevFromJson(Map<String, dynamic> json) =>
    PopulationStdDev(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$PopulationStdDevToJson(PopulationStdDev instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

AllTrue _$AllTrueFromJson(Map<String, dynamic> json) => AllTrue(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$AllTrueToJson(AllTrue instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

AnyTrue _$AnyTrueFromJson(Map<String, dynamic> json) => AnyTrue(
      signature: (json['signature'] as List<dynamic>)
          .map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      path: json['path'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$AnyTrueToJson(AnyTrue instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'path': instance.path,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      path: json['path'] as String,
      scope: json['scope'] as String?,
      source: json['source'] == null
          ? null
          : Expression.fromJson(json['source'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'value': instance.value,
      'path': instance.path,
      'scope': instance.scope,
      'source': instance.source,
    };

AliasedQuerySource _$AliasedQuerySourceFromJson(Map<String, dynamic> json) =>
    AliasedQuerySource(
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      alias: json['alias'] as String,
    );

Map<String, dynamic> _$AliasedQuerySourceToJson(AliasedQuerySource instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'alias': instance.alias,
    };

LetClause _$LetClauseFromJson(Map<String, dynamic> json) => LetClause(
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$LetClauseToJson(LetClause instance) => <String, dynamic>{
      'expression': instance.expression,
      'identifier': instance.identifier,
    };

RelationshipClause _$RelationshipClauseFromJson(Map<String, dynamic> json) =>
    RelationshipClause(
      suchThat: json['suchThat'] == null
          ? null
          : Expression.fromJson(json['suchThat'] as Map<String, dynamic>),
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      alias: json['alias'] as String,
    );

Map<String, dynamic> _$RelationshipClauseToJson(RelationshipClause instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'alias': instance.alias,
      'suchThat': instance.suchThat,
    };

With _$WithFromJson(Map<String, dynamic> json) => With(
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      alias: json['alias'] as String,
    );

Map<String, dynamic> _$WithToJson(With instance) => <String, dynamic>{
      'expression': instance.expression,
      'alias': instance.alias,
    };

Without _$WithoutFromJson(Map<String, dynamic> json) => Without(
      expression: json['expression'] == null
          ? null
          : Expression.fromJson(json['expression'] as Map<String, dynamic>),
      alias: json['alias'] as String,
    );

Map<String, dynamic> _$WithoutToJson(Without instance) => <String, dynamic>{
      'expression': instance.expression,
      'alias': instance.alias,
    };

SortByItem _$SortByItemFromJson(Map<String, dynamic> json) => SortByItem(
      direction: $enumDecodeNullable(_$SortDirectionEnumMap, json['direction']),
    );

Map<String, dynamic> _$SortByItemToJson(SortByItem instance) =>
    <String, dynamic>{
      'direction': _$SortDirectionEnumMap[instance.direction],
    };

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.ascending: 'ascending',
  SortDirection.desc: 'desc',
  SortDirection.descending: 'descending',
};

ByDirection _$ByDirectionFromJson(Map<String, dynamic> json) => ByDirection(
      direction: $enumDecodeNullable(_$SortDirectionEnumMap, json['direction']),
    );

Map<String, dynamic> _$ByDirectionToJson(ByDirection instance) =>
    <String, dynamic>{
      'direction': _$SortDirectionEnumMap[instance.direction],
    };

ByColumn _$ByColumnFromJson(Map<String, dynamic> json) => ByColumn(
      direction: $enumDecodeNullable(_$SortDirectionEnumMap, json['direction']),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ByColumnToJson(ByColumn instance) => <String, dynamic>{
      'direction': _$SortDirectionEnumMap[instance.direction],
      'path': instance.path,
    };

ByExpression _$ByExpressionFromJson(Map<String, dynamic> json) => ByExpression(
      direction: $enumDecodeNullable(_$SortDirectionEnumMap, json['direction']),
      expression:
          Expression.fromJson(json['expression'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ByExpressionToJson(ByExpression instance) =>
    <String, dynamic>{
      'direction': _$SortDirectionEnumMap[instance.direction],
      'expression': instance.expression,
    };

SortClause _$SortClauseFromJson(Map<String, dynamic> json) => SortClause(
      by: (json['by'] as List<dynamic>)
          .map((e) => SortByItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SortClauseToJson(SortClause instance) =>
    <String, dynamic>{
      'by': instance.by,
    };

ReturnClause _$ReturnClauseFromJson(Map<String, dynamic> json) => ReturnClause(
      expression:
          Expression.fromJson(json['expression'] as Map<String, dynamic>),
      distinct: json['distinct'] as bool?,
    );

Map<String, dynamic> _$ReturnClauseToJson(ReturnClause instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'distinct': instance.distinct,
    };

AggregateClause _$AggregateClauseFromJson(Map<String, dynamic> json) =>
    AggregateClause(
      expression:
          Expression.fromJson(json['expression'] as Map<String, dynamic>),
      starting: json['starting'] == null
          ? null
          : Expression.fromJson(json['starting'] as Map<String, dynamic>),
      identifier: json['identifier'] as String,
      distinct: json['distinct'] as bool? ?? false,
    );

Map<String, dynamic> _$AggregateClauseToJson(AggregateClause instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'starting': instance.starting,
      'identifier': instance.identifier,
      'distinct': instance.distinct,
    };

Query _$QueryFromJson(Map<String, dynamic> json) => Query(
      source: (json['source'] as List<dynamic>)
          .map((e) => AliasedQuerySource.fromJson(e as Map<String, dynamic>))
          .toList(),
      let: (json['let'] as List<dynamic>?)
          ?.map((e) => LetClause.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map((e) => RelationshipClause.fromJson(e as Map<String, dynamic>))
          .toList(),
      where: json['where'] == null
          ? null
          : Expression.fromJson(json['where'] as Map<String, dynamic>),
      returnClause: json['returnClause'] == null
          ? null
          : ReturnClause.fromJson(json['returnClause'] as Map<String, dynamic>),
      aggregate: json['aggregate'] == null
          ? null
          : AggregateClause.fromJson(json['aggregate'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : SortClause.fromJson(json['sort'] as Map<String, dynamic>),
    )..value = json['value'];

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'value': instance.value,
      'source': instance.source,
      'let': instance.let,
      'relationship': instance.relationship,
      'where': instance.where,
      'returnClause': instance.returnClause,
      'aggregate': instance.aggregate,
      'sort': instance.sort,
    };

AliasRef _$AliasRefFromJson(Map<String, dynamic> json) => AliasRef(
      name: json['name'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$AliasRefToJson(AliasRef instance) => <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
    };

QueryLetRef _$QueryLetRefFromJson(Map<String, dynamic> json) => QueryLetRef(
      name: json['name'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$QueryLetRefToJson(QueryLetRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
    };

Children _$ChildrenFromJson(Map<String, dynamic> json) => Children(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$ChildrenToJson(Children instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
    };

Descendents _$DescendentsFromJson(Map<String, dynamic> json) => Descendents(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..value = json['value'];

Map<String, dynamic> _$DescendentsToJson(Descendents instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      source: Expression.fromJson(json['source'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : Expression.fromJson(json['code'] as Map<String, dynamic>),
      severity: json['severity'] == null
          ? null
          : Expression.fromJson(json['severity'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : Expression.fromJson(json['message'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..condition = json['condition'] == null
          ? null
          : Expression.fromJson(json['condition'] as Map<String, dynamic>);

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'source': instance.source,
      'condition': instance.condition,
      'code': instance.code,
      'severity': instance.severity,
      'message': instance.message,
    };
