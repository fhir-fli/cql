import '../../cql.dart';

/// The Sort operator returns a list with all the elements in source, sorted as described by the by element.
/// When the sort elements do not provide a unique ordering, the order of duplicates is unspecified.
/// If the argument is null, the result is null.
class Sort extends Expression {
  final Expression source;
  final List<SortByItem> by;

  Sort({
    required this.source,
    required this.by,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        source: Expression.fromJson(json['source']),
        by: List<SortByItem>.from(
            json['by'].map((x) => SortByItem.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source.toJson(),
        'by': List<dynamic>.from(by.map((x) => x.toJson())),
      };
}
