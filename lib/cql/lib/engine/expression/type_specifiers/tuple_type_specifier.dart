import '../../../cql.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
class TupleTypeSpecifier extends TypeSpecifier {
  /// Elements within TupleTypeSpecifier.
  List<TupleTypeSpecifierElement>? element;

  TupleTypeSpecifier({
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return TupleTypeSpecifier(
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => TupleTypeSpecifierElement.fromJson(i))
              .toList()
          : null,
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'element': element?.map((v) => v.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'TupleTypeSpecifier';
}
