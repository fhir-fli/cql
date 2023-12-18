import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_1_draft_7_13_16.dart';

///
/// Data elements that meet criteria using this datatype should
/// document completion of the assessment indicated by the QDM category and its corresponding value set.
///

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final Component? component;

  AssessmentPerformed({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.component,
  });
}
