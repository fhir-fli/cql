import '../../../cql.dart';

/// Operator to split a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the separator,
/// the result is a list of strings containing one element that is the value of the stringToSplit argument.
class Split extends OperatorExpression {
  final Expression? separator;
  final Expression stringToSplit;

  Split({
    required this.stringToSplit,
    this.separator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Split.fromJson(Map<String, dynamic> json) => Split(
        stringToSplit: Expression.fromJson(json['stringToSplit']),
        separator: json['separator'] != null
            ? Expression.fromJson(json['separator'])
            : null,
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
        'stringToSplit': stringToSplit.toJson(),
        if (separator != null) 'separator': separator!.toJson(),
      };

  @override
  String get type => 'Split';
}
