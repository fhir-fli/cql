import 'package:cql/engine/types/types.dart';

///
/// To meet criteria using this datatype, the
/// communication indicated by the Communication QDM category and its
/// corresponding value set must be communicated from one provider to
/// another.
///

class CommunicationFromProviderToProvider {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;

  CommunicationFromProviderToProvider({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
