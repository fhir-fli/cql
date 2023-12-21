import '../cql.dart';

/// Defines metadata associated with a specific model for use by the CQL translator.
///
/// The [ModelInfo] type encapsulates metadata enabling the model to be utilized
/// by the CQL translator. None of the information specified here is mandatory;
/// it offers convenient shorthands within the language.
class ModelInfo {
  // Required - Model name used in CQL definitions/specifiers
  final String name;

  // Optional - Model version used in CQL using definitions
  final String? version;

  // Required - XML namespace associated with the model
  final Uri url;

  // Optional - Target XML namespace of the underlying representation
  final Uri? targetUrl;

  // Optional - Target version of the underlying representation
  final String? targetVersion;

  // Optional - Schema location for the XSD of the data model
  final String? schemaLocation;

  // Optional - Namespace qualifier for referencing model types in ELM
  final String? targetQualifier;

  // Optional - Deprecated: Patient class name within the model
  final String? patientClassName;

  // Optional - Deprecated: Unique name for the Patient class
  final String? patientClassIdentifier;

  // Optional - Deprecated: Birthdate property name on the Patient model
  final String? patientBirthDatePropertyName;

  // Optional - If identifiers should be resolved case-sensitively
  final bool? caseSensitive;

  // Optional - If retrieve expressions should be semantically validated
  final bool? strictRetrieveTyping;

  // Optional - Default context for CQL expressions on this model
  final String? defaultContext;

  // Lists for nested elements
  final List<ModelSpecifier> requiredModelInfo;
  final List<TypeInfo> typeInfo;
  final List<ConversionInfo> conversionInfo;
  final List<ContextInfo> contextInfo;

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
    this.typeInfo = const [],
    this.conversionInfo = const [],
    this.contextInfo = const [],
  });

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    return ModelInfo(
        name: json['name'] as String? ?? '',
        version: json['version'] as String?,
        url: Uri.parse(json['url'] as String? ?? ''),
        targetUrl: Uri.tryParse(json['targetUrl'] as String? ?? ''),
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
        requiredModelInfo: (json['requiredModelInfo'] as List<dynamic>?)
                ?.map((e) => ModelSpecifier.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        typeInfo: (json['typeInfo'] as List<dynamic>?)
                ?.map((e) => TypeInfo.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        conversionInfo: (json['conversionInfo'] as List<dynamic>?)
                ?.map((e) => ConversionInfo.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        contextInfo: json['contextInfo'] is List<dynamic>
            ? (json['contextInfo'] as List<dynamic>?)
                    ?.map(
                        (e) => ContextInfo.fromJson(e as Map<String, dynamic>))
                    .toList() ??
                []
            : json['contextInfo'] is Map<String, dynamic>
                ? [
                    ContextInfo.fromJson(
                        json['contextInfo'] as Map<String, dynamic>)
                  ]
                : []);
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name};
    if (version != null) {
      json['version'] = version!;
    }
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
      json['requiredModelInfo'] =
          requiredModelInfo.map((e) => e.toJson()).toList();
    }
    if (typeInfo.isNotEmpty) {
      json['typeInfo'] = typeInfo.map((e) => e.toJson()).toList();
    }
    if (conversionInfo.isNotEmpty) {
      json['conversionInfo'] = conversionInfo.map((e) => e.toJson()).toList();
    }
    if (contextInfo.isNotEmpty) {
      json['contextInfo'] = contextInfo.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'ModelInfo{name: $name, version: $version, url: $url, targetUrl: $targetUrl, targetVersion: $targetVersion, schemaLocation: $schemaLocation, targetQualifier: $targetQualifier, patientClassName: $patientClassName, patientClassIdentifier: $patientClassIdentifier, patientBirthDatePropertyName: $patientBirthDatePropertyName, caseSensitive: $caseSensitive, strictRetrieveTyping: $strictRetrieveTyping, defaultContext: $defaultContext, requiredModelInfo: $requiredModelInfo, typeInfo: $typeInfo, conversionInfo: $conversionInfo, contextInfo: $contextInfo}';
  }
}
