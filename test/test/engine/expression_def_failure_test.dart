import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

class _Throws extends CqlExpression {
  _Throws(this.error);
  final Object error;

  @override
  String get type => 'Throws';

  @override
  // The rule under test is the engine's treatment of an Exception against
  // an Error, so one class throws whichever it is given (a FormatException
  // and a StateError below); `Object` is the only type that holds both.
  // ignore: only_throw_errors
  Future<dynamic> execute(Map<String, dynamic> context) async => throw error;
}

/// Evaluating a library's definitions: one that fails with an Exception
/// carries the exception as its value so the rest still evaluate; one that
/// fails with an Error is a defect and stops the run.
void main() {
  test("an Exception becomes the definition's value", () async {
    final defs = ExpressionDefs()
      ..def = [
        ExpressionDef(
          name: 'Bad',
          expression: _Throws(const FormatException('x')),
        ),
        ExpressionDef(name: 'Good', expression: LiteralInteger(1)),
      ];
    final context = await defs.execute({});
    expect(context['Bad'], isA<FormatException>());
    expect(context['Good'], CqlInteger(1));
  });

  test('an Error propagates', () async {
    final defs = ExpressionDefs()
      ..def = [
        ExpressionDef(name: 'Bug', expression: _Throws(StateError('x'))),
      ];
    await expectLater(() => defs.execute({}), throwsStateError);
  });
}
