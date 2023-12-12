import 'package:json_annotation/json_annotation.dart';

part 'cql_to_elm_info.g.dart';

/// Represents the CqlToElmInfo type
@JsonSerializable()
class CqlToElmInfo {
  /// translatorVersion attribute
  String? translatorVersion;

  /// translatorOptions attribute
  String? translatorOptions;

  CqlToElmInfo({this.translatorVersion, this.translatorOptions});

  factory CqlToElmInfo.fromJson(Map<String, dynamic> json) =>
      _$CqlToElmInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CqlToElmInfoToJson(this);
}
