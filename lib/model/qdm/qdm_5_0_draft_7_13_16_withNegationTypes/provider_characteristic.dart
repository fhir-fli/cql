import 'package:fhir_cql/fhir_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a characteristic of the provider.

class ProviderCharacteristic {
  final LiteralDateTime? authorTime;

  ProviderCharacteristic({
    this.authorTime,
  });
}
