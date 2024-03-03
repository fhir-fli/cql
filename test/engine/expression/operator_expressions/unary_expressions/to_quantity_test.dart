import 'package:cql/engine/engine.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ucum/ucum.dart';

void main() {
  group('ToQuantity', () {
    test("""define "DecimalOverload": ToQuantity(0.1) // 0.1 '1'""", () {
      final input = LiteralDecimal(value: 0.1);
      final toQuantity = ToQuantity(operand: input);
      final result =
          ValidatedQuantity(value: UcumDecimal.fromDouble(0.1), unit: '1');
      expect(toQuantity.execute({}), result);
    });
    test("""define "IntegerOverload": ToQuantity(13) // 13 '1'""", () {
      final input = LiteralInteger(value: 13);
      final toQuantity = ToQuantity(operand: input);
      final result =
          ValidatedQuantity(value: UcumDecimal.fromInt(13), unit: '1');
      expect(toQuantity.execute({}), result);
    });
    test("""define "StringOverload": ToQuantity('-0.1 'mg'') // -0.1 'mg'""",
        () {
      final input = LiteralString(value: '-0.1 \'mg\'');
      final toQuantity = ToQuantity(operand: input);
      final result =
          ValidatedQuantity(value: UcumDecimal.fromDouble(-0.1), unit: 'mg');
      expect(toQuantity.execute({}), result);
    });
    test("""define "IsNull": ToQuantity('444 'cm')""", () {
      final input = LiteralString(value: '444 \'cm');
      final toQuantity = ToQuantity(operand: input);
      final result =
          ValidatedQuantity(value: UcumDecimal.fromInt(444), unit: 'cm');
      expect(toQuantity.execute({}), result);
    });
  });
}
