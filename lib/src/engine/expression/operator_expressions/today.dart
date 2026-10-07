import 'package:cql/src/internal.dart';

/// Operator to return the date (with no time component) of the start timestamp
/// associated with the evaluation request.
/// Signature:
///
/// Today() Date
/// Description:
///
/// The Today operator returns the date of the start timestamp associated with
/// the evaluation request. See the Now operator for more information on the
/// rationale for defining the Today operator in this way.
class Today extends OperatorExpression {
  Today({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Today.fromJson(Map<String, dynamic> json) => Today(
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

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

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
  String get type => 'Today';

  @override
  Future<CqlDate> execute(Map<String, dynamic> context) async {
    final startTimestamp = context['startTimestamp'] as CqlDateTime;
    // CQL reference 09-b, Today: "returns the date of the start timestamp
    // associated with the evaluation request", in that timestamp's own
    // timezone offset (see Now). The components are read as written;
    // toIso8601String rendered the instant in UTC, so after 20:00 in
    // UTC-4 Today was tomorrow (Exercises02, 2026-10-06).
    return CqlDate.fromUnits(
      year: startTimestamp.year!,
      month: startTimestamp.month,
      day: startTimestamp.day,
    );
  }
}
