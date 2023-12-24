import '../../cql.dart';

/// Represents the CqlToElmInfo type
class CqlToElmInfo extends CqlToElmBase {
  /// translatorOptions attribute
  String translatorOptions;

  /// translatorVersion attribute
  String translatorVersion;

  CqlToElmInfo({
    this.translatorVersion = '2.11.0', //'0.0.0-dev1
    this.translatorOptions = '',
  });

  factory CqlToElmInfo.fromJson(Map<String, dynamic> json) {
    return CqlToElmInfo(
      translatorVersion: json['translatorVersion'],
      translatorOptions: json['translatorOptions'],
    );
  }

  Map<String, dynamic> toJson() => {
        'translatorVersion': translatorVersion,
        'translatorOptions': translatorOptions,
        'type': type,
      };

  String get type => 'CqlToElmInfo';
}
