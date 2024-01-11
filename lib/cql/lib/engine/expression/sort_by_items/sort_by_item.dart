import '../../../cql.dart';

/// The SortByItem element specifies the direction for sorting.
abstract class SortByItem extends Element {
  final SortDirection direction;

  SortByItem({
    required this.direction,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SortByItem.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'ByColumn':
        return ByColumn.fromJson(json);
      case 'ByDirection':
        return ByDirection.fromJson(json);
      case 'ByExpression':
        return ByExpression.fromJson(json);
      default:
        throw ArgumentError('Unknown SortByItem type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'direction': direction.toJson(),
      };

  @override
  String toString() => toJson().toString();

  String get type => 'SortByItem';
}
