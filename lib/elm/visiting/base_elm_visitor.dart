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
     T defaultResult(Trackable elm, C context) {
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
     T aggregateResult(T aggregate, T nextResult) {
        return nextResult;
    }

    
    /// Visit an Element in an ELM tree. This method will be called for
    /// every node in the tree that is a descendant of the Element type.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitElement(Element elm, C context) {
        if (elm is Expression) return visitExpression((Expression) elm, context);
        else if (elm is CaseItem) return visitCaseItem((CaseItem) elm, context);
        else if (elm is LetClause) return visitLetClause((LetClause) elm, context);
        else if (elm is OperandDef) return visitOperandDef((OperandDef) elm, context);
        else if (elm is ParameterDef) return visitParameterDef((ParameterDef) elm, context);
        else if (elm is SortByItem) return visitSortByItem((SortByItem) elm, context);
        else if (elm is SortClause) return visitSortClause((SortClause) elm, context);
        else if (elm is TupleElementDefinition)
            return visitTupleElementDefinition((TupleElementDefinition) elm, context);
        else if (elm is TypeSpecifier) return visitTypeSpecifier((TypeSpecifier) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown Element type: " + elm.getClass().getName());
    }

    
    /// Visit a TypeSpecifier. This method will be called for every
    /// node in the tree that is a descendant of the TypeSpecifier type.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTypeSpecifier(TypeSpecifier elm, C context) {
        if (elm is NamedTypeSpecifier) return visitNamedTypeSpecifier((NamedTypeSpecifier) elm, context);
        else if (elm is IntervalTypeSpecifier)
            return visitIntervalTypeSpecifier((IntervalTypeSpecifier) elm, context);
        else if (elm is ListTypeSpecifier) return visitListTypeSpecifier((ListTypeSpecifier) elm, context);
        else if (elm is TupleTypeSpecifier) return visitTupleTypeSpecifier((TupleTypeSpecifier) elm, context);
        else if (elm is ChoiceTypeSpecifier)
            return visitChoiceTypeSpecifier((ChoiceTypeSpecifier) elm, context);
        else if (elm is ParameterTypeSpecifier)
            return visitParameterTypeSpecifier((ParameterTypeSpecifier) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown TypeSpecifier type: " + elm.getClass().getName());
    }

    
    /// Visit a ParameterTypeSpecifier. This method will be called for
    /// every node in the tree that is a ParameterTypeSpecifier.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitParameterTypeSpecifier(ParameterTypeSpecifier elm, C context) {
        return defaultResult(elm, context);
    }

    
    /// Visit a NamedTypeSpecifier. This method will be called for
    /// every node in the tree that is a NamedTypeSpecifier.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNamedTypeSpecifier(NamedTypeSpecifier elm, C context) {
        return defaultResult(elm, context);
    }

    
    /// Visit a IntervalTypeSpecifier. This method will be called for
    /// every node in the tree that is a IntervalTypeSpecifier.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIntervalTypeSpecifier(IntervalTypeSpecifier elm, C context) {
        T result = defaultResult(elm, context);

        if (elm.getPointType() != null) {
            T childResult = visitTypeSpecifier(elm.getPointType(), context);
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
    T visitListTypeSpecifier(ListTypeSpecifier elm, C context) {
        T result = defaultResult(elm, context);

        if (elm.getElementType() != null) {
            T childResult = visitTypeSpecifier(elm.getElementType(), context);
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
    T visitTupleElementDefinition(TupleElementDefinition elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getElementType() != null) {
            T childResult = visitTypeSpecifier(elm.getElementType(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getType() != null) {
            T childResult = visitTypeSpecifier(elm.getType(), context);
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
    T visitTupleTypeSpecifier(TupleTypeSpecifier elm, C context) {
        T result = defaultResult(elm, context);

        for (TupleElementDefinition element : elm.getElement()) {
            T childResult = visitTupleElementDefinition(element, context);
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
    T visitChoiceTypeSpecifier(ChoiceTypeSpecifier elm, C context) {
        T result = defaultResult(elm, context);

        for (var choice : elm.getChoice()) {
            T childResult = visitTypeSpecifier(choice, context);
            result = aggregateResult(result, childResult);
        }

        for (var type : elm.getType()) {
            T childResult = visitTypeSpecifier(type, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit an Expression. This method will be called for
    /// every node in the tree that is an Expression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExpression(Expression elm, C context) {
        if (elm is AliasRef) return visitAliasRef((AliasRef) elm, context);
        else if (elm is Case) return visitCase((Case) elm, context);
        else if (elm is Current) return visitCurrent((Current) elm, context);
        else if (elm is ExpressionRef) return visitExpressionRef((ExpressionRef) elm, context);
        else if (elm is Filter) return visitFilter((Filter) elm, context);
        else if (elm is ForEach) return visitForEach((ForEach) elm, context);
        else if (elm is IdentifierRef) return visitIdentifierRef((IdentifierRef) elm, context);
        else if (elm is If) return visitIf((If) elm, context);
        else if (elm is Instance) return visitInstance((Instance) elm, context);
        else if (elm is Interval) return visitInterval((Interval) elm, context);
        else if (elm is Iteration) return visitIteration((Iteration) elm, context);
        else if (elm is List) return visitList((List) elm, context);
        else if (elm is Literal) return visitLiteral((Literal) elm, context);
        else if (elm is MaxValue) return visitMaxValue((MaxValue) elm, context);
        else if (elm is MinValue) return visitMinValue((MinValue) elm, context);
        else if (elm is OperandRef) return visitOperandRef((OperandRef) elm, context);
      else if (elm is ParameterRef) return visitParameterRef((ParameterRef) elm, context);
      else if (elm is Property) return visitProperty((Property) elm, context);
      else if (elm is Query) return visitQuery((Query) elm, context);
      else if (elm is QueryLetRef) return visitQueryLetRef((QueryLetRef) elm, context);
      else if (elm is Repeat) return visitRepeat((Repeat) elm, context);
      else if (elm is Sort) return visitSort((Sort) elm, context);
      else if (elm is Total) return visitTotal((Total) elm, context);
      else if (elm is Tuple) return visitTuple((Tuple) elm, context);
      else if (elm is AggregateExpression)
          return visitAggregateExpression((AggregateExpression) elm, context);
      else if (elm is OperatorExpression) return visitOperatorExpression((OperatorExpression) elm, context);
      else
          throw new IllegalArgumentException(
                  "Unknown Expression type: " + elm.getClass().getName());
    }

    
    /// Visit an OperatorExpression. This method will be called for
    /// every node in the tree that is an OperatorExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOperatorExpression(OperatorExpression elm, C context) {
        if (elm is Round) return visitRound((Round) elm, context);
        else if (elm is Combine) return visitCombine((Combine) elm, context);
        else if (elm is Split) return visitSplit((Split) elm, context);
        else if (elm is SplitOnMatches) return visitSplitOnMatches((SplitOnMatches) elm, context);
        else if (elm is PositionOf) return visitPositionOf((PositionOf) elm, context);
        else if (elm is LastPositionOf) return visitLastPositionOf((LastPositionOf) elm, context);
        else if (elm is Substring) return visitSubstring((Substring) elm, context);
        else if (elm is TimeOfDay) return visitTimeOfDay((TimeOfDay) elm, context);
        else if (elm is Today) return visitToday((Today) elm, context);
        else if (elm is Now) return visitNow((Now) elm, context);
        else if (elm is Time) return visitTime((Time) elm, context);
        else if (elm is Date) return visitDate((Date) elm, context);
        else if (elm is DateTime) return visitDateTime((DateTime) elm, context);
        else if (elm is First) return visitFirst((First) elm, context);
        else if (elm is Last) return visitLast((Last) elm, context);
        else if (elm is IndexOf) return visitIndexOf((IndexOf) elm, context);
        else if (elm is Slice) return visitSlice((Slice) elm, context);
        else if (elm is Children) return visitChildren((Children) elm, context);
        else if (elm is Descendents) return visitDescendents((Descendents) elm, context);
        else if (elm is Message) return visitMessage((Message) elm, context);
        else if (elm is UnaryExpression) return visitUnaryExpression((UnaryExpression) elm, context);
        else if (elm is BinaryExpression) return visitBinaryExpression((BinaryExpression) elm, context);
        else if (elm is TernaryExpression) return visitTernaryExpression((TernaryExpression) elm, context);
        else if (elm is NaryExpression) return visitNaryExpression((NaryExpression) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown OperatorExpression type: " + elm.getClass().getName());
    }

    
    /// Visit a UnaryExpression. This method will be called for
    /// every node in the tree that is a UnaryExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitUnaryExpression(UnaryExpression elm, C context) {
        if (elm is Abs) return visitAbs((Abs) elm, context);
        else if (elm is As) return visitAs((As) elm, context);
        else if (elm is Ceiling) return visitCeiling((Ceiling) elm, context);
        else if (elm is CanConvert) return visitCanConvert((CanConvert) elm, context);
        else if (elm is Convert) return visitConvert((Convert) elm, context);
        else if (elm is ConvertsToBoolean) return visitConvertsToBoolean((ConvertsToBoolean) elm, context);
        else if (elm is ConvertsToDate) return visitConvertsToDate((ConvertsToDate) elm, context);
        else if (elm is ConvertsToDateTime) return visitConvertsToDateTime((ConvertsToDateTime) elm, context);
        else if (elm is ConvertsToDecimal) return visitConvertsToDecimal((ConvertsToDecimal) elm, context);
        else if (elm is ConvertsToInteger) return visitConvertsToInteger((ConvertsToInteger) elm, context);
        else if (elm is ConvertsToLong) return visitConvertsToLong((ConvertsToLong) elm, context);
        else if (elm is ConvertsToQuantity) return visitConvertsToQuantity((ConvertsToQuantity) elm, context);
        else if (elm is ConvertsToRatio) return visitConvertsToRatio((ConvertsToRatio) elm, context);
        else if (elm is ConvertsToString) return visitConvertsToString((ConvertsToString) elm, context);
        else if (elm is ConvertsToTime) return visitConvertsToTime((ConvertsToTime) elm, context);
        else if (elm is DateFrom) return visitDateFrom((DateFrom) elm, context);
        else if (elm is DateTimeComponentFrom)
            return visitDateTimeComponentFrom((DateTimeComponentFrom) elm, context);
        else if (elm is Distinct) return visitDistinct((Distinct) elm, context);
        else if (elm is End) return visitEnd((End) elm, context);
        else if (elm is Exists) return visitExists((Exists) elm, context);
        else if (elm is Exp) return visitExp((Exp) elm, context);
        else if (elm is Flatten) return visitFlatten((Flatten) elm, context);
        else if (elm is Floor) return visitFloor((Floor) elm, context);
        else if (elm is Is) return visitIs((Is) elm, context);
        else if (elm is IsFalse) return visitIsFalse((IsFalse) elm, context);
        else if (elm is IsNull) return visitIsNull((IsNull) elm, context);
        else if (elm is IsTrue) return visitIsTrue((IsTrue) elm, context);
        else if (elm is Length) return visitLength((Length) elm, context);
        else if (elm is Ln) return visitLn((Ln) elm, context);
        else if (elm is Lower) return visitLower((Lower) elm, context);
        else if (elm is Negate) return visitNegate((Negate) elm, context);
        else if (elm is Not) return visitNot((Not) elm, context);
        else if (elm is PointFrom) return visitPointFrom((PointFrom) elm, context);
        else if (elm is Precision) return visitPrecision((Precision) elm, context);
        else if (elm is Predecessor) return visitPredecessor((Predecessor) elm, context);
        else if (elm is SingletonFrom) return visitSingletonFrom((SingletonFrom) elm, context);
        else if (elm is Size) return visitSize((Size) elm, context);
        else if (elm is Start) return visitStart((Start) elm, context);
        else if (elm is Successor) return visitSuccessor((Successor) elm, context);
        else if (elm is TimeFrom) return visitTimeFrom((TimeFrom) elm, context);
        else if (elm is TimezoneFrom) return visitTimezoneFrom((TimezoneFrom) elm, context);
        else if (elm is TimezoneOffsetFrom) return visitTimezoneOffsetFrom((TimezoneOffsetFrom) elm, context);
        else if (elm is ToBoolean) return visitToBoolean((ToBoolean) elm, context);
        else if (elm is ToConcept) return visitToConcept((ToConcept) elm, context);
        else if (elm is ToChars) return visitToChars((ToChars) elm, context);
        else if (elm is ToDate) return visitToDate((ToDate) elm, context);
        else if (elm is ToDateTime) return visitToDateTime((ToDateTime) elm, context);
        else if (elm is ToDecimal) return visitToDecimal((ToDecimal) elm, context);
        else if (elm is ToInteger) return visitToInteger((ToInteger) elm, context);
        else if (elm is ToLong) return visitToLong((ToLong) elm, context);
        else if (elm is ToList) return visitToList((ToList) elm, context);
        else if (elm is ToQuantity) return visitToQuantity((ToQuantity) elm, context);
        else if (elm is ToRatio) return visitToRatio((ToRatio) elm, context);
        else if (elm is ToString) return visitToString((ToString) elm, context);
        else if (elm is ToTime) return visitToTime((ToTime) elm, context);
        else if (elm is Truncate) return visitTruncate((Truncate) elm, context);
        else if (elm is Upper) return visitUpper((Upper) elm, context);
        else if (elm is Width) return visitWidth((Width) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown UnaryExpression type: " + elm.getClass().getName());
    }

    
    /// Visit a BinaryExpression. This method will be called for
    /// every node in the tree that is a BinaryExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitBinaryExpression(BinaryExpression elm, C context) {
        if (elm is Add) return visitAdd((Add) elm, context);
        else if (elm is After) return visitAfter((After) elm, context);
        else if (elm is And) return visitAnd((And) elm, context);
        else if (elm is Before) return visitBefore((Before) elm, context);
        else if (elm is CanConvertQuantity) return visitCanConvertQuantity((CanConvertQuantity) elm, context);
        else if (elm is Contains) return visitContains((Contains) elm, context);
        else if (elm is ConvertQuantity) return visitConvertQuantity((ConvertQuantity) elm, context);
        else if (elm is Collapse) return visitCollapse((Collapse) elm, context);
        else if (elm is DifferenceBetween) return visitDifferenceBetween((DifferenceBetween) elm, context);
        else if (elm is Divide) return visitDivide((Divide) elm, context);
        else if (elm is DurationBetween) return visitDurationBetween((DurationBetween) elm, context);
        else if (elm is Ends) return visitEnds((Ends) elm, context);
        else if (elm is EndsWith) return visitEndsWith((EndsWith) elm, context);
        else if (elm is Equal) return visitEqual((Equal) elm, context);
        else if (elm is Equivalent) return visitEquivalent((Equivalent) elm, context);
        else if (elm is Expand) return visitExpand((Expand) elm, context);
        else if (elm is Greater) return visitGreater((Greater) elm, context);
        else if (elm is GreaterOrEqual) return visitGreaterOrEqual((GreaterOrEqual) elm, context);
        else if (elm is HighBoundary) return visitHighBoundary((HighBoundary) elm, context);
        else if (elm is Implies) return visitImplies((Implies) elm, context);
        else if (elm is In) return visitIn((In) elm, context);
        else if (elm is IncludedIn) return visitIncludedIn((IncludedIn) elm, context);
        else if (elm is Includes) return visitIncludes((Includes) elm, context);
        else if (elm is Indexer) return visitIndexer((Indexer) elm, context);
        else if (elm is Less) return visitLess((Less) elm, context);
        else if (elm is LessOrEqual) return visitLessOrEqual((LessOrEqual) elm, context);
        else if (elm is Log) return visitLog((Log) elm, context);
        else if (elm is LowBoundary) return visitLowBoundary((LowBoundary) elm, context);
        else if (elm is Matches) return visitMatches((Matches) elm, context);
        else if (elm is Meets) return visitMeets((Meets) elm, context);
        else if (elm is MeetsAfter) return visitMeetsAfter((MeetsAfter) elm, context);
        else if (elm is MeetsBefore) return visitMeetsBefore((MeetsBefore) elm, context);
        else if (elm is Modulo) return visitModulo((Modulo) elm, context);
        else if (elm is Multiply) return visitMultiply((Multiply) elm, context);
        else if (elm is NotEqual) return visitNotEqual((NotEqual) elm, context);
        else if (elm is Or) return visitOr((Or) elm, context);
        else if (elm is Overlaps) return visitOverlaps((Overlaps) elm, context);
        else if (elm is OverlapsAfter) return visitOverlapsAfter((OverlapsAfter) elm, context);
        else if (elm is OverlapsBefore) return visitOverlapsBefore((OverlapsBefore) elm, context);
        else if (elm is Power) return visitPower((Power) elm, context);
        else if (elm is ProperContains) return visitProperContains((ProperContains) elm, context);
        else if (elm is ProperIn) return visitProperIn((ProperIn) elm, context);
        else if (elm is ProperIncludedIn) return visitProperIncludedIn((ProperIncludedIn) elm, context);
        else if (elm is ProperIncludes) return visitProperIncludes((ProperIncludes) elm, context);
        else if (elm is SameAs) return visitSameAs((SameAs) elm, context);
        else if (elm is SameOrAfter) return visitSameOrAfter((SameOrAfter) elm, context);
        else if (elm is SameOrBefore) return visitSameOrBefore((SameOrBefore) elm, context);
        else if (elm is Starts) return visitStarts((Starts) elm, context);
        else if (elm is StartsWith) return visitStartsWith((StartsWith) elm, context);
        else if (elm is Subtract) return visitSubtract((Subtract) elm, context);
        else if (elm is Times) return visitTimes((Times) elm, context);
        else if (elm is TruncatedDivide) return visitTruncatedDivide((TruncatedDivide) elm, context);
        else if (elm is Xor) return visitXor((Xor) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown BinaryExpression type: " + elm.getClass().getName());
    }

    
    /// Visit a TernaryExpression. This method will be called for
    /// every node in the tree that is a TernaryExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTernaryExpression(TernaryExpression elm, C context) {
        if (elm is ReplaceMatches) return visitReplaceMatches((ReplaceMatches) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown TernaryExpression type: " + elm.getClass().getName());
    }

    
    /// Visit a NaryExpression. This method will be called for
    /// every node in the tree that is a NaryExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNaryExpression(NaryExpression elm, C context) {
        if (elm is Coalesce) return visitCoalesce((Coalesce) elm, context);
        else if (elm is Concatenate) return visitConcatenate((Concatenate) elm, context);
        else if (elm is Except) return visitExcept((Except) elm, context);
        else if (elm is Intersect) return visitIntersect((Intersect) elm, context);
        else if (elm is Union) return visitUnion((Union) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unknown NaryExpression type: " + elm.getClass().getName());
    }

    
    /// Visit a ExpressionDef. This method will be called for
    /// every node in the tree that is a ExpressionDef.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExpressionDef(ExpressionDef elm, C context) {
        if (elm is FunctionDef) {
            return visitFunctionDef((FunctionDef) elm, context);
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
    T visitFunctionDef(FunctionDef elm, C context) {
        T result = visitFields(elm, context);

        for (var operand : elm.getOperand()) {
            T childResult = visitOperandDef(operand, context);
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
    T visitAccessModifier(AccessModifier elm, C context) {
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
    T visitExpressionRef(ExpressionRef elm, C context) {
        if (elm is FunctionRef) {
            return visitFunctionRef((FunctionRef) elm, context);
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
    T visitFunctionRef(FunctionRef elm, C context) {
        T result = visitFields(elm, context);

        for (var element : elm.getOperand()) {
            T childResult = visitExpression(element, context);
            result = aggregateResult(result, childResult);
        }

        for (var s : elm.getSignature()) {
            T childResult = visitTypeSpecifier(s, context);
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
    T visitParameterDef(ParameterDef elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getParameterTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getParameterTypeSpecifier(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getDefault() != null) {
            T childResult = visitExpression(elm.getDefault(), context);
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
    T visitParameterRef(ParameterRef elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a OperandDef. This method will be called for
    /// every node in the tree that is a OperandDef.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOperandDef(OperandDef elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getOperandTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getOperandTypeSpecifier(), context);
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
    T visitOperandRef(OperandRef elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a IdentifierRef. This method will be called for
    /// every node in the tree that is a IdentifierRef.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIdentifierRef(IdentifierRef elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Literal. This method will be called for
    /// every node in the tree that is a Literal.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLiteral(Literal elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TupleElement. This method will be called for
    /// every node in the tree that is a TupleElement.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTupleElement(TupleElement elm, C context) {
        T result = defaultResult(elm, context);

        if (elm.getValue() != null) {
            T childResult = visitExpression(elm.getValue(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Tuple. This method will be called for
    /// every node in the tree that is a Tuple.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTuple(Tuple elm, C context) {
        T result = visitFields(elm, context);

        for (TupleElement element : elm.getElement()) {
            T childResult = visitTupleElement(element, context);
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
    T visitInstanceElement(InstanceElement elm, C context) {
        T result = defaultResult(elm, context);

        if (elm.getValue() != null) {
            T childResult = visitExpression(elm.getValue(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Instance. This method will be called for
    /// every node in the tree that is a Instance.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitInstance(Instance elm, C context) {
        T result = visitFields(elm, context);

        for (InstanceElement element : elm.getElement()) {
            T childResult = visitInstanceElement(element, context);
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
    T visitInterval(Interval elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getLow() != null) {
            T childResult = visitExpression(elm.getLow(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getLowClosedExpression() != null) {
            T childResult = visitExpression(elm.getLowClosedExpression(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getHigh() != null) {
            T childResult = visitExpression(elm.getHigh(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getHighClosedExpression() != null) {
            T childResult = visitExpression(elm.getHighClosedExpression(), context);
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
    T visitList(List elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getTypeSpecifier(), context);
            result = aggregateResult(result, childResult);
        }

        for (Expression element : elm.getElement()) {
            T childResult = visitExpression(element, context);
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
    T visitAnd(And elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Or. This method will be called for
    /// every node in the tree that is a Or.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOr(Or elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Xor. This method will be called for
    /// every node in the tree that is a Xor.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitXor(Xor elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Implies. This method will be called for
    /// every node in the tree that is a Implies.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitImplies(Implies elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Not. This method will be called for
    /// every node in the tree that is a Not.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNot(Not elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a If. This method will be called for
    /// every node in the tree that is a If.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIf(If elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getCondition() != null) {
            T childResult = visitExpression(elm.getCondition(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getThen() != null) {
            T childResult = visitExpression(elm.getThen(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getElse() != null) {
            T childResult = visitExpression(elm.getElse(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a CaseItem. This method will be called for
    /// every node in the tree that is a CaseItem.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCaseItem(CaseItem elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getWhen() != null) {
            T childResult = visitExpression(elm.getWhen(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getThen() != null) {
            T childResult = visitExpression(elm.getThen(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Case. This method will be called for
    /// every node in the tree that is a Case.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCase(Case elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getComparand() != null) {
            T childResult = visitExpression(elm.getComparand(), context);
            result = aggregateResult(result, childResult);
        }

        for (CaseItem ci : elm.getCaseItem()) {
            T childResult = visitCaseItem(ci, context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getElse() != null) {
            T childResult = visitExpression(elm.getElse(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Null. This method will be called for
    /// every node in the tree that is a Null.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNull(Null elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a IsNull. This method will be called for
    /// every node in the tree that is a IsNull.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIsNull(IsNull elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a IsTrue. This method will be called for
    /// every node in the tree that is a IsTrue.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIsTrue(IsTrue elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a IsFalse. This method will be called for
    /// every node in the tree that is a IsFalse.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIsFalse(IsFalse elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Coalesce. This method will be called for
    /// every node in the tree that is a Coalesce.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCoalesce(Coalesce elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Is. This method will be called for
    /// every node in the tree that is a Is.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIs(Is elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getIsTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getIsTypeSpecifier(), context);
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
    T visitAs(As elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getAsTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getAsTypeSpecifier(), context);
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
    T visitConvert(Convert elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getToTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getToTypeSpecifier(), context);
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
    T visitCanConvert(CanConvert elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getToTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getToTypeSpecifier(), context);
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
    T visitConvertsToBoolean(ConvertsToBoolean elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToBoolean. This method will be called for
    /// every node in the tree that is a ToBoolean.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToBoolean(ToBoolean elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToChars. This method will be called for
    /// every node in the tree that is a ToChars.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToChars(ToChars elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToConcept. This method will be called for
    /// every node in the tree that is a ToConcept.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToConcept(ToConcept elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToDate. This method will be called for
    /// every node in the tree that is a ConvertsToDate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToDate(ConvertsToDate elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToDate. This method will be called for
    /// every node in the tree that is a ToDate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToDate(ToDate elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToDateTime. This method will be called for
    /// every node in the tree that is a ConvertsToDateTime.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToDateTime(ConvertsToDateTime elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToDateTime. This method will be called for
    /// every node in the tree that is a ToDateTime.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToDateTime(ToDateTime elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToLong. This method will be called for
    /// every node in the tree that is a ConvertsToLong.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToLong(ConvertsToLong elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToLong. This method will be called for
    /// every node in the tree that is a ToLong.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToLong(ToLong elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToDecimal. This method will be called for
    /// every node in the tree that is a ConvertsToDecimal.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToDecimal(ConvertsToDecimal elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToDecimal. This method will be called for
    /// every node in the tree that is a ToDecimal.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToDecimal(ToDecimal elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToInteger. This method will be called for
    /// every node in the tree that is a ConvertsToInteger.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToInteger(ConvertsToInteger elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToInteger. This method will be called for
    /// every node in the tree that is a ToInteger.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToInteger(ToInteger elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToList. This method will be called for
    /// every node in the tree that is a ToList.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToList(ToList elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertQuantity. This method will be called for
    /// every node in the tree that is a ConvertQuantity.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertQuantity(ConvertQuantity elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a CanConvertQuantity. This method will be called for
    /// every node in the tree that is a CanConvertQuantity.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCanConvertQuantity(CanConvertQuantity elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToQuantity. This method will be called for
    /// every node in the tree that is a ConvertsToQuantity.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToQuantity(ConvertsToQuantity elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToQuantity. This method will be called for
    /// every node in the tree that is a ToQuantity.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToQuantity(ToQuantity elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToRatio. This method will be called for
    /// every node in the tree that is a ConvertsToRatio.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToRatio(ConvertsToRatio elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Ratio. This method will be called for
    /// every node in the tree that is a Ratio.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToRatio(ToRatio elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToString. This method will be called for
    /// every node in the tree that is a ConvertsToString.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToString(ConvertsToString elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToString. This method will be called for
    /// every node in the tree that is a ToString.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToString(ToString elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ConvertsToTime. This method will be called for
    /// every node in the tree that is a ConvertsToTime.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConvertsToTime(ConvertsToTime elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ToTime. This method will be called for
    /// every node in the tree that is a ToTime.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToTime(ToTime elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Equal. This method will be called for
    /// every node in the tree that is a Equal.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitEqual(Equal elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Equivalent. This method will be called for
    /// every node in the tree that is a Equivalent.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitEquivalent(Equivalent elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a NotEqual. This method will be called for
    /// every node in the tree that is a NotEqual.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNotEqual(NotEqual elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Less. This method will be called for
    /// every node in the tree that is a Less.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLess(Less elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Greater. This method will be called for
    /// every node in the tree that is a Greater.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitGreater(Greater elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a LessOrEqual. This method will be called for
    /// every node in the tree that is a LessOrEqual.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLessOrEqual(LessOrEqual elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a GreaterOrEqual. This method will be called for
    /// every node in the tree that is a GreaterOrEqual.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitGreaterOrEqual(GreaterOrEqual elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Add. This method will be called for
    /// every node in the tree that is a Add.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAdd(Add elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Subtract. This method will be called for
    /// every node in the tree that is a Subtract.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSubtract(Subtract elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Multiply. This method will be called for
    /// every node in the tree that is a Multiply.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMultiply(Multiply elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Divide. This method will be called for
    /// every node in the tree that is a Divide.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDivide(Divide elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TruncatedDivide. This method will be called for
    /// every node in the tree that is a TruncatedDivide.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTruncatedDivide(TruncatedDivide elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Modulo. This method will be called for
    /// every node in the tree that is a Modulo.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitModulo(Modulo elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Ceiling. This method will be called for
    /// every node in the tree that is a Ceiling.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCeiling(Ceiling elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Floor. This method will be called for
    /// every node in the tree that is a Floor.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitFloor(Floor elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Truncate. This method will be called for
    /// every node in the tree that is a Truncate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTruncate(Truncate elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Abs. This method will be called for
    /// every node in the tree that is a Abs.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAbs(Abs elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Negate. This method will be called for
    /// every node in the tree that is a Negate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNegate(Negate elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Round. This method will be called for
    /// every node in the tree that is a Round.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitRound(Round elm, C context) {
        T result = visitFields(elm, context);
        if (elm.getOperand() != null) {
            T childResult = visitExpression(elm.getOperand(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getPrecision() != null) {
            T childResult = visitExpression(elm.getPrecision(), context);
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
    T visitLn(Ln elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Exp. This method will be called for
    /// every node in the tree that is a Exp.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExp(Exp elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Log. This method will be called for
    /// every node in the tree that is a Log.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLog(Log elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Power. This method will be called for
    /// every node in the tree that is a Power.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPower(Power elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Successor. This method will be called for
    /// every node in the tree that is a Successor.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSuccessor(Successor elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Predecessor. This method will be called for
    /// every node in the tree that is a Predecessor.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPredecessor(Predecessor elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a MinValue. This method will be called for
    /// every node in the tree that is a MinValue.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMinValue(MinValue elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a MaxValue. This method will be called for
    /// every node in the tree that is a MaxValue.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMaxValue(MaxValue elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Precision. This method will be called for
    /// every node in the tree that is a Precision.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPrecision(Precision elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a LowBoundary. This method will be called for
    /// every node in the tree that is a LowBoundary.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLowBoundary(LowBoundary elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a HighBoundary. This method will be called for
    /// every node in the tree that is a HighBoundary.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitHighBoundary(HighBoundary elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Concatenate. This method will be called for
    /// every node in the tree that is a Concatenate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitConcatenate(Concatenate elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Combine. This method will be called for
    /// every node in the tree that is a Combine.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCombine(Combine elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSeparator() != null) {
            T childResult = visitExpression(elm.getSeparator(), context);
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
    T visitSplit(Split elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getStringToSplit() != null) {
            T childResult = visitExpression(elm.getStringToSplit(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSeparator() != null) {
            T childResult = visitExpression(elm.getSeparator(), context);
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
    T visitSplitOnMatches(SplitOnMatches elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getStringToSplit() != null) {
            T childResult = visitExpression(elm.getStringToSplit(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSeparatorPattern() != null) {
            T childResult = visitExpression(elm.getSeparatorPattern(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Length. This method will be called for
    /// every node in the tree that is a Length.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLength(Length elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Upper. This method will be called for
    /// every node in the tree that is a Upper.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitUpper(Upper elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Lower. This method will be called for
    /// every node in the tree that is a Lower.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLower(Lower elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Indexer. This method will be called for
    /// every node in the tree that is a Indexer.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIndexer(Indexer elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a PositionOf. This method will be called for
    /// every node in the tree that is a PositionOf.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPositionOf(PositionOf elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getPattern() != null) {
            T childResult = visitExpression(elm.getPattern(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getString() != null) {
            T childResult = visitExpression(elm.getString(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a LastPositionOf. This method will be called for
    /// every node in the tree that is a LastPositionOf.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLastPositionOf(LastPositionOf elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getPattern() != null) {
            T childResult = visitExpression(elm.getPattern(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getString() != null) {
            T childResult = visitExpression(elm.getString(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Substring. This method will be called for
    /// every node in the tree that is a Substring.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSubstring(Substring elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getStringToSub() != null) {
            T childResult = visitExpression(elm.getStringToSub(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getStartIndex() != null) {
            T childResult = visitExpression(elm.getStartIndex(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getLength() != null) {
            T childResult = visitExpression(elm.getLength(), context);
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
    T visitStartsWith(StartsWith elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a EndsWith. This method will be called for
    /// every node in the tree that is a EndsWith.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitEndsWith(EndsWith elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Matches. This method will be called for
    /// every node in the tree that is a Matches.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMatches(Matches elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ReplaceMatches. This method will be called for
    /// every node in the tree that is a ReplaceMatches.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitReplaceMatches(ReplaceMatches elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a DurationBetween. This method will be called for
    /// every node in the tree that is a DurationBetween.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDurationBetween(DurationBetween elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a DifferenceBetween. This method will be called for
    /// every node in the tree that is a DifferenceBetween.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDifferenceBetween(DifferenceBetween elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a DateFrom. This method will be called for
    /// every node in the tree that is a DateFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDateFrom(DateFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TimeFrom. This method will be called for
    /// every node in the tree that is a TimeFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTimeFrom(TimeFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TimezoneFrom. This method will be called for
    /// every node in the tree that is a TimezoneFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTimezoneFrom(TimezoneFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TimezoneOffsetFrom. This method will be called for
    /// every node in the tree that is a TimezoneOffsetFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTimezoneOffsetFrom(TimezoneOffsetFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a DateTimeComponentFrom. This method will be called for
    /// every node in the tree that is a DateTimeComponentFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDateTimeComponentFrom(DateTimeComponentFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a TimeOfDay. This method will be called for
    /// every node in the tree that is a TimeOfDay.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTimeOfDay(TimeOfDay elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Today. This method will be called for
    /// every node in the tree that is a Today.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitToday(Today elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Now. This method will be called for
    /// every node in the tree that is a Now.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitNow(Now elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a DateTime. This method will be called for
    /// every node in the tree that is a DateTime.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDateTime(DateTime elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getYear() != null) {
            T childResult = visitExpression(elm.getYear(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMonth() != null) {
            T childResult = visitExpression(elm.getMonth(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getDay() != null) {
            T childResult = visitExpression(elm.getDay(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getHour() != null) {
            T childResult = visitExpression(elm.getHour(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMinute() != null) {
            T childResult = visitExpression(elm.getMinute(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSecond() != null) {
            T childResult = visitExpression(elm.getSecond(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMillisecond() != null) {
            T childResult = visitExpression(elm.getMillisecond(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getTimezoneOffset() != null) {
            T childResult = visitExpression(elm.getTimezoneOffset(), context);
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
    T visitDate(Date elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getYear() != null) {
            T childResult = visitExpression(elm.getYear(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMonth() != null) {
            T childResult = visitExpression(elm.getMonth(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getDay() != null) {
            T childResult = visitExpression(elm.getDay(), context);
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
    T visitTime(Time elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getHour() != null) {
            T childResult = visitExpression(elm.getHour(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMinute() != null) {
            T childResult = visitExpression(elm.getMinute(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSecond() != null) {
            T childResult = visitExpression(elm.getSecond(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMillisecond() != null) {
            T childResult = visitExpression(elm.getMillisecond(), context);
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
    T visitSameAs(SameAs elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a SameOrBefore. This method will be called for
    /// every node in the tree that is a SameOrBefore.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSameOrBefore(SameOrBefore elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a SameOrAfter. This method will be called for
    /// every node in the tree that is a SameOrAfter.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSameOrAfter(SameOrAfter elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Width. This method will be called for
    /// every node in the tree that is a Width.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitWidth(Width elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Size. This method will be called for
    /// every node in the tree that is a Size.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSize(Size elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a PointFrom. This method will be called for
    /// every node in the tree that is a PointFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPointFrom(PointFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Start. This method will be called for
    /// every node in the tree that is a Start.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitStart(Start elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a End. This method will be called for
    /// every node in the tree that is a End.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitEnd(End elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Contains. This method will be called for
    /// every node in the tree that is a Contains.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitContains(Contains elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ProperContains. This method will be called for
    /// every node in the tree that is a ProperContains.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProperContains(ProperContains elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a In. This method will be called for
    /// every node in the tree that is a In.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIn(In elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ProperIn. This method will be called for
    /// every node in the tree that is a ProperIn.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProperIn(ProperIn elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Includes. This method will be called for
    /// every node in the tree that is a Includes.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIncludes(Includes elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a IncludedIn. This method will be called for
    /// every node in the tree that is a IncludedIn.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIncludedIn(IncludedIn elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ProperIncludes. This method will be called for
    /// every node in the tree that is a ProperIncludes.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProperIncludes(ProperIncludes elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ProperIncludedIn. This method will be called for
    /// every node in the tree that is a ProperIncludedIn.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProperIncludedIn(ProperIncludedIn elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Before. This method will be called for
    /// every node in the tree that is a Before.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitBefore(Before elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a After. This method will be called for
    /// every node in the tree that is a After.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAfter(After elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Meets. This method will be called for
    /// every node in the tree that is a Meets.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMeets(Meets elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a MeetsBefore. This method will be called for
    /// every node in the tree that is a MeetsBefore.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMeetsBefore(MeetsBefore elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a MeetsAfter. This method will be called for
    /// every node in the tree that is a MeetsAfter.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMeetsAfter(MeetsAfter elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Overlaps. This method will be called for
    /// every node in the tree that is a Overlaps.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOverlaps(Overlaps elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a OverlapsBefore. This method will be called for
    /// every node in the tree that is a OverlapsBefore.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOverlapsBefore(OverlapsBefore elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a OverlapsAfter. This method will be called for
    /// every node in the tree that is a OverlapsAfter.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitOverlapsAfter(OverlapsAfter elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Starts. This method will be called for
    /// every node in the tree that is a Starts.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitStarts(Starts elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Ends. This method will be called for
    /// every node in the tree that is a Ends.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitEnds(Ends elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Collapse. This method will be called for
    /// every node in the tree that is a Collapse.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCollapse(Collapse elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Expand. This method will be called for
    /// every node in the tree that is a Expand.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExpand(Expand elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Union. This method will be called for
    /// every node in the tree that is a Union.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitUnion(Union elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Intersect. This method will be called for
    /// every node in the tree that is a Intersect.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIntersect(Intersect elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Except. This method will be called for
    /// every node in the tree that is a Except.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExcept(Except elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Exists. This method will be called for
    /// every node in the tree that is a Exists.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitExists(Exists elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Times. This method will be called for
    /// every node in the tree that is a Times.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTimes(Times elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Filter. This method will be called for
    /// every node in the tree that is a Filter.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitFilter(Filter elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCondition() != null) {
            T childResult = visitExpression(elm.getCondition(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a First. This method will be called for
    /// every node in the tree that is a First.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitFirst(First elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Last. This method will be called for
    /// every node in the tree that is a Last.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitLast(Last elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Slice. This method will be called for
    /// every node in the tree that is a Slice.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSlice(Slice elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getStartIndex() != null) {
            T childResult = visitExpression(elm.getStartIndex(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getEndIndex() != null) {
            T childResult = visitExpression(elm.getEndIndex(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Children. This method will be called for
    /// every node in the tree that is a Children.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitChildren(Children elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Descendents. This method will be called for
    /// every node in the tree that is a Descendents.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDescendents(Descendents elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Message. This method will be called for
    /// every node in the tree that is a Message.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMessage(Message elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCondition() != null) {
            T childResult = visitExpression(elm.getCondition(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCode() != null) {
            T childResult = visitExpression(elm.getCode(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getSeverity() != null) {
            T childResult = visitExpression(elm.getSeverity(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getMessage() != null) {
            T childResult = visitExpression(elm.getMessage(), context);
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
    T visitIndexOf(IndexOf elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getElement() != null) {
            T childResult = visitExpression(elm.getElement(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Flatten. This method will be called for
    /// every node in the tree that is a Flatten.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitFlatten(Flatten elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Sort. This method will be called for
    /// every node in the tree that is a Sort.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSort(Sort elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        for (SortByItem sbi : elm.getBy()) {
            T childResult = visitSortByItem(sbi, context);
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
    T visitForEach(ForEach elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getElement() != null) {
            T childResult = visitExpression(elm.getElement(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Repeat. This method will be called for
    /// every node in the tree that is a Repeat.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitRepeat(Repeat elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getElement() != null) {
            T childResult = visitExpression(elm.getElement(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Distinct. This method will be called for
    /// every node in the tree that is a Distinct.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitDistinct(Distinct elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Current. This method will be called for
    /// every node in the tree that is a Current.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCurrent(Current elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit an Iteration. This method will be called for
    /// every node in the tree that is an Iteration.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitIteration(Iteration elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Total. This method will be called for
    /// every node in the tree that is a Total.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitTotal(Total elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a SingletonFrom. This method will be called for
    /// every node in the tree that is a SingletonFrom.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSingletonFrom(SingletonFrom elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a AggregateExpression. This method will be called for
    /// every node in the tree that is a AggregateExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAggregateExpression(AggregateExpression elm, C context) {
        if (elm is Aggregate) return visitAggregate((Aggregate) elm, context);
        else if (elm is Count) return visitCount((Count) elm, context);
        else if (elm is Sum) return visitSum((Sum) elm, context);
        else if (elm is Product) return visitProduct((Product) elm, context);
        else if (elm is Min) return visitMin((Min) elm, context);
        else if (elm is Max) return visitMax((Max) elm, context);
        else if (elm is Avg) return visitAvg((Avg) elm, context);
        else if (elm is GeometricMean) return visitGeometricMean((GeometricMean) elm, context);
        else if (elm is Median) return visitMedian((Median) elm, context);
        else if (elm is Mode) return visitMode((Mode) elm, context);
        else if (elm is Variance) return visitVariance((Variance) elm, context);
        else if (elm is StdDev) return visitStdDev((StdDev) elm, context);
        else if (elm is PopulationVariance) return visitPopulationVariance((PopulationVariance) elm, context);
        else if (elm is PopulationStdDev) return visitPopulationStdDev((PopulationStdDev) elm, context);
        else if (elm is AllTrue) return visitAllTrue((AllTrue) elm, context);
        else if (elm is AnyTrue) return visitAnyTrue((AnyTrue) elm, context);
        else
            throw new IllegalArgumentException(
                    "Unsupported AggregateExpression type: " + elm.getClass().getName());
    }

    
    /// Visit an Aggregate. This method will be called for
    /// every node in the tree that is an Aggregate.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAggregate(Aggregate elm, C context) {
        T result = visitFields((AggregateExpression) elm, context);

        if (elm.getInitialValue() != null) {
            T childResult = visitExpression(elm.getInitialValue(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getIteration() != null) {
            T childResult = visitExpression(elm.getIteration(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Count. This method will be called for
    /// every node in the tree that is a Count.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitCount(Count elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Sum. This method will be called for
    /// every node in the tree that is a Sum.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSum(Sum elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Product. This method will be called for
    /// every node in the tree that is a Product.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProduct(Product elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a GeometricMean. This method will be called for
    /// every node in the tree that is a GeometricMean.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitGeometricMean(GeometricMean elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Min. This method will be called for
    /// every node in the tree that is a Min.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMin(Min elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Max. This method will be called for
    /// every node in the tree that is a Max.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMax(Max elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Avg. This method will be called for
    /// every node in the tree that is a Avg.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAvg(Avg elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Median. This method will be called for
    /// every node in the tree that is a Median.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMedian(Median elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Mode. This method will be called for
    /// every node in the tree that is a Mode.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitMode(Mode elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Variance. This method will be called for
    /// every node in the tree that is a Variance.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitVariance(Variance elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a PopulationVariance. This method will be called for
    /// every node in the tree that is a PopulationVariance.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPopulationVariance(PopulationVariance elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a StdDev. This method will be called for
    /// every node in the tree that is a StdDev.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitStdDev(StdDev elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a PopulationStdDev. This method will be called for
    /// every node in the tree that is a PopulationStdDev.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitPopulationStdDev(PopulationStdDev elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a AllTrue. This method will be called for
    /// every node in the tree that is a AllTrue.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAllTrue(AllTrue elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a AnyTrue. This method will be called for
    /// every node in the tree that is a AnyTrue.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitAnyTrue(AnyTrue elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Property. This method will be called for
    /// every node in the tree that is a Property.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitProperty(Property elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
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
    T visitAliasedQuerySource(AliasedQuerySource elm, C context) {
        if (elm is RelationshipClause) {
            return visitRelationshipClause((RelationshipClause) elm, context);
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
    T visitLetClause(LetClause elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a RelationshipClause. This method will be called for
    /// every node in the tree that is a RelationshipClause.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitRelationshipClause(RelationshipClause elm, C context) {
        if (elm is With) {
            return visitWith((With) elm, context);
        } else if (elm is Without) {
            return visitWithout((Without) elm, context);
        } else {
            throw new IllegalArgumentException(
                    "Unknown RelationshipClause type: " + elm.getClass().getName());
        }
    }

    
    /// Visit a With. This method will be called for
    /// every node in the tree that is a With.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitWith(With elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a Without. This method will be called for
    /// every node in the tree that is a Without.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitWithout(Without elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a SortByItem. This method will be called for
    /// every node in the tree that is a SortByItem.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSortByItem(SortByItem elm, C context) {
        if (elm is ByDirection) {
            return visitByDirection((ByDirection) elm, context);
        } else if (elm is ByColumn) {
            return visitByColumn((ByColumn) elm, context);
        } else if (elm is ByExpression) {
            return visitByExpression((ByExpression) elm, context);
        } else
            throw new IllegalArgumentException(
                    "Unknown SortByItem type: " + elm.getClass().getName());
    }

    
    /// Visit a ByDirection. This method will be called for
    /// every node in the tree that is a ByDirection.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitByDirection(ByDirection elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ByColumn. This method will be called for
    /// every node in the tree that is a ByColumn.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitByColumn(ByColumn elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a ByExpression. This method will be called for
    /// every node in the tree that is a ByExpression.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitByExpression(ByExpression elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a SortClause. This method will be called for
    /// every node in the tree that is a SortClause.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitSortClause(SortClause elm, C context) {
        T result = visitFields(elm, context);

        for (SortByItem sbi : elm.getBy()) {
            T childResult = visitSortByItem(sbi, context);
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
    T visitAggregateClause(AggregateClause elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getStarting() != null) {
            T childResult = visitExpression(elm.getStarting(), context);
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
    T visitReturnClause(ReturnClause elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit a Query. This method will be called for
    /// every node in the tree that is a Query.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitQuery(Query elm, C context) {
        T result = visitFields(elm, context);

        for (var source : elm.getSource()) {
            T childResult = visitAliasedQuerySource(source, context);
            result = aggregateResult(result, childResult);
        }
        for (var let : elm.getLet()) {
            T childResult = visitLetClause(let, context);
            result = aggregateResult(result, childResult);
        }

        for (var r : elm.getRelationship()) {
            T childResult = visitRelationshipClause(r, context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getWhere() != null) {
            T childResult = visitExpression(elm.getWhere(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getReturn() != null) {
            T childResult = visitReturnClause(elm.getReturn(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getAggregate() != null) {
            T childResult = visitAggregateClause(elm.getAggregate(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getSort() != null) {
            T childResult = visitSortClause(elm.getSort(), context);
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
    T visitAliasRef(AliasRef elm, C context) {
        return visitFields(elm, context);
    }

    
    /// Visit a QueryLetRef. This method will be called for
    /// every node in the tree that is a QueryLetRef.
    /// 
    /// @param elm     the ELM tree
    /// @param context the context passed to the visitor
    /// @return the visitor result
    /// 
    T visitQueryLetRef(QueryLetRef elm, C context) {
        return visitFields(elm, context);
    }

     T visitFields(Element elm, C context) {
        T result = defaultResult(elm, context);

        if (elm.getResultTypeSpecifier() != null) {
            T childResult = visitTypeSpecifier(elm.getResultTypeSpecifier(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

     T visitFields(Expression elm, C context) {
        return visitFields((Element) elm, context);
    }

     T visitFields(RelationshipClause elm, C context) {
        T result = visitFields((AliasedQuerySource) elm, context);

        if (elm.getSuchThat() != null) {
            T childResult = visitExpression(elm.getSuchThat(), context);
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
     T visitFields(AggregateExpression elm, C context) {
        T result = visitFields((Expression) elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        for (var s : elm.getSignature()) {
            T childResult = visitTypeSpecifier(s, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// Visit the fields of an ExpressionDef
    /// @param elm
    /// @param context
    /// @return
    /// 
     T visitFields(ExpressionDef elm, C context) {
        T result = visitFields((Element) elm, context);

        if (elm.getAccessLevel() != null) {
            T childResult = visitAccessModifier(elm.getAccessLevel(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
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
     T visitFields(UnaryExpression elm, C context) {
        T result = visitFields((OperatorExpression) elm, context);

        if (elm.getOperand() != null) {
            T childResult = visitExpression(elm.getOperand(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
    /// visits the fields of an NaryExpression
    /// 
    /// @param elm
    /// @param context
    /// @return
    /// 
     T visitFields(NaryExpression elm, C context) {
        T result = visitFields((OperatorExpression) elm, context);

        for (Expression e : elm.getOperand()) {
            T childResult = visitExpression(e, context);
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
     T visitFields(TernaryExpression elm, C context) {
        T result = visitFields((OperatorExpression) elm, context);

        for (var s : elm.getOperand()) {
            T childResult = visitExpression(s, context);
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
     T visitFields(OperatorExpression elm, C context) {
        T result = visitFields((Expression) elm, context);

        for (var s : elm.getSignature()) {
            T childResult = visitTypeSpecifier(s, context);
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
     T visitFields(BinaryExpression elm, C context) {
        T result = visitFields((OperatorExpression) elm, context);

        for (Expression e : elm.getOperand()) {
            T childResult = visitExpression(e, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

     T visitFields(AliasedQuerySource elm, C context) {
        T result = visitFields((Element) elm, context);

        if (elm.getExpression() != null) {
            T childResult = visitExpression(elm.getExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }
}
