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

    // Parse children and separate out operators
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

    // Ensure we have two operands for addition/subtraction
    if (operand.length == 2) {
      final CqlExpression left = operand[0];
      final CqlExpression right = operand[1];

      // Handle subtraction operator
      if (additionOperator == '-') {
        return handleSubtraction(left, right);
      }

      // Handle addition/concatenation
      return handleConcatenationOrAddition(left, right, additionOperator);
    }

    throw ArgumentError('$thisNode Invalid AdditionExpressionTerm');
  }

  // Helper function to handle subtraction, including null checks and casting
  CqlExpression handleSubtraction(CqlExpression left, CqlExpression right) {
    if (left is LiteralType && right is LiteralNull) {
      return Subtract(operand: [
        left,
        As(operand: right, asType: QName.fromFull(left.valueType))
      ]);
    } else if (left is LiteralNull && right is LiteralType) {
      return Subtract(operand: [
        As(operand: left, asType: QName.fromFull(right.valueType)),
        right
      ]);
    } else {
      return Subtract(operand: [left, right]);
    }
  }

  // Helper function to handle concatenation and addition with null handling
  CqlExpression handleConcatenationOrAddition(
      CqlExpression left, CqlExpression right, String? operator) {
    final bool isAddition = operator == '+';

    if (left is LiteralString && right is LiteralString) {
      return Concatenate(operand: [left, right], plus: isAddition);
    } else if (left is LiteralString && right is LiteralNull) {
      return Concatenate(operand: [
        left,
        As(operand: right, asType: QName.fromDataType('String'))
      ], plus: isAddition);
    } else if (left is LiteralNull && right is LiteralString) {
      return Concatenate(operand: [
        As(operand: left, asType: QName.fromDataType('String')),
        right
      ], plus: isAddition);
    } else {
      // If types are not simple literals, check types and apply Coalesce if necessary
      return handleTypedConcatenation(left, right, isAddition);
    }
  }

  // Helper function for type-checked concatenation with null coalescing
  CqlExpression handleTypedConcatenation(
      CqlExpression left, CqlExpression right, bool isAddition) {
    final return1 = left.getReturnTypes(library);
    final return2 = right.getReturnTypes(library);
    final returnType1 = (return1?.length == 1) ? return1?.first : null;
    final returnType2 = (return2?.length == 1) ? return2?.first : null;

    if (returnType1 == String && returnType2 == String) {
      return Concatenate(operand: [left, right], plus: isAddition);
    } else if (returnType1 == String && returnType2 == Null) {
      return Concatenate(operand: [left, LiteralString('')], plus: isAddition);
    } else if (returnType1 == Null && returnType2 == String) {
      return Concatenate(operand: [LiteralString(''), right], plus: isAddition);
    } else {
      // Handle complex cases where left and/or right are numeric literals
      return handleNumericConcatenationOrAddition(left, right);
    }
  }

  // Helper function for numeric addition or concatenation handling
  CqlExpression handleNumericConcatenationOrAddition(
      CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        return handleIntegerAddition(left, right);
      case LiteralLong _:
        return handleLongAddition(left, right);
      case LiteralDecimal _:
        return handleDecimalAddition(left, right);
      case LiteralQuantity _:
        return handleQuantityAddition(left, right);
      default:
        return Add(operand: [left, right]);
    }
  }

  // Specific handlers for each numeric type addition with type coercion
  CqlExpression handleIntegerAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, right]);
    } else if (right is LiteralLong) {
      return Add(operand: [ToLong(operand: left), right]);
    } else if (right is LiteralDecimal) {
      return Add(operand: [ToDecimal(operand: left), right]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(operand: right, asType: QName.fromFull(left.type))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleLongAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, ToLong(operand: right)]);
    } else if (right is LiteralLong) {
      return Add(operand: [left, right]);
    } else if (right is LiteralDecimal) {
      return Add(operand: [ToDecimal(operand: left), right]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(operand: right, asType: QName.fromFull(left.type))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleDecimalAddition(CqlExpression left, CqlExpression right) {
    if (right is LiteralInteger) {
      return Add(operand: [left, ToDecimal(operand: right)]);
    } else if (right is LiteralLong) {
      return Add(operand: [left, ToDecimal(operand: right)]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(operand: right, asType: QName.fromFull(left.type))
      ]);
    }
    return Add(operand: [left, right]);
  }

  CqlExpression handleQuantityAddition(
      CqlExpression left, CqlExpression right) {
    if (right is LiteralDecimal) {
      return Add(operand: [left, ToQuantity(operand: right)]);
    } else if (right is LiteralNull) {
      return Add(operand: [
        left,
        As(operand: right, asType: QName.fromFull(left.type))
      ]);
    }
    return Add(operand: [left, right]);
  }
}
