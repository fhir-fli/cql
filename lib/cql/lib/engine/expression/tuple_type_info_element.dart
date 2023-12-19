import '../../cql.dart';

/// Models an element within [TupleTypeInfo].
///
/// The [TupleTypeInfoElement] defines an element within the TupleTypeInfo,
/// indicating its type and associated attributes.
class TupleTypeInfoElement {
  /// Deprecated element.
  TypeSpecifier? typeSpecifier;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  /// Name of the element.
  String name;

  /// Deprecated attribute.
  String? type;

  /// Element type as a string.
  String? elementType;

  /// Specifies whether the element is prohibited.
  bool? prohibited;

  /// Indicates if the starting index for a list-valued element is one.
  bool? oneBased;

  TupleTypeInfoElement({
    required this.name,
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
  });

  factory TupleTypeInfoElement.fromJson(Map<String, dynamic> json) {
    return TupleTypeInfoElement(
      name: json['name'] as String,
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['typeSpecifier'])
          : null,
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
          : null,
      type: json['type'] as String?,
      elementType: json['elementType'] as String?,
      prohibited: json['prohibited'] as bool?,
      oneBased: json['oneBased'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (typeSpecifier != null) {
      data['typeSpecifier'] = typeSpecifier!.toJson();
    }
    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    if (type != null) {
      data['type'] = type;
    }
    if (elementType != null) {
      data['elementType'] = elementType;
    }
    if (prohibited != null) {
      data['prohibited'] = prohibited;
    }
    if (oneBased != null) {
      data['oneBased'] = oneBased;
    }
    return data;
  }
}
