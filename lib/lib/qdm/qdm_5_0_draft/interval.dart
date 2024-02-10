import 'package:cql/engine/types/types.dart';

/// This attribute type is new to QDM 5.0.

class Interval {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  Interval({
    this.startDatetime,
    this.stopDatetime,
  });
}
