import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// setting, indicated by the QDM category
/// and its corresponding value
/// set, from which a patient is received
/// (e.g., home, acute care
/// hospital, skilled nursing) to the current
/// location.
///

class TransferFrom {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;

  TransferFrom({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}