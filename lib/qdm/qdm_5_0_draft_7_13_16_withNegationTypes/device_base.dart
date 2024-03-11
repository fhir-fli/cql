import 'package:cql/engine/types/literal_types.dart';

class DeviceBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  DeviceBase({
    this.authorTime,
    this.reason,
  });
}
