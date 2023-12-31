import '../../../../../cql.dart';

/// Defines metadata associated with a specific model for use by the CQL translator.
///
/// The [ModelInfo] type encapsulates metadata enabling the model to be utilized
/// by the CQL translator. None of the information specified here is mandatory;
/// it offers convenient shorthands within the language.
class ModelInfo {
  // Optional - If identifiers should be resolved case-sensitively
  final bool? caseSensitive;

  final List<ContextInfo> contextInfo;
  final bool? contextInfoSingle;
  final List<ConversionInfo> conversionInfo;
  final bool? conversionInfoSingle;
  // Optional - Default context for CQL expressions on this model
  final String? defaultContext;

  // Required - Model name used in CQL definitions/specifiers
  final String name;

  // Optional - Deprecated: Birthdate property name on the Patient model
  final String? patientBirthDatePropertyName;

  // Optional - Deprecated: Unique name for the Patient class
  final String? patientClassIdentifier;

  // Optional - Deprecated: Patient class name within the model
  final String? patientClassName;

  // Lists for nested elements
  final List<ModelSpecifier> requiredModelInfo;

  final bool? requiredModelInfoSingle;
  // Optional - Schema location for the XSD of the data model
  final String? schemaLocation;

  // Optional - If retrieve expressions should be semantically validated
  final bool? strictRetrieveTyping;

  // Optional - Namespace qualifier for referencing model types in ELM
  final String? targetQualifier;

  // Optional - Target XML namespace of the underlying representation
  final Uri? targetUrl;

  // Optional - Target version of the underlying representation
  final String? targetVersion;

  final List<TypeInfo> typeInfo;
  final bool? typeInfoSingle;
  // Required - XML namespace associated with the model
  final Uri url;

  // Optional - Model version used in CQL using definitions
  final String? version;

  ModelInfo({
    required this.name,
    this.version,
    required this.url,
    this.targetUrl,
    this.targetVersion,
    this.schemaLocation,
    this.targetQualifier,
    this.patientClassName,
    this.patientClassIdentifier,
    this.patientBirthDatePropertyName,
    this.caseSensitive,
    this.strictRetrieveTyping,
    this.defaultContext,
    this.requiredModelInfo = const [],
    this.requiredModelInfoSingle,
    this.typeInfo = const [],
    this.typeInfoSingle,
    this.conversionInfo = const [],
    this.conversionInfoSingle,
    this.contextInfo = const [],
    this.contextInfoSingle,
  });

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    return ModelInfo(
      name: json['name'] as String? ?? '',
      version: json['version'] as String?,
      url: Uri.parse(json['url'] as String? ?? ''),
      targetUrl:
          json['targetUrl'] is! String ? null : Uri.tryParse(json['targetUrl']),
      targetVersion: json['targetVersion'] as String?,
      schemaLocation: json['schemaLocation'] as String?,
      targetQualifier: json['targetQualifier'] as String?,
      patientClassName: json['patientClassName'] as String?,
      patientClassIdentifier: json['patientClassIdentifier'] as String?,
      patientBirthDatePropertyName:
          json['patientBirthDatePropertyName'] as String?,
      caseSensitive: json['caseSensitive'] as bool?,
      strictRetrieveTyping: json['strictRetrieveTyping'] == null
          ? null
          : json['strictRetrieveTyping'] is bool
              ? json['strictRetrieveTyping'] as bool?
              : json['strictRetrieveTyping'] is String
                  ? json['strictRetrieveTyping'] == 'true'
                      ? true
                      : json['strictRetrieveTyping'] == 'false'
                          ? false
                          : null
                  : null,
      defaultContext: json['defaultContext'] as String?,
      requiredModelInfo: json['requiredModelInfo'] == null
          ? <ModelSpecifier>[]
          : json['requiredModelInfo'] is Map
              ? [ModelSpecifier.fromJson(json['requiredModelInfo'])]
              : (json['requiredModelInfo'] as List)
                  .map((e) => ModelSpecifier.fromJson(e))
                  .toList(),
      requiredModelInfoSingle: json['requiredModelInfo'] is Map
          ? true
          : json['requiredModelInfo'] is List
              ? false
              : null,
      typeInfo: json['typeInfo'] == null
          ? <TypeInfo>[]
          : json['typeInfo'] is Map
              ? [TypeInfo.fromJson(json['typeInfo'])]
              : (json['typeInfo'] as List)
                  .map((e) => TypeInfo.fromJson(e))
                  .toList(),
      typeInfoSingle: json['typeInfo'] is Map
          ? true
          : json['typeInfo'] is List
              ? false
              : null,
      conversionInfo: json['conversionInfo'] == null
          ? <ConversionInfo>[]
          : json['conversionInfo'] is Map
              ? [ConversionInfo.fromJson(json['conversionInfo'])]
              : (json['conversionInfo'] as List)
                  .map((e) => ConversionInfo.fromJson(e))
                  .toList(),
      conversionInfoSingle: json['conversionInfo'] is Map
          ? true
          : json['conversionInfo'] is List
              ? false
              : null,
      contextInfo: json['contextInfo'] == null
          ? <ContextInfo>[]
          : json['contextInfo'] is Map
              ? [ContextInfo.fromJson(json['contextInfo'])]
              : (json['contextInfo'] as List)
                  .map((e) => ContextInfo.fromJson(e))
                  .toList(),
      contextInfoSingle: json['contextInfo'] is Map
          ? true
          : json['contextInfo'] is List
              ? false
              : null,
    );
  }

  @override
  String toString() {
    return 'ModelInfo{name: $name, version: $version, url: $url, targetUrl: $targetUrl, targetVersion: $targetVersion, schemaLocation: $schemaLocation, targetQualifier: $targetQualifier, patientClassName: $patientClassName, patientClassIdentifier: $patientClassIdentifier, patientBirthDatePropertyName: $patientBirthDatePropertyName, caseSensitive: $caseSensitive, strictRetrieveTyping: $strictRetrieveTyping, defaultContext: $defaultContext, requiredModelInfo: $requiredModelInfo, typeInfo: $typeInfo, conversionInfo: $conversionInfo, contextInfo: $contextInfo}';
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name};
    json['url'] = url.toString();
    if (targetUrl != null) {
      json['targetUrl'] = targetUrl.toString();
    }
    if (targetVersion != null) {
      json['targetVersion'] = targetVersion!;
    }
    if (schemaLocation != null) {
      json['schemaLocation'] = schemaLocation!;
    }
    if (targetQualifier != null) {
      json['targetQualifier'] = targetQualifier!;
    }
    if (patientClassName != null) {
      json['patientClassName'] = patientClassName!;
    }
    if (patientClassIdentifier != null) {
      json['patientClassIdentifier'] = patientClassIdentifier!;
    }
    if (patientBirthDatePropertyName != null) {
      json['patientBirthDatePropertyName'] = patientBirthDatePropertyName!;
    }
    if (version != null) {
      json['version'] = version!;
    }
    if (caseSensitive != null) {
      json['caseSensitive'] = caseSensitive!;
    }
    if (strictRetrieveTyping != null) {
      json['strictRetrieveTyping'] = strictRetrieveTyping!;
    }
    if (defaultContext != null) {
      json['defaultContext'] = defaultContext!;
    }
    if (requiredModelInfo.isNotEmpty) {
      if (requiredModelInfoSingle == true) {
        json['requiredModelInfo'] = requiredModelInfo.first.toJson();
      } else {
        json['requiredModelInfo'] =
            requiredModelInfo.map((e) => e.toJson()).toList();
      }
    }
    if (typeInfo.isNotEmpty) {
      if (typeInfoSingle == true) {
        json['typeInfo'] = typeInfo.first.toJson();
      } else {
        json['typeInfo'] = typeInfo.map((e) => e.toJson()).toList();
      }
    }
    if (conversionInfo.isNotEmpty) {
      if (conversionInfoSingle == true) {
        json['conversionInfo'] = conversionInfo.first.toJson();
      } else {
        json['conversionInfo'] = conversionInfo.map((e) => e.toJson()).toList();
      }
    }
    if (contextInfo.isNotEmpty) {
      if (contextInfoSingle == true) {
        json['contextInfo'] = contextInfo.first.toJson();
      } else {
        json['contextInfo'] = contextInfo.map((e) => e.toJson()).toList();
      }
    }
    return json;
  }
}
