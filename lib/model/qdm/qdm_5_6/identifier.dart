import 'package:fhir_cql/fhir_cql.dart';

class Identifier {
  final LiteralString? namingSystem;
  final LiteralString value;

  Identifier({
    this.namingSystem,
    required this.value,
  });
}
