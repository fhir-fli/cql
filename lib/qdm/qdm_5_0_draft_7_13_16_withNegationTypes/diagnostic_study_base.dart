import 'package:cql/engine/types/literal_types.dart';

class DiagnosticStudyBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? radiationDosage;
  final LiteralCode? radiationDuration;
  final LiteralCode? reason;

  DiagnosticStudyBase({
    this.authorTime,
    this.method,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
  });
}
