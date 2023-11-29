// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elm_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElmQuantityImpl _$$ElmQuantityImplFromJson(Map<String, dynamic> json) =>
    _$ElmQuantityImpl(
      value: json['value'] == null ? null : FhirDecimal.fromJson(json['value']),
      unit: json['unit'] as String?,
      system: json['system'] == null ? null : FhirUri.fromJson(json['system']),
      code: json['code'] == null ? null : FhirCode.fromJson(json['code']),
    );

Map<String, dynamic> _$$ElmQuantityImplToJson(_$ElmQuantityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
      'system': instance.system,
      'code': instance.code,
    };
