import '../../../cql.dart';

/// Last operator returns the last element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the last element.
/// If the argument is null, the result is null.
class Last extends OperatorExpression {
  Last({
    required this.source,
    required this.orderBy,
  });

  final Expression source;
  final String orderBy;

  factory Last.fromJson(Map<String, dynamic> json) => Last(
        source: json['source']!,
        orderBy: json['orderBy']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source.toJson(),
        'orderBy': orderBy,
      };
}