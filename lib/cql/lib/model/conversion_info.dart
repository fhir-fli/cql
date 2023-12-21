import '../cql.dart';

/// Contains information regarding data conversions.
///
/// The [ConversionInfo] type includes specifications for data conversions,
/// such as source and target types, and the conversion function name.
class ConversionInfo {
  // Required attribute - Name of the function for conversion
  final String functionName;

  // Optional element - Type specifier for the source type
  final TypeSpecifier? fromTypeSpecifier;

  // Optional element - Type specifier for the target type
  final TypeSpecifier? toTypeSpecifier;

  // Optional attribute - Source type as string
  final String? fromType;

  // Optional attribute - Target type as string
  final String? toType;

  ConversionInfo({
    required this.functionName,
    this.fromTypeSpecifier,
    this.toTypeSpecifier,
    this.fromType,
    this.toType,
  });

  factory ConversionInfo.fromJson(Map<String, dynamic> json) {
    print('conversion info from json');
    return ConversionInfo(
      functionName: json['functionName'],
      fromTypeSpecifier: json['fromTypeSpecifier'],
      toTypeSpecifier: json['toTypeSpecifier'],
      fromType: json['fromType'],
      toType: json['toType'],
    );
  }

  Map<String, dynamic> toJson() => {
        'functionName': functionName,
        'fromTypeSpecifier': fromTypeSpecifier,
        'toTypeSpecifier': toTypeSpecifier,
        'fromType': fromType,
        'toType': toType,
      };

  @override
  String toString() {
    return 'ConversionInfo{functionName: $functionName, fromTypeSpecifier: $fromTypeSpecifier, toTypeSpecifier: $toTypeSpecifier, fromType: $fromType, toType: $toType}';
  }
}
