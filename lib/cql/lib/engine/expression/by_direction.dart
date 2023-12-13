import '../../cql.dart';

/// The ByDirection element specifies that the sort should be performed using the given direction.
/// This approach is used when the result of the query is a list of non-tuple elements and only the sort direction needs to be specified.
class ByDirection extends SortByItem {
  ByDirection({required super.direction});

  factory ByDirection.fromJson(Map<String, dynamic> json) => ByDirection(
        direction: SortDirectionExtension.fromJson(json['direction']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'direction': direction.toJson(),
      };
}
