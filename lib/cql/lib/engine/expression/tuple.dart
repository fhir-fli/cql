import '../../cql.dart';

/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends Expression {
  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  Tuple({
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Tuple.fromJson(Map<String, dynamic> json) => Tuple(
        element: json['element'] != null
            ? (json['element'] as List)
                .map((e) => TupleElement.fromJson(e))
                .toList()
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'type': type};
    if (element != null) {
      json['element'] = element!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String get type => 'Tuple';
}
