import '../../../../cql.dart';

/// Operator to construct a time value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, minute may be null, but if it is, second, and millisecond must all be null as well.
class TimeExpression extends OperatorExpression {
  final Expression hour;
  final Expression? millisecond;
  final Expression? minute;
  final Expression? second;

  TimeExpression({
    required this.hour,
    this.minute,
    this.second,
    this.millisecond,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimeExpression.fromJson(Map<String, dynamic> json) => TimeExpression(
        hour: Expression.fromJson(json['hour']),
        minute:
            json['minute'] == null ? null : Expression.fromJson(json['minute']),
        second:
            json['second'] == null ? null : Expression.fromJson(json['second']),
        millisecond: json['millisecond'] == null
            ? null
            : Expression.fromJson(json['millisecond']),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'hour': hour.toJson(),
    };

    if (minute != null) {
      data['minute'] = minute!.toJson();
    }

    if (second != null) {
      data['second'] = second!.toJson();
    }

    if (millisecond != null) {
      data['millisecond'] = millisecond!.toJson();
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
  String get type => 'TimeExpression';
}
