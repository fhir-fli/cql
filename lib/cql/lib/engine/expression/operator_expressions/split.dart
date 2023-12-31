import '../../../cql.dart';

/// Operator to split a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator,
/// the result is a list of strings containing one element that is the value of the stringToSplit argument.
class Split extends OperatorExpression {
  final Expression? separator;
  final Expression stringToSplit;

  Split(this.stringToSplit, [this.separator]);

  factory Split.fromJson(Map<String, dynamic> json) => Split(
        Expression.fromJson(json['stringToSplit']),
        json['separator'] != null
            ? Expression.fromJson(json['separator'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'stringToSplit': stringToSplit.toJson(),
        if (separator != null) 'separator': separator!.toJson(),
      };

  @override
  String get type => 'Split';
}
