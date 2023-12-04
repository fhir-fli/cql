import '../cql.dart';

class ElmDateTime extends Expression {
  Map<String, dynamic>? json;

  int? year;
  int? month;
  int? day;
  int? hour;
  int? minute;
  int? second;
  int? millisecond;
  int? timezoneOffset;

  ElmDateTime({
    this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
  });

  ElmDateTime.fromJson(Map<String, dynamic> json)
      : json = json,
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    Expression? yearExpression;
    Expression? monthExpression;
    Expression? dayExpression;
    Expression? hourExpression;
    Expression? minuteExpression;
    Expression? secondExpression;
    Expression? millisecondExpression;
    Expression? timezoneOffsetExpression;
    if (json?['year'] != null) {
      yearExpression = build(json?['year']);
    }
    if (json?['month'] != null) {
      monthExpression = build(json?['month']);
    }
    if (json?['day'] != null) {
      dayExpression = build(json?['day']);
    }
    if (json?['hour'] != null) {
      hourExpression = build(json?['hour']);
    }
    if (json?['minute'] != null) {
      minuteExpression = build(json?['minute']);
    }
    if (json?['second'] != null) {
      secondExpression = build(json?['second']);
    }
    if (json?['millisecond'] != null) {
      millisecondExpression = build(json?['millisecond']);
    }
    if (ctx.getTimezoneOffset() != null) {
      timezoneOffset = Literal.from({
        'type': 'Literal',
        'value': ctx.getTimezoneOffset(),
        'valueType': '{urn:hl7-org:elm-types:r1}Integer'
      });
      return ElmDateTime(
        year: yearExpression != null ? await yearExpression.exec(ctx) : null,
        month: monthExpression != null ? await monthExpression.exec(ctx) : null,
        day: dayExpression != null ? await dayExpression.exec(ctx) : null,
        hour: hourExpression != null ? await hourExpression.exec(ctx) : null,
        minute:
            minuteExpression != null ? await minuteExpression.exec(ctx) : null,
        second:
            secondExpression != null ? await secondExpression.exec(ctx) : null,
        millisecond: millisecondExpression != null
            ? await millisecondExpression.exec(ctx)
            : null,
        timezoneOffset: timezoneOffsetExpression != null
            ? await timezoneOffsetExpression.exec(ctx)
            : null,
      );
    }
  }
}

class ElmDate extends Expression {
  var json;

  static final List<String> PROPERTIES = ['year', 'month', 'day'];

  ElmDate(json) : super.fromJson(json) {
    this.json = json;
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    for (var property in ElmDate.PROPERTIES) {
      if (json[property] != null) {
        this[property] = build(json[property]);
      }
    }
    var args = await Future.wait(
      ElmDate.PROPERTIES
          .map((p) => this[p] != null ? this[p].execute(ctx) : null),
    );
    return DT.Date.fromParts(
      year: args[0],
      month: args[1],
      day: args[2],
    );
  }
}

class ElmTime extends Expression {
  static final List<String> PROPERTIES = [
    'hour',
    'minute',
    'second',
    'millisecond'
  ];

  ElmTime(json) : super.fromJson(json) {
    for (var property in ElmTime.PROPERTIES) {
      if (json[property] != null) {
        this[property] = build(json[property]);
      }
    }
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    var args = await Future.wait(
      ElmTime.PROPERTIES
          .map((p) => this[p] != null ? this[p].execute(ctx) : null),
    );
    return DT.DateTime.fromParts(
      year: 0,
      month: 1,
      day: 1,
      hour: args[0],
      minute: args[1],
      second: args[2],
      millisecond: args[3],
    ).getTime();
  }
}

class Today extends Expression {
  Today(json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    return ctx.getExecutionDateTime().getDate();
  }
}
