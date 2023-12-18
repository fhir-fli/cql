import 'package:cql/engine/types/types.dart';

class LaboratoryTestBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;
  final LiteralCode? method;

  LaboratoryTestBase({
    this.authorTime,
    this.reason,
    this.method,
  });
}
