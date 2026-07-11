import 'package:cql/src/internal.dart';

/// Not operator returning the logical negation of its argument.
/// not (argument Boolean) Boolean
/// Description:
/// The not operator returns true if the argument is false and false if the
/// argument is true. Otherwise, the result is null.
/// The following table defines the truth table for this operator:
/// Signature:
///
/// not (argument Boolean) Boolean
/// Description:
///
/// The not operator returns true if the argument is false and false if the argument is true. Otherwise, the result is null.
///
/// The following table defines the truth table for this operator:
///
/// The truth table for the Not operator
///        NOT
///
/// TRUE   TRUE
///
/// FALSE  FALSE
///
/// NULL   NULL
///
/// The following examples illustrate the behavior of the not operator:
///
/// define "IsTrue": not false
/// define "IsFalse": not true
/// define "IsNull": not null
class Not extends UnaryExpression {
  Not({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Not.fromJson(Map<String, dynamic> json) => Not(
        operand:
            CqlExpression.fromJson(json['operand'] as Map<String, dynamic>),
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
  String get type => 'Not';
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
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    final operandValue = await operand.execute(context);
    if (operandValue == null) {
      return null;
    } else if (operandValue is CqlBoolean) {
      return CqlBoolean(!operandValue.valueBoolean!);
    } else if (operandValue is bool) {
      return CqlBoolean(!operandValue);
    } else {
      throw ArgumentError('Invalid argument for Not operation');
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];
}
