import '../../cql.dart';

/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends Expression {
  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  Tuple({this.element});

  factory Tuple.fromJson(Map<String, dynamic> json) => Tuple(
        element: json['element'] != null
            ? (json['element'] as List)
                .map((e) => TupleElement.fromJson(e))
                .toList()
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (element != null) {
      json['element'] = element!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
