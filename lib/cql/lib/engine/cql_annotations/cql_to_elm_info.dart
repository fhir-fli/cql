/// Represents the CqlToElmInfo type
class CqlToElmInfo {
  /// translatorOptions attribute
  String? translatorOptions;

  /// translatorVersion attribute
  String? translatorVersion;

  CqlToElmInfo({this.translatorVersion, this.translatorOptions});

  factory CqlToElmInfo.fromJson(Map<String, dynamic> json) {
    return CqlToElmInfo(
      translatorVersion: json['translatorVersion'],
      translatorOptions: json['translatorOptions'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (translatorVersion != null) {
      data['translatorVersion'] = translatorVersion;
    }
    if (translatorOptions != null) {
      data['translatorOptions'] = translatorOptions;
    }
    return data;
  }
}
