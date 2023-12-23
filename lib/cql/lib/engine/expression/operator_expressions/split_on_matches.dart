import '../../../cql.dart';

/// Operator to split a string into a list of strings using matches of a regex pattern.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator pattern,
/// the result is a list of strings containing one element that is the input value of the stringToSplit argument.
class SplitOnMatches extends OperatorExpression {
  final Expression separatorPattern;
  final Expression stringToSplit;

  SplitOnMatches(this.stringToSplit, this.separatorPattern);

  factory SplitOnMatches.fromJson(Map<String, dynamic> json) => SplitOnMatches(
        Expression.fromJson(json['stringToSplit']),
        Expression.fromJson(json['separatorPattern']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'stringToSplit': stringToSplit.toJson(),
        'separatorPattern': separatorPattern.toJson(),
      };
}
