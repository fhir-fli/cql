import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// not ordered.

class SubstanceNotOrdered {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  SubstanceNotOrdered({
    this.authorTime,
    this.negationRationale,
  });
}
