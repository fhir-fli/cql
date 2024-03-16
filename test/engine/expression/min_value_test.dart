import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void minValue() {
  group('MinValue', () {
    test("""define "IntegerMinimum": minimum Integer // -2147483648""", () {
      final QName valueType = QName.fromFull('Integer');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(minValue.execute({}), equals(FhirInteger(-2147483648)));
    });
    test("""define "LongMinimum": minimum Long // -9223372036854775808""", () {
      final QName valueType = QName.fromFull('Long');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(
          minValue.execute({}), equals(FhirInteger64('-9223372036854775808')));
    });
    test(
        """define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000""",
        () {
      final QName valueType = QName.fromFull('DateTime');
      final MinValue minValue = MinValue(valueType: valueType);
      expect(minValue.execute({}),
          equals(FhirDateTime('0001-01-01T00:00:00.000')));
    });
    // TODO(Dokotela): is quantity an error?
    // test("""define "ErrorMinimum": minimum Quantity""", () {
    //   final QName valueType = QName.fromFull('Quantity');
    //   final MinValue minValue = MinValue(valueType: valueType);
    //   expect(() => minValue.execute({}), throwsA(isA<UnimplementedError>()));
    // });
  });
}
