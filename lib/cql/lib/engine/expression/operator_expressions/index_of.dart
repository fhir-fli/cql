import '../../../cql.dart';

/// The IndexOf operator returns the 0-based index of the given element in the given source list.
/// The operator uses equality semantics as defined in the Equal operator to determine the index.
/// If the list is empty or no element is found, the result is -1.
/// If either argument is null, the result is null.
class IndexOf extends OperatorExpression {
  final Expression element;
  final Expression source;

  IndexOf({
    required this.source,
    required this.element,
  });

  factory IndexOf.fromJson(Map<String, dynamic> json) => IndexOf(
        source: json['source']!,
        element: json['element']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source.toJson(),
        'element': element.toJson(),
      };
}
