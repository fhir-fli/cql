import '../../cql.dart';

/// Contains information regarding data conversions.
///
/// The [ConversionInfo] type includes specifications for data conversions,
/// such as source and target types, and the conversion function name.
class ConversionInfo {
  /// Source type specifier.
  TypeSpecifier? fromTypeSpecifier;

  /// Target type specifier.
  TypeSpecifier? toTypeSpecifier;

  /// Name of the conversion function.
  String functionName;

  /// Source type as a string.
  String? fromType;

  /// Target type as a string.
  String? toType;

  ConversionInfo({
    required this.functionName,
    this.fromTypeSpecifier,
    this.toTypeSpecifier,
    this.fromType,
    this.toType,
  });

  factory ConversionInfo.fromJson(Map<String, dynamic> json) {
    return ConversionInfo(
      functionName: json['functionName'] as String,
      fromTypeSpecifier: json['fromTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['fromTypeSpecifier'])
          : null,
      toTypeSpecifier: json['toTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['toTypeSpecifier'])
          : null,
      fromType: json['fromType'] as String?,
      toType: json['toType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['functionName'] = functionName;
    if (fromTypeSpecifier != null) {
      data['fromTypeSpecifier'] = fromTypeSpecifier!.toJson();
    }
    if (toTypeSpecifier != null) {
      data['toTypeSpecifier'] = toTypeSpecifier!.toJson();
    }
    if (fromType != null) {
      data['fromType'] = fromType;
    }
    if (toType != null) {
      data['toType'] = toType;
    }
    return data;
  }
}
