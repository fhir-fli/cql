import 'package:cql/src/internal.dart';

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
        operand:
            CqlExpression.fromJson(json['operand']! as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>)
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
  List<String> getReturnTypes(CqlLibrary library) => const ['Integer'];

  @override
  Future<CqlInteger?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) {
      return null;
    } else if (value is CqlInteger) {
      return value;
    } else if (value is CqlLong) {
      return CqlInteger.tryParse(value.valueBigInt);
    } else if (value is CqlDecimal) {
      return CqlInteger(value.valueNum!.ceil());
    } else {
      throw ArgumentError(
        'Truncate operator can only be used with Decimal or Integer',
      );
    }
  }
}
