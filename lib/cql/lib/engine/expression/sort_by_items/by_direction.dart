import '../../../cql.dart';

/// The ByDirection element specifies that the sort should be performed using the given direction.
/// This approach is used when the result of the query is a list of non-tuple elements and only the sort direction needs to be specified.
class ByDirection extends SortByItem {
  ByDirection({
    required super.direction,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ByDirection.fromJson(Map<String, dynamic> json) => ByDirection(
        direction: SortDirectionExtension.fromJson(json['direction']),
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
      };

  @override
  String get type => 'ByDirection';
}
