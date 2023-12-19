import '../../../cql.dart';

/// The SortByItem element specifies the direction for sorting.
abstract class SortByItem extends Element {
  final SortDirection direction;

  SortByItem({required this.direction});

  factory SortByItem.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'ByColumn':
        return ByColumn.fromJson(json);
      case 'ByExpression':
        return ByExpression.fromJson(json);
      default:
        throw ArgumentError('Unknown SortByItem type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'direction': direction.toJson(),
      };
}
