import 'package:cql/engine/types/types.dart';



class InterventionBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  InterventionBase({
 this.authorTime,
 this.reason,
  });
}
