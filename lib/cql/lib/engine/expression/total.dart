import '../../cql.dart';

/// The Total expression returns the current value of the total aggregation accumulator in an aggregate operation.
class Total extends Expression {
  final String scope;

  Total({
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        scope: json['scope'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'scope': scope,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Total';
}
