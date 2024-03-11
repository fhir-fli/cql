import 'package:cql/engine/types/literal_types.dart';

class ImmunizationBase {
  final LiteralDateTime? authorTime;
  final LiteralQuantity? dose;
  final LiteralCode? reason;
  final LiteralCode? route;

  ImmunizationBase({
    this.authorTime,
    this.reason,
    this.route,
    this.dose,
  });
}
