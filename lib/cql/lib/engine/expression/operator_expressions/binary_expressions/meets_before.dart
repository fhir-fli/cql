import '../../../../cql.dart';

/// Operator to determine if the first interval ends immediately before the second interval starts.
/// Returns true if End(i1) = Predecessor(Start(i2)).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class MeetsBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  MeetsBefore({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MeetsBefore.fromJson(Map<String, dynamic> json) => MeetsBefore(
        precision: json['precision'] == null
            ? null
            : DateTimePrecisionExtension.fromJson(json['precision']),
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (precision != null) 'precision': precision!.toJson(),
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'MeetsBefore';
}
