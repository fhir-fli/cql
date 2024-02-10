import '../cql.dart';

class EvaluationVisitor extends BaseElmLibraryVisitor<Object, State> {
  @override
  Object visitExpressionDef(ExpressionDef expressionDef, State state) {
    return ExpressionDefEvaluator.internalEvaluate(expressionDef, state, this);
  }

  // @Override
  // Object visitExpressionRef(ExpressionRef expressionRef, State state) {
  //     return ExpressionRefEvaluator.internalEvaluate(expressionRef, state, this);
  // }

  // @Override
  // Object visitFunctionRef(FunctionRef elm, State state) {
  //     return FunctionRefEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitAdd(Add add, State state) {
  //     Object left = visitExpression(add.getOperand().get(0), state);
  //     Object right = visitExpression(add.getOperand().get(1), state);

  //     return AddEvaluator.add(left, right);
  // }

  // @Override
  // Object visitAbs(Abs abs, State state) {
  //     Object operand = visitExpression(abs.getOperand(), state);
  //     return AbsEvaluator.abs(operand);
  // }

  // @Override
  // Object visitAfter(After after, State state) {
  //     Object left = visitExpression(after.getOperand().get(0), state);
  //     Object right = visitExpression(after.getOperand().get(1), state);
  //     String precision =
  //             after.getPrecision() == null ? null : after.getPrecision().value();

  //     return AfterEvaluator.after(left, right, precision, state);
  // }

  // @Override
  // Object visitAliasRef(AliasRef aliasRef, State state) {
  //     return AliasRefEvaluator.internalEvaluate(aliasRef.getName(), state);
  // }

  // @Override
  // Object visitAllTrue(AllTrue allTrue, State state) {
  //     Object src = visitExpression(allTrue.getSource(), state);
  //     return AllTrueEvaluator.allTrue(src);
  // }

  // @Override
  // Object visitAnd(And and, State state) {
  //     Object left = visitExpression(and.getOperand().get(0), state);
  //     Object right = visitExpression(and.getOperand().get(1), state);

  //     return AndEvaluator.and(left, right);
  // }

  // @Override
  // Object visitAnyInCodeSystem(AnyInCodeSystem anyInCodeSystem, State state) {
  //     Object codes = visitExpression(anyInCodeSystem.getCodes(), state);
  //     Object codeSystem = visitExpression(anyInCodeSystem.getCodesystemExpression(), state);
  //     return AnyInCodeSystemEvaluator.internalEvaluate(codes, anyInCodeSystem.getCodesystem(), codeSystem, state);
  // }

  // @Override
  // Object visitInCodeSystem(InCodeSystem inCodeSystem, State state) {
  //     Object code = visitExpression(inCodeSystem.getCode(), state);
  //     Object cs;
  //     if (inCodeSystem.getCodesystem() != null) {
  //         cs = CodeSystemRefEvaluator.toCodeSystem(inCodeSystem.getCodesystem(), state);
  //     } else if (inCodeSystem.getCodesystemExpression() != null) {
  //         cs = visitExpression(inCodeSystem.getCodesystemExpression(), state);
  //     }

  //     return InCodeSystemEvaluator.inCodeSystem(code, cs, state);
  // }

  // @Override
  // Object visitAnyInValueSet(AnyInValueSet anyInValueSet, State state) {
  //     Object codes = visitExpression(anyInValueSet.getCodes(), state);
  //     Object valueset = visitExpression(anyInValueSet.getValuesetExpression(), state);

  //     return AnyInValueSetEvaluator.internalEvaluate(codes, anyInValueSet.getValueset(), valueset, state);
  // }

  // @Override
  // Object visitInValueSet(InValueSet inValueSet, State state) {

  //     Object code = visitExpression(inValueSet.getCode(), state);
  //     Object vs;
  //     if (inValueSet.getValueset() != null) {
  //         vs = ValueSetRefEvaluator.toValueSet(state, inValueSet.getValueset());
  //     } else if (inValueSet.getValuesetExpression() != null) {
  //         vs = visitExpression(inValueSet.getValuesetExpression(), state);
  //     }
  //     return InValueSetEvaluator.inValueSet(code, vs, state);
  // }

  // @Override
  // Object visitValueSetRef(ValueSetRef elm, State state) {
  //     return ValueSetRefEvaluator.internalEvaluate(state, elm);
  // }

  // @Override
  // Object visitXor(Xor elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return XorEvaluator.xor(left, right);
  // }

  // @Override
  // Object visitWidth(Width elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return WidthEvaluator.width(operand);
  // }

  // @Override
  // Object visitVariance(Variance variance, State state) {
  //     Object source = visitExpression(variance.getSource(), state);
  //     return VarianceEvaluator.variance(source, state);
  // }

  // @Override
  // Object visitAvg(Avg avg, State state) {
  //     Object src = visitExpression(avg.getSource(), state);
  //     return AvgEvaluator.avg(src, state);
  // }

  // @Override
  // Object visitDivide(Divide elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return DivideEvaluator.divide(left, right, state);
  // }

  // @Override
  // Object visitUpper(Upper elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return UpperEvaluator.upper(operand);
  // }

  // @Override
  // Object visitUnion(Union elm, State state) {
  //     var left = elm.getOperand().get(0);
  //     var right = elm.getOperand().get(1);
  //     Object leftResult = visitExpression(left, state);
  //     Object rightResult = visitExpression(right, state);

  //     // This will attempt to use the declared result types from the ELM to determine which type of Union
  //     // to perform. If the types are not declared, it will fall back to checking the values of the result.
  //     if (left.getResultType() instanceof ListType
  //             || right.getResultType() instanceof ListType
  //             || elm.getResultType() instanceof ListType) {
  //         return UnionEvaluator.unionIterable((Iterable<?>) leftResult, (Iterable<?>) rightResult, state);
  //     } else if (left.getResultType() instanceof IntervalType
  //             || right.getResultType() instanceof IntervalType
  //             || elm.getResultType() instanceof IntervalType) {
  //         return UnionEvaluator.unionInterval(
  //                 (org.opencds.cqf.cql.engine.runtime.Interval) leftResult,
  //                 (org.opencds.cqf.cql.engine.runtime.Interval) rightResult,
  //                 state);
  //     } else {
  //         return UnionEvaluator.union(left, right, state);
  //     }
  // }

  // @Override
  // Object visitGreater(Greater elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return GreaterEvaluator.greater(left, right, state);
  // }

  // @Override
  // Object visitMeets(Meets elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return MeetsEvaluator.meets(left, right, precision, state);
  // }

  // @Override
  // Object visitDistinct(Distinct elm, State state) {
  //     Object value = visitExpression(elm.getOperand(), state);
  //     return DistinctEvaluator.distinct((Iterable<?>) value, state);
  // }

  // @Override
  // Object visitMeetsAfter(MeetsAfter elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return MeetsAfterEvaluator.meetsAfter(left, right, precision, state);
  // }

  // // SameAs

  // @Override
  // Object visitMeetsBefore(MeetsBefore elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return MeetsBeforeEvaluator.meetsBefore(left, right, precision, state);
  // }

  // @Override
  // Object visitSameAs(SameAs elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return SameAsEvaluator.sameAs(left, right, precision, state);
  // }

  // @Override
  // Object visitSameOrAfter(SameOrAfter elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return SameOrAfterEvaluator.sameOrAfter(left, right, precision, state);
  // }

  // @Override
  // Object visitSameOrBefore(SameOrBefore elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return SameOrBeforeEvaluator.sameOrBefore(left, right, precision, state);
  // }

  // @Override
  // Object visitGreaterOrEqual(GreaterOrEqual elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return GreaterOrEqualEvaluator.greaterOrEqual(left, right, state);
  // }

  // @Override
  // Object visitSingletonFrom(SingletonFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return SingletonFromEvaluator.singletonFrom(operand);
  // }

  // @Override
  // Object visitSize(Size elm, State state) {
  //     Object argument = visitExpression(elm.getOperand(), state);
  //     return SizeEvaluator.size(argument);
  // }

  // @Override
  // Object visitSlice(Slice elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     Integer start = (Integer) visitExpression(elm.getStartIndex(), state);
  //     Integer end = elm.getEndIndex() == null ? null : (Integer) visitExpression(elm.getEndIndex(), state);

  //     return SliceEvaluator.slice(source, start, end);
  // }

  // @Override
  // Object visitSplit(Split elm, State state) {
  //     Object stringToSplit = visitExpression(elm.getStringToSplit(), state);
  //     Object separator = visitExpression(elm.getSeparator(), state);

  //     return SplitEvaluator.split(stringToSplit, separator);
  // }

  // @Override
  // Object visitSplitOnMatches(SplitOnMatches elm, State state) {
  //     Object stringToSplit = visitExpression(elm.getStringToSplit(), state);
  //     Object separator = visitExpression(elm.getSeparatorPattern(), state);

  //     return SplitOnMatchesEvaluator.splitOnMatches(stringToSplit, separator);
  // }

  // @Override
  // Object visitStart(Start elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return StartEvaluator.start(operand);
  // }

  // @Override
  // Object visitStarts(Starts elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return StartsEvaluator.starts(left, right, precision, state);
  // }

  // @Override
  // Object visitStartsWith(StartsWith elm, State state) {
  //     Object argument = visitExpression(elm.getOperand().get(0), state);
  //     Object prefix = visitExpression(elm.getOperand().get(1), state);

  //     return StartsWithEvaluator.startsWith(argument, prefix);
  // }

  // @Override
  // Object visitStdDev(StdDev elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return StdDevEvaluator.stdDev(source, state);
  // }

  // @Override
  // Object visitSubstring(Substring elm, State state) {
  //     Object stringValue = visitExpression(elm.getStringToSub(), state);
  //     Object startIndexValue = visitExpression(elm.getStartIndex(), state);
  //     Object lengthValue = elm.getLength() == null ? null : visitExpression(elm.getLength(), state);

  //     return SubstringEvaluator.substring(stringValue, startIndexValue, lengthValue);
  // }

  // @Override
  // Object visitSubtract(Subtract elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return SubtractEvaluator.subtract(left, right);
  // }

  // @Override
  // Object visitSuccessor(Successor elm, State state) {
  //     Object value = visitExpression(elm.getOperand(), state);
  //     return SuccessorEvaluator.successor(value);
  // }

  // @Override
  // Object visitSum(Sum elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return SumEvaluator.sum(source);
  // }

  // @Override
  // Object visitTime(Time elm, State state) {
  //     if (elm.getHour() == null) {
  //         return null;
  //     }

  //     Integer hour = elm.getHour() == null ? null : (Integer) visitExpression(elm.getHour(), state);
  //     Integer minute = elm.getMinute() == null ? null : (Integer) visitExpression(elm.getMinute(), state);
  //     Integer second = elm.getSecond() == null ? null : (Integer) visitExpression(elm.getSecond(), state);
  //     Integer miliSecond =
  //             elm.getMillisecond() == null ? null : (Integer) visitExpression(elm.getMillisecond(), state);

  //     return TimeEvaluator.time(hour, minute, second, miliSecond);
  // }

  // @Override
  // Object visitTimeFrom(TimeFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return TimeFromEvaluator.timeFrom(operand);
  // }

  // @Override
  // Object visitTimeOfDay(TimeOfDay elm, State state) {
  //     return TimeOfDayEvaluator.internalEvaluate(state);
  // }

  // @Override
  // Object visitTimezoneFrom(TimezoneFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return TimezoneFromEvaluator.internalEvaluate(operand);
  // }

  // @Override
  // Object visitTimezoneOffsetFrom(TimezoneOffsetFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return TimezoneOffsetFromEvaluator.timezoneOffsetFrom(operand);
  // }

  // @Override
  // Object visitToBoolean(ToBoolean elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToBooleanEvaluator.toBoolean(operand);
  // }

  // @Override
  // Object visitToConcept(ToConcept elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToConceptEvaluator.toConcept(operand);
  // }

  // @Override
  // Object visitToDate(ToDate elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToDateEvaluator.toDate(operand);
  // }

  // @Override
  // Object visitToDateTime(ToDateTime elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToDateTimeEvaluator.ToDateTime(operand, state);
  // }

  // @Override
  // Object visitToday(Today elm, State state) {
  //     return TodayEvaluator.today(state);
  // }

  // @Override
  // Object visitToDecimal(ToDecimal elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToDecimalEvaluator.toDecimal(operand);
  // }

  // @Override
  // Object visitToInteger(ToInteger elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToIntegerEvaluator.toInteger(operand);
  // }

  // @Override
  // Object visitToList(ToList elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToListEvaluator.toList(operand);
  // }

  // @Override
  // Object visitToLong(ToLong elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToLongEvaluator.toLong(operand);
  // }

  // @Override
  // Object visitToQuantity(ToQuantity elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToQuantityEvaluator.toQuantity(operand, state);
  // }

  // @Override
  // Object visitToRatio(ToRatio elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToRatioEvaluator.toRatio(operand);
  // }

  // @Override
  // Object visitToString(ToString elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToStringEvaluator.toString(operand);
  // }

  // @Override
  // Object visitToTime(ToTime elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ToTimeEvaluator.toTime(operand);
  // }

  // @Override
  // Object visitTruncatedDivide(TruncatedDivide elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return TruncatedDivideEvaluator.div(left, right, state);
  // }

  // @Override
  // Object visitMedian(Median elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return MedianEvaluator.median(source, state);
  // }

  // @Override
  // Object visitTruncate(Truncate elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return TruncateEvaluator.truncate(operand);
  // }

  // @Override
  // Object visitTuple(Tuple elm, State state) {
  //     LinkedHashMap<String, Object> ret = LinkedHashMap<>();
  //     for (TupleElement element : elm.getElement()) {
  //         ret.put(element.getName(), visitExpression(element.getValue(), state));
  //     }
  //     return TupleEvaluator.internalEvaluate(ret, state);
  // }

  // @Override
  // Object visitAnyTrue(AnyTrue elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return AnyTrueEvaluator.anyTrue(source);
  // }

  // @Override
  // Object visitAs(As elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return AsEvaluator.internalEvaluate(operand, elm, elm.isStrict(), state);
  // }

  // @Override
  // Object visitBefore(Before elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();

  //     return BeforeEvaluator.before(left, right, precision, state);
  // }

  // @Override
  // Object visitCalculateAgeAt(CalculateAgeAt elm, State state) {
  //     Object birthDate = visitExpression(elm.getOperand().get(0), state);
  //     Object asOf = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision().value();
  //     return CalculateAgeAtEvaluator.calculateAgeAt(birthDate, asOf, precision);
  // }

  // @Override
  // Object visitCalculateAge(CalculateAge elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     String precision = elm.getPrecision().value();
  //     return CalculateAgeEvaluator.internalEvaluate(operand, precision, state);
  // }

  // @Override
  // Object visitCase(Case elm, State state) {
  //     if (elm.getComparand() == null) {
  //         for (CaseItem caseItem : elm.getCaseItem()) {
  //             Boolean when = (Boolean) visitExpression(caseItem.getWhen(), state);

  //             if (when == null) {
  //                 continue;
  //             }

  //             if (when) {
  //                 return visitExpression(caseItem.getThen(), state);
  //             }
  //         }
  //         return visitElement(elm.getElse(), state);

  //     } else {
  //         Object comparand = visitExpression(elm.getComparand(), state);

  //         for (CaseItem caseItem : elm.getCaseItem()) {
  //             Object when = visitExpression(caseItem.getWhen(), state);
  //             Boolean check = EquivalentEvaluator.equivalent(comparand, when, state);
  //             if (check == null) {
  //                 continue;
  //             }

  //             if (check) {
  //                 return visitElement(caseItem.getThen(), state);
  //             }
  //         }

  //         return visitElement(elm.getElse(), state);
  //     }
  // }

  // @Override
  // Object visitCeiling(Ceiling elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return CeilingEvaluator.ceiling(operand);
  // }

  // @Override
  // Object visitChildren(Children elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return ChildrenEvaluator.children(source);
  // }

  // @Override
  // Object visitCoalesce(Coalesce elm, State state) {
  //     List<Object> operands = ArrayList<>();
  //     for (Expression operand : elm.getOperand()) {
  //         operands.add(visitExpression(operand, state));
  //     }
  //     return CoalesceEvaluator.coalesce(operands);
  // }

  // @Override
  // Object visitCode(Code elm, State state) {
  //     return CodeEvaluator.internalEvaluate(elm.getSystem(), elm.getCode(), elm.getDisplay(), state);
  // }

  // @Override
  // Object visitCodeRef(CodeRef elm, State state) {
  //     return CodeRefEvaluator.toCode(elm, state);
  // }

  // @Override
  // Object visitConcept(Concept elm, State state) {
  //     ArrayList<org.opencds.cqf.cql.engine.runtime.Code> codes = ArrayList<>();
  //     for (int i = 0; i < elm.getCode().size(); ++i) {
  //         codes.add((org.opencds.cqf.cql.engine.runtime.Code)
  //                 visitExpression(elm.getCode().get(i), state));
  //     }

  //     return ConceptEvaluator.internalEvaluate(codes, elm.getDisplay());
  // }

  // @Override
  // Object visitConceptRef(ConceptRef elm, State state) {
  //     return ConceptRefEvaluator.toConcept(elm, state);
  // }

  // @Override
  // @SuppressWarnings("unchecked")
  // Object visitCollapse(Collapse elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     Iterable<org.opencds.cqf.cql.engine.runtime.Interval> list =
  //             (Iterable<org.opencds.cqf.cql.engine.runtime.Interval>) left;
  //     org.opencds.cqf.cql.engine.runtime.Quantity per = (org.opencds.cqf.cql.engine.runtime.Quantity) right;

  //     return CollapseEvaluator.collapse(list, per, state);
  // }

  // @Override
  // Object visitCombine(Combine elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     String separator = elm.getSeparator() == null ? "" : (String) visitExpression(elm.getSeparator(), state);

  //     return CombineEvaluator.combine(source, separator);
  // }

  // @Override
  // Object visitConcatenate(Concatenate elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return ConcatenateEvaluator.concatenate(left, right);
  // }

  // @Override
  // Object visitContains(Contains elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();
  //     return ContainsEvaluator.internalEvaluate(left, right, elm.getOperand().get(0), precision, state);
  // }

  // @Override
  // Object visitConvert(Convert elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertEvaluator.internalEvaluate(operand, elm.getToType(), elm.getToTypeSpecifier(), state);
  // }

  // @Override
  // Object visitConvertQuantity(ConvertQuantity elm, State state) {
  //     Object argument = visitExpression(elm.getOperand().get(0), state);
  //     Object unit = visitExpression(elm.getOperand().get(1), state);
  //     return ConvertQuantityEvaluator.convertQuantity(
  //             argument, unit, state.getEnvironment().getLibraryManager().getUcumService());
  // }

  // @Override
  // Object visitConvertsToBoolean(ConvertsToBoolean elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToBooleanEvaluator.convertsToBoolean(operand);
  // }

  // @Override
  // Object visitConvertsToDate(ConvertsToDate elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToDateEvaluator.convertsToDate(operand);
  // }

  // @Override
  // Object visitConvertsToDateTime(ConvertsToDateTime elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToDateTimeEvaluator.convertsToDateTime(
  //             operand, state.getEvaluationDateTime().getZoneOffset());
  // }

  // @Override
  // Object visitConvertsToDecimal(ConvertsToDecimal elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToDecimalEvaluator.convertsToDecimal(operand);
  // }

  // @Override
  // Object visitConvertsToInteger(ConvertsToInteger elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToIntegerEvaluator.convertsToInteger(operand);
  // }

  // @Override
  // Object visitConvertsToLong(ConvertsToLong elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToLongEvaluator.convertsToLong(operand);
  // }

  // @Override
  // Object visitConvertsToQuantity(ConvertsToQuantity elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToQuantityEvaluator.convertsToQuantity(operand, state);
  // }

  // @Override
  // Object visitConvertsToString(ConvertsToString elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToStringEvaluator.convertsToString(operand);
  // }

  // @Override
  // Object visitConvertsToTime(ConvertsToTime elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ConvertsToTimeEvaluator.convertsToTime(operand);
  // }

  // @Override
  // Object visitCount(Count elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return CountEvaluator.count(source);
  // }

  // @Override
  // Object visitDate(Date elm, State state) {
  //     Integer year = elm.getYear() == null ? null : (Integer) visitExpression(elm.getYear(), state);
  //     Integer month = elm.getMonth() == null ? null : (Integer) visitExpression(elm.getMonth(), state);
  //     Integer day = elm.getDay() == null ? null : (Integer) visitExpression(elm.getDay(), state);
  //     return DateEvaluator.internalEvaluate(year, month, day);
  // }

  // @Override
  // Object visitDateFrom(DateFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return DateFromEvaluator.dateFrom(operand);
  // }

  // @Override
  // Object visitDateTimeComponentFrom(DateTimeComponentFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     String precision = elm.getPrecision().value();
  //     return DateTimeComponentFromEvaluator.dateTimeComponentFrom(operand, precision);
  // }

  // @Override
  // Object visitDateTime(DateTime elm, State state) {
  //     Integer year = elm.getYear() == null ? null : (Integer) visitExpression(elm.getYear(), state);
  //     Integer month = elm.getMonth() == null ? null : (Integer) visitExpression(elm.getMonth(), state);
  //     Integer day = elm.getDay() == null ? null : (Integer) visitExpression(elm.getDay(), state);
  //     Integer hour = elm.getHour() == null ? null : (Integer) visitExpression(elm.getHour(), state);
  //     Integer minute = elm.getMinute() == null ? null : (Integer) visitExpression(elm.getMinute(), state);
  //     Integer second = elm.getSecond() == null ? null : (Integer) visitExpression(elm.getSecond(), state);
  //     Integer milliSecond =
  //             elm.getMillisecond() == null ? null : (Integer) visitExpression(elm.getMillisecond(), state);
  //     BigDecimal timeZoneOffset = elm.getTimezoneOffset() == null
  //             ? TemporalHelper.zoneToOffset(state.getEvaluationDateTime().getZoneOffset())
  //             // Previously, we relied on null to trigger DateTime instantiation off the default TimeZone
  //             // Now, we compute the Offset explicitly from the State evaluation time.
  //             : (BigDecimal) visitExpression(elm.getTimezoneOffset(), state);
  //     return DateTimeEvaluator.internalEvaluate(year, month, day, hour, minute, second, milliSecond, timeZoneOffset);
  // }

  // @Override
  // Object visitDescendents(Descendents elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return DescendentsEvaluator.descendents(source);
  // }

  // @Override
  // Object visitDifferenceBetween(DifferenceBetween elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     String precision = elm.getPrecision().value();
  //     return DifferenceBetweenEvaluator.difference(
  //             left, right, org.opencds.cqf.cql.engine.runtime.Precision.fromString(precision));
  // }

  // @Override
  // Object visitDurationBetween(DurationBetween elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     String precision = elm.getPrecision().value();
  //     return DurationBetweenEvaluator.duration(
  //             left, right, org.opencds.cqf.cql.engine.runtime.Precision.fromString(precision));
  // }

  // @Override
  // Object visitEnd(End elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return EndEvaluator.end(operand);
  // }

  // @Override
  // Object visitEnds(Ends elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();
  //     return EndsEvaluator.ends(left, right, precision, state);
  // }

  // @Override
  // Object visitEndsWith(EndsWith elm, State state) {
  //     String argument = (String) visitExpression(elm.getOperand().get(0), state);
  //     String suffix = (String) visitExpression(elm.getOperand().get(1), state);
  //     return EndsWithEvaluator.endsWith(argument, suffix);
  // }

  // @Override
  // Object visitEqual(Equal elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return EqualEvaluator.equal(left, right, state);
  // }

  // @Override
  // Object visitEquivalent(Equivalent elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return EquivalentEvaluator.equivalent(left, right, state);
  // }

  // @Override
  // Object visitExcept(Except elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return ExceptEvaluator.except(left, right, state);
  // }

  // @Override
  // Object visitExists(Exists elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ExistsEvaluator.exists(operand);
  // }

  // @Override
  // @SuppressWarnings("unchecked")
  // Object visitExpand(Expand elm, State state) {
  //     Iterable<org.opencds.cqf.cql.engine.runtime.Interval> list =
  //             (Iterable<org.opencds.cqf.cql.engine.runtime.Interval>)
  //                     visitExpression(elm.getOperand().get(0), state);
  //     org.opencds.cqf.cql.engine.runtime.Quantity per = (org.opencds.cqf.cql.engine.runtime.Quantity)
  //             visitExpression(elm.getOperand().get(1), state);
  //     return ExpandEvaluator.expand(list, per, state);
  // }

  // @Override
  // Object visitExpandValueSet(ExpandValueSet elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ExpandValueSetEvaluator.expand(operand, state);
  // }

  // @Override
  // Object visitExp(Exp elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return ExpEvaluator.exp(operand);
  // }

  // @Override
  // Object visitFilter(Filter elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     Object condition = visitExpression(elm.getCondition(), state);
  //     return FilterEvaluator.filter(elm, source, condition, state);
  // }

  // @Override
  // Object visitFirst(First elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return FirstEvaluator.first(source);
  // }

  // @Override
  // Object visitFlatten(Flatten elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return FlattenEvaluator.flatten(operand);
  // }

  // @Override
  // Object visitFloor(Floor elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return FloorEvaluator.floor(operand);
  // }

  // @Override
  // Object visitForEach(ForEach elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     Object element = visitExpression(elm.getElement(), state);
  //     return ForEachEvaluator.forEach(source, element, state);
  // }

  // @Override
  // Object visitGeometricMean(GeometricMean elm, State state) {
  //     Iterable<?> source = (Iterable<?>) visitExpression(elm.getSource(), state);
  //     return GeometricMeanEvaluator.geometricMean(source, state);
  // }

  // @Override
  // Object visitHighBoundary(HighBoundary elm, State state) {
  //     Object input = visitExpression(elm.getOperand().get(0), state);
  //     Object precision = visitExpression(elm.getOperand().get(1), state);
  //     return HighBoundaryEvaluator.highBoundary(input, precision);
  // }

  // @Override
  // Object visitIdentifierRef(IdentifierRef elm, State state) {
  //     return IdentifierRefEvaluator.internalEvaluate(elm.getName(), state);
  // }

  // @Override
  // Object visitIf(If elm, State state) {
  //     return IfEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitImplies(Implies elm, State state) {
  //     Boolean left = (Boolean) visitExpression(elm.getOperand().get(0), state);
  //     Boolean right = (Boolean) visitExpression(elm.getOperand().get(1), state);
  //     return ImpliesEvaluator.implies(left, right);
  // }

  // @Override
  // Object visitIncludedIn(IncludedIn elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return IncludedInEvaluator.internalEvaluate(left, right, precision, state);
  // }

  // @Override
  // Object visitIncludes(Includes elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return IncludesEvaluator.internalEvaluate(left, right, precision, state);
  // }

  // @Override
  // Object visitIndexOf(IndexOf elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     Object element = visitExpression(elm.getElement(), state);
  //     return IndexOfEvaluator.indexOf(source, element, state);
  // }

  // @Override
  // Object visitIndexer(Indexer elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return IndexerEvaluator.indexer(left, right);
  // }

  // @Override
  // Object visitIn(In elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return InEvaluator.internalEvaluate(left, right, precision, state);
  // }

  // @Override
  // Object visitInstance(Instance elm, State state) {
  //     return InstanceEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitIntersect(Intersect elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return IntersectEvaluator.intersect(left, right, state);
  // }

  // @Override
  // Object visitInterval(Interval elm, State state) {
  //     return IntervalEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitIs(Is elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return IsEvaluator.internalEvaluate(elm, operand, state);
  // }

  // @Override
  // Object visitIsFalse(IsFalse elm, State state) {
  //     Boolean operand = (Boolean) visitExpression(elm.getOperand(), state);
  //     return IsFalseEvaluator.isFalse(operand);
  // }

  // @Override
  // Object visitIsNull(IsNull elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return IsNullEvaluator.isNull(operand);
  // }

  // @Override
  // Object visitIsTrue(IsTrue elm, State state) {
  //     Boolean operand = (Boolean) visitExpression(elm.getOperand(), state);
  //     return IsTrueEvaluator.isTrue(operand);
  // }

  // @Override
  // Object visitLast(Last elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return LastEvaluator.last(source);
  // }

  // @Override
  // Object visitLastPositionOf(LastPositionOf elm, State state) {
  //     Object string = visitExpression(elm.getString(), state);
  //     Object pattern = visitExpression(elm.getPattern(), state);
  //     return LastPositionOfEvaluator.lastPositionOf(string, pattern);
  // }

  // @Override
  // Object visitLength(Length elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return LengthEvaluator.internalEvaluate(operand, elm, state);
  // }

  // @Override
  // Object visitLess(Less elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return LessEvaluator.less(left, right, state);
  // }

  // @Override
  // Object visitLessOrEqual(LessOrEqual elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return LessOrEqualEvaluator.lessOrEqual(left, right, state);
  // }

  // @Override
  // Object visitLiteral(Literal literal, State state) {
  //     return LiteralEvaluator.internalEvaluate(literal.getValueType(), literal.getValue(), state);
  // }

  // @Override
  // Object visitList(org.hl7.elm.r1.List elm, State state) {
  //     return ListEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitLn(Ln elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return LnEvaluator.ln(operand);
  // }

  // @Override
  // Object visitLog(Log elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return LogEvaluator.log(left, right);
  // }

  // @Override
  // Object visitLowBoundary(LowBoundary elm, State state) {
  //     Object input = visitExpression(elm.getOperand().get(0), state);
  //     Object precision = visitExpression(elm.getOperand().get(1), state);
  //     return LowBoundaryEvaluator.lowBoundary(input, precision);
  // }

  // @Override
  // Object visitLower(Lower elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return LowerEvaluator.lower(operand);
  // }

  // @Override
  // Object visitMatches(Matches elm, State state) {
  //     String argument = (String) visitExpression(elm.getOperand().get(0), state);
  //     String pattern = (String) visitExpression(elm.getOperand().get(1), state);
  //     return MatchesEvaluator.matches(argument, pattern);
  // }

  // @Override
  // Object visitMax(Max elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return MaxEvaluator.max(source, state);
  // }

  // @Override
  // Object visitMaxValue(MaxValue elm, State state) {
  //     return MaxValueEvaluator.internalEvaluate(elm.getValueType(), state);
  // }

  // @Override
  // Object visitMessage(Message elm, State state) {
  //     return MessageEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitMin(Min elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return MinEvaluator.min(source, state);
  // }

  // @Override
  // Object visitMinValue(MinValue elm, State state) {
  //     return MinValueEvaluator.internalEvaluate(elm.getValueType(), state);
  // }

  // @Override
  // Object visitMode(Mode elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return ModeEvaluator.mode(source, state);
  // }

  // @Override
  // Object visitModulo(Modulo elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return ModuloEvaluator.modulo(left, right);
  // }

  // @Override
  // Object visitMultiply(Multiply elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);

  //     return MultiplyEvaluator.multiply(left, right);
  // }

  // @Override
  // Object visitNegate(Negate elm, State state) {
  //     return NegateEvaluator.internalEvaluate(elm.getOperand(), state, this);
  // }

  // @Override
  // Object visitNotEqual(NotEqual elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return NotEqualEvaluator.notEqual(left, right, state);
  // }

  // @Override
  // Object visitNot(Not elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return NotEvaluator.not(operand);
  // }

  // @Override
  // Object visitNow(Now elm, State state) {
  //     return NowEvaluator.internalEvaluate(state);
  // }

  // @Override
  // Object visitNull(void elm, State state) {
  //     return NullEvaluator.internalEvaluate(state);
  // }

  // @Override
  // Object visitOperandRef(OperandRef elm, State state) {
  //     return OperandRefEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitOr(Or elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return OrEvaluator.or(left, right);
  // }

  // @Override
  // Object visitOverlapsAfter(OverlapsAfter elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();
  //     return OverlapsAfterEvaluator.overlapsAfter(left, right, precision, state);
  // }

  // @Override
  // Object visitOverlapsBefore(OverlapsBefore elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();
  //     return OverlapsBeforeEvaluator.overlapsBefore(left, right, precision, state);
  // }

  // @Override
  // Object visitOverlaps(Overlaps elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision =
  //             elm.getPrecision() == null ? null : elm.getPrecision().value();
  //     return OverlapsEvaluator.overlaps(left, right, precision, state);
  // }

  // @Override
  // Object visitParameterRef(ParameterRef elm, State state) {
  //     return ParameterRefEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitPointFrom(PointFrom elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     return PointFromEvaluator.pointFrom(operand, state);
  // }

  // @Override
  // Object visitPopulationStdDev(PopulationStdDev elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return PopulationStdDevEvaluator.popStdDev(source, state);
  // }

  // @Override
  // Object visitPopulationVariance(PopulationVariance elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return PopulationVarianceEvaluator.popVariance(source, state);
  // }

  // @Override
  // Object visitPositionOf(PositionOf elm, State state) {
  //     Object pattern = visitExpression(elm.getPattern(), state);
  //     Object string = visitExpression(elm.getString(), state);
  //     return PositionOfEvaluator.positionOf(pattern, string);
  // }

  // @Override
  // Object visitPower(Power elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     return PowerEvaluator.power(left, right);
  // }

  // @Override
  // Object visitPrecision(Precision elm, State state) {
  //     Object argument = visitExpression(elm.getOperand(), state);
  //     return PrecisionEvaluator.precision(argument);
  // }

  // @Override
  // Object visitPredecessor(Predecessor elm, State state) {
  //     Object argument = visitExpression(elm.getOperand(), state);
  //     return PredecessorEvaluator.predecessor(argument);
  // }

  // @Override
  // Object visitProduct(Product elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     return ProductEvaluator.product(source);
  // }

  // @Override
  // Object visitProperContains(ProperContains elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return ProperContainsEvaluator.properContains(left, right, precision, state);
  // }

  // @Override
  // Object visitProperIncludedIn(ProperIncludedIn elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return ProperIncludedInEvaluator.properlyIncludedIn(left, right, precision, state);
  // }

  // @Override
  // Object visitProperIncludes(ProperIncludes elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return ProperIncludesEvaluator.properlyIncludes(left, right, precision, state);
  // }

  // @Override
  // Object visitProperIn(ProperIn elm, State state) {
  //     Object left = visitExpression(elm.getOperand().get(0), state);
  //     Object right = visitExpression(elm.getOperand().get(1), state);
  //     String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
  //     return ProperInEvaluator.internalEvaluate(left, right, precision, state);
  // }

  // @Override
  // Object visitProperty(Property elm, State state) {
  //     return PropertyEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitQuantity(Quantity elm, State state) {
  //     return QuantityEvaluator.internalEvaluate(elm, state);
  // }

  // @Override
  // Object visitRound(Round elm, State state) {
  //     Object operand = visitExpression(elm.getOperand(), state);
  //     Object precision = elm.getPrecision() == null ? null : visitExpression(elm.getPrecision(), state);
  //     return RoundEvaluator.round(operand, precision);
  // }

  // @Override
  // Object visitRetrieve(Retrieve elm, State state) {
  //     return RetrieveEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitReplaceMatches(ReplaceMatches elm, State state) {
  //     String argument = (String) visitExpression(elm.getOperand().get(0), state);
  //     String pattern = (String) visitExpression(elm.getOperand().get(1), state);
  //     String substitution = (String) visitExpression(elm.getOperand().get(2), state);
  //     return ReplaceMatchesEvaluator.replaceMatches(argument, pattern, substitution);
  // }

  // @Override
  // Object visitRepeat(Repeat elm, State state) {
  //     Object source = visitExpression(elm.getSource(), state);
  //     Object element = visitExpression(elm.getElement(), state);
  //     String scope = elm.getScope();
  //     return RepeatEvaluator.internalEvaluate(source, element, scope, state);
  // }

  // @Override
  // Object visitRatio(Ratio elm, State state) {
  //     return RatioEvaluator.internalEvaluate(elm, state, this);
  // }

  // @Override
  // Object visitQueryLetRef(QueryLetRef elm, State state) {
  //     return QueryLetRefEvaluator.internalEvaluate(elm, state);
  // }

  // @Override
  // Object visitQuery(Query elm, State state) {
  //     return QueryEvaluator.internalEvaluate(elm, state, this);
  // }
}
