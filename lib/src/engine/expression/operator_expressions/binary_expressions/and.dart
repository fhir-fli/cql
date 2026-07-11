import 'package:cql/src/internal.dart';

/// And operator returning the logical conjunction of its arguments.
/// Signature:
///
/// and (left Boolean, right Boolean) Boolean
/// Description:
///
/// The and operator returns true if both its arguments are true. If either
/// argument is false, the result is false. Otherwise, the result is null.
///
/// The following table defines the truth table for this operator:
///
/// The truth table for the And operator
///        TRUE    FALSE    NULL
///
/// TRUE   TRUE    FALSE    NULL
///
/// FALSE  FALSE   FALSE    FALSE
///
/// NULL   NULL    FALSE    NULL
///
///
/// Example:
///
/// The following examples illustrate the behavior of the and operator:
///
/// define "IsTrue": true and true
/// define "IsFalse": true and false
/// define "IsAlsoFalse": false and null
/// define "IsNull": true and null
/// Note that CQL does not prescribe short-circuit evaluation of logical
/// operators.
class And extends BinaryExpression {
  And({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory And.fromJson(Map<String, dynamic> json) => And(
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (x) => CqlExpression.fromJson(x as Map<String, dynamic>),
          ),
        ),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'And';

  @override
  String toString() => 'And(operand: $operand)';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    /// Assuming operand is accessible and contains the operands
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return and(left, right);
  }

  static CqlBoolean? and(dynamic left, dynamic right) {
    /// Both operands are non-null and true
    if (left is CqlBoolean && right is CqlBoolean) {
      return CqlBoolean(left.valueBoolean! && right.valueBoolean!);
    }

    /// Either operand is false
    /// One operand is null and the other is false
    /// (handled above as "either operand is false")
    if ((left is CqlBoolean && left.valueBoolean == false) ||
        (right is CqlBoolean && right.valueBoolean == false)) {
      return CqlBoolean(false);
    }

    /// Both operands are null
    if (left == null && right == null) {
      return null;
    }

    /// One operand is null and the other is true
    if ((left == null &&
            right is CqlBoolean &&
            (right.valueBoolean ?? false)) ||
        (right == null && left is CqlBoolean && (left.valueBoolean ?? false))) {
      return null;
    }

    /// Default return null if not covered above, though all cases
    /// should be covered
    return null;
  }
}
