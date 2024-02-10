import 'package:uuid/uuid.dart';

import '../../cql.dart';

class Trackable {
  DataType? resultType;
  final List<TrackBack> trackbacks = [];
  final String trackerId;

  Trackable() : trackerId = Uuid().v4();

  String getTrackerId() {
    return trackerId;
  }

  List<TrackBack> getTrackbacks() {
    return trackbacks;
  }

  DataType? getResultType() {
    return resultType;
  }

  void setResultType(DataType? resultType) {
    this.resultType = resultType;
  }

  Trackable withResultType(DataType? resultType) {
    setResultType(resultType);
    return this;
  }
}
