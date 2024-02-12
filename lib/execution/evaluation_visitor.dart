import '../cql.dart';

class EvaluationVisitor extends BaseElmLibraryVisitor<Object, State> {
  @override
  Object visitExpressionDef(ExpressionDef expressionDef, State state) {
    return ExpressionDefEvaluator.internalEvaluate(expressionDef, state, this);
  }

  @override
  Object visitExpressionRef(ExpressionRef expressionRef, State state) {
      return ExpressionRefEvaluator.internalEvaluate(expressionRef, state, this);
  }

  @override
  Object visitFunctionRef(FunctionRef elm, State state) {
      return FunctionRefEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitAdd(Add add, State state) {
      Object left = visitExpression(add.getOperand().get(0), state);
      Object right = visitExpression(add.getOperand().get(1), state);

      return AddEvaluator.add(left, right);
  }

  @override
  Object visitAbs(Abs abs, State state) {
      Object operand = visitExpression(abs.getOperand(), state);
      return AbsEvaluator.abs(operand);
  }

  @override
  Object visitAfter(After after, State state) {
      Object left = visitExpression(after.getOperand().get(0), state);
      Object right = visitExpression(after.getOperand().get(1), state);
      String precision =
              after.getPrecision() == null ? null : after.getPrecision().value();

      return AfterEvaluator.after(left, right, precision, state);
  }

  @override
  Object visitAliasRef(AliasRef aliasRef, State state) {
      return AliasRefEvaluator.internalEvaluate(aliasRef.getName(), state);
  }

  @override
  Object visitAllTrue(AllTrue allTrue, State state) {
      Object src = visitExpression(allTrue.getSource(), state);
      return AllTrueEvaluator.allTrue(src);
  }

  @override
  Object visitAnd(And and, State state) {
      Object left = visitExpression(and.getOperand().get(0), state);
      Object right = visitExpression(and.getOperand().get(1), state);

      return AndEvaluator.and(left, right);
  }

  @override
  Object visitAnyInCodeSystem(AnyInCodeSystem anyInCodeSystem, State state) {
      Object codes = visitExpression(anyInCodeSystem.getCodes(), state);
      Object codeSystem = visitExpression(anyInCodeSystem.getCodesystemExpression(), state);
      return AnyInCodeSystemEvaluator.internalEvaluate(codes, anyInCodeSystem.getCodesystem(), codeSystem, state);
  }

  @override
  Object visitInCodeSystem(InCodeSystem inCodeSystem, State state) {
      Object code = visitExpression(inCodeSystem.getCode(), state);
      Object cs;
      if (inCodeSystem.getCodesystem() != null) {
          cs = CodeSystemRefEvaluator.toCodeSystem(inCodeSystem.getCodesystem(), state);
      } else if (inCodeSystem.getCodesystemExpression() != null) {
          cs = visitExpression(inCodeSystem.getCodesystemExpression(), state);
      }

      return InCodeSystemEvaluator.inCodeSystem(code, cs, state);
  }

  @override
  Object visitAnyInValueSet(AnyInValueSet anyInValueSet, State state) {
      Object codes = visitExpression(anyInValueSet.getCodes(), state);
      Object valueset = visitExpression(anyInValueSet.getValuesetExpression(), state);

      return AnyInValueSetEvaluator.internalEvaluate(codes, anyInValueSet.getValueset(), valueset, state);
  }

  @override
  Object visitInValueSet(InValueSet inValueSet, State state) {

      Object code = visitExpression(inValueSet.getCode(), state);
      Object vs;
      if (inValueSet.getValueset() != null) {
          vs = ValueSetRefEvaluator.toValueSet(state, inValueSet.getValueset());
      } else if (inValueSet.getValuesetExpression() != null) {
          vs = visitExpression(inValueSet.getValuesetExpression(), state);
      }
      return InValueSetEvaluator.inValueSet(code, vs, state);
  }

  @override
  Object visitValueSetRef(ValueSetRef elm, State state) {
      return ValueSetRefEvaluator.internalEvaluate(state, elm);
  }

  @override
  Object visitXor(Xor elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return XorEvaluator.xor(left, right);
  }

  @override
  Object visitWidth(Width elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return WidthEvaluator.width(operand);
  }

  @override
  Object visitVariance(Variance variance, State state) {
      Object source = visitExpression(variance.getSource(), state);
      return VarianceEvaluator.variance(source, state);
  }

  @override
  Object visitAvg(Avg avg, State state) {
      Object src = visitExpression(avg.getSource(), state);
      return AvgEvaluator.avg(src, state);
  }

  @override
  Object visitDivide(Divide elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return DivideEvaluator.divide(left, right, state);
  }

  @override
  Object visitUpper(Upper elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return UpperEvaluator.upper(operand);
  }

  @override
  Object visitUnion(Union elm, State state) {
      var left = elm.getOperand().get(0);
      var right = elm.getOperand().get(1);
      Object leftResult = visitExpression(left, state);
      Object rightResult = visitExpression(right, state);

      // This will attempt to use the declared result types from the ELM to determine which type of Union
      // to perform. If the types are not declared, it will fall back to checking the values of the result.
      if (left.getResultType() instanceof ListType
              || right.getResultType() instanceof ListType
              || elm.getResultType() instanceof ListType) {
          return UnionEvaluator.unionIterable((Iterable<?>) leftResult, (Iterable<?>) rightResult, state);
      } else if (left.getResultType() instanceof IntervalType
              || right.getResultType() instanceof IntervalType
              || elm.getResultType() instanceof IntervalType) {
          return UnionEvaluator.unionInterval(
                  (org.opencds.cqf.cql.engine.runtime.Interval) leftResult,
                  (org.opencds.cqf.cql.engine.runtime.Interval) rightResult,
                  state);
      } else {
          return UnionEvaluator.union(left, right, state);
      }
  }

  @override
  Object visitGreater(Greater elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return GreaterEvaluator.greater(left, right, state);
  }

  @override
  Object visitMeets(Meets elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return MeetsEvaluator.meets(left, right, precision, state);
  }

  @override
  Object visitDistinct(Distinct elm, State state) {
      Object value = visitExpression(elm.getOperand(), state);
      return DistinctEvaluator.distinct((Iterable<?>) value, state);
  }

  @override
  Object visitMeetsAfter(MeetsAfter elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return MeetsAfterEvaluator.meetsAfter(left, right, precision, state);
  }

  // SameAs

  @override
  Object visitMeetsBefore(MeetsBefore elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return MeetsBeforeEvaluator.meetsBefore(left, right, precision, state);
  }

  @override
  Object visitSameAs(SameAs elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return SameAsEvaluator.sameAs(left, right, precision, state);
  }

  @override
  Object visitSameOrAfter(SameOrAfter elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return SameOrAfterEvaluator.sameOrAfter(left, right, precision, state);
  }

  @override
  Object visitSameOrBefore(SameOrBefore elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return SameOrBeforeEvaluator.sameOrBefore(left, right, precision, state);
  }

  @override
  Object visitGreaterOrEqual(GreaterOrEqual elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return GreaterOrEqualEvaluator.greaterOrEqual(left, right, state);
  }

  @override
  Object visitSingletonFrom(SingletonFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return SingletonFromEvaluator.singletonFrom(operand);
  }

  @override
  Object visitSize(Size elm, State state) {
      Object argument = visitExpression(elm.getOperand(), state);
      return SizeEvaluator.size(argument);
  }

  @override
  Object visitSlice(Slice elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      Integer start = (Integer) visitExpression(elm.getStartIndex(), state);
      Integer end = elm.getEndIndex() == null ? null : (Integer) visitExpression(elm.getEndIndex(), state);

      return SliceEvaluator.slice(source, start, end);
  }

  @override
  Object visitSplit(Split elm, State state) {
      Object stringToSplit = visitExpression(elm.getStringToSplit(), state);
      Object separator = visitExpression(elm.getSeparator(), state);

      return SplitEvaluator.split(stringToSplit, separator);
  }

  @override
  Object visitSplitOnMatches(SplitOnMatches elm, State state) {
      Object stringToSplit = visitExpression(elm.getStringToSplit(), state);
      Object separator = visitExpression(elm.getSeparatorPattern(), state);

      return SplitOnMatchesEvaluator.splitOnMatches(stringToSplit, separator);
  }

  @override
  Object visitStart(Start elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return StartEvaluator.start(operand);
  }

  @override
  Object visitStarts(Starts elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return StartsEvaluator.starts(left, right, precision, state);
  }

  @override
  Object visitStartsWith(StartsWith elm, State state) {
      Object argument = visitExpression(elm.getOperand().get(0), state);
      Object prefix = visitExpression(elm.getOperand().get(1), state);

      return StartsWithEvaluator.startsWith(argument, prefix);
  }

  @override
  Object visitStdDev(StdDev elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return StdDevEvaluator.stdDev(source, state);
  }

  @override
  Object visitSubstring(Substring elm, State state) {
      Object stringValue = visitExpression(elm.getStringToSub(), state);
      Object startIndexValue = visitExpression(elm.getStartIndex(), state);
      Object lengthValue = elm.getLength() == null ? null : visitExpression(elm.getLength(), state);

      return SubstringEvaluator.substring(stringValue, startIndexValue, lengthValue);
  }

  @override
  Object visitSubtract(Subtract elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return SubtractEvaluator.subtract(left, right);
  }

  @override
  Object visitSuccessor(Successor elm, State state) {
      Object value = visitExpression(elm.getOperand(), state);
      return SuccessorEvaluator.successor(value);
  }

  @override
  Object visitSum(Sum elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return SumEvaluator.sum(source);
  }

  @override
  Object visitTime(Time elm, State state) {
      if (elm.getHour() == null) {
          return null;
      }

      Integer hour = elm.getHour() == null ? null : (Integer) visitExpression(elm.getHour(), state);
      Integer minute = elm.getMinute() == null ? null : (Integer) visitExpression(elm.getMinute(), state);
      Integer second = elm.getSecond() == null ? null : (Integer) visitExpression(elm.getSecond(), state);
      Integer miliSecond =
              elm.getMillisecond() == null ? null : (Integer) visitExpression(elm.getMillisecond(), state);

      return TimeEvaluator.time(hour, minute, second, miliSecond);
  }

  @override
  Object visitTimeFrom(TimeFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return TimeFromEvaluator.timeFrom(operand);
  }

  @override
  Object visitTimeOfDay(TimeOfDay elm, State state) {
      return TimeOfDayEvaluator.internalEvaluate(state);
  }

  @override
  Object visitTimezoneFrom(TimezoneFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return TimezoneFromEvaluator.internalEvaluate(operand);
  }

  @override
  Object visitTimezoneOffsetFrom(TimezoneOffsetFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return TimezoneOffsetFromEvaluator.timezoneOffsetFrom(operand);
  }

  @override
  Object visitToBoolean(ToBoolean elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToBooleanEvaluator.toBoolean(operand);
  }

  @override
  Object visitToConcept(ToConcept elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToConceptEvaluator.toConcept(operand);
  }

  @override
  Object visitToDate(ToDate elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToDateEvaluator.toDate(operand);
  }

  @override
  Object visitToDateTime(ToDateTime elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToDateTimeEvaluator.ToDateTime(operand, state);
  }

  @override
  Object visitToday(Today elm, State state) {
      return TodayEvaluator.today(state);
  }

  @override
  Object visitToDecimal(ToDecimal elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToDecimalEvaluator.toDecimal(operand);
  }

  @override
  Object visitToInteger(ToInteger elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToIntegerEvaluator.toInteger(operand);
  }

  @override
  Object visitToList(ToList elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToListEvaluator.toList(operand);
  }

  @override
  Object visitToLong(ToLong elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToLongEvaluator.toLong(operand);
  }

  @override
  Object visitToQuantity(ToQuantity elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToQuantityEvaluator.toQuantity(operand, state);
  }

  @override
  Object visitToRatio(ToRatio elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToRatioEvaluator.toRatio(operand);
  }

  @override
  Object visitToString(ToString elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToStringEvaluator.toString(operand);
  }

  @override
  Object visitToTime(ToTime elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ToTimeEvaluator.toTime(operand);
  }

  @override
  Object visitTruncatedDivide(TruncatedDivide elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return TruncatedDivideEvaluator.div(left, right, state);
  }

  @override
  Object visitMedian(Median elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return MedianEvaluator.median(source, state);
  }

  @override
  Object visitTruncate(Truncate elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return TruncateEvaluator.truncate(operand);
  }

  @override
  Object visitTuple(Tuple elm, State state) {
      LinkedHashMap<String, Object> ret = LinkedHashMap<>();
      for (TupleElement element : elm.getElement()) {
          ret.put(element.getName(), visitExpression(element.getValue(), state));
      }
      return TupleEvaluator.internalEvaluate(ret, state);
  }

  @override
  Object visitAnyTrue(AnyTrue elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return AnyTrueEvaluator.anyTrue(source);
  }

  @override
  Object visitAs(As elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return AsEvaluator.internalEvaluate(operand, elm, elm.isStrict(), state);
  }

  @override
  Object visitBefore(Before elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();

      return BeforeEvaluator.before(left, right, precision, state);
  }

  @override
  Object visitCalculateAgeAt(CalculateAgeAt elm, State state) {
      Object birthDate = visitExpression(elm.getOperand().get(0), state);
      Object asOf = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision().value();
      return CalculateAgeAtEvaluator.calculateAgeAt(birthDate, asOf, precision);
  }

  @override
  Object visitCalculateAge(CalculateAge elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      String precision = elm.getPrecision().value();
      return CalculateAgeEvaluator.internalEvaluate(operand, precision, state);
  }

  @override
  Object visitCase(Case elm, State state) {
      if (elm.getComparand() == null) {
          for (CaseItem caseItem : elm.getCaseItem()) {
              Boolean when = (Boolean) visitExpression(caseItem.getWhen(), state);

              if (when == null) {
                  continue;
              }

              if (when) {
                  return visitExpression(caseItem.getThen(), state);
              }
          }
          return visitElement(elm.getElse(), state);

      } else {
          Object comparand = visitExpression(elm.getComparand(), state);

          for (CaseItem caseItem : elm.getCaseItem()) {
              Object when = visitExpression(caseItem.getWhen(), state);
              Boolean check = EquivalentEvaluator.equivalent(comparand, when, state);
              if (check == null) {
                  continue;
              }

              if (check) {
                  return visitElement(caseItem.getThen(), state);
              }
          }

          return visitElement(elm.getElse(), state);
      }
  }

  @override
  Object visitCeiling(Ceiling elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return CeilingEvaluator.ceiling(operand);
  }

  @override
  Object visitChildren(Children elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return ChildrenEvaluator.children(source);
  }

  @override
  Object visitCoalesce(Coalesce elm, State state) {
      List<Object> operands = ArrayList<>();
      for (Expression operand : elm.getOperand()) {
          operands.add(visitExpression(operand, state));
      }
      return CoalesceEvaluator.coalesce(operands);
  }

  @override
  Object visitCode(Code elm, State state) {
      return CodeEvaluator.internalEvaluate(elm.getSystem(), elm.getCode(), elm.getDisplay(), state);
  }

  @override
  Object visitCodeRef(CodeRef elm, State state) {
      return CodeRefEvaluator.toCode(elm, state);
  }

  @override
  Object visitConcept(Concept elm, State state) {
      ArrayList<org.opencds.cqf.cql.engine.runtime.Code> codes = ArrayList<>();
      for (int i = 0; i < elm.getCode().size(); ++i) {
          codes.add((org.opencds.cqf.cql.engine.runtime.Code)
                  visitExpression(elm.getCode().get(i), state));
      }

      return ConceptEvaluator.internalEvaluate(codes, elm.getDisplay());
  }

  @override
  Object visitConceptRef(ConceptRef elm, State state) {
      return ConceptRefEvaluator.toConcept(elm, state);
  }

  @override
  @SuppressWarnings("unchecked")
  Object visitCollapse(Collapse elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      Iterable<org.opencds.cqf.cql.engine.runtime.Interval> list =
              (Iterable<org.opencds.cqf.cql.engine.runtime.Interval>) left;
      org.opencds.cqf.cql.engine.runtime.Quantity per = (org.opencds.cqf.cql.engine.runtime.Quantity) right;

      return CollapseEvaluator.collapse(list, per, state);
  }

  @override
  Object visitCombine(Combine elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      String separator = elm.getSeparator() == null ? "" : (String) visitExpression(elm.getSeparator(), state);

      return CombineEvaluator.combine(source, separator);
  }

  @override
  Object visitConcatenate(Concatenate elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return ConcatenateEvaluator.concatenate(left, right);
  }

  @override
  Object visitContains(Contains elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();
      return ContainsEvaluator.internalEvaluate(left, right, elm.getOperand().get(0), precision, state);
  }

  @override
  Object visitConvert(Convert elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertEvaluator.internalEvaluate(operand, elm.getToType(), elm.getToTypeSpecifier(), state);
  }

  @override
  Object visitConvertQuantity(ConvertQuantity elm, State state) {
      Object argument = visitExpression(elm.getOperand().get(0), state);
      Object unit = visitExpression(elm.getOperand().get(1), state);
      return ConvertQuantityEvaluator.convertQuantity(
              argument, unit, state.getEnvironment().getLibraryManager().getUcumService());
  }

  @override
  Object visitConvertsToBoolean(ConvertsToBoolean elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToBooleanEvaluator.convertsToBoolean(operand);
  }

  @override
  Object visitConvertsToDate(ConvertsToDate elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToDateEvaluator.convertsToDate(operand);
  }

  @override
  Object visitConvertsToDateTime(ConvertsToDateTime elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToDateTimeEvaluator.convertsToDateTime(
              operand, state.getEvaluationDateTime().getZoneOffset());
  }

  @override
  Object visitConvertsToDecimal(ConvertsToDecimal elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToDecimalEvaluator.convertsToDecimal(operand);
  }

  @override
  Object visitConvertsToInteger(ConvertsToInteger elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToIntegerEvaluator.convertsToInteger(operand);
  }

  @override
  Object visitConvertsToLong(ConvertsToLong elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToLongEvaluator.convertsToLong(operand);
  }

  @override
  Object visitConvertsToQuantity(ConvertsToQuantity elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToQuantityEvaluator.convertsToQuantity(operand, state);
  }

  @override
  Object visitConvertsToString(ConvertsToString elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToStringEvaluator.convertsToString(operand);
  }

  @override
  Object visitConvertsToTime(ConvertsToTime elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ConvertsToTimeEvaluator.convertsToTime(operand);
  }

  @override
  Object visitCount(Count elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return CountEvaluator.count(source);
  }

  @override
  Object visitDate(Date elm, State state) {
      Integer year = elm.getYear() == null ? null : (Integer) visitExpression(elm.getYear(), state);
      Integer month = elm.getMonth() == null ? null : (Integer) visitExpression(elm.getMonth(), state);
      Integer day = elm.getDay() == null ? null : (Integer) visitExpression(elm.getDay(), state);
      return DateEvaluator.internalEvaluate(year, month, day);
  }

  @override
  Object visitDateFrom(DateFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return DateFromEvaluator.dateFrom(operand);
  }

  @override
  Object visitDateTimeComponentFrom(DateTimeComponentFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      String precision = elm.getPrecision().value();
      return DateTimeComponentFromEvaluator.dateTimeComponentFrom(operand, precision);
  }

  @override
  Object visitDateTime(DateTime elm, State state) {
      Integer year = elm.getYear() == null ? null : (Integer) visitExpression(elm.getYear(), state);
      Integer month = elm.getMonth() == null ? null : (Integer) visitExpression(elm.getMonth(), state);
      Integer day = elm.getDay() == null ? null : (Integer) visitExpression(elm.getDay(), state);
      Integer hour = elm.getHour() == null ? null : (Integer) visitExpression(elm.getHour(), state);
      Integer minute = elm.getMinute() == null ? null : (Integer) visitExpression(elm.getMinute(), state);
      Integer second = elm.getSecond() == null ? null : (Integer) visitExpression(elm.getSecond(), state);
      Integer milliSecond =
              elm.getMillisecond() == null ? null : (Integer) visitExpression(elm.getMillisecond(), state);
      BigDecimal timeZoneOffset = elm.getTimezoneOffset() == null
              ? TemporalHelper.zoneToOffset(state.getEvaluationDateTime().getZoneOffset())
              // Previously, we relied on null to trigger DateTime instantiation off the default TimeZone
              // Now, we compute the Offset explicitly from the State evaluation time.
              : (BigDecimal) visitExpression(elm.getTimezoneOffset(), state);
      return DateTimeEvaluator.internalEvaluate(year, month, day, hour, minute, second, milliSecond, timeZoneOffset);
  }

  @override
  Object visitDescendents(Descendents elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return DescendentsEvaluator.descendents(source);
  }

  @override
  Object visitDifferenceBetween(DifferenceBetween elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      String precision = elm.getPrecision().value();
      return DifferenceBetweenEvaluator.difference(
              left, right, org.opencds.cqf.cql.engine.runtime.Precision.fromString(precision));
  }

  @override
  Object visitDurationBetween(DurationBetween elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      String precision = elm.getPrecision().value();
      return DurationBetweenEvaluator.duration(
              left, right, org.opencds.cqf.cql.engine.runtime.Precision.fromString(precision));
  }

  @override
  Object visitEnd(End elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return EndEvaluator.end(operand);
  }

  @override
  Object visitEnds(Ends elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();
      return EndsEvaluator.ends(left, right, precision, state);
  }

  @override
  Object visitEndsWith(EndsWith elm, State state) {
      String argument = (String) visitExpression(elm.getOperand().get(0), state);
      String suffix = (String) visitExpression(elm.getOperand().get(1), state);
      return EndsWithEvaluator.endsWith(argument, suffix);
  }

  @override
  Object visitEqual(Equal elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return EqualEvaluator.equal(left, right, state);
  }

  @override
  Object visitEquivalent(Equivalent elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return EquivalentEvaluator.equivalent(left, right, state);
  }

  @override
  Object visitExcept(Except elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return ExceptEvaluator.except(left, right, state);
  }

  @override
  Object visitExists(Exists elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ExistsEvaluator.exists(operand);
  }

  @override
  @SuppressWarnings("unchecked")
  Object visitExpand(Expand elm, State state) {
      Iterable<org.opencds.cqf.cql.engine.runtime.Interval> list =
              (Iterable<org.opencds.cqf.cql.engine.runtime.Interval>)
                      visitExpression(elm.getOperand().get(0), state);
      org.opencds.cqf.cql.engine.runtime.Quantity per = (org.opencds.cqf.cql.engine.runtime.Quantity)
              visitExpression(elm.getOperand().get(1), state);
      return ExpandEvaluator.expand(list, per, state);
  }

  @override
  Object visitExpandValueSet(ExpandValueSet elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ExpandValueSetEvaluator.expand(operand, state);
  }

  @override
  Object visitExp(Exp elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return ExpEvaluator.exp(operand);
  }

  @override
  Object visitFilter(Filter elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      Object condition = visitExpression(elm.getCondition(), state);
      return FilterEvaluator.filter(elm, source, condition, state);
  }

  @override
  Object visitFirst(First elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return FirstEvaluator.first(source);
  }

  @override
  Object visitFlatten(Flatten elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return FlattenEvaluator.flatten(operand);
  }

  @override
  Object visitFloor(Floor elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return FloorEvaluator.floor(operand);
  }

  @override
  Object visitForEach(ForEach elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      Object element = visitExpression(elm.getElement(), state);
      return ForEachEvaluator.forEach(source, element, state);
  }

  @override
  Object visitGeometricMean(GeometricMean elm, State state) {
      Iterable<?> source = (Iterable<?>) visitExpression(elm.getSource(), state);
      return GeometricMeanEvaluator.geometricMean(source, state);
  }

  @override
  Object visitHighBoundary(HighBoundary elm, State state) {
      Object input = visitExpression(elm.getOperand().get(0), state);
      Object precision = visitExpression(elm.getOperand().get(1), state);
      return HighBoundaryEvaluator.highBoundary(input, precision);
  }

  @override
  Object visitIdentifierRef(IdentifierRef elm, State state) {
      return IdentifierRefEvaluator.internalEvaluate(elm.getName(), state);
  }

  @override
  Object visitIf(If elm, State state) {
      return IfEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitImplies(Implies elm, State state) {
      Boolean left = (Boolean) visitExpression(elm.getOperand().get(0), state);
      Boolean right = (Boolean) visitExpression(elm.getOperand().get(1), state);
      return ImpliesEvaluator.implies(left, right);
  }

  @override
  Object visitIncludedIn(IncludedIn elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return IncludedInEvaluator.internalEvaluate(left, right, precision, state);
  }

  @override
  Object visitIncludes(Includes elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return IncludesEvaluator.internalEvaluate(left, right, precision, state);
  }

  @override
  Object visitIndexOf(IndexOf elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      Object element = visitExpression(elm.getElement(), state);
      return IndexOfEvaluator.indexOf(source, element, state);
  }

  @override
  Object visitIndexer(Indexer elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return IndexerEvaluator.indexer(left, right);
  }

  @override
  Object visitIn(In elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return InEvaluator.internalEvaluate(left, right, precision, state);
  }

  @override
  Object visitInstance(Instance elm, State state) {
      return InstanceEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitIntersect(Intersect elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return IntersectEvaluator.intersect(left, right, state);
  }

  @override
  Object visitInterval(Interval elm, State state) {
      return IntervalEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitIs(Is elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return IsEvaluator.internalEvaluate(elm, operand, state);
  }

  @override
  Object visitIsFalse(IsFalse elm, State state) {
      Boolean operand = (Boolean) visitExpression(elm.getOperand(), state);
      return IsFalseEvaluator.isFalse(operand);
  }

  @override
  Object visitIsNull(IsNull elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return IsNullEvaluator.isNull(operand);
  }

  @override
  Object visitIsTrue(IsTrue elm, State state) {
      Boolean operand = (Boolean) visitExpression(elm.getOperand(), state);
      return IsTrueEvaluator.isTrue(operand);
  }

  @override
  Object visitLast(Last elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return LastEvaluator.last(source);
  }

  @override
  Object visitLastPositionOf(LastPositionOf elm, State state) {
      Object string = visitExpression(elm.getString(), state);
      Object pattern = visitExpression(elm.getPattern(), state);
      return LastPositionOfEvaluator.lastPositionOf(string, pattern);
  }

  @override
  Object visitLength(Length elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return LengthEvaluator.internalEvaluate(operand, elm, state);
  }

  @override
  Object visitLess(Less elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return LessEvaluator.less(left, right, state);
  }

  @override
  Object visitLessOrEqual(LessOrEqual elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return LessOrEqualEvaluator.lessOrEqual(left, right, state);
  }

  @override
  Object visitLiteral(Literal literal, State state) {
      return LiteralEvaluator.internalEvaluate(literal.getValueType(), literal.getValue(), state);
  }

  @override
  Object visitList(org.hl7.elm.r1.List elm, State state) {
      return ListEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitLn(Ln elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return LnEvaluator.ln(operand);
  }

  @override
  Object visitLog(Log elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return LogEvaluator.log(left, right);
  }

  @override
  Object visitLowBoundary(LowBoundary elm, State state) {
      Object input = visitExpression(elm.getOperand().get(0), state);
      Object precision = visitExpression(elm.getOperand().get(1), state);
      return LowBoundaryEvaluator.lowBoundary(input, precision);
  }

  @override
  Object visitLower(Lower elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return LowerEvaluator.lower(operand);
  }

  @override
  Object visitMatches(Matches elm, State state) {
      String argument = (String) visitExpression(elm.getOperand().get(0), state);
      String pattern = (String) visitExpression(elm.getOperand().get(1), state);
      return MatchesEvaluator.matches(argument, pattern);
  }

  @override
  Object visitMax(Max elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return MaxEvaluator.max(source, state);
  }

  @override
  Object visitMaxValue(MaxValue elm, State state) {
      return MaxValueEvaluator.internalEvaluate(elm.getValueType(), state);
  }

  @override
  Object visitMessage(Message elm, State state) {
      return MessageEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitMin(Min elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return MinEvaluator.min(source, state);
  }

  @override
  Object visitMinValue(MinValue elm, State state) {
      return MinValueEvaluator.internalEvaluate(elm.getValueType(), state);
  }

  @override
  Object visitMode(Mode elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return ModeEvaluator.mode(source, state);
  }

  @override
  Object visitModulo(Modulo elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return ModuloEvaluator.modulo(left, right);
  }

  @override
  Object visitMultiply(Multiply elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);

      return MultiplyEvaluator.multiply(left, right);
  }

  @override
  Object visitNegate(Negate elm, State state) {
      return NegateEvaluator.internalEvaluate(elm.getOperand(), state, this);
  }

  @override
  Object visitNotEqual(NotEqual elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return NotEqualEvaluator.notEqual(left, right, state);
  }

  @override
  Object visitNot(Not elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return NotEvaluator.not(operand);
  }

  @override
  Object visitNow(Now elm, State state) {
      return NowEvaluator.internalEvaluate(state);
  }

  @override
  Object visitNull(void elm, State state) {
      return NullEvaluator.internalEvaluate(state);
  }

  @override
  Object visitOperandRef(OperandRef elm, State state) {
      return OperandRefEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitOr(Or elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return OrEvaluator.or(left, right);
  }

  @override
  Object visitOverlapsAfter(OverlapsAfter elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();
      return OverlapsAfterEvaluator.overlapsAfter(left, right, precision, state);
  }

  @override
  Object visitOverlapsBefore(OverlapsBefore elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();
      return OverlapsBeforeEvaluator.overlapsBefore(left, right, precision, state);
  }

  @override
  Object visitOverlaps(Overlaps elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision =
              elm.getPrecision() == null ? null : elm.getPrecision().value();
      return OverlapsEvaluator.overlaps(left, right, precision, state);
  }

  @override
  Object visitParameterRef(ParameterRef elm, State state) {
      return ParameterRefEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitPointFrom(PointFrom elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      return PointFromEvaluator.pointFrom(operand, state);
  }

  @override
  Object visitPopulationStdDev(PopulationStdDev elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return PopulationStdDevEvaluator.popStdDev(source, state);
  }

  @override
  Object visitPopulationVariance(PopulationVariance elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return PopulationVarianceEvaluator.popVariance(source, state);
  }

  @override
  Object visitPositionOf(PositionOf elm, State state) {
      Object pattern = visitExpression(elm.getPattern(), state);
      Object string = visitExpression(elm.getString(), state);
      return PositionOfEvaluator.positionOf(pattern, string);
  }

  @override
  Object visitPower(Power elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      return PowerEvaluator.power(left, right);
  }

  @override
  Object visitPrecision(Precision elm, State state) {
      Object argument = visitExpression(elm.getOperand(), state);
      return PrecisionEvaluator.precision(argument);
  }

  @override
  Object visitPredecessor(Predecessor elm, State state) {
      Object argument = visitExpression(elm.getOperand(), state);
      return PredecessorEvaluator.predecessor(argument);
  }

  @override
  Object visitProduct(Product elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      return ProductEvaluator.product(source);
  }

  @override
  Object visitProperContains(ProperContains elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return ProperContainsEvaluator.properContains(left, right, precision, state);
  }

  @override
  Object visitProperIncludedIn(ProperIncludedIn elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return ProperIncludedInEvaluator.properlyIncludedIn(left, right, precision, state);
  }

  @override
  Object visitProperIncludes(ProperIncludes elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return ProperIncludesEvaluator.properlyIncludes(left, right, precision, state);
  }

  @override
  Object visitProperIn(ProperIn elm, State state) {
      Object left = visitExpression(elm.getOperand().get(0), state);
      Object right = visitExpression(elm.getOperand().get(1), state);
      String precision = elm.getPrecision() != null ? elm.getPrecision().value() : null;
      return ProperInEvaluator.internalEvaluate(left, right, precision, state);
  }

  @override
  Object visitProperty(Property elm, State state) {
      return PropertyEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitQuantity(Quantity elm, State state) {
      return QuantityEvaluator.internalEvaluate(elm, state);
  }

  @override
  Object visitRound(Round elm, State state) {
      Object operand = visitExpression(elm.getOperand(), state);
      Object precision = elm.getPrecision() == null ? null : visitExpression(elm.getPrecision(), state);
      return RoundEvaluator.round(operand, precision);
  }

  @override
  Object visitRetrieve(Retrieve elm, State state) {
      return RetrieveEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitReplaceMatches(ReplaceMatches elm, State state) {
      String argument = (String) visitExpression(elm.getOperand().get(0), state);
      String pattern = (String) visitExpression(elm.getOperand().get(1), state);
      String substitution = (String) visitExpression(elm.getOperand().get(2), state);
      return ReplaceMatchesEvaluator.replaceMatches(argument, pattern, substitution);
  }

  @override
  Object visitRepeat(Repeat elm, State state) {
      Object source = visitExpression(elm.getSource(), state);
      Object element = visitExpression(elm.getElement(), state);
      String scope = elm.getScope();
      return RepeatEvaluator.internalEvaluate(source, element, scope, state);
  }

  @override
  Object visitRatio(Ratio elm, State state) {
      return RatioEvaluator.internalEvaluate(elm, state, this);
  }

  @override
  Object visitQueryLetRef(QueryLetRef elm, State state) {
      return QueryLetRefEvaluator.internalEvaluate(elm, state);
  }

  @override
  Object visitQuery(Query elm, State state) {
      return QueryEvaluator.internalEvaluate(elm, state, this);
  }
}
