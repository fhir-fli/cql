import 'package:cql/cql.dart';

class DeviceBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  DeviceBase({
    this.authorTime,
    this.reason,
  });
}
