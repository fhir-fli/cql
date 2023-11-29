// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinical_expression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeFilterElement _$CodeFilterElementFromJson(Map<String, dynamic> json) =>
    CodeFilterElement(
      property: json['property'] as String?,
      valueSetProperty: json['valueSetProperty'] as String?,
      search: json['search'] as String?,
      comparator: json['comparator'] as String,
      value: Expression.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CodeFilterElementToJson(CodeFilterElement instance) =>
    <String, dynamic>{
      'property': instance.property,
      'valueSetProperty': instance.valueSetProperty,
      'search': instance.search,
      'comparator': instance.comparator,
      'value': instance.value,
    };

DateFilterElement _$DateFilterElementFromJson(Map<String, dynamic> json) =>
    DateFilterElement(
      property: json['property'] as String?,
      lowProperty: json['lowProperty'] as String?,
      highProperty: json['highProperty'] as String?,
      search: json['search'] as String?,
      value: Expression.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateFilterElementToJson(DateFilterElement instance) =>
    <String, dynamic>{
      'property': instance.property,
      'lowProperty': instance.lowProperty,
      'highProperty': instance.highProperty,
      'search': instance.search,
      'value': instance.value,
    };

OtherFilterElement _$OtherFilterElementFromJson(Map<String, dynamic> json) =>
    OtherFilterElement(
      property: json['property'] as String?,
      search: json['search'] as String?,
      comparator: json['comparator'] as String,
      value: Expression.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherFilterElementToJson(OtherFilterElement instance) =>
    <String, dynamic>{
      'property': instance.property,
      'search': instance.search,
      'comparator': instance.comparator,
      'value': instance.value,
    };

IncludeElement _$IncludeElementFromJson(Map<String, dynamic> json) =>
    IncludeElement(
      includeFrom: json['includeFrom'] as String?,
      redDataType: json['redDataType'] as String,
      redProperty: json['redProperty'] as String?,
      redSearch: json['redSearch'] as String?,
      isReverse: json['isReverse'] as bool?,
    );

Map<String, dynamic> _$IncludeElementToJson(IncludeElement instance) =>
    <String, dynamic>{
      'includeFrom': instance.includeFrom,
      'redDataType': instance.redDataType,
      'redProperty': instance.redProperty,
      'redSearch': instance.redSearch,
      'isReverse': instance.isReverse,
    };

Retrieve _$RetrieveFromJson(Map<String, dynamic> json) => Retrieve(
      id: Expression.fromJson(json['id'] as Map<String, dynamic>),
      codes: Expression.fromJson(json['codes'] as Map<String, dynamic>),
      dateRange: Expression.fromJson(json['dateRange'] as Map<String, dynamic>),
      context: Expression.fromJson(json['context'] as Map<String, dynamic>),
      include: (json['include'] as List<dynamic>)
          .map((e) => IncludeElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeFilter: (json['codeFilter'] as List<dynamic>)
          .map((e) => CodeFilterElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>)
          .map((e) => DateFilterElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherFilter: (json['otherFilter'] as List<dynamic>)
          .map((e) => OtherFilterElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataType: json['dataType'] as String,
      templateId: json['templateId'] as String?,
      idProperty: json['idProperty'] as String?,
      idSearch: json['idSearch'] as String?,
      contextProperty: json['contextProperty'] as String?,
      contextSearch: json['contextSearch'] as String?,
      codeProperty: json['codeProperty'] as String?,
      codeSearch: json['codeSearch'] as String?,
      codeComparator: json['codeComparator'] as String?,
      valueSetProperty: json['valueSetProperty'] as String?,
      dateProperty: json['dateProperty'] as String?,
      dateLowProperty: json['dateLowProperty'] as String?,
      dateHighProperty: json['dateHighProperty'] as String?,
      dateSearch: json['dateSearch'] as String?,
      includedIn: json['includedIn'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$RetrieveToJson(Retrieve instance) => <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'codes': instance.codes,
      'dateRange': instance.dateRange,
      'context': instance.context,
      'include': instance.include,
      'codeFilter': instance.codeFilter,
      'dateFilter': instance.dateFilter,
      'otherFilter': instance.otherFilter,
      'dataType': instance.dataType,
      'templateId': instance.templateId,
      'idProperty': instance.idProperty,
      'idSearch': instance.idSearch,
      'contextProperty': instance.contextProperty,
      'contextSearch': instance.contextSearch,
      'codeProperty': instance.codeProperty,
      'codeSearch': instance.codeSearch,
      'codeComparator': instance.codeComparator,
      'valueSetProperty': instance.valueSetProperty,
      'dateProperty': instance.dateProperty,
      'dateLowProperty': instance.dateLowProperty,
      'dateHighProperty': instance.dateHighProperty,
      'dateSearch': instance.dateSearch,
      'includedIn': instance.includedIn,
    };

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      path: json['path'] as String,
    )..value = json['value'];

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'value': instance.value,
      'path': instance.path,
    };

CodeSystemDef _$CodeSystemDefFromJson(Map<String, dynamic> json) =>
    CodeSystemDef(
      name: json['name'] as String,
      id: json['id'] as String,
      version: json['version'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
    );

Map<String, dynamic> _$CodeSystemDefToJson(CodeSystemDef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'version': instance.version,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
    };

const _$AccessModifierEnumMap = {
  AccessModifier.Public: 'Public',
  AccessModifier.Private: 'Private',
};

ValueSetDef _$ValueSetDefFromJson(Map<String, dynamic> json) => ValueSetDef(
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map((e) => CodeSystemRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      id: json['id'] as String,
      version: json['version'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
    );

Map<String, dynamic> _$ValueSetDefToJson(ValueSetDef instance) =>
    <String, dynamic>{
      'codeSystem': instance.codeSystem,
      'name': instance.name,
      'id': instance.id,
      'version': instance.version,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
    };

CodeDef _$CodeDefFromJson(Map<String, dynamic> json) => CodeDef(
      codeSystem: json['codeSystem'] == null
          ? null
          : CodeSystemRef.fromJson(json['codeSystem'] as Map<String, dynamic>),
      name: json['name'] as String,
      id: json['id'] as String,
      display: json['display'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
    );

Map<String, dynamic> _$CodeDefToJson(CodeDef instance) => <String, dynamic>{
      'codeSystem': instance.codeSystem,
      'name': instance.name,
      'id': instance.id,
      'display': instance.display,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
    };

ConceptDef _$ConceptDefFromJson(Map<String, dynamic> json) => ConceptDef(
      name: json['name'] as String,
      display: json['display'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']) ??
              AccessModifier.Public,
      code: (json['code'] as List<dynamic>)
          .map((e) => CodeRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConceptDefToJson(ConceptDef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'display': instance.display,
      'accessLevel': _$AccessModifierEnumMap[instance.accessLevel]!,
      'code': instance.code,
    };

CodeSystemRef _$CodeSystemRefFromJson(Map<String, dynamic> json) =>
    CodeSystemRef(
      name: json['name'] as String,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$CodeSystemRefToJson(CodeSystemRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

ValueSetRef _$ValueSetRefFromJson(Map<String, dynamic> json) => ValueSetRef(
      name: json['name'] as String,
      libraryName: json['libraryName'] as String?,
      preserve: json['preserve'] as bool?,
    )..value = json['value'];

Map<String, dynamic> _$ValueSetRefToJson(ValueSetRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
      'preserve': instance.preserve,
    };

CodeRef _$CodeRefFromJson(Map<String, dynamic> json) => CodeRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$CodeRefToJson(CodeRef instance) => <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

ConceptRef _$ConceptRefFromJson(Map<String, dynamic> json) => ConceptRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ConceptRefToJson(ConceptRef instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      'libraryName': instance.libraryName,
    };

ElmCode _$ElmCodeFromJson(Map<String, dynamic> json) => ElmCode(
      code: json['code'] as String,
      display: json['display'] as String?,
      system: json['system'] == null
          ? null
          : CodeSystemRef.fromJson(json['system'] as Map<String, dynamic>),
      version: json['version'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ElmCodeToJson(ElmCode instance) => <String, dynamic>{
      'value': instance.value,
      'code': instance.code,
      'display': instance.display,
      'system': instance.system,
      'version': instance.version,
    };

Concept _$ConceptFromJson(Map<String, dynamic> json) => Concept(
      code: (json['code'] as List<dynamic>)
          .map((e) => ElmCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      display: json['display'] as String?,
    )..value = json['value'];

Map<String, dynamic> _$ConceptToJson(Concept instance) => <String, dynamic>{
      'value': instance.value,
      'code': instance.code,
      'display': instance.display,
    };

InCodeSystem _$InCodeSystemFromJson(Map<String, dynamic> json) => InCodeSystem(
      code: Expression.fromJson(json['code'] as Map<String, dynamic>),
      codesystem: json['codesystem'] == null
          ? null
          : CodeSystemRef.fromJson(json['codesystem'] as Map<String, dynamic>),
      codesystemExpression: json['codesystemExpression'] == null
          ? null
          : Expression.fromJson(
              json['codesystemExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$InCodeSystemToJson(InCodeSystem instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'code': instance.code,
      'codesystem': instance.codesystem,
      'codesystemExpression': instance.codesystemExpression,
    };

AnyInCodeSystem _$AnyInCodeSystemFromJson(Map<String, dynamic> json) =>
    AnyInCodeSystem(
      codes: Expression.fromJson(json['codes'] as Map<String, dynamic>),
      codesystem: json['codesystem'] == null
          ? null
          : CodeSystemRef.fromJson(json['codesystem'] as Map<String, dynamic>),
      codesystemExpression: json['codesystemExpression'] == null
          ? null
          : Expression.fromJson(
              json['codesystemExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AnyInCodeSystemToJson(AnyInCodeSystem instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'codes': instance.codes,
      'codesystem': instance.codesystem,
      'codesystemExpression': instance.codesystemExpression,
    };

InValueSet _$InValueSetFromJson(Map<String, dynamic> json) => InValueSet(
      code: Expression.fromJson(json['code'] as Map<String, dynamic>),
      valueset: json['valueset'] == null
          ? null
          : ValueSetRef.fromJson(json['valueset'] as Map<String, dynamic>),
      valuesetExpression: json['valuesetExpression'] == null
          ? null
          : Expression.fromJson(
              json['valuesetExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$InValueSetToJson(InValueSet instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'code': instance.code,
      'valueset': instance.valueset,
      'valuesetExpression': instance.valuesetExpression,
    };

AnyInValueSet _$AnyInValueSetFromJson(Map<String, dynamic> json) =>
    AnyInValueSet(
      codes: Expression.fromJson(json['codes'] as Map<String, dynamic>),
      valueset: json['valueset'] == null
          ? null
          : ValueSetRef.fromJson(json['valueset'] as Map<String, dynamic>),
      valuesetExpression: json['valuesetExpression'] == null
          ? null
          : Expression.fromJson(
              json['valuesetExpression'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AnyInValueSetToJson(AnyInValueSet instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'codes': instance.codes,
      'valueset': instance.valueset,
      'valuesetExpression': instance.valuesetExpression,
    };

ExpandValueSet _$ExpandValueSetFromJson(Map<String, dynamic> json) =>
    ExpandValueSet(
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExpandValueSetToJson(ExpandValueSet instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

Subsumes _$SubsumesFromJson(Map<String, dynamic> json) => Subsumes(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SubsumesToJson(Subsumes instance) => <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

SubsumedBy _$SubsumedByFromJson(Map<String, dynamic> json) => SubsumedBy(
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SubsumedByToJson(SubsumedBy instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
    };

CalculateAge _$CalculateAgeFromJson(Map<String, dynamic> json) => CalculateAge(
      precision: $enumDecode(_$ElmDateTimePrecisionEnumMap, json['precision']),
      operand: json['operand'] == null
          ? null
          : Expression.fromJson(json['operand'] as Map<String, dynamic>),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CalculateAgeToJson(CalculateAge instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision]!,
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

CalculateAgeAt _$CalculateAgeAtFromJson(Map<String, dynamic> json) =>
    CalculateAgeAt(
      precision: $enumDecode(_$ElmDateTimePrecisionEnumMap, json['precision']),
      operand: (json['operand'] as List<dynamic>)
          .map((e) => Expression.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..value = json['value']
      ..signature = (json['signature'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CalculateAgeAtToJson(CalculateAgeAt instance) =>
    <String, dynamic>{
      'value': instance.value,
      'signature': instance.signature,
      'operand': instance.operand,
      'precision': _$ElmDateTimePrecisionEnumMap[instance.precision]!,
    };
