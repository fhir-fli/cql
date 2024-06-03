import 'package:antlr4/antlr4.dart';
import '../../../cql.dart';

class CqlAdditionExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlAdditionExpressionVisitor(super.library);

  @override
  CqlExpression visitAdditionExpressionTerm(AdditionExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final List<CqlExpression> operand = <CqlExpression>[];
    String? additionOperator;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is! TerminalNodeImpl) {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      } else {
        additionOperator = child.text;
      }
    }
    if (operand.length == 2) {
      if (additionOperator == '-') {
        if (operand.first is LiteralType && operand.last is LiteralNull) {
          return Subtract(operand: [
            operand.first,
            As(
                operand: operand.last,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType))
          ]);
        } else if (operand.first is LiteralNull &&
            operand.last is LiteralType) {
          return Subtract(operand: [
            As(
                operand: operand.first,
                asType:
                    QName.fromFull((operand.first as LiteralType).valueType)),
            operand.last
          ]);
        } else {
          return Subtract(operand: operand);
        }
      } else if (operand[0] is LiteralString && operand[1] is LiteralString) {
        return Concatenate(operand: operand, plus: additionOperator == '+');
      } else if (operand[0] is LiteralString && operand[1] is LiteralNull) {
        if (additionOperator == '+') {
          return Concatenate(operand: [
            operand[0],
            As(operand: operand[1], asType: QName.fromFull('String'))
          ], plus: additionOperator == '+');
        } else {
          return Concatenate(operand: [
            operand[0],
            LiteralString(''),
          ], plus: additionOperator == '+');
        }
      } else if (operand[0] is LiteralNull && operand[1] is LiteralString) {
        if (additionOperator == '+') {
          return Concatenate(operand: [
            As(operand: operand[0], asType: QName.fromFull('String')),
            operand[1]
          ], plus: additionOperator == '+');
        } else {
          return Concatenate(
              operand: [LiteralString(''), operand[1]],
              plus: additionOperator == '+');
        }
      } else {
        final left = operand.first;
        final right = operand.last;
        final return1 = left.getReturnTypes(library);
        final return2 = right.getReturnTypes(library);
        Type? returnType1;
        Type? returnType2;
        if ((return1?.isNotEmpty ?? false) && return1?.length == 1) {
          returnType1 = return1?.first;
        }
        if ((return2?.isNotEmpty ?? false) && return2?.length == 1) {
          returnType2 = return2?.first;
        }
        if (returnType1 == String && returnType2 == String) {
          return Concatenate(operand: operand, plus: additionOperator == '+');
        } else if (returnType1 == String && returnType2 == Null) {
          if (additionOperator == '+') {
            return Concatenate(operand: [
              operand[0],
              As(operand: operand[1], asType: QName.fromFull('String'))
            ], plus: additionOperator == '+');
          } else {
            return Concatenate(operand: [
              operand[0],
              LiteralString(''),
            ], plus: additionOperator == '+');
          }
        } else if (returnType1 == Null && returnType2 == String) {
          if (additionOperator == '+') {
            return Concatenate(operand: [
              As(operand: operand[0], asType: QName.fromFull('String')),
              operand[1]
            ], plus: additionOperator == '+');
          } else {
            return Concatenate(
                operand: [LiteralString(''), operand[1]],
                plus: additionOperator == '+');
          }
        }
        switch (left) {
          case LiteralInteger _:
            return right is LiteralInteger
                ? Add(operand: operand)
                : right is LiteralLong
                    ? Add(operand: [ToLong(operand: left), right])
                    : right is LiteralDecimal
                        ? Add(operand: [ToDecimal(operand: left), right])
                        : right is LiteralNull
                            ? Add(operand: [
                                left,
                                As(
                                    operand: right,
                                    asType: QName.fromFull(left.valueType))
                              ])
                            : Add(operand: operand);
          case LiteralLong _:
            return right is LiteralInteger
                ? Add(operand: [left, ToLong(operand: right)])
                : right is LiteralLong
                    ? Add(operand: operand)
                    : right is LiteralDecimal
                        ? Add(operand: [ToDecimal(operand: left), right])
                        : right is LiteralNull
                            ? Add(operand: [
                                left,
                                As(
                                    operand: right,
                                    asType: QName.fromFull(left.valueType))
                              ])
                            : Add(operand: operand);
          case LiteralDecimal _:
            return right is LiteralInteger
                ? Add(operand: [left, ToDecimal(operand: right)])
                : right is LiteralLong
                    ? Add(operand: [left, ToDecimal(operand: right)])
                    : right is LiteralNull
                        ? Add(operand: [
                            left,
                            As(
                                operand: right,
                                asType: QName.fromFull(left.valueType))
                          ])
                        : Add(operand: operand);
          case LiteralQuantity _:
            return right is LiteralDecimal
                ? Add(operand: [left, ToQuantity(operand: right)])
                : right is LiteralNull
                    ? Add(operand: [
                        left,
                        As(
                            operand: right,
                            asType: QName.fromFull(left.valueType))
                      ])
                    : Add(operand: operand);
          default:
            {
              return Add(operand: operand);
            }
        }
      }
    }
    throw ArgumentError('$thisNode Invalid AdditionExpressionTerm');
  }
}
