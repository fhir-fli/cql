import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// not given to the patient.

class SubstanceNotAdministered {
  final LiteralCode? negationRationale;

  SubstanceNotAdministered({
    this.negationRationale,
  });
}
