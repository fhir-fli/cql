import 'package:fhir/r4.dart';

import '../cql.dart';

class Interval extends Expression {
  Object? low;
  Object? high;

  Expression? lowClosedExpression;
  Expression? highClosedExpression;

  bool lowClosed;
  bool highClosed;

  Object? defaultPointType;

  Interval({
    this.low,
    this.lowClosedExpression,
    this.high,
    this.highClosedExpression,
    this.lowClosed = true,
    this.highClosed = true,
    this.defaultPointType,
  });

  bool get isInterval => true;

  String? get pointType {
    var pointType = null;
    final point = low != null ? low : high;
    if (point != null) {
      if (point is num) {
        pointType = point is int
            ? '{urn:hl7-org:elm-types:r1}Integer'
            : '{urn:hl7-org:elm-types:r1}Decimal';
      } else if (point is FhirTime) {
        pointType = '{urn:hl7-org:elm-types:r1}Time';
      } else if (point is FhirDate) {
        pointType = '{urn:hl7-org:elm-types:r1}Date';
      } else if (point is FhirDateTime) {
        pointType = '{urn:hl7-org:elm-types:r1}DateTime';
      } else if (point is Quantity) {
        pointType = '{urn:hl7-org:elm-types:r1}Quantity';
      }
    }
    if (pointType == null && this.defaultPointType != null) {
      pointType = this.defaultPointType;
    }
    return pointType;
  }
}

// IntegerInterval type
class IntegerInterval extends Interval {
  final FhirInteger? low;
  final FhirInteger? high;

  IntegerInterval({this.low, this.high});
}

// DecimalInterval type
class DecimalInterval extends Interval {
  final FhirDecimal? low;
  final FhirDecimal? high;

  DecimalInterval({this.low, this.high});
}

class QuantityInterval extends Interval {
  final ElmQuantity? low;
  final ElmQuantity? high;

  QuantityInterval({this.low, this.high});

  factory QuantityInterval.fromJson(Map<String, dynamic> json) =>
      QuantityInterval(
          low: ElmQuantity.fromJson(json['low']),
          high: ElmQuantity.fromJson(json['low']));

  Map<String, dynamic> toJson() {
    {
      final val = <String, dynamic>{};
      void writeNotNull(String key, dynamic value) {
        if (value != null) {
          val[key] = value;
        }
      }

      writeNotNull('low', low?.toJson());
      writeNotNull('high', high?.toJson());
      return val;
    }
  }
}

// DateInterval type

class DateInterval extends Interval {
  final FhirDate? low;
  final FhirDate? high;

  DateInterval({this.low, this.high});
}

// DateTimeInterval type
class DateTimeInterval extends Interval {
  final FhirDateTime? low;
  final FhirDateTime? high;

  DateTimeInterval({this.low, this.high});
}

// TimeInterval type

class TimeInterval extends Interval {
  final FhirTime? low;
  final FhirTime? high;

  TimeInterval({this.low, this.high});
}
