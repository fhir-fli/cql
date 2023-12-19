import '../../cql.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
class TupleTypeSpecifier extends TypeSpecifier {
  /// Elements within TupleTypeSpecifier.
  List<TupleTypeSpecifierElement>? element;

  @override
  String type = 'TupleType';

  TupleTypeSpecifier({
    this.element,
  });

  factory TupleTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return TupleTypeSpecifier(
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => TupleTypeSpecifierElement.fromJson(i))
              .toList()
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'element': element?.map((v) => v.toJson()).toList(),
      };
}
