import 'package:cql/engine/types/types.dart';

class QDMBaseType {
  final LiteralString id;
  final LiteralCode code;
  final LiteralString patientId;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
  });
}
