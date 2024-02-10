import 'package:cql/engine/types/types.dart';

class Id {
  final LiteralString? namingSystem;
  final LiteralString value;

  Id({
    this.namingSystem,
    required this.value,
  });
}
