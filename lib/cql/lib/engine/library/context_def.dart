import 'package:json_annotation/json_annotation.dart';

part 'context_def.g.dart';

@JsonSerializable()
class ContextDefs {
  List<ContextDef> def = <ContextDef>[];

  ContextDefs();

  factory ContextDefs.fromJson(Map<String, dynamic> json) =>
      _$ContextDefsFromJson(json);

  Map<String, dynamic> toJson() => _$ContextDefsToJson(this);
}

@JsonSerializable()
class ContextDef {
  final String name;

  ContextDef({required this.name});

  factory ContextDef.fromJson(Map<String, dynamic> json) =>
      _$ContextDefFromJson(json);

  Map<String, dynamic> toJson() => _$ContextDefToJson(this);
}
