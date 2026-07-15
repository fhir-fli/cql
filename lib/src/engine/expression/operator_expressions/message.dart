import 'package:cql/src/internal.dart';

/// The Message operator is used to support errors, warnings, messages, and
/// tracing in an ELM evaluation environment.
/// The operator is defined to return the input source.
/// If the severity is Error, the operator is expected to raise a run-time
/// error and return the message to the calling environment. This is the only
/// severity that stops processing. All other severities continue evaluation of
/// the expression.
/// If the severity is Trace, the operator is expected to make the message
/// available to a tracing mechanism such as a debug log in the calling
/// environment.

/// If the severity is Warning, the operator is expected to provide the message
/// as a warning to the calling environment.
/// If the severity is Message, the operator is expected to provide the message
/// as information to the calling environment.
class Message extends OperatorExpression {
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
        source: CqlExpression.fromJson(json['source']! as Map<String, dynamic>),
        condition: json['condition'] == null
            ? null
            : CqlExpression.fromJson(json['condition'] as Map<String, dynamic>),
        code: json['code'] == null
            ? null
            : CqlExpression.fromJson(json['code'] as Map<String, dynamic>),
        severity: json['severity'] == null
            ? null
            : CqlExpression.fromJson(json['severity'] as Map<String, dynamic>),
        message: json['message'] == null
            ? null
            : CqlExpression.fromJson(json['message'] as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlExpression source;
  final CqlExpression? code;
  final CqlExpression? condition;
  final CqlExpression? message;
  final CqlExpression? severity;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (condition != null) {
      data['condition'] = condition!.toJson();
    }

    if (code != null) {
      data['code'] = code!.toJson();
    }

    if (severity != null) {
      data['severity'] = severity!.toJson();
    }

    if (message != null) {
      data['message'] = message!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Message';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async =>
      source.execute(context);
}
