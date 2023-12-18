import 'package:cql/engine/types/types.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a patient to a provider.

class CommunicationFromPatientToProvider {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;

  CommunicationFromPatientToProvider({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
