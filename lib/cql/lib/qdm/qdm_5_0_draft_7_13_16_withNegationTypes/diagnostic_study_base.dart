import 'package:cql/engine/types/types.dart';

class DiagnosticStudyBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;
  final LiteralCode? radiationDosage;
  final LiteralCode? radiationDuration;

  DiagnosticStudyBase({
    this.authorTime,
    this.method,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
  });
}
