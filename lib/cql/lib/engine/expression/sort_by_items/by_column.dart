import '../../../cql.dart';

/// The ByColumn element specifies that the sort should be performed using the given column and direction.
/// This approach is used to specify the sort order for a query when the result is a list of tuples.
class ByColumn extends SortByItem {
  final String path;

  ByColumn({
    required super.direction,
    required this.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ByColumn.fromJson(Map<String, dynamic> json) => ByColumn(
        direction: SortDirectionExtension.fromJson(json['direction']),
        path: json['path'],
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'direction': direction.toJson(),
        'path': path,
      };

  @override
  String get type => 'ByColumn';
}
