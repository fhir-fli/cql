import 'package:cql/engine/types/types.dart';

import 'qdm_5_4.dart';

class QDMBaseType {
  final Id id;
  final LiteralCode code;
  final Id patientId;
  final Id? reporter;
  final Id? recorder;

  QDMBaseType({
required this.id,
required this.code,
required this.patientId,
 this.reporter,
 this.recorder,
  });
}
