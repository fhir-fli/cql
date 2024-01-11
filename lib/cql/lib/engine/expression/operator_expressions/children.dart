import '../../../cql.dart';

/// For structured types, the Children operator returns a list of all the values of the elements of the type.
/// For list types, the result is the same as invoking Children on each element in the list and flattening the resulting lists into a single result.
class Children extends OperatorExpression {
  final Expression source;

  Children({
    required this.source,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Children.fromJson(Map<String, dynamic> json) => Children(
        source: Expression.fromJson(json['source']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'source': source.toJson(),
      };

  @override
  String get type => 'Children';
}
