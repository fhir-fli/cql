import '../../cql.dart';

/// The SortClause element defines the sort order for the query.
class SortClause extends Element {
  final List<SortByItem> by;

  SortClause({required this.by});

  factory SortClause.fromJson(Map<String, dynamic> json) => SortClause(
        by: List<SortByItem>.from(
            json['by'].map((x) => SortByItem.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'by': List<dynamic>.from(by.map((x) => x.toJson())),
      };
}
