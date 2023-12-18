import 'package:cql/engine/types/types.dart';



class Identifier {
  final LiteralString? namingSystem;
  final LiteralString value;

  Identifier({
 this.namingSystem,
required this.value,
  });
}
