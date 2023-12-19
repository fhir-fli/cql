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
  final Expression source;
  final Expression? condition;
  final Expression? code;
  final Expression? severity;
  final Expression? message;

  Message(this.source,
      {this.condition, this.code, this.severity, this.message});

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        json['source']!,
        condition: json['condition'],
        code: json['code'],
        severity: json['severity'],
        message: json['message'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source.toJson(),
        'condition': condition?.toJson(),
        'code': code?.toJson(),
        'severity': severity?.toJson(),
        'message': message?.toJson(),
      };
}
