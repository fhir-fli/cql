import 'package:cql/runtime/context.dart';
import 'package:test/test.dart';

void validateQuantity(
    dynamic object, dynamic expectedValue, dynamic expectedUnit) {
  expect(object.isQuantity, true);
  expect(object.value, equals(expectedValue));
  expect(object.unit, equals(expectedUnit));
}

void main() {
  late Context ctx;

  setUp(() {
    ctx = setup(data);
  });

  group('Count', () {
    test('should be able to count lists without nulls', () async {
      expect(await this.not_null.exec(ctx), equals(5));
    });

    test('should be able to count lists with nulls', () async {
      expect(await this.has_null.exec(ctx), equals(2));
    });

    test('should be able to count empty list', () async {
      expect(await this.empty.exec(ctx), equals(0));
    });

    test('should be able to count null list', () async {
      expect(await this.is_null.exec(ctx), equals(0));
    });
  });

  group('Sum', () {
    setUp(() {
      ctx = setup(data);
    });

    test('should be able to sum lists without nulls', () async {
      expect(await this.not_null.exec(ctx), equals(15));
    });

    test('should be able to sum lists with nulls', () async {
      expect(await this.has_null.exec(ctx), equals(3));
    });

    test('should be able to sum empty list', () async {
      expect(await this.empty.exec(ctx), isNull);
    });

    test('should be able to sum quantity lists without nulls', () async {
      final q = await this.not_null_q.exec(ctx);
      validateQuantity(q, 15, 'ml');
    });

    test('should be able to sum quantity lists with nulls', () async {
      validateQuantity(await this.has_null_q.exec(ctx), 3, 'ml');
    });

    test('should return null for unmatched units in a list of quantities',
        () async {
      expect(await this.unmatched_units_q.exec(ctx), isNull);
    });

    test('should be able to sum quantity lists with related units', () async {
      final q = await this.q_diff_units.exec(ctx);
      validateQuantity(q, 15, 'ml');
    });

    test('should be null if some are numbers and some are quantities',
        () async {
      expect(await this.numbersAndQuantities.exec(ctx), isNull);
    });

    test('should be null if quantity units are not compatible', () async {
      expect(await this.incompatibleUnitsNull.exec(ctx), isNull);
    });
  });

  group('Min', () {
    setUp(() {
      ctx = setup(data);
    });

    test('should be able to find min in lists without nulls', () async {
      expect(await this.not_null.exec(ctx), equals(0));
    });

    test('should be able to find min in lists with nulls', () async {
      expect(await this.has_null.exec(ctx), equals(-1));
    });

    test('should return null for empty list', () async {
      expect(await this.empty.exec(ctx), isNull);
    });

    test('should be able to find min in lists of quantities without nulls',
        () async {
      validateQuantity(await this.not_null_q.exec(ctx), 0, 'ml');
    });

    test('should be able to find min in lists of quantities with nulls',
        () async {
      validateQuantity(await this.has_null_q.exec(ctx), -1, 'ml');
    });

    test('should be able to find min in lists of quantities with related units',
        () async {
      validateQuantity(await this.q_diff_units.exec(ctx), 0, 'ml');
    });

    test('list of Integers', () async {
      expect(await this.integerMin.exec(ctx), equals(2));
    });

    test('list of Decimals', () async {
      expect(await this.decimalMin.exec(ctx), equals(-5));
    });
  });
}
