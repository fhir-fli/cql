import 'package:antlr4/antlr4.dart';
import 'package:cql/src/internal.dart';

class CqlFunctionVisitor extends CqlBaseVisitor<dynamic> {
  CqlFunctionVisitor(super.library);

  @override
  dynamic visitFunction(FunctionContext ctx) {
    String? ref;
    var operand = <CqlExpression>[];

    // 1) Extract the function name and its operands
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is ReferentialIdentifierContext) {
        ref = visitReferentialIdentifier(child);
      } else if (child is ParamListContext) {
        operand.addAll(visitParamList(child));
      }
    }
    if (ref == null) {
      throw ArgumentError('Invalid Function');
    }

    //
    // STEP 1: Wrap `Null` for all _simple_ aggregates + Mode
    //
    // Sum/Min/Max/Count always use Integer
    // Mode will infer its element type dynamically
    //
    const simpleAggregates = {
      'Sum': 'Integer',
      'Min': 'Integer',
      'Max': 'Integer',
      'Count': 'Integer',
    };
    if (simpleAggregates.containsKey(ref) || ref == 'Mode') {
      operand = operand.map((e) {
        if (e is ListExpression) {
          final aggType = simpleAggregates.containsKey(ref)
              ? simpleAggregates[ref]!
              : _inferElementType(e);
          return _processAggregateOperand(e, aggType);
        }
        return e;
      }).toList();
    }

    //
    // STEP 2: Convert to a Query **only** for those that sort and promote
    // to Decimal
    //
    // Avg, Median, Variance, StdDev, PopulationVariance, PopulationStdDev
    //
    const queryBasedFunctions = {
      'Avg',
      'Median',
      'Variance',
      'StdDev',
      'PopulationVariance',
      'PopulationStdDev',
    };
    // An Integer list under Avg/Median/Variance/StdDev is promoted through
    // a query, `X` returning ToDecimal(X) (`Avg({ 1, 2, 3, null })`,
    // Exercises04); a Decimal or Quantity list stays the bare list
    // (`Avg({1.0, 2.0, 3.0})`, CqlAggregateFunctionsTest). Until
    // 2026-10-06 every list was rewritten.
    if (queryBasedFunctions.contains(ref) &&
        operand.isNotEmpty &&
        operand.first is ListExpression) {
      final list = operand.first as ListExpression;
      final kinds = (list.element ?? const <CqlExpression>[])
          .where((e) => e is! LiteralNull && e is! As)
          .map(numericKindOf)
          .toSet();
      if (kinds.isNotEmpty &&
          kinds.every((k) => k == 'Integer' || k == 'Long')) {
        const alias = 'X';
        operand[0] = Query(
          source: [AliasedQuerySource(alias: alias, expression: list)],
          returnClause: ReturnClause(
            distinct: false,
            expression: ToDecimal(operand: AliasRef(name: alias)),
          ),
        );
      }
    }
    // An aggregate over a query whose elements are model-typed converts
    // them through an outer query (the reference's shape for
    // `Avg(… return (T.value as Quantity))`, Exercises08).
    if ((simpleAggregates.containsKey(ref) ||
            queryBasedFunctions.contains(ref) ||
            ref == 'Mode' ||
            ref == 'Min' ||
            ref == 'Max') &&
        operand.isNotEmpty &&
        operand.first is Query) {
      operand[0] = CqlQueryVisitor.convertElementsForAggregate(
        operand.first as Query,
        currentModel,
      );
    }

    // System functions whose parameter is Decimal take an Integer operand
    // through ToDecimal (the reference: Ceiling(ToDecimal(1)), Ln, Exp,
    // Floor, Truncate, Log on both operands, Round on its first); the
    // DateTime operator's timezoneOffset likewise. Coalesce leaves a bare
    // null bare (Exercises02 `Coalesce(null, 1)` in the reference).
    const decimalParameterFunctions = {
      'Ceiling',
      'Floor',
      'Truncate',
      'Ln',
      'Exp',
    };
    if (decimalParameterFunctions.contains(ref)) {
      for (var i = 0; i < operand.length; i++) {
        operand[i] = toDecimalIfIntegral(operand[i]);
      }
    } else if (ref == 'Round' && operand.isNotEmpty) {
      operand[0] = toDecimalIfIntegral(operand[0]);
    } else if (ref == 'DateTime' && operand.length == 8) {
      operand[7] = toDecimalIfIntegral(operand[7]);
    } else if (ref == 'Combine' && operand.isNotEmpty) {
      // `Combine({}, …)`: the empty list takes String through a query
      // (CqlStringOperatorsTest).
      operand[0] = CqlBaseVisitor.typeEmptyList(
        operand[0],
        QName.fromElmType('String'),
      );
    } else if (ref == 'Exists' &&
        operand.length == 1 &&
        operand.first is LiteralNull) {
      // `exists null`: the null is the operator's parameter type, List<Any>
      // (CqlListOperatorsTest).
      operand[0] = As(
        operand: operand.first,
        asTypeSpecifier: ListTypeSpecifier(
          elementType: NamedTypeSpecifier(namespace: QName.fromElmType('Any')),
        ),
      );
    } else if ((ref == 'AllTrue' || ref == 'AnyTrue') &&
        operand.length == 1 &&
        operand.first is LiteralNull) {
      // `AllTrue(null)`: the null is the operator's parameter type,
      // List<Boolean> (CqlAggregateFunctionsTest).
      operand[0] = As(
        operand: operand.first,
        asTypeSpecifier: ListTypeSpecifier(
          elementType:
              NamedTypeSpecifier(namespace: QName.fromElmType('Boolean')),
        ),
      );
    } else if ((ref == 'AllTrue' || ref == 'AnyTrue') &&
        operand.length == 1 &&
        operand.first is ListExpression &&
        ((operand.first as ListExpression).element?.isEmpty ?? true)) {
      // `AllTrue({})`: the reference types the empty list's elements through
      // a query, `X` returning `X as Boolean` (CqlAggregateFunctionsTest).
      const alias = 'X';
      operand[0] = Query(
        source: [AliasedQuerySource(alias: alias, expression: operand.first)],
        returnClause: ReturnClause(
          distinct: false,
          expression: As(
            operand: AliasRef(name: alias),
            asType: QName.fromElmType('Boolean'),
          ),
        ),
      );
    }
    //
    // STEP 3: Delegate to the standard factory; fall back to FunctionRef
    // for user-defined (local or included) functions
    //
    try {
      return CqlExpression.byName(ref, operand, library);
      // CqlExpression.byName signals "not a built-in operator" by throwing
      // ArgumentError; falling back to FunctionRef for user-defined (local or
      // included) functions is that contract's documented consumer.
      // ignore: avoid_catching_errors
    } on ArgumentError {
      return FunctionRef(
        name: ref,
        operand: operand.isNotEmpty ? operand : null,
      );
    }
  }

  /// Wraps any `Null` elements in the list with `As(…, <aggType>)`.
  ListExpression _processAggregateOperand(
    ListExpression listExpr,
    String aggType,
  ) {
    final wrapperType = QName.fromElmType(aggType);
    final transformed = listExpr.element?.map((e) {
      if (e is LiteralNull) {
        return As(operand: e, asType: wrapperType);
      }
      return e;
    }).toList();
    return ListExpression(
      typeSpecifier: listExpr.typeSpecifier,
      element: transformed,
    );
  }

  /// Infer the element type of a list by looking at its non-null items.
  /// If they’re all Integers, returns "Integer"; otherwise "Decimal".
  String _inferElementType(ListExpression listExpr) {
    final nonNullTypes = listExpr.element
            ?.where((e) => e is! LiteralNull)
            .expand((e) => e.getReturnTypes(library))
            .map((t) => t.toLowerCase())
            .toSet() ??
        {};
    if (nonNullTypes.length == 1) {
      final t = nonNullTypes.single;
      return t.endsWith('decimal') ? 'Decimal' : 'Integer';
    }
    return 'Decimal';
  }
}
