import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// An operand that evaluates once and fails the second time, for a reason
/// that is not "cannot convert". ConvertsTo* evaluates its operand itself
/// and then again through To*, so the failure lands inside the conversion,
/// where a catch-all used to turn it into false.
class _Broken extends CqlExpression {
  int calls = 0;

  @override
  String get type => 'Broken';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (calls++ == 0) return 'first evaluation succeeds';
    throw StateError('operand evaluation failed');
  }
}

/// CQL ConvertsToX: "If the input string is not formatted correctly, or
/// cannot be interpreted as a valid X value, the result is false." The ToX
/// operators answer that with null and throw nothing, so ConvertsToX is
/// `ToX != null` and absorbs no exception.
void main() {
  final bad = <String, CqlExpression Function(CqlExpression)>{
    'ConvertsToBoolean': (o) => ConvertsToBoolean(operand: o),
    'ConvertsToDate': (o) => ConvertsToDate(operand: o),
    'ConvertsToDateTime': (o) => ConvertsToDateTime(operand: o),
    'ConvertsToDecimal': (o) => ConvertsToDecimal(operand: o),
    'ConvertsToInteger': (o) => ConvertsToInteger(operand: o),
    'ConvertsToLong': (o) => ConvertsToLong(operand: o),
    'ConvertsToQuantity': (o) => ConvertsToQuantity(operand: o),
    'ConvertsToRatio': (o) => ConvertsToRatio(operand: o),
    'ConvertsToTime': (o) => ConvertsToTime(operand: o),
  };

  test('a string that is not a value of the type is false', () async {
    for (final entry in bad.entries) {
      final result =
          await entry.value(LiteralString('not a value')).execute({});
      expect(result, CqlBoolean(false), reason: entry.key);
    }
  });

  test('a string that is a value of the type is true', () async {
    expect(
      await ConvertsToDecimal(operand: LiteralString('-0.1')).execute({}),
      CqlBoolean(true),
    );
    expect(
      await ConvertsToDateTime(operand: LiteralString('2014-01-01T14:30:00.0Z'))
          .execute({}),
      CqlBoolean(true),
    );
    expect(
      await ConvertsToTime(operand: LiteralString('14:30:00.0')).execute({}),
      CqlBoolean(true),
    );
  });

  test('a null argument is null', () async {
    for (final entry in bad.entries) {
      expect(
        await entry.value(LiteralNull()).execute({}),
        isNull,
        reason: entry.key,
      );
    }
  });

  test('a failing operand is a defect that surfaces, not a false', () async {
    for (final entry in bad.entries) {
      await expectLater(
        () => entry.value(_Broken()).execute({}),
        throwsStateError,
        reason: entry.key,
      );
    }
    await expectLater(
      () => ConvertsToString(operand: _Broken()).execute({}),
      throwsStateError,
    );
  });
}
