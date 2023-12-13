import '../../cql.dart';

/// The ByColumn element specifies that the sort should be performed using the given column and direction.
/// This approach is used to specify the sort order for a query when the result is a list of tuples.
class ByColumn extends SortByItem {
  final String path;

  ByColumn({
    required super.direction,
    required this.path,
  });

  factory ByColumn.fromJson(Map<String, dynamic> json) => ByColumn(
        direction: SortDirectionExtension.fromJson(json['direction']),
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'direction': direction.toJson(),
        'path': path,
      };
}
