import 'package:cql/engine/types/types.dart';



class ImmunizationBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralQuantity? dose;

  ImmunizationBase({
 this.authorTime,
 this.reason,
 this.route,
 this.dose,
  });
}
