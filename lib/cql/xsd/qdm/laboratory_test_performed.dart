import 'package:cql/engine/types/types.dart';

import 'qdm.dart';

class LaboratoryTestPerformed {
  final CodeableConcept status;
  final CodeableConcept? method;
  final dynamic result;
  final CodeableConcept? resultCode;
  final LiteralQuantity? resultValue;
  final CodeableConcept? reason;

  LaboratoryTestPerformed({
required this.status,
 this.method,
required this.result,
 this.resultCode,
 this.resultValue,
 this.reason,
  });
}
