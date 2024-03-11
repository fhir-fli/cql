import 'package:cql/engine/types/literal_types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the patient has one or more of the
/// payers indicated by the QDM
/// category and its corresponding value set.
///

class PatientCharacteristicPayer {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristicPayer({
    this.startDatetime,
    this.stopDatetime,
  });
}
