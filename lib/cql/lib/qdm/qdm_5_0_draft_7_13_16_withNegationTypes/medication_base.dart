import 'package:cql/engine/types/types.dart';

class MedicationBase {
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  MedicationBase({
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
  });
}
