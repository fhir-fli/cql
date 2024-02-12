import '../../cql.dart';

/// Design notes:
/// There are two types of methods in this class:
///
///   1. visitFields
///
///   visitFields visits the fields of an object, traversing up the class hierarchy to visit superclass fields.
///
///   2. visitXYZ, where XYZ is the name of an ELM class
///
///   The visitXYZ methods come in two flavors:
///
///   A. visits on abstract or base classes forward to the correct visit method for the concrete or derived class.
///   B. visits on concrete or derived classes visit the fields of its base class using visitFields, and then visits the fields itself.
///
///   TypeSpecifiers are considered to be terminal nodes in the ELM graph. TypeSpecifiers themselves are Elements and thus
///   have recursive TypeSpecifiers, but these are not visited.
///

/// Provides the base implementation for an ElmVisitor.
///
/// @param <T> The return type of the visit operation. Use {@link Void} for no return value.
/// @param <C> The type of context passed to each visit method
///            operations with no return type.
///
abstract class BaseElmVisitor<T, C> implements ElmVisitor<T, C> {
  /// Provides the default result of a visit
  ///
  /// @return
  ///
  T? defaultResult(Element? elm, C context) {
    return null;
  }

  /// Provides for aggregation behavior of the results of a visit.
  /// Default behavior returns the next result, ignoring the current
  /// aggregate.
  ///
  /// @param aggregate  Current aggregate result
  /// @param nextResult Next result to be aggregated
  /// @return The result of aggregating the nextResult into aggregate
  ///
  T? aggregateResult(T? aggregate, T? nextResult) {
    return nextResult;
  }

  /// Visit an Element in an ELM tree. This method will be called for
  /// every node in the tree that is a descendant of the Element type.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitElement(Element elm, C context) {
    if (elm is CqlExpression) {
      return visitExpression(elm, context);
    } else if (elm is CaseItem) {
      return visitCaseItem(elm, context);
    } else if (elm is LetClause) {
      return visitLetClause(elm, context);
    } else if (elm is OperandDef) {
      return visitOperandDef(elm, context);
    } else if (elm is ParameterDef) {
      return visitParameterDef(elm, context);
    } else if (elm is SortByItem) {
      return visitSortByItem(elm, context);
    } else if (elm is SortClause) {
      return visitSortClause(elm, context);
    } else if (elm is TupleElementDefinition) {
      return visitTupleElementDefinition(elm, context);
    } else if (elm is TypeSpecifierExpression) {
      return visitTypeSpecifier(elm, context);
    } else {
      throw Exception('Unknown Element type: ${elm.resultTypeName}');
    }
  }

  /// Visit a TypeSpecifier. This method will be called for every
  /// node in the tree that is a descendant of the TypeSpecifier type.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTypeSpecifier(TypeSpecifierExpression elm, C context) {
    if (elm is NamedTypeSpecifier) {
      return visitNamedTypeSpecifier(elm, context);
    } else if (elm is IntervalTypeSpecifier) {
      return visitIntervalTypeSpecifier(elm, context);
    } else if (elm is ListTypeSpecifier) {
      return visitListTypeSpecifier(elm, context);
    } else if (elm is TupleTypeSpecifier) {
      return visitTupleTypeSpecifier(elm, context);
    } else if (elm is ChoiceTypeSpecifier) {
      return visitChoiceTypeSpecifier(elm, context);
    } else if (elm is ParameterTypeSpecifier) {
      return visitParameterTypeSpecifier(elm, context);
    } else {
      throw Exception("Unknown TypeSpecifier type: ${elm.type}");
    }
  }

  /// Visit a ParameterTypeSpecifier. This method will be called for
  /// every node in the tree that is a ParameterTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  T? visitParameterTypeSpecifier(ParameterTypeSpecifier elm, C context) {
    return defaultResult(elm, context);
  }

  /// Visit a NamedTypeSpecifier. This method will be called for
  /// every node in the tree that is a NamedTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNamedTypeSpecifier(NamedTypeSpecifier elm, C context) {
    return defaultResult(elm, context);
  }

  /// Visit a IntervalTypeSpecifier. This method will be called for
  /// every node in the tree that is a IntervalTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIntervalTypeSpecifier(IntervalTypeSpecifier elm, C context) {
    T? result = defaultResult(elm, context);

    if (elm.pointType != null) {
      T? childResult = visitTypeSpecifier(elm.pointType!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ListTypeSpecifier. This method will be called for
  /// every node in the tree that is a ListTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitListTypeSpecifier(ListTypeSpecifier elm, C context) {
    T? result = defaultResult(elm, context);

    if (elm.elementType != null) {
      T? childResult = visitTypeSpecifier(elm.elementType!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a TupleElementDefinition. This method will be called for
  /// every node in the tree that is a TupleElementDefinition.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTupleElementDefinition(TupleElementDefinition elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.elementType != null) {
      T? childResult = visitTypeSpecifier(elm.elementType!, context);
      result = aggregateResult(result, childResult);
    }

    if (elm.type != null) {
      T? childResult = visitTypeSpecifier(elm.type!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a TupleTypeSpecifier. This method will be called for
  /// every node in the tree that is a TupleTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTupleTypeSpecifier(TupleTypeSpecifier elm, C context) {
    T? result = defaultResult(elm, context);

    for (TupleElementDefinition element
        in elm.element ?? <TupleElementDefinition>[]) {
      T? childResult = visitTupleElementDefinition(element, context);
      result = aggregateResult(result, childResult);
    }
    return result;
  }

  /// Visit a ChoiceTypeSpecifier. This method will be called for
  /// every node in the tree that is a ChoiceTypeSpecifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitChoiceTypeSpecifier(ChoiceTypeSpecifier elm, C context) {
    T? result = defaultResult(elm, context);

    for (var choice in elm.choice ?? <TypeSpecifierExpression>[]) {
      T? childResult = visitTypeSpecifier(choice, context);
      result = aggregateResult(result, childResult);
    }

    // TODO(Dokotela): elm.type is not iterable
    // for (var type in elm.type) {
    //     T? childResult = visitTypeSpecifier(type, context);
    //     result = aggregateResult(result, childResult);
    // }

    return result;
  }

  /// Visit an Expression. This method will be called for
  /// every node in the tree that is an Expression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExpression(CqlExpression elm, C context) {
    if (elm is AliasRef) {
      return visitAliasRef(elm, context);
    } else if (elm is Case) {
      return visitCase(elm, context);
    } else if (elm is Current) {
      return visitCurrent(elm, context);
    } else if (elm is ExpressionRef) {
      return visitExpressionRef(elm, context);
    } else if (elm is Filter) {
      return visitFilter(elm, context);
    } else if (elm is ForEach) {
      return visitForEach(elm, context);
    } else if (elm is IdentifierRef) {
      return visitIdentifierRef(elm, context);
    } else if (elm is If) {
      return visitIf(elm, context);
    } else if (elm is Instance) {
      return visitInstance(elm, context);
    } else if (elm is IntervalExpression) {
      return visitInterval(elm, context);
    } else if (elm is Iteration) {
      return visitIteration(elm, context);
    } else if (elm is ListExpression) {
      return visitList(elm, context);
    } else if (elm is Literal) {
      return visitLiteral(elm, context);
    } else if (elm is MaxValue) {
      return visitMaxValue(elm, context);
    } else if (elm is MinValue) {
      return visitMinValue(elm, context);
    } else if (elm is OperandRef) {
      return visitOperandRef(elm, context);
    } else if (elm is ParameterRef) {
      return visitParameterRef(elm, context);
    } else if (elm is Property) {
      return visitProperty(elm, context);
    } else if (elm is Query) {
      return visitQuery(elm, context);
    } else if (elm is QueryLetRef) {
      return visitQueryLetRef(elm, context);
    } else if (elm is Repeat) {
      return visitRepeat(elm, context);
    } else if (elm is Sort) {
      return visitSort(elm, context);
    } else if (elm is Total) {
      return visitTotal(elm, context);
    } else if (elm is Tuple) {
      return visitTuple(elm, context);
    } else if (elm is AggregateExpression) {
      return visitAggregateExpression(elm, context);
    } else if (elm is OperatorExpression) {
      return visitOperatorExpression(elm, context);
    } else {
      throw Exception("Unknown Expression type: ${elm.resultTypeName}");
    }
  }

  /// Visit an OperatorExpression. This method will be called for
  /// every node in the tree that is an OperatorExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOperatorExpression(OperatorExpression elm, C context) {
    if (elm is Round) {
      return visitRound(elm, context);
    } else if (elm is Combine) {
      return visitCombine(elm, context);
    } else if (elm is Split) {
      return visitSplit(elm, context);
    } else if (elm is SplitOnMatches) {
      return visitSplitOnMatches(elm, context);
    } else if (elm is PositionOf) {
      return visitPositionOf(elm, context);
    } else if (elm is LastPositionOf) {
      return visitLastPositionOf(elm, context);
    } else if (elm is Substring) {
      return visitSubstring(elm, context);
    } else if (elm is TimeOfDay) {
      return visitTimeOfDay(elm, context);
    } else if (elm is Today) {
      return visitToday(elm, context);
    } else if (elm is Now) {
      return visitNow(elm, context);
    } else if (elm is TimeExpression) {
      return visitTime(elm, context);
    } else if (elm is DateExpression) {
      return visitDate(elm, context);
    } else if (elm is DateTimeExpression) {
      return visitDateTime(elm, context);
    } else if (elm is First) {
      return visitFirst(elm, context);
    } else if (elm is Last) {
      return visitLast(elm, context);
    } else if (elm is IndexOf) {
      return visitIndexOf(elm, context);
    } else if (elm is Slice) {
      return visitSlice(elm, context);
    } else if (elm is Children) {
      return visitChildren(elm, context);
    } else if (elm is Descendents) {
      return visitDescendents(elm, context);
    } else if (elm is Message) {
      return visitMessage(elm, context);
    } else if (elm is UnaryExpression) {
      return visitUnaryExpression(elm, context);
    } else if (elm is BinaryExpression) {
      return visitBinaryExpression(elm, context);
    } else if (elm is TernaryExpression) {
      return visitTernaryExpression(elm, context);
    } else if (elm is NaryExpression) {
      return visitNaryExpression(elm, context);
    } else {
      throw Exception("Unknown OperatorExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit a UnaryExpression. This method will be called for
  /// every node in the tree that is a UnaryExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitUnaryExpression(UnaryExpression elm, C context) {
    if (elm is Abs) {
      return visitAbs(elm, context);
    } else if (elm is As) {
      return visitAs(elm, context);
    } else if (elm is Ceiling) {
      return visitCeiling(elm, context);
    } else if (elm is CanConvert) {
      return visitCanConvert(elm, context);
    } else if (elm is Convert) {
      return visitConvert(elm, context);
    } else if (elm is ConvertsToBoolean) {
      return visitConvertsToBoolean(elm, context);
    } else if (elm is ConvertsToDate) {
      return visitConvertsToDate(elm, context);
    } else if (elm is ConvertsToDateTime) {
      return visitConvertsToDateTime(elm, context);
    } else if (elm is ConvertsToDecimal) {
      return visitConvertsToDecimal(elm, context);
    } else if (elm is ConvertsToInteger) {
      return visitConvertsToInteger(elm, context);
    } else if (elm is ConvertsToLong) {
      return visitConvertsToLong(elm, context);
    } else if (elm is ConvertsToQuantity) {
      return visitConvertsToQuantity(elm, context);
    } else if (elm is ConvertsToRatio) {
      return visitConvertsToRatio(elm, context);
    } else if (elm is ConvertsToString) {
      return visitConvertsToString(elm, context);
    } else if (elm is ConvertsToTime) {
      return visitConvertsToTime(elm, context);
    } else if (elm is DateFrom) {
      return visitDateFrom(elm, context);
    } else if (elm is DateTimeComponentFrom) {
      return visitDateTimeComponentFrom(elm, context);
    } else if (elm is Distinct) {
      return visitDistinct(elm, context);
    } else if (elm is End) {
      return visitEnd(elm, context);
    } else if (elm is Exists) {
      return visitExists(elm, context);
    } else if (elm is Exp) {
      return visitExp(elm, context);
    } else if (elm is Flatten) {
      return visitFlatten(elm, context);
    } else if (elm is Floor) {
      return visitFloor(elm, context);
    } else if (elm is Is) {
      return visitIs(elm, context);
    } else if (elm is IsFalse) {
      return visitIsFalse(elm, context);
    } else if (elm is IsNull) {
      return visitIsNull(elm, context);
    } else if (elm is IsTrue) {
      return visitIsTrue(elm, context);
    } else if (elm is Length) {
      return visitLength(elm, context);
    } else if (elm is Ln) {
      return visitLn(elm, context);
    } else if (elm is Lower) {
      return visitLower(elm, context);
    } else if (elm is Negate) {
      return visitNegate(elm, context);
    } else if (elm is Not) {
      return visitNot(elm, context);
    } else if (elm is PointFrom) {
      return visitPointFrom(elm, context);
    } else if (elm is Precision) {
      return visitPrecision(elm, context);
    } else if (elm is Predecessor) {
      return visitPredecessor(elm, context);
    } else if (elm is SingletonFrom) {
      return visitSingletonFrom(elm, context);
    } else if (elm is Size) {
      return visitSize(elm, context);
    } else if (elm is Start) {
      return visitStart(elm, context);
    } else if (elm is Successor) {
      return visitSuccessor(elm, context);
    } else if (elm is TimeFrom) {
      return visitTimeFrom(elm, context);
    } else if (elm is TimezoneOffsetFrom) {
      return visitTimezoneFrom(elm, context);
    } else if (elm is TimezoneOffsetFrom) {
      return visitTimezoneOffsetFrom(elm, context);
    } else if (elm is ToBoolean) {
      return visitToBoolean(elm, context);
    } else if (elm is ToConcept) {
      return visitToConcept(elm, context);
    } else if (elm is ToChars) {
      return visitToChars(elm, context);
    } else if (elm is ToDate) {
      return visitToDate(elm, context);
    } else if (elm is ToDateTime) {
      return visitToDateTime(elm, context);
    } else if (elm is ToDecimal) {
      return visitToDecimal(elm, context);
    } else if (elm is ToInteger) {
      return visitToInteger(elm, context);
    } else if (elm is ToLong) {
      return visitToLong(elm, context);
    } else if (elm is ToList) {
      return visitToList(elm, context);
    } else if (elm is ToQuantity) {
      return visitToQuantity(elm, context);
    } else if (elm is ToRatio) {
      return visitToRatio(elm, context);
    } else if (elm is ToString) {
      return visitToString(elm, context);
    } else if (elm is ToTime) {
      return visitToTime(elm, context);
    } else if (elm is Truncate) {
      return visitTruncate(elm, context);
    } else if (elm is Upper) {
      return visitUpper(elm, context);
    } else if (elm is Width) {
      return visitWidth(elm, context);
    } else {
      throw Exception("Unknown UnaryExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit a BinaryExpression. This method will be called for
  /// every node in the tree that is a BinaryExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitBinaryExpression(BinaryExpression elm, C context) {
    if (elm is Add) {
      return visitAdd(elm, context);
    } else if (elm is After) {
      return visitAfter(elm, context);
    } else if (elm is And) {
      return visitAnd(elm, context);
    } else if (elm is Before) {
      return visitBefore(elm, context);
    } else if (elm is CanConvertQuantity) {
      return visitCanConvertQuantity(elm, context);
    } else if (elm is Contains) {
      return visitContains(elm, context);
    } else if (elm is ConvertQuantity) {
      return visitConvertQuantity(elm, context);
    } else if (elm is Collapse) {
      return visitCollapse(elm, context);
    } else if (elm is DifferenceBetween) {
      return visitDifferenceBetween(elm, context);
    } else if (elm is Divide) {
      return visitDivide(elm, context);
    } else if (elm is DurationBetween) {
      return visitDurationBetween(elm, context);
    } else if (elm is Ends) {
      return visitEnds(elm, context);
    } else if (elm is EndsWith) {
      return visitEndsWith(elm, context);
    } else if (elm is Equal) {
      return visitEqual(elm, context);
    } else if (elm is Equivalent) {
      return visitEquivalent(elm, context);
    } else if (elm is Expand) {
      return visitExpand(elm, context);
    } else if (elm is Greater) {
      return visitGreater(elm, context);
    } else if (elm is GreaterOrEqual) {
      return visitGreaterOrEqual(elm, context);
    } else if (elm is HighBoundary) {
      return visitHighBoundary(elm, context);
    } else if (elm is Implies) {
      return visitImplies(elm, context);
    } else if (elm is In) {
      return visitIn(elm, context);
    } else if (elm is IncludedIn) {
      return visitIncludedIn(elm, context);
    } else if (elm is Includes) {
      return visitIncludes(elm, context);
    } else if (elm is Indexer) {
      return visitIndexer(elm, context);
    } else if (elm is Less) {
      return visitLess(elm, context);
    } else if (elm is LessOrEqual) {
      return visitLessOrEqual(elm, context);
    } else if (elm is Log) {
      return visitLog(elm, context);
    } else if (elm is LowBoundary) {
      return visitLowBoundary(elm, context);
    } else if (elm is Matches) {
      return visitMatches(elm, context);
    } else if (elm is Meets) {
      return visitMeets(elm, context);
    } else if (elm is MeetsAfter) {
      return visitMeetsAfter(elm, context);
    } else if (elm is MeetsBefore) {
      return visitMeetsBefore(elm, context);
    } else if (elm is Modulo) {
      return visitModulo(elm, context);
    } else if (elm is Multiply) {
      return visitMultiply(elm, context);
    } else if (elm is NotEqual) {
      return visitNotEqual(elm, context);
    } else if (elm is Or) {
      return visitOr(elm, context);
    } else if (elm is Overlaps) {
      return visitOverlaps(elm, context);
    } else if (elm is OverlapsAfter) {
      return visitOverlapsAfter(elm, context);
    } else if (elm is OverlapsBefore) {
      return visitOverlapsBefore(elm, context);
    } else if (elm is Power) {
      return visitPower(elm, context);
    } else if (elm is ProperContains) {
      return visitProperContains(elm, context);
    } else if (elm is ProperIn) {
      return visitProperIn(elm, context);
    } else if (elm is ProperIncludedIn) {
      return visitProperIncludedIn(elm, context);
    } else if (elm is ProperIncludes) {
      return visitProperIncludes(elm, context);
    } else if (elm is SameAs) {
      return visitSameAs(elm, context);
    } else if (elm is SameOrAfter) {
      return visitSameOrAfter(elm, context);
    } else if (elm is SameOrBefore) {
      return visitSameOrBefore(elm, context);
    } else if (elm is Starts) {
      return visitStarts(elm, context);
    } else if (elm is StartsWith) {
      return visitStartsWith(elm, context);
    } else if (elm is Subtract) {
      return visitSubtract(elm, context);
    } else if (elm is Times) {
      return visitTimes(elm, context);
    } else if (elm is TruncatedDivide) {
      return visitTruncatedDivide(elm, context);
    } else if (elm is Xor) {
      return visitXor(elm, context);
    } else {
      throw Exception("Unknown BinaryExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit a TernaryExpression. This method will be called for
  /// every node in the tree that is a TernaryExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTernaryExpression(TernaryExpression elm, C context) {
    if (elm is ReplaceMatches) {
      return visitReplaceMatches(elm, context);
    } else {
      throw Exception("Unknown TernaryExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit a NaryExpression. This method will be called for
  /// every node in the tree that is a NaryExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNaryExpression(NaryExpression elm, C context) {
    if (elm is Coalesce) {
      return visitCoalesce(elm, context);
    } else if (elm is Concatenate) {
      return visitConcatenate(elm, context);
    } else if (elm is Except) {
      return visitExcept(elm, context);
    } else if (elm is Intersect) {
      return visitIntersect(elm, context);
    } else if (elm is Union) {
      return visitUnion(elm, context);
    } else {
      throw Exception("Unknown NaryExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit a ExpressionDef. This method will be called for
  /// every node in the tree that is a ExpressionDef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExpressionDef(ExpressionDef elm, C context) {
    if (elm is FunctionDef) {
      return visitFunctionDef(elm, context);
    }

    return visitFields(elm, context);
  }

  /// Visit a FunctionDef. This method will be called for
  /// every node in the tree that is a FunctionDef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFunctionDef(FunctionDef elm, C context) {
    T? result = visitFields(elm, context);

    for (var operand in elm.operand ?? <OperandDef>[]) {
      T? childResult = visitOperandDef(operand, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit AccessModifier. This method will be called for
  /// every node in the tree that is a AccessModifier.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  T? visitAccessModifier(AccessModifier elm, C context) {
    // NOTE: AccessModifier isn't trackable?
    return defaultResult(null, context);
  }

  /// Visit a ExpressionRef. This method will be called for
  /// every node in the tree that is a ExpressionRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExpressionRef(ExpressionRef elm, C context) {
    if (elm is FunctionRef) {
      return visitFunctionRef(elm, context);
    }

    return visitFields(elm, context);
  }

  /// Visit a FunctionRef. This method will be called for
  /// every node in the tree that is a FunctionRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFunctionRef(FunctionRef elm, C context) {
    T? result = visitFields(elm, context);

    for (var element in elm.operand ?? <CqlExpression>[]) {
      T? childResult = visitExpression(element, context);
      result = aggregateResult(result, childResult);
    }

    for (var s in elm.signature ?? <TypeSpecifierExpression>[]) {
      T? childResult = visitTypeSpecifier(s, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ParameterDef. This method will be called for
  /// every node in the tree that is a ParameterDef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitParameterDef(ParameterDef elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.parameterTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.parameterTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    if (elm.defaultExpression != null) {
      T? childResult = visitExpression(elm.defaultExpression!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ParameterRef. This method will be called for
  /// every node in the tree that is a ParameterRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitParameterRef(ParameterRef elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a OperandDef. This method will be called for
  /// every node in the tree that is a OperandDef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOperandDef(OperandDef elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.operandTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.operandTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a OperandRef. This method will be called for
  /// every node in the tree that is a OperandRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOperandRef(OperandRef elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a IdentifierRef. This method will be called for
  /// every node in the tree that is a IdentifierRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIdentifierRef(IdentifierRef elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Literal. This method will be called for
  /// every node in the tree that is a Literal.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLiteral(Literal elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TupleElement. This method will be called for
  /// every node in the tree that is a TupleElement.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTupleElement(TupleElement elm, C context) {
    T? result = defaultResult(elm, context);

    T? childResult = visitExpression(elm.value, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Tuple. This method will be called for
  /// every node in the tree that is a Tuple.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTuple(Tuple elm, C context) {
    T? result = visitFields(elm, context);

    for (TupleElement element in elm.element ?? <TupleElement>[]) {
      T? childResult = visitTupleElement(element, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a InstanceElement. This method will be called for
  /// every node in the tree that is a InstanceElement.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitInstanceElement(InstanceElement elm, C context) {
    T? result = defaultResult(elm, context);

    T? childResult = visitExpression(elm.value, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Instance. This method will be called for
  /// every node in the tree that is a Instance.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitInstance(Instance elm, C context) {
    T? result = visitFields(elm, context);

    for (InstanceElement element in elm.element ?? <InstanceElement>[]) {
      T? childResult = visitInstanceElement(element, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Interval. This method will be called for
  /// every node in the tree that is a Interval.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitInterval(IntervalExpression elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.low != null) {
      T? childResult = visitExpression(elm.low!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.lowClosedExpression != null) {
      T? childResult = visitExpression(elm.lowClosedExpression!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.high != null) {
      T? childResult = visitExpression(elm.high!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.highClosedExpression != null) {
      T? childResult = visitExpression(elm.highClosedExpression!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a List. This method will be called for
  /// every node in the tree that is a List.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitList(ListExpression elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.typeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.typeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    for (CqlExpression element in elm.element ?? <CqlExpression>[]) {
      T? childResult = visitExpression(element, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a And. This method will be called for
  /// every node in the tree that is a And.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAnd(And elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Or. This method will be called for
  /// every node in the tree that is a Or.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOr(Or elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Xor. This method will be called for
  /// every node in the tree that is a Xor.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitXor(Xor elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Implies. This method will be called for
  /// every node in the tree that is a Implies.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitImplies(Implies elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Not. This method will be called for
  /// every node in the tree that is a Not.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNot(Not elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a If. This method will be called for
  /// every node in the tree that is a If.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIf(If elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.condition, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.then, context);
    result = aggregateResult(result, childResult);

    childResult = visitExpression(elm.elseExpr, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a CaseItem. This method will be called for
  /// every node in the tree that is a CaseItem.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCaseItem(CaseItem elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.when_, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.then, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Case. This method will be called for
  /// every node in the tree that is a Case.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCase(Case elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.comparand != null) {
      T? childResult = visitExpression(elm.comparand!, context);
      result = aggregateResult(result, childResult);
    }

    for (CaseItem ci in elm.caseItem) {
      T? childResult = visitCaseItem(ci, context);
      result = aggregateResult(result, childResult);
    }

    T? childResult = visitExpression(elm.elseExpr, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Null. This method will be called for
  /// every node in the tree that is a Null.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  // TODO(Dokotela): void does not translate properly from java
  @override
  T? visitNull(void elm, C context) {
    return visitFields(null, context);
  }

  /// Visit a IsNull. This method will be called for
  /// every node in the tree that is a IsNull.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIsNull(IsNull elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a IsTrue. This method will be called for
  /// every node in the tree that is a IsTrue.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIsTrue(IsTrue elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a IsFalse. This method will be called for
  /// every node in the tree that is a IsFalse.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIsFalse(IsFalse elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Coalesce. This method will be called for
  /// every node in the tree that is a Coalesce.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCoalesce(Coalesce elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Is. This method will be called for
  /// every node in the tree that is a Is.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIs(Is elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.isTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.isTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a As. This method will be called for
  /// every node in the tree that is a As.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAs(As elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.asTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.asTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Convert. This method will be called for
  /// every node in the tree that is a Convert.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvert(Convert elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.toTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.toTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a CanConvert. This method will be called for
  /// every node in the tree that is a CanConvert.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCanConvert(CanConvert elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.toTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.toTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ConvertsToBoolean. This method will be called for
  /// every node in the tree that is a ConvertsToBoolean.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToBoolean(ConvertsToBoolean elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToBoolean. This method will be called for
  /// every node in the tree that is a ToBoolean.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToBoolean(ToBoolean elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToChars. This method will be called for
  /// every node in the tree that is a ToChars.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToChars(ToChars elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToConcept. This method will be called for
  /// every node in the tree that is a ToConcept.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToConcept(ToConcept elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToDate. This method will be called for
  /// every node in the tree that is a ConvertsToDate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToDate(ConvertsToDate elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToDate. This method will be called for
  /// every node in the tree that is a ToDate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToDate(ToDate elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToDateTime. This method will be called for
  /// every node in the tree that is a ConvertsToDateTime.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToDateTime(ConvertsToDateTime elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToDateTime. This method will be called for
  /// every node in the tree that is a ToDateTime.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToDateTime(ToDateTime elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToLong. This method will be called for
  /// every node in the tree that is a ConvertsToLong.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToLong(ConvertsToLong elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToLong. This method will be called for
  /// every node in the tree that is a ToLong.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToLong(ToLong elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToDecimal. This method will be called for
  /// every node in the tree that is a ConvertsToDecimal.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToDecimal(ConvertsToDecimal elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToDecimal. This method will be called for
  /// every node in the tree that is a ToDecimal.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToDecimal(ToDecimal elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToInteger. This method will be called for
  /// every node in the tree that is a ConvertsToInteger.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToInteger(ConvertsToInteger elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToInteger. This method will be called for
  /// every node in the tree that is a ToInteger.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToInteger(ToInteger elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToList. This method will be called for
  /// every node in the tree that is a ToList.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToList(ToList elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertQuantity. This method will be called for
  /// every node in the tree that is a ConvertQuantity.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertQuantity(ConvertQuantity elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a CanConvertQuantity. This method will be called for
  /// every node in the tree that is a CanConvertQuantity.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCanConvertQuantity(CanConvertQuantity elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToQuantity. This method will be called for
  /// every node in the tree that is a ConvertsToQuantity.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToQuantity(ConvertsToQuantity elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToQuantity. This method will be called for
  /// every node in the tree that is a ToQuantity.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToQuantity(ToQuantity elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToRatio. This method will be called for
  /// every node in the tree that is a ConvertsToRatio.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToRatio(ConvertsToRatio elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Ratio. This method will be called for
  /// every node in the tree that is a Ratio.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToRatio(ToRatio elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToString. This method will be called for
  /// every node in the tree that is a ConvertsToString.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToString(ConvertsToString elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToString. This method will be called for
  /// every node in the tree that is a ToString.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToString(ToString elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ConvertsToTime. This method will be called for
  /// every node in the tree that is a ConvertsToTime.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConvertsToTime(ConvertsToTime elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ToTime. This method will be called for
  /// every node in the tree that is a ToTime.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToTime(ToTime elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Equal. This method will be called for
  /// every node in the tree that is a Equal.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitEqual(Equal elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Equivalent. This method will be called for
  /// every node in the tree that is a Equivalent.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitEquivalent(Equivalent elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a NotEqual. This method will be called for
  /// every node in the tree that is a NotEqual.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNotEqual(NotEqual elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Less. This method will be called for
  /// every node in the tree that is a Less.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLess(Less elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Greater. This method will be called for
  /// every node in the tree that is a Greater.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitGreater(Greater elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a LessOrEqual. This method will be called for
  /// every node in the tree that is a LessOrEqual.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLessOrEqual(LessOrEqual elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a GreaterOrEqual. This method will be called for
  /// every node in the tree that is a GreaterOrEqual.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitGreaterOrEqual(GreaterOrEqual elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Add. This method will be called for
  /// every node in the tree that is a Add.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAdd(Add elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Subtract. This method will be called for
  /// every node in the tree that is a Subtract.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSubtract(Subtract elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Multiply. This method will be called for
  /// every node in the tree that is a Multiply.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMultiply(Multiply elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Divide. This method will be called for
  /// every node in the tree that is a Divide.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDivide(Divide elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TruncatedDivide. This method will be called for
  /// every node in the tree that is a TruncatedDivide.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTruncatedDivide(TruncatedDivide elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Modulo. This method will be called for
  /// every node in the tree that is a Modulo.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitModulo(Modulo elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Ceiling. This method will be called for
  /// every node in the tree that is a Ceiling.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCeiling(Ceiling elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Floor. This method will be called for
  /// every node in the tree that is a Floor.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFloor(Floor elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Truncate. This method will be called for
  /// every node in the tree that is a Truncate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTruncate(Truncate elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Abs. This method will be called for
  /// every node in the tree that is a Abs.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAbs(Abs elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Negate. This method will be called for
  /// every node in the tree that is a Negate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNegate(Negate elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Round. This method will be called for
  /// every node in the tree that is a Round.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitRound(Round elm, C context) {
    T? result = visitFields(elm, context);
    T? childResult = visitExpression(elm.operand, context);
    result = aggregateResult(result, childResult);

    if (elm.precision != null) {
      T? childResult = visitExpression(elm.precision!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Ln. This method will be called for
  /// every node in the tree that is a Ln.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLn(Ln elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Exp. This method will be called for
  /// every node in the tree that is a Exp.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExp(Exp elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Log. This method will be called for
  /// every node in the tree that is a Log.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLog(Log elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Power. This method will be called for
  /// every node in the tree that is a Power.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPower(Power elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Successor. This method will be called for
  /// every node in the tree that is a Successor.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSuccessor(Successor elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Predecessor. This method will be called for
  /// every node in the tree that is a Predecessor.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPredecessor(Predecessor elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a MinValue. This method will be called for
  /// every node in the tree that is a MinValue.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMinValue(MinValue elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a MaxValue. This method will be called for
  /// every node in the tree that is a MaxValue.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMaxValue(MaxValue elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Precision. This method will be called for
  /// every node in the tree that is a Precision.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPrecision(Precision elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a LowBoundary. This method will be called for
  /// every node in the tree that is a LowBoundary.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLowBoundary(LowBoundary elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a HighBoundary. This method will be called for
  /// every node in the tree that is a HighBoundary.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitHighBoundary(HighBoundary elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Concatenate. This method will be called for
  /// every node in the tree that is a Concatenate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitConcatenate(Concatenate elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Combine. This method will be called for
  /// every node in the tree that is a Combine.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCombine(Combine elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    if (elm.separator != null) {
      T? childResult = visitExpression(elm.separator!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Split. This method will be called for
  /// every node in the tree that is a Split.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSplit(Split elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.stringToSplit, context);
    result = aggregateResult(result, childResult);
    if (elm.separator != null) {
      T? childResult = visitExpression(elm.separator!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a SplitOnMatches. This method will be called for
  /// every node in the tree that is a SplitOnMatches.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSplitOnMatches(SplitOnMatches elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.stringToSplit, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.separatorPattern, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Length. This method will be called for
  /// every node in the tree that is a Length.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLength(Length elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Upper. This method will be called for
  /// every node in the tree that is a Upper.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitUpper(Upper elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Lower. This method will be called for
  /// every node in the tree that is a Lower.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLower(Lower elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Indexer. This method will be called for
  /// every node in the tree that is a Indexer.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIndexer(Indexer elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a PositionOf. This method will be called for
  /// every node in the tree that is a PositionOf.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPositionOf(PositionOf elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.pattern, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.string, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a LastPositionOf. This method will be called for
  /// every node in the tree that is a LastPositionOf.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLastPositionOf(LastPositionOf elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.pattern, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.string, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Substring. This method will be called for
  /// every node in the tree that is a Substring.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSubstring(Substring elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.stringToSub, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.startIndex, context);
    result = aggregateResult(result, childResult);
    if (elm.length != null) {
      childResult = visitExpression(elm.length!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a StartsWith. This method will be called for
  /// every node in the tree that is a StartsWith.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitStartsWith(StartsWith elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a EndsWith. This method will be called for
  /// every node in the tree that is a EndsWith.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitEndsWith(EndsWith elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Matches. This method will be called for
  /// every node in the tree that is a Matches.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMatches(Matches elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ReplaceMatches. This method will be called for
  /// every node in the tree that is a ReplaceMatches.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitReplaceMatches(ReplaceMatches elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a DurationBetween. This method will be called for
  /// every node in the tree that is a DurationBetween.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDurationBetween(DurationBetween elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a DifferenceBetween. This method will be called for
  /// every node in the tree that is a DifferenceBetween.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDifferenceBetween(DifferenceBetween elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a DateFrom. This method will be called for
  /// every node in the tree that is a DateFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDateFrom(DateFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TimeFrom. This method will be called for
  /// every node in the tree that is a TimeFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTimeFrom(TimeFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TimezoneFrom. This method will be called for
  /// every node in the tree that is a TimezoneFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTimezoneFrom(TimezoneOffsetFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TimezoneOffsetFrom. This method will be called for
  /// every node in the tree that is a TimezoneOffsetFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTimezoneOffsetFrom(TimezoneOffsetFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a DateTimeComponentFrom. This method will be called for
  /// every node in the tree that is a DateTimeComponentFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDateTimeComponentFrom(DateTimeComponentFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a TimeOfDay. This method will be called for
  /// every node in the tree that is a TimeOfDay.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTimeOfDay(TimeOfDay elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Today. This method will be called for
  /// every node in the tree that is a Today.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitToday(Today elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Now. This method will be called for
  /// every node in the tree that is a Now.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitNow(Now elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a DateTime. This method will be called for
  /// every node in the tree that is a DateTime.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDateTime(DateTimeExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.year, context);
    result = aggregateResult(result, childResult);
    if (elm.month != null) {
      childResult = visitExpression(elm.month!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.day != null) {
      childResult = visitExpression(elm.day!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.hour != null) {
      childResult = visitExpression(elm.hour!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.minute != null) {
      childResult = visitExpression(elm.minute!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.second != null) {
      childResult = visitExpression(elm.second!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.millisecond != null) {
      childResult = visitExpression(elm.millisecond!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.timezoneOffset != null) {
      childResult = visitExpression(elm.timezoneOffset!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Date. This method will be called for
  /// every node in the tree that is a Date.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDate(DateExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.year, context);
    result = aggregateResult(result, childResult);
    if (elm.month != null) {
      childResult = visitExpression(elm.month!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.day != null) {
      childResult = visitExpression(elm.day!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a Time. This method will be called for
  /// every node in the tree that is a Time.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTime(TimeExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.hour, context);
    result = aggregateResult(result, childResult);
    if (elm.minute != null) {
      childResult = visitExpression(elm.minute!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.second != null) {
      childResult = visitExpression(elm.second!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.millisecond != null) {
      childResult = visitExpression(elm.millisecond!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a SameAs. This method will be called for
  /// every node in the tree that is a SameAs.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSameAs(SameAs elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a SameOrBefore. This method will be called for
  /// every node in the tree that is a SameOrBefore.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSameOrBefore(SameOrBefore elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a SameOrAfter. This method will be called for
  /// every node in the tree that is a SameOrAfter.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSameOrAfter(SameOrAfter elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Width. This method will be called for
  /// every node in the tree that is a Width.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitWidth(Width elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Size. This method will be called for
  /// every node in the tree that is a Size.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSize(Size elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a PointFrom. This method will be called for
  /// every node in the tree that is a PointFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPointFrom(PointFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Start. This method will be called for
  /// every node in the tree that is a Start.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitStart(Start elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a End. This method will be called for
  /// every node in the tree that is a End.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitEnd(End elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Contains. This method will be called for
  /// every node in the tree that is a Contains.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitContains(Contains elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ProperContains. This method will be called for
  /// every node in the tree that is a ProperContains.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProperContains(ProperContains elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a In. This method will be called for
  /// every node in the tree that is a In.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIn(In elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ProperIn. This method will be called for
  /// every node in the tree that is a ProperIn.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProperIn(ProperIn elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Includes. This method will be called for
  /// every node in the tree that is a Includes.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIncludes(Includes elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a IncludedIn. This method will be called for
  /// every node in the tree that is a IncludedIn.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIncludedIn(IncludedIn elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ProperIncludes. This method will be called for
  /// every node in the tree that is a ProperIncludes.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProperIncludes(ProperIncludes elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ProperIncludedIn. This method will be called for
  /// every node in the tree that is a ProperIncludedIn.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProperIncludedIn(ProperIncludedIn elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Before. This method will be called for
  /// every node in the tree that is a Before.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitBefore(Before elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a After. This method will be called for
  /// every node in the tree that is a After.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAfter(After elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Meets. This method will be called for
  /// every node in the tree that is a Meets.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMeets(Meets elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a MeetsBefore. This method will be called for
  /// every node in the tree that is a MeetsBefore.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMeetsBefore(MeetsBefore elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a MeetsAfter. This method will be called for
  /// every node in the tree that is a MeetsAfter.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMeetsAfter(MeetsAfter elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Overlaps. This method will be called for
  /// every node in the tree that is a Overlaps.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOverlaps(Overlaps elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a OverlapsBefore. This method will be called for
  /// every node in the tree that is a OverlapsBefore.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOverlapsBefore(OverlapsBefore elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a OverlapsAfter. This method will be called for
  /// every node in the tree that is a OverlapsAfter.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitOverlapsAfter(OverlapsAfter elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Starts. This method will be called for
  /// every node in the tree that is a Starts.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitStarts(Starts elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Ends. This method will be called for
  /// every node in the tree that is a Ends.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitEnds(Ends elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Collapse. This method will be called for
  /// every node in the tree that is a Collapse.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCollapse(Collapse elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Expand. This method will be called for
  /// every node in the tree that is a Expand.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExpand(Expand elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Union. This method will be called for
  /// every node in the tree that is a Union.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitUnion(Union elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Intersect. This method will be called for
  /// every node in the tree that is a Intersect.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIntersect(Intersect elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Except. This method will be called for
  /// every node in the tree that is a Except.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExcept(Except elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Exists. This method will be called for
  /// every node in the tree that is a Exists.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitExists(Exists elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Times. This method will be called for
  /// every node in the tree that is a Times.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTimes(Times elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Filter. This method will be called for
  /// every node in the tree that is a Filter.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFilter(Filter elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.condition, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a First. This method will be called for
  /// every node in the tree that is a First.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFirst(First elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Last. This method will be called for
  /// every node in the tree that is a Last.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLast(Last elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Slice. This method will be called for
  /// every node in the tree that is a Slice.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSlice(Slice elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.startIndex, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.endIndex, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Children. This method will be called for
  /// every node in the tree that is a Children.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitChildren(Children elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Descendents. This method will be called for
  /// every node in the tree that is a Descendents.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDescendents(Descendents elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Message. This method will be called for
  /// every node in the tree that is a Message.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMessage(Message elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    if (elm.condition != null) {
      T? childResult = visitExpression(elm.condition!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.code != null) {
      T? childResult = visitExpression(elm.code!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.severity != null) {
      T? childResult = visitExpression(elm.severity!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.message != null) {
      T? childResult = visitExpression(elm.message!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a IndexOf. This method will be called for
  /// every node in the tree that is a IndexOf.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIndexOf(IndexOf elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.element, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Flatten. This method will be called for
  /// every node in the tree that is a Flatten.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitFlatten(Flatten elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Sort. This method will be called for
  /// every node in the tree that is a Sort.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSort(Sort elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    for (SortByItem sbi in elm.by) {
      T? childResult = visitSortByItem(sbi, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ForEach. This method will be called for
  /// every node in the tree that is a ForEach.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitForEach(ForEach elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.element, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Repeat. This method will be called for
  /// every node in the tree that is a Repeat.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitRepeat(Repeat elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);
    childResult = visitExpression(elm.element, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Distinct. This method will be called for
  /// every node in the tree that is a Distinct.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitDistinct(Distinct elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Current. This method will be called for
  /// every node in the tree that is a Current.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCurrent(Current elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit an Iteration. This method will be called for
  /// every node in the tree that is an Iteration.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitIteration(Iteration elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Total. This method will be called for
  /// every node in the tree that is a Total.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitTotal(Total elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a SingletonFrom. This method will be called for
  /// every node in the tree that is a SingletonFrom.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSingletonFrom(SingletonFrom elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a AggregateExpression. This method will be called for
  /// every node in the tree that is a AggregateExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAggregateExpression(AggregateExpression elm, C context) {
    if (elm is Aggregate) {
      return visitAggregate(elm, context);
    } else if (elm is Count) {
      return visitCount(elm, context);
    } else if (elm is Sum) {
      return visitSum(elm, context);
    } else if (elm is Product) {
      return visitProduct(elm, context);
    } else if (elm is Min) {
      return visitMin(elm, context);
    } else if (elm is Max) {
      return visitMax(elm, context);
    } else if (elm is Avg) {
      return visitAvg(elm, context);
    } else if (elm is GeometricMean) {
      return visitGeometricMean(elm, context);
    } else if (elm is Median) {
      return visitMedian(elm, context);
    } else if (elm is Mode) {
      return visitMode(elm, context);
    } else if (elm is Variance) {
      return visitVariance(elm, context);
    } else if (elm is StdDev) {
      return visitStdDev(elm, context);
    } else if (elm is PopulationVariance) {
      return visitPopulationVariance(elm, context);
    } else if (elm is PopulationStdDev) {
      return visitPopulationStdDev(elm, context);
    } else if (elm is AllTrue) {
      return visitAllTrue(elm, context);
    } else if (elm is AnyTrue) {
      return visitAnyTrue(elm, context);
    } else {
      throw Exception(
          "Unsupported AggregateExpression type: ${elm.resultTypeName}");
    }
  }

  /// Visit an Aggregate. This method will be called for
  /// every node in the tree that is an Aggregate.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAggregate(Aggregate elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.initialValue != null) {
      T? childResult = visitExpression(elm.initialValue!, context);
      result = aggregateResult(result, childResult);
    }
    T? childResult = visitExpression(elm.iteration, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Count. This method will be called for
  /// every node in the tree that is a Count.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitCount(Count elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Sum. This method will be called for
  /// every node in the tree that is a Sum.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSum(Sum elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Product. This method will be called for
  /// every node in the tree that is a Product.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProduct(Product elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a GeometricMean. This method will be called for
  /// every node in the tree that is a GeometricMean.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitGeometricMean(GeometricMean elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Min. This method will be called for
  /// every node in the tree that is a Min.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMin(Min elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Max. This method will be called for
  /// every node in the tree that is a Max.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMax(Max elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Avg. This method will be called for
  /// every node in the tree that is a Avg.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAvg(Avg elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Median. This method will be called for
  /// every node in the tree that is a Median.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMedian(Median elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Mode. This method will be called for
  /// every node in the tree that is a Mode.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitMode(Mode elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Variance. This method will be called for
  /// every node in the tree that is a Variance.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitVariance(Variance elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a PopulationVariance. This method will be called for
  /// every node in the tree that is a PopulationVariance.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPopulationVariance(PopulationVariance elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a StdDev. This method will be called for
  /// every node in the tree that is a StdDev.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitStdDev(StdDev elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a PopulationStdDev. This method will be called for
  /// every node in the tree that is a PopulationStdDev.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitPopulationStdDev(PopulationStdDev elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a AllTrue. This method will be called for
  /// every node in the tree that is a AllTrue.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAllTrue(AllTrue elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a AnyTrue. This method will be called for
  /// every node in the tree that is a AnyTrue.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAnyTrue(AnyTrue elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Property. This method will be called for
  /// every node in the tree that is a Property.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitProperty(Property elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.source != null) {
      T? childResult = visitExpression(elm.source!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a AliasedQuerySource. This method will be called for
  /// every node in the tree that is a AliasedQuerySource.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAliasedQuerySource(AliasedQuerySource elm, C context) {
    if (elm is RelationshipClause) {
      return visitRelationshipClause(elm, context);
    }

    return visitFields(elm, context);
  }

  /// Visit a LetClause. This method will be called for
  /// every node in the tree that is a LetClause.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitLetClause(LetClause elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.expression, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a RelationshipClause. This method will be called for
  /// every node in the tree that is a RelationshipClause.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitRelationshipClause(RelationshipClause elm, C context) {
    if (elm is With) {
      return visitWith(elm, context);
    } else if (elm is Without) {
      return visitWithout(elm, context);
    } else {
      throw Exception("Unknown RelationshipClause type: ${elm.resultTypeName}");
    }
  }

  /// Visit a With. This method will be called for
  /// every node in the tree that is a With.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitWith(With elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a Without. This method will be called for
  /// every node in the tree that is a Without.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitWithout(Without elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a SortByItem. This method will be called for
  /// every node in the tree that is a SortByItem.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSortByItem(SortByItem elm, C context) {
    if (elm is ByDirection) {
      return visitByDirection(elm, context);
    } else if (elm is ByColumn) {
      return visitByColumn(elm, context);
    } else if (elm is ByExpression) {
      return visitByExpression(elm, context);
    } else {
      throw Exception("Unknown SortByItem type: ${elm.resultTypeName}");
    }
  }

  /// Visit a ByDirection. This method will be called for
  /// every node in the tree that is a ByDirection.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitByDirection(ByDirection elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ByColumn. This method will be called for
  /// every node in the tree that is a ByColumn.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitByColumn(ByColumn elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a ByExpression. This method will be called for
  /// every node in the tree that is a ByExpression.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitByExpression(ByExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.expression, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a SortClause. This method will be called for
  /// every node in the tree that is a SortClause.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitSortClause(SortClause elm, C context) {
    T? result = visitFields(elm, context);

    for (SortByItem sbi in elm.by) {
      T? childResult = visitSortByItem(sbi, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a AggregateClause. This method will be called for
  /// every node in the tree that is an AggregateClause.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAggregateClause(AggregateClause elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.expression, context);
    result = aggregateResult(result, childResult);
    if (elm.starting != null) {
      T? childResult = visitExpression(elm.starting!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a ReturnClause. This method will be called for
  /// every node in the tree that is a ReturnClause.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitReturnClause(ReturnClause elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.expression, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// Visit a Query. This method will be called for
  /// every node in the tree that is a Query.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitQuery(Query elm, C context) {
    T? result = visitFields(elm, context);

    for (var source in elm.source) {
      T? childResult = visitAliasedQuerySource(source, context);
      result = aggregateResult(result, childResult);
    }
    for (var let in elm.let ?? <LetClause>[]) {
      T? childResult = visitLetClause(let, context);
      result = aggregateResult(result, childResult);
    }

    for (var r in elm.relationship ?? <RelationshipClause>[]) {
      T? childResult = visitRelationshipClause(r, context);
      result = aggregateResult(result, childResult);
    }

    if (elm.where != null) {
      T? childResult = visitExpression(elm.where!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.returnClause != null) {
      T? childResult = visitReturnClause(elm.returnClause!, context);
      result = aggregateResult(result, childResult);
    }

    if (elm.aggregate != null) {
      T? childResult = visitAggregateClause(elm.aggregate!, context);
      result = aggregateResult(result, childResult);
    }

    if (elm.sort != null) {
      T? childResult = visitSortClause(elm.sort!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit a AliasRef. This method will be called for
  /// every node in the tree that is a AliasRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitAliasRef(AliasRef elm, C context) {
    return visitFields(elm, context);
  }

  /// Visit a QueryLetRef. This method will be called for
  /// every node in the tree that is a QueryLetRef.
  ///
  /// @param elm     the ELM tree
  /// @param context the context passed to the visitor
  /// @return the visitor result
  ///
  @override
  T? visitQueryLetRef(QueryLetRef elm, C context) {
    return visitFields(elm, context);
  }

  T? visitFields(Element? elm, C context) {
    if (elm == null) {
      return null;
    } else if (elm is RelationshipClause) {
      return visitFieldsRelationshipClause(elm, context);
    } else if (elm is AggregateExpression) {
      return visitFieldsAggregateExpression(elm, context);
    } else if (elm is ExpressionDef) {
      return visitFieldsExpressionDef(elm, context);
    } else if (elm is UnaryExpression) {
      return visitFieldsUnaryExpression(elm, context);
    } else if (elm is NaryExpression) {
      return visitFieldsNaryExpression(elm, context);
    } else if (elm is TernaryExpression) {
      return visitFieldsTernaryExpression(elm, context);
    } else if (elm is OperatorExpression) {
      return visitFieldsOperatorExpression(elm, context);
    } else if (elm is BinaryExpression) {
      return visitFieldsBinaryExpression(elm, context);
    } else if (elm is AliasedQuerySource) {
      return visitFieldsAliasedQuerySource(elm, context);
    } else if (elm is CqlExpression) {
      return visitFieldsExpression(elm, context);
    } else {
      return visitFieldsElement(elm, context);
    }
  }

  //    @override
  T? visitFieldsElement(Element elm, C context) {
    T? result = defaultResult(elm, context);

    if (elm.resultTypeSpecifier != null) {
      T? childResult = visitTypeSpecifier(elm.resultTypeSpecifier!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  T? visitFieldsExpression(CqlExpression elm, C context) {
    return visitFields(elm, context);
  }

  T? visitFieldsRelationshipClause(RelationshipClause elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.suchThat != null) {
      T? childResult = visitExpression(elm.suchThat!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// visits the fields of an AggregateExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsAggregateExpression(AggregateExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.source, context);
    result = aggregateResult(result, childResult);

    for (var s in elm.signature ?? <TypeSpecifierExpression>[]) {
      T? childResult = visitTypeSpecifier(s, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visit the fields of an ExpressionDef
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsExpressionDef(ExpressionDef elm, C context) {
    T? result = visitFields(elm, context);

    if (elm.accessLevel != null) {
      T? childResult = visitAccessModifier(elm.accessLevel!, context);
      result = aggregateResult(result, childResult);
    }
    if (elm.expression != null) {
      T? childResult = visitExpression(elm.expression!, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visits the fields of a UnaryExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsUnaryExpression(UnaryExpression elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.operand, context);
    result = aggregateResult(result, childResult);

    return result;
  }

  /// visits the fields of an NaryExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsNaryExpression(NaryExpression elm, C context) {
    T? result = visitFields(elm, context);

    for (CqlExpression e in elm.operand ?? <CqlExpression>[]) {
      T? childResult = visitExpression(e, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visits the fields of a TernaryExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsTernaryExpression(TernaryExpression elm, C context) {
    T? result = visitFields(elm, context);

    for (var s in elm.operands) {
      T? childResult = visitExpression(s, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// Visits the fields of an OperatorExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsOperatorExpression(OperatorExpression elm, C context) {
    T? result = visitFields(elm, context);

    for (var s in elm.signature ?? <TypeSpecifierExpression>[]) {
      T? childResult = visitTypeSpecifier(s, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  /// visits the fields of a BinaryExpression
  ///
  /// @param elm
  /// @param context
  /// @return
  ///
  T? visitFieldsBinaryExpression(BinaryExpression elm, C context) {
    T? result = visitFields(elm, context);

    for (CqlExpression e in elm.operand) {
      T? childResult = visitExpression(e, context);
      result = aggregateResult(result, childResult);
    }

    return result;
  }

  T? visitFieldsAliasedQuerySource(AliasedQuerySource elm, C context) {
    T? result = visitFields(elm, context);

    T? childResult = visitExpression(elm.expression, context);
    result = aggregateResult(result, childResult);

    return result;
  }
}
