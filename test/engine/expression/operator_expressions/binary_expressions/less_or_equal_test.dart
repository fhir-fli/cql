import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Less Or Equal Test', () {
    test('define "IntegerLessOrEqualIsTrue": 4 <= (2 + 2)', () {});
    test('define "LongLessOrEqualIsTrue": 4L <= (2L + 2L)', () {});
    test('define "DecimalLessOrEqualIsFalse": 3.5 <= (3.5 - 0.1)', () {});
    test(
        """define "QuantityLessOrEqualIsNull": 3.6 'cm2' <= 3.6 'cm'""", () {});
    test('define "NullLessOrEqualIsNull": null <= 5', () {});
  });
}
