import '../../cql.dart';

/// The Expression type defines the abstract base type for all expressions used in the ELM expression language.
class CqlExpression extends Element {
  CqlExpression({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CqlExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type is String) {
      switch (type) {
        case 'Abs':
          return Abs.fromJson(json);
        case 'Add':
          return Add.fromJson(json);
        case 'After':
          return After.fromJson(json);
        case 'Aggregate':
          return Aggregate.fromJson(json);
        case 'AggregateExpression':
          return AggregateExpression.fromJson(json);
        case 'AliasedQuerySource':
          return AliasedQuerySource.fromJson(json);
        case 'AliasRef':
          return AliasRef.fromJson(json);
        case 'AllTrue':
          return AllTrue.fromJson(json);
        case 'And':
          return And.fromJson(json);
        case 'AnyInCodeSystem':
          return AnyInCodeSystem.fromJson(json);
        case 'AnyInValueSet':
          return AnyInValueSet.fromJson(json);
        case 'AnyTrue':
          return AnyTrue.fromJson(json);
        case 'As':
          return As.fromJson(json);
        case 'Avg':
          return Avg.fromJson(json);
        case 'Before':
          return Before.fromJson(json);
        case 'BinaryExpression':
          return BinaryExpression.fromJson(json);
        case 'BoundParameterTypeSpecifier':
          return BoundParameterTypeSpecifier.fromJson(json);
        case 'CalculateAge':
          return CalculateAge.fromJson(json);
        case 'CalculateAgeAt':
          return CalculateAgeAt.fromJson(json);
        case 'CanConvert':
          return CanConvert.fromJson(json);
        case 'CanConvertQuantity':
          return CanConvertQuantity.fromJson(json);
        case 'Case':
          return Case.fromJson(json);
        case 'Ceiling':
          return Ceiling.fromJson(json);
        case 'Children':
          return Children.fromJson(json);
        case 'ChoiceTypeSpecifier':
          return ChoiceTypeSpecifier.fromJson(json);
        case 'Coalesce':
          return Coalesce.fromJson(json);
        case 'Code':
          return Code.fromJson(json);
        case 'CodeRef':
          return CodeRef.fromJson(json);
        case 'CodeSystemRef':
          return CodeSystemRef.fromJson(json);
        case 'Collapse':
          return Collapse.fromJson(json);
        case 'Combine':
          return Combine.fromJson(json);
        case 'Concatenate':
          return Concatenate.fromJson(json);
        case 'Concept':
          return Concept.fromJson(json);
        case 'ConceptRef':
          return ConceptRef.fromJson(json);
        case 'Contains':
          return Contains.fromJson(json);
        case 'Convert':
          return Convert.fromJson(json);
        case 'ConvertQuantity':
          return ConvertQuantity.fromJson(json);
        case 'ConvertsToBoolean':
          return ConvertsToBoolean.fromJson(json);
        case 'ConvertsToDate':
          return ConvertsToDate.fromJson(json);
        case 'ConvertsToDateTime':
          return ConvertsToDateTime.fromJson(json);
        case 'ConvertsToDecimal':
          return ConvertsToDecimal.fromJson(json);
        case 'ConvertsToInteger':
          return ConvertsToInteger.fromJson(json);
        case 'ConvertsToLong':
          return ConvertsToLong.fromJson(json);
        case 'ConvertsToQuantity':
          return ConvertsToQuantity.fromJson(json);
        case 'ConvertsToRatio':
          return ConvertsToRatio.fromJson(json);
        case 'ConvertsToString':
          return ConvertsToString.fromJson(json);
        case 'ConvertsToTime':
          return ConvertsToTime.fromJson(json);
        case 'Count':
          return Count.fromJson(json);
        case 'Current':
          return Current.fromJson(json);
        case 'DateFrom':
          return DateFrom.fromJson(json);
        case 'DateTimeComponentFrom':
          return DateTimeComponentFrom.fromJson(json);
        case 'Descendents':
          return Descendents.fromJson(json);
        case 'DifferenceBetween':
          return DifferenceBetween.fromJson(json);
        case 'Distinct':
          return Distinct.fromJson(json);
        case 'Divide':
          return Divide.fromJson(json);
        case 'DurationBetween':
          return DurationBetween.fromJson(json);
        case 'End':
          return End.fromJson(json);
        case 'Ends':
          return Ends.fromJson(json);
        case 'EndsWith':
          return EndsWith.fromJson(json);
        case 'Equal':
          return Equal.fromJson(json);
        case 'Equivalent':
          return Equivalent.fromJson(json);
        case 'Except':
          return Except.fromJson(json);
        case 'Exists':
          return Exists.fromJson(json);
        case 'Exp':
          return Exp.fromJson(json);
        case 'Expand':
          return Expand.fromJson(json);
        case 'ExpandValueSet':
          return ExpandValueSet.fromJson(json);
        case 'DateTime':
          return DateTimeExpression.fromJson(json);
        case 'Date':
          return DateExpression.fromJson(json);
        case 'Expression':
          return CqlExpression.fromJson(json);
        case 'ExpressionRef':
          return ExpressionRef.fromJson(json);
        case 'Time':
          return TimeExpression.fromJson(json);
        case 'Filter':
          return Filter.fromJson(json);
        case 'First':
          return First.fromJson(json);
        case 'Flatten':
          return Flatten.fromJson(json);
        case 'Floor':
          return Floor.fromJson(json);
        case 'ForEach':
          return ForEach.fromJson(json);
        case 'FunctionRef':
          return FunctionRef.fromJson(json);
        case 'GeometricMean':
          return GeometricMean.fromJson(json);
        case 'Greater':
          return Greater.fromJson(json);
        case 'GreaterOrEqual':
          return GreaterOrEqual.fromJson(json);
        case 'HighBoundary':
          return HighBoundary.fromJson(json);
        case 'IdentifierRef':
          return IdentifierRef.fromJson(json);
        case 'If':
          return If.fromJson(json);
        case 'Implies':
          return Implies.fromJson(json);
        case 'In':
          return In.fromJson(json);
        case 'IncludedIn':
          return IncludedIn.fromJson(json);
        case 'Includes':
          return Includes.fromJson(json);
        case 'InCodeSystem':
          return InCodeSystem.fromJson(json);
        case 'Indexer':
          return Indexer.fromJson(json);
        case 'IndexOf':
          return IndexOf.fromJson(json);
        case 'Instance':
          return Instance.fromJson(json);
        case 'Intersect':
          return Intersect.fromJson(json);
        case 'Interval':
          return IntervalExpression.fromJson(json);
        case 'IntervalTypeSpecifier':
          return IntervalTypeSpecifier.fromJson(json);
        case 'InValueSet':
          return InValueSet.fromJson(json);
        case 'Is':
          return Is.fromJson(json);
        case 'IsFalse':
          return IsFalse.fromJson(json);
        case 'Null':
          return NullExpression.fromJson(json);
        case 'IsNull':
          return IsNull.fromJson(json);
        case 'IsTrue':
          return IsTrue.fromJson(json);
        case 'Iteration':
          return Iteration.fromJson(json);
        case 'Last':
          return Last.fromJson(json);
        case 'LastPositionOf':
          return LastPositionOf.fromJson(json);
        case 'Length':
          return Length.fromJson(json);
        case 'Less':
          return Less.fromJson(json);
        case 'LessOrEqual':
          return LessOrEqual.fromJson(json);
        case 'List':
          return ListExpression.fromJson(json);
        case 'ListTypeSpecifier':
          return ListTypeSpecifier.fromJson(json);
        case 'Literal':
          return Literal.fromJson(json);
        case 'Ln':
          return Ln.fromJson(json);
        case 'Log':
          return Log.fromJson(json);
        case 'LowBoundary':
          return LowBoundary.fromJson(json);
        case 'Lower':
          return Lower.fromJson(json);
        case 'Matches':
          return Matches.fromJson(json);
        case 'Max':
          return Max.fromJson(json);
        case 'MaxValue':
          return MaxValue.fromJson(json);
        case 'Median':
          return Median.fromJson(json);
        case 'Meets':
          return Meets.fromJson(json);
        case 'MeetsAfter':
          return MeetsAfter.fromJson(json);
        case 'MeetsBefore':
          return MeetsBefore.fromJson(json);
        case 'Message':
          return Message.fromJson(json);
        case 'Min':
          return Min.fromJson(json);
        case 'MinValue':
          return MinValue.fromJson(json);
        case 'Mode':
          return Mode.fromJson(json);
        case 'Modulo':
          return Modulo.fromJson(json);
        case 'Multiply':
          return Multiply.fromJson(json);
        case 'NamedTypeSpecifier':
          return NamedTypeSpecifier.fromJson(json);
        case 'NaryExpression':
          return NaryExpression.fromJson(json);
        case 'Negate':
          return Negate.fromJson(json);
        case 'Not':
          return Not.fromJson(json);
        case 'NotEqual':
          return NotEqual.fromJson(json);
        case 'Now':
          return Now.fromJson(json);
        case 'NullExpression':
          return NullExpression.fromJson(json);
        case 'OperandRef':
          return OperandRef.fromJson(json);
        case 'OperatorExpression':
          return OperatorExpression.fromJson(json);
        case 'Or':
          return Or.fromJson(json);
        case 'Overlaps':
          return Overlaps.fromJson(json);
        case 'OverlapsAfter':
          return OverlapsAfter.fromJson(json);
        case 'OverlapsBefore':
          return OverlapsBefore.fromJson(json);
        case 'ParameterRef':
          return ParameterRef.fromJson(json);
        case 'ParameterTypeSpecifier':
          return ParameterTypeSpecifier.fromJson(json);
        case 'PointFrom':
          return PointFrom.fromJson(json);
        case 'PopulationStdDev':
          return PopulationStdDev.fromJson(json);
        case 'PopulationVariance':
          return PopulationVariance.fromJson(json);
        case 'PositionOf':
          return PositionOf.fromJson(json);
        case 'Power':
          return Power.fromJson(json);
        case 'Precision':
          return Precision.fromJson(json);
        case 'Predecessor':
          return Predecessor.fromJson(json);
        case 'Product':
          return Product.fromJson(json);
        case 'ProperContains':
          return ProperContains.fromJson(json);
        case 'ProperIn':
          return ProperIn.fromJson(json);
        case 'ProperIncludedIn':
          return ProperIncludedIn.fromJson(json);
        case 'ProperIncludes':
          return ProperIncludes.fromJson(json);
        case 'Property':
          return Property.fromJson(json);
        case 'Quantity':
          return Quantity.fromJson(json);
        case 'Query':
          return Query.fromJson(json);
        case 'QueryLetRef':
          return QueryLetRef.fromJson(json);
        case 'Ratio':
          return Ratio.fromJson(json);
        case 'Ref':
          return Ref.fromJson(json);
        case 'RelationshipClause':
          return RelationshipClause.fromJson(json);
        case 'Repeat':
          return Repeat.fromJson(json);
        case 'ReplaceMatches':
          return ReplaceMatches.fromJson(json);
        case 'Retrieve':
          return Retrieve.fromJson(json);
        case 'Round':
          return Round.fromJson(json);
        case 'SameAs':
          return SameAs.fromJson(json);
        case 'SameOrAfter':
          return SameOrAfter.fromJson(json);
        case 'SameOrBefore':
          return SameOrBefore.fromJson(json);
        case 'SingletonFrom':
          return SingletonFrom.fromJson(json);
        case 'Size':
          return Size.fromJson(json);
        case 'Slice':
          return Slice.fromJson(json);
        case 'Sort':
          return Sort.fromJson(json);
        case 'Split':
          return Split.fromJson(json);
        case 'SplitOnMatches':
          return SplitOnMatches.fromJson(json);
        case 'Start':
          return Start.fromJson(json);
        case 'Starts':
          return Starts.fromJson(json);
        case 'StartsWith':
          return StartsWith.fromJson(json);
        case 'StdDev':
          return StdDev.fromJson(json);
        case 'Substring':
          return Substring.fromJson(json);
        case 'SubsumedBy':
          return SubsumedBy.fromJson(json);
        case 'Subsumes':
          return Subsumes.fromJson(json);
        case 'Subtract':
          return Subtract.fromJson(json);
        case 'Successor':
          return Successor.fromJson(json);
        case 'Sum':
          return Sum.fromJson(json);
        case 'TernaryExpression':
          return TernaryExpression.fromJson(json);
        case 'TimeFrom':
          return TimeFrom.fromJson(json);
        case 'TimeOfDay':
          return TimeOfDay.fromJson(json);
        case 'Times':
          return Times.fromJson(json);
        case 'TimezoneOffsetFrom':
          return TimezoneOffsetFrom.fromJson(json);
        case 'ToBoolean':
          return ToBoolean.fromJson(json);
        case 'ToChars':
          return ToChars.fromJson(json);
        case 'ToConcept':
          return ToConcept.fromJson(json);
        case 'ToDate':
          return ToDate.fromJson(json);
        case 'ToDateTime':
          return ToDateTime.fromJson(json);
        case 'Today':
          return Today.fromJson(json);
        case 'ToDecimal':
          return ToDecimal.fromJson(json);
        case 'ToInteger':
          return ToInteger.fromJson(json);
        case 'ToLong':
          return ToLong.fromJson(json);
        case 'ToList':
          return ToList.fromJson(json);
        case 'ToQuantity':
          return ToQuantity.fromJson(json);
        case 'ToRatio':
          return ToRatio.fromJson(json);
        case 'ToString':
          return ToString.fromJson(json);
        case 'Total':
          return Total.fromJson(json);
        case 'ToTime':
          return ToTime.fromJson(json);
        case 'Truncate':
          return Truncate.fromJson(json);
        case 'TruncatedDivide':
          return TruncatedDivide.fromJson(json);
        case 'Tuple':
          return Tuple.fromJson(json);
        case 'TupleTypeSpecifier':
          return TupleTypeSpecifier.fromJson(json);
        case 'TypeSpecifier':
          return TypeSpecifierExpression.fromJson(json);
        case 'UnaryExpression':
          return UnaryExpression.fromJson(json);
        case 'Union':
          return Union.fromJson(json);
        case 'Upper':
          return Upper.fromJson(json);
        case 'ValueSetRef':
          return ValueSetRef.fromJson(json);
        case 'Variance':
          return Variance.fromJson(json);
        case 'Width':
          return Width.fromJson(json);
        case 'With':
          return With.fromJson(json);
        case 'Without':
          return Without.fromJson(json);
        case 'Xor':
          return Xor.fromJson(json);
      }
    }
    if (json.isEmpty) {
      return CqlExpression();
    }
    throw ArgumentError.value(
        json.toString(), 'json', 'Could not parse unknown Expression type');
  }

  @override
  dynamic toJson() {
    final data = <String, dynamic>{};

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

  String? get type => throw 'Unknown Expression type: $runtimeType';

  dynamic execute() {
    throw 'Unknown Expression type: $runtimeType';
  }
}
