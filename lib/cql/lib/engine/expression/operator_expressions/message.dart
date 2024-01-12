import '../../../cql.dart';

/// The Message operator is used to support errors, warnings, messages, and
/// tracing in an ELM evaluation environment.
/// The operator is defined to return the input source.
/// If the severity is Error, the operator is expected to raise a run-time
/// error and return the message to the calling environment. This is the only
/// severity that stops processing. All other severities continue evaluation of
/// the expression.
/// If the severity is Trace, the operator is expected to make the message
/// available to a tracing mechanism such as a debug log in the calling environment.

/// If the severity is Warning, the operator is expected to provide the message
/// as a warning to the calling environment.
/// If the severity is Message, the operator is expected to provide the message
/// as information to the calling environment.
class Message extends OperatorExpression {
  final Expression? code;
  final Expression? condition;
  final Expression? message;
  final Expression? severity;
  final Expression source;

  Message({
    required this.source,
    this.condition,
    this.code,
    this.severity,
    this.message,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        source: Expression.fromJson(json['source']!),
        condition: json['condition'] == null
            ? null
            : Expression.fromJson(json['condition']),
        code: json['code'] == null ? null : Expression.fromJson(json['code']),
        severity: json['severity'] == null
            ? null
            : Expression.fromJson(json['severity']),
        message: json['message'] == null
            ? null
            : Expression.fromJson(json['message']),
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
        'source': source.toJson(),
        if (condition != null) 'condition': condition!.toJson(),
        if (code != null) 'code': code!.toJson(),
        if (severity != null) 'severity': severity!.toJson(),
        if (message != null) 'message': message!.toJson(),
      };

  @override
  String get type => 'Message';
}
