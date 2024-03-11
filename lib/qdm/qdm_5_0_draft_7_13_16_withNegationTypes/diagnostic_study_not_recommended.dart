import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the diagnostic study indicated by the QDM category and its corresponding value
/// set is not recommended.

class DiagnosticStudyNotRecommended {
  final LiteralCode? negationRationale;

  DiagnosticStudyNotRecommended({
    this.negationRationale,
  });
}
