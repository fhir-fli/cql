import 'package:cql/engine/types/literal_types.dart';

/// This attribute type is new to QDM 5.0. It represents a component of a
/// panel or other compound object.

class Component {
  final LiteralCode code;
  final dynamic result;

  Component({
    required this.code,
    required this.result,
  });
}
