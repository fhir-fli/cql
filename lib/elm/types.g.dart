// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vocabulary _$VocabularyFromJson(Map<String, dynamic> json) => Vocabulary(
      json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VocabularyToJson(Vocabulary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'name': instance.name,
    };

ElmValueSet _$ElmValueSetFromJson(Map<String, dynamic> json) => ElmValueSet(
      json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String?,
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map((e) => CodeSystem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ElmValueSetToJson(ElmValueSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'name': instance.name,
      'codeSystem': instance.codeSystem,
    };

CodeSystem _$CodeSystemFromJson(Map<String, dynamic> json) => CodeSystem(
      json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CodeSystemToJson(CodeSystem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'name': instance.name,
    };

IntegerInterval _$IntegerIntervalFromJson(Map<String, dynamic> json) =>
    IntegerInterval(
      low: json['low'] == null ? null : FhirInteger.fromJson(json['low']),
      high: json['high'] == null ? null : FhirInteger.fromJson(json['high']),
    )
      ..value = json['value']
      ..lowClosedExpression = json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>)
      ..highClosedExpression = json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>)
      ..lowClosed = json['lowClosed'] as bool
      ..highClosed = json['highClosed'] as bool;

Map<String, dynamic> _$IntegerIntervalToJson(IntegerInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lowClosedExpression': instance.lowClosedExpression,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
      'low': instance.low,
      'high': instance.high,
    };

DecimalInterval _$DecimalIntervalFromJson(Map<String, dynamic> json) =>
    DecimalInterval(
      low: json['low'] == null ? null : FhirDecimal.fromJson(json['low']),
      high: json['high'] == null ? null : FhirDecimal.fromJson(json['high']),
    )
      ..value = json['value']
      ..lowClosedExpression = json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>)
      ..highClosedExpression = json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>)
      ..lowClosed = json['lowClosed'] as bool
      ..highClosed = json['highClosed'] as bool;

Map<String, dynamic> _$DecimalIntervalToJson(DecimalInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lowClosedExpression': instance.lowClosedExpression,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
      'low': instance.low,
      'high': instance.high,
    };

DateInterval _$DateIntervalFromJson(Map<String, dynamic> json) => DateInterval(
      low: json['low'] == null ? null : FhirDate.fromJson(json['low']),
      high: json['high'] == null ? null : FhirDate.fromJson(json['high']),
    )
      ..value = json['value']
      ..lowClosedExpression = json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>)
      ..highClosedExpression = json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>)
      ..lowClosed = json['lowClosed'] as bool
      ..highClosed = json['highClosed'] as bool;

Map<String, dynamic> _$DateIntervalToJson(DateInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lowClosedExpression': instance.lowClosedExpression,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
      'low': instance.low,
      'high': instance.high,
    };

DateTimeInterval _$DateTimeIntervalFromJson(Map<String, dynamic> json) =>
    DateTimeInterval(
      low: json['low'] == null ? null : FhirDateTime.fromJson(json['low']),
      high: json['high'] == null ? null : FhirDateTime.fromJson(json['high']),
    )
      ..value = json['value']
      ..lowClosedExpression = json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>)
      ..highClosedExpression = json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>)
      ..lowClosed = json['lowClosed'] as bool
      ..highClosed = json['highClosed'] as bool;

Map<String, dynamic> _$DateTimeIntervalToJson(DateTimeInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lowClosedExpression': instance.lowClosedExpression,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
      'low': instance.low,
      'high': instance.high,
    };

TimeInterval _$TimeIntervalFromJson(Map<String, dynamic> json) => TimeInterval(
      low: json['low'] == null ? null : FhirTime.fromJson(json['low']),
      high: json['high'] == null ? null : FhirTime.fromJson(json['high']),
    )
      ..value = json['value']
      ..lowClosedExpression = json['lowClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['lowClosedExpression'] as Map<String, dynamic>)
      ..highClosedExpression = json['highClosedExpression'] == null
          ? null
          : Expression.fromJson(
              json['highClosedExpression'] as Map<String, dynamic>)
      ..lowClosed = json['lowClosed'] as bool
      ..highClosed = json['highClosed'] as bool;

Map<String, dynamic> _$TimeIntervalToJson(TimeInterval instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lowClosedExpression': instance.lowClosedExpression,
      'highClosedExpression': instance.highClosedExpression,
      'lowClosed': instance.lowClosed,
      'highClosed': instance.highClosed,
      'low': instance.low,
      'high': instance.high,
    };
