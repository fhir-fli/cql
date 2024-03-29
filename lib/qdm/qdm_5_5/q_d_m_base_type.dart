import 'package:cql/engine/types/literal_types.dart';

class QDMBaseType {
  final LiteralCode code;
  final LiteralString id;
  final LiteralString patientId;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
  });
}
