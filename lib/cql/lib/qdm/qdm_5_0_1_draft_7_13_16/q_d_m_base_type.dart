import 'package:cql/engine/types/types.dart';

class QDMBaseType {
  final LiteralCode id;
  final LiteralCode code;
  final LiteralCode patientId;
  final LiteralCode? reporter;
  final LiteralCode? recorder;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
    this.reporter,
    this.recorder,
  });
}
