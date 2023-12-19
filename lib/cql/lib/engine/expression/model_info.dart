import '../../cql.dart';

/// Defines metadata associated with a specific model for use by the CQL translator.
///
/// The [ModelInfo] type encapsulates metadata enabling the model to be utilized
/// by the CQL translator. None of the information specified here is mandatory;
/// it offers convenient shorthands within the language.
class ModelInfo {
  /// Specifies the name of the data model.
  String name;

  /// Specifies the version of the data model.
  String? version;

  /// Specifies the XML namespace associated with the model.
  Uri url;

  /// Used by the CQL translator to output the schemaLocation.
  String? schemaLocation;

  /// Specifies the namespace qualifier for referencing types.
  QName? targetQualifier;

  /// DEPRECATED: Specifies the name of the Patient class.
  String? patientClassName;

  /// DEPRECATED: Unique name for the Patient class.
  String? patientClassIdentifier;

  /// DEPRECATED: Specifies the birthdate property.
  String? patientBirthDatePropertyName;

  /// Indicates if identifiers should be resolved case-sensitively.
  bool? caseSensitive;

  /// Indicates semantic validation for retrieve expressions.
  bool? strictRetrieveTyping;

  /// Specifies the default context for CQL expressions.
  String? defaultContext;

  ModelInfo({
    required this.name,
    required this.url,
    this.version,
    this.schemaLocation,
    this.targetQualifier,
    this.patientClassName,
    this.patientClassIdentifier,
    this.patientBirthDatePropertyName,
    this.caseSensitive,
    this.strictRetrieveTyping,
    this.defaultContext,
  });

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    return ModelInfo(
      name: json['name'] as String,
      version: json['version'] as String?,
      url: Uri.parse(json['url'] as String),
      schemaLocation: json['schemaLocation'] as String?,
      targetQualifier: json['targetQualifier'] != null
          ? QName.fromJson(json['targetQualifier'])
          : null,
      patientClassName: json['patientClassName'] as String?,
      patientClassIdentifier: json['patientClassIdentifier'] as String?,
      patientBirthDatePropertyName:
          json['patientBirthDatePropertyName'] as String?,
      caseSensitive: json['caseSensitive'] as bool?,
      strictRetrieveTyping: json['strictRetrieveTyping'] as bool?,
      defaultContext: json['defaultContext'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (version != null) {
      data['version'] = version;
    }
    data['url'] = url.toString();
    if (schemaLocation != null) {
      data['schemaLocation'] = schemaLocation;
    }
    if (targetQualifier != null) {
      data['targetQualifier'] = targetQualifier!.toJson();
    }
    if (patientClassName != null) {
      data['patientClassName'] = patientClassName;
    }
    if (patientClassIdentifier != null) {
      data['patientClassIdentifier'] = patientClassIdentifier;
    }
    if (patientBirthDatePropertyName != null) {
      data['patientBirthDatePropertyName'] = patientBirthDatePropertyName;
    }
    if (caseSensitive != null) {
      data['caseSensitive'] = caseSensitive;
    }
    if (strictRetrieveTyping != null) {
      data['strictRetrieveTyping'] = strictRetrieveTyping;
    }
    if (defaultContext != null) {
      data['defaultContext'] = defaultContext;
    }
    return data;
  }
}
