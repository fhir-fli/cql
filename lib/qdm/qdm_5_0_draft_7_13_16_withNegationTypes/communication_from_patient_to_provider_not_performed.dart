import 'package:cql/engine/types/literal_types.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must not have been
/// performed from a patient to a provider.

class CommunicationFromPatientToProviderNotPerformed {
  final LiteralCode? negationRationale;

  CommunicationFromPatientToProviderNotPerformed({
    this.negationRationale,
  });
}
