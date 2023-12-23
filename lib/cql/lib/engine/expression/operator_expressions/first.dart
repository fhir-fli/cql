import '../../../cql.dart';

/// First operator returns the first element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the first element.
/// If the argument is null, the result is null.
class First extends OperatorExpression {
  final String orderBy;
  final Expression source;

  First({
    required this.source,
    required this.orderBy,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
        source: json['source']!,
        orderBy: json['orderBy']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source.toJson(),
        'orderBy': orderBy,
      };
}
