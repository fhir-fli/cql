import 'package:fhir_cql/fhir_cql.dart';

class Id {
  final LiteralString? namingSystem;
  final LiteralString value;

  Id({
    this.namingSystem,
    required this.value,
  });
}
