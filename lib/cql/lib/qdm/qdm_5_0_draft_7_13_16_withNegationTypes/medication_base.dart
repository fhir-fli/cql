import 'package:cql/engine/types/types.dart';

class MedicationBase {
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralCode? route;

  MedicationBase({
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
  });
}
