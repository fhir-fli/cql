import 'package:cql/engine/types/types.dart';

class PhysicalExamBase {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? reason;

  PhysicalExamBase({
    this.anatomicalLocationSite,
    this.method,
    this.reason,
  });
}
