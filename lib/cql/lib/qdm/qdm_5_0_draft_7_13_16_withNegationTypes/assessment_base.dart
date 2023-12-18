import 'package:cql/engine/types/types.dart';



class AssessmentBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;
  final LiteralCode? method;

  AssessmentBase({
 this.authorTime,
 this.reason,
 this.method,
  });
}
