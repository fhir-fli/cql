import 'package:fhir/primitive_types/primitive_types.dart';

import '../../../../cql.dart';

/// Operator to return the first integer greater than or equal to the argument.
/// If the argument is null, the result is null.
/// Signature:
///
///Ceiling(argument Decimal) Integer
///Description:
///
///The Ceiling operator returns the first integer greater than or equal to the
///argument.
///
///When invoked with an Integer argument, the argument will be implicitly
///converted to Decimal.
///
///If the argument is null, the result is null.
///
///The following examples illustrate the behavior of the Ceiling operator:
///
///define "IntegerCeiling": Ceiling(1) // 1
///define "DecimalCeiling": Ceiling(1.1) // 2
///define "QuantityCeilingIsNull": Ceiling(null as Decimal)
class Ceiling extends UnaryExpression {
  Ceiling({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ceiling.fromJson(Map<String, dynamic> json) => Ceiling(
        operand: CqlExpression.fromJson(json['operand']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  String get type => 'Ceiling';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  List<Type> getReturnTypes(Library library) => const [FhirInteger];

  @override
  FhirInteger? execute(Map<String, dynamic> context) {
    final value = operand.execute(context);
    if (value == null) {
      return null;
    } else if (value is FhirInteger && value.isValid) {
      return value;
    } else if (value is FhirInteger64 && value.isValid) {
      return FhirInteger(value.value!);
    } else if (value is FhirDecimal && value.isValid) {
      return FhirInteger(value.value!.ceil());
    } else {
      throw ArgumentError(
          'Truncate operator can only be used with Decimal or Integer');
    }
  }
}
