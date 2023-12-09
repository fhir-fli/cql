// This defines the structure of a CQL library.
import 'package:petitparser/petitparser.dart';

import '../fhir_path.dart';

class CqlLexer extends GrammarDefinition {
  Parser start() => ref0(library).end();

  Parser library() =>
      ref0(libraryDefinition).optional() &
      ref0(definition).star() &
      ref0(statement).star() &
      endOfInput();

  Parser definition() =>
      ref0(usingDefinition) |
      ref0(includeDefinition) |
      ref0(codesystemDefinition) |
      ref0(valuesetDefinition) |
      ref0(codeDefinition) |
      ref0(conceptDefinition) |
      ref0(parameterDefinition);

  Parser libraryDefinition() =>
      string('library') &
      ref0(qualifiedIdentifier) &
      (string('version') & ref0(versionSpecifier)).optional();

  Parser usingDefinition() =>
      string('using') &
      ref0(modelIdentifier) &
      (string('version') & ref0(versionSpecifier)).optional();

  Parser includeDefinition() =>
      string('include') &
      ref0(qualifiedIdentifier) &
      (string('version') & ref0(versionSpecifier)).optional() &
      (string('called') & ref0(localIdentifier)).optional();

  Parser localIdentifier() => ref0(identifier);

  Parser accessModifier() => string('public') | string('private');

  Parser parameterDefinition() =>
      ref0(accessModifier).optional() &
      string('parameter') &
      ref0(identifier) &
      ref0(typeSpecifier).optional() &
      (string('default') & ref0(expression)).optional();

  Parser codesystemDefinition() =>
      ref0(accessModifier).optional() &
      string('codesystem') &
      ref0(identifier) &
      char(':') &
      ref0(codesystemId) &
      (string('version') & ref0(versionSpecifier)).optional();

  Parser valuesetDefinition() =>
      ref0(accessModifier).optional() &
      string('valueset') &
      ref0(identifier) &
      char(':') &
      ref0(valuesetId) &
      (string('version') & ref0(versionSpecifier)).optional() &
      ref0(codesystems).optional();

  Parser codesystems() =>
      string('codesystems') &
      char('{') &
      (ref0(codesystemIdentifier) &
              (char(',') & ref0(codesystemIdentifier)).star())
          .optional() &
      char('}');

  Parser codesystemIdentifier() =>
      (ref0(libraryIdentifier).optional() & char('.') & ref0(identifier)) |
      ref0(identifier);

  Parser libraryIdentifier() => ref0(identifier);

  Parser codeDefinition() =>
      ref0(accessModifier).optional() &
      string('code') &
      ref0(identifier) &
      char(':') &
      ref0(codeId) &
      string('from') &
      ref0(codesystemIdentifier) &
      ref0(displayClause).optional();

  Parser conceptDefinition() =>
      ref0(accessModifier).optional() &
      string('concept') &
      ref0(identifier) &
      char(':') &
      char('{') &
      (ref0(codeIdentifier) & (char(',') & ref0(codeIdentifier)).star())
          .optional() &
      char('}') &
      ref0(displayClause).optional();

  Parser codeIdentifier() =>
      (ref0(libraryIdentifier).optional() & char('.') & ref0(identifier)) |
      ref0(identifier);

  Parser codesystemId() => stringLexer;

  Parser valuesetId() => stringLexer;

  Parser versionSpecifier() => stringLexer;

  Parser codeId() => stringLexer;

  Parser typeSpecifier() =>
      ref0(namedTypeSpecifier) |
      ref0(listTypeSpecifier) |
      ref0(intervalTypeSpecifier) |
      ref0(tupleTypeSpecifier) |
      ref0(choiceTypeSpecifier);

  Parser namedTypeSpecifier() =>
      (ref0(qualifier).flatten() & char('.')).star() &
      ref0(referentialOrTypeNameIdentifier);

  Parser modelIdentifier() => ref0(identifier).token();

  Parser listTypeSpecifier() =>
      string('List') &
      char('<').token() &
      ref0(typeSpecifier) &
      char('>').token();

  Parser intervalTypeSpecifier() =>
      string('Interval') &
      char('<').token() &
      ref0(typeSpecifier) &
      char('>').token();

  Parser tupleTypeSpecifier() =>
      string('Tuple') &
      string('{') &
      ref0(tupleElementDefinition).timesSeparated(char(','), 1) &
      string('}');

  Parser tupleElementDefinition() =>
      ref0(referentialIdentifier) & ref0(typeSpecifier);

  Parser choiceTypeSpecifier() =>
      string('Choice') &
      char('<').token() &
      ref0(typeSpecifier).timesSeparated(char(','), 1) &
      char('>').token();

  Parser statement() =>
      ref0(expressionDefinition) |
      ref0(contextDefinition) |
      ref0(functionDefinition);

  Parser expressionDefinition() =>
      string('define') &
      (ref0(accessModifier).optional() &
          ref0(identifier) &
          char(':') &
          ref0(expression));

  Parser contextDefinition() =>
      string('context') &
      (ref0(modelIdentifier) & char('.')).optional() &
      ref0(identifier);

  Parser functionDefinition() =>
      string('define') &
      (ref0(accessModifier).optional() &
          string('fluent').optional() &
          string('function') &
          ref0(identifierOrFunctionIdentifier) &
          char('(') &
          (ref0(operandDefinition) &
                  (char(',') & ref0(operandDefinition)).star())
              .optional() &
          char(')') &
          (string('returns') & ref0(typeSpecifier)).optional() &
          char(':') &
          (ref0(functionBody) | string('external')));

  Parser operandDefinition() =>
      ref0(referentialIdentifier) & ref0(typeSpecifier);

  Parser functionBody() => ref0(expression);

  Parser querySource() =>
      ref0(retrieve) |
      ref0(qualifiedIdentifierExpression) |
      (char('(') & ref0(expression) & char(')'));

  Parser aliasedQuerySource() => ref0(querySource) & ref0(alias);

  Parser alias() => ref0(identifier);

  Parser queryInclusionClause() => ref0(withClause) | ref0(withoutClause);

  Parser withClause() =>
      string('with') &
      ref0(aliasedQuerySource) &
      string('such that') &
      ref0(expression);

  Parser withoutClause() =>
      string('without') &
      ref0(aliasedQuerySource) &
      string('such that') &
      ref0(expression);

  Parser retrieve() =>
      char('[') &
      (ref0(contextIdentifier) & string('->')).optional() &
      ref0(namedTypeSpecifier) &
      (char(':') &
              (ref0(codePath) & ref0(codeComparator)).optional() &
              ref0(terminology))
          .optional() &
      char(']');

  Parser contextIdentifier() => ref0(qualifiedIdentifierExpression);

  Parser codePath() => ref0(simplePath);

  Parser codeComparator() => string('in') | char('=') | string('~');

  Parser terminology() =>
      ref0(qualifiedIdentifierExpression) | ref0(expression);

  Parser qualifier() => ref0(identifier);

  Parser query() =>
      ref0(sourceClause) &
      ref0(letClause).optional() &
      ref0(queryInclusionClause).star() &
      ref0(whereClause).optional() &
      (ref0(aggregateClause) | ref0(returnClause)).optional() &
      ref0(sortClause).optional();

  Parser sourceClause() => (string('from').optional() &
      ref0(aliasedQuerySource) &
      (char(',') & ref0(aliasedQuerySource)).star());

  Parser letClause() =>
      string('let') &
      ref0(letClauseItem) &
      (char(',') & ref0(letClauseItem)).star();

  Parser letClauseItem() => ref0(identifier) & char(':') & ref0(expression);

  Parser whereClause() => string('where') & ref0(expression);

  Parser returnClause() =>
      string('return') &
      (string('all') | string('distinct')).optional() &
      ref0(expression);

  Parser aggregateClause() =>
      string('aggregate') &
      (string('all') | string('distinct')).optional() &
      ref0(identifier) &
      ref0(startingClause).optional() &
      char(':') &
      ref0(expression);

  Parser startingClause() =>
      string('starting') &
      (ref0(simpleLiteral) |
          ref0(quantity) |
          (char('(') & ref0(expression) & char(')')));

  Parser sortClause() =>
      string('sort') &
      (ref0(sortDirection) |
          (string('by') &
              ref0(sortByItem) &
              (char(',') & ref0(sortByItem)).star()));

  Parser sortDirection() =>
      string('asc') |
      string('ascending') |
      string('desc') |
      string('descending');

  Parser sortByItem() => ref0(expressionTerm) & ref0(sortDirection).optional();

  Parser qualifiedIdentifier() =>
      (ref0(qualifier) & char('.')).star() & ref0(identifier);

  Parser qualifiedIdentifierExpression() =>
      (ref0(qualifierExpression) & char('.')).star() &
      ref0(referentialIdentifier);

  Parser qualifierExpression() => ref0(referentialIdentifier);

  Parser simplePath() =>
      ref0(referentialIdentifier) |
      (ref0(simplePath) & char('.') & ref0(referentialIdentifier)) |
      (ref0(simplePath) & char('[') & ref0(simpleLiteral) & char(']'));

  Parser simpleLiteral() => stringLexer | digit().plus().flatten().trim();

  Parser expression() =>
      ref0(expressionTerm) |
      ref0(retrieve) |
      ref0(query) |
      (ref0(expression) &
          string('is') &
          string('not').optional() &
          (string('null') | string('true') | string('false'))) |
      (ref0(expression) & (string('is') | string('as')) & ref0(typeSpecifier)) |
      (string('cast') & ref0(expression) & string('as') & ref0(typeSpecifier)) |
      (string('not') & ref0(expression)) |
      (string('exists') & ref0(expression)) |
      (ref0(expression) &
          string('properly').optional() &
          string('between') &
          ref0(expressionTerm) &
          string('and') &
          ref0(expressionTerm)) |
      ((string('duration') & string('in').optional()).optional() &
          ref0(pluralDateTimePrecision) &
          string('between') &
          ref0(expressionTerm) &
          string('and') &
          ref0(expressionTerm)) |
      (string('difference') &
          string('in') &
          ref0(pluralDateTimePrecision) &
          string('between') &
          ref0(expressionTerm) &
          string('and') &
          ref0(expressionTerm)) |
      (ref0(expression) &
          (string('<=') | string('<') | string('>') | string('>=')) &
          ref0(expression)) |
      (ref0(expression) & ref0(intervalOperatorPhrase) & ref0(expression)) |
      (ref0(expression) &
          (string('=') | string('!=') | string('~') | string('!~')) &
          ref0(expression)) |
      (ref0(expression) &
          (string('in') | string('contains')) &
          ref0(dateTimePrecisionSpecifier).optional() &
          ref0(expression)) |
      (ref0(expression) & string('and') & ref0(expression)) |
      (ref0(expression) & (string('or') | string('xor')) & ref0(expression)) |
      (ref0(expression) & string('implies') & ref0(expression)) |
      (ref0(expression) &
          (string('|') |
              string('union') |
              string('intersect') |
              string('except')) &
          ref0(expression));

  Parser dateTimePrecision() => (string('year') |
          string('month') |
          string('week') |
          string('day') |
          string('hour') |
          string('minute') |
          string('second') |
          string('millisecond'))
      .trim()
      .token();

  Parser dateTimeComponent() =>
      (string('date') | string('time') | string('timezoneoffset'))
          .trim()
          .token();

  Parser pluralDateTimePrecision() => (string('years') |
          string('months') |
          string('weeks') |
          string('days') |
          string('hours') |
          string('minutes') |
          string('seconds') |
          string('milliseconds'))
      .trim()
      .token();

  Parser expressionTerm() => (ref0(termExpressionTerm) |
          ref0(invocationExpressionTerm) |
          ref0(indexedExpressionTerm) |
          ref0(conversionExpressionTerm) |
          ref0(polarityExpressionTerm) |
          ref0(timeBoundaryExpressionTerm) |
          ref0(timeUnitExpressionTerm) |
          ref0(durationExpressionTerm) |
          ref0(differenceExpressionTerm) |
          ref0(widthExpressionTerm) |
          ref0(successorExpressionTerm) |
          ref0(predecessorExpressionTerm) |
          ref0(elementExtractorExpressionTerm) |
          ref0(pointExtractorExpressionTerm) |
          ref0(typeExtentExpressionTerm) |
          ref0(powerExpressionTerm) |
          ref0(multiplicationExpressionTerm) |
          ref0(additionExpressionTerm) |
          ref0(ifThenElseExpressionTerm) |
          ref0(caseExpressionTerm) |
          ref0(aggregateExpressionTerm) |
          ref0(setAggregateExpressionTerm))
      .token();

  Parser termExpressionTerm() => ref0(term).token();

  Parser invocationExpressionTerm() =>
      ref0(expressionTerm) & char('.').token() & ref0(qualifiedInvocation);

  Parser indexedExpressionTerm() =>
      ref0(expressionTerm) &
      char('[').token() &
      ref0(expression) &
      char(']').token();

  Parser conversionExpressionTerm() =>
      string('convert').token() &
      ref0(expression) &
      string('to').token() &
      (ref0(typeSpecifier) | unitLexer).token();

  Parser polarityExpressionTerm() =>
      (char('+') | char('-')).token() & ref0(expressionTerm);

  Parser timeBoundaryExpressionTerm() =>
      (string('start') | string('end')).token() &
      string('of').token() &
      ref0(expressionTerm);

  Parser timeUnitExpressionTerm() =>
      ref0(dateTimeComponent).token() &
      string('from').token() &
      ref0(expressionTerm);

  Parser durationExpressionTerm() =>
      string('duration').token() &
      string('in').token() &
      ref0(pluralDateTimePrecision).token() &
      string('of').token() &
      ref0(expressionTerm);

  Parser differenceExpressionTerm() =>
      string('difference').token() &
      string('in').token() &
      ref0(pluralDateTimePrecision).token() &
      string('of').token() &
      ref0(expressionTerm);

  Parser widthExpressionTerm() =>
      string('width').token() & string('of').token() & ref0(expressionTerm);

  Parser successorExpressionTerm() =>
      string('successor').token() & string('of').token() & ref0(expressionTerm);

  Parser predecessorExpressionTerm() =>
      string('predecessor').token() &
      string('of').token() &
      ref0(expressionTerm);

  Parser elementExtractorExpressionTerm() =>
      string('singleton').token() &
      string('from').token() &
      ref0(expressionTerm);

  Parser pointExtractorExpressionTerm() =>
      string('point').token() & string('from').token() & ref0(expressionTerm);

  Parser typeExtentExpressionTerm() =>
      (string('minimum') | string('maximum')).token() &
      ref0(namedTypeSpecifier).token();

  Parser powerExpressionTerm() =>
      ref0(expressionTerm) & char('^').token() & ref0(expressionTerm);

  Parser multiplicationExpressionTerm() =>
      ref0(expressionTerm) &
      (char('*') | char('/') | string('div') | string('mod')).token() &
      ref0(expressionTerm);

  Parser additionExpressionTerm() =>
      ref0(expressionTerm) &
      (char('+') | char('-') | char('&')).token() &
      ref0(expressionTerm);

  Parser ifThenElseExpressionTerm() =>
      string('if').token() &
      ref0(expression) &
      string('then').token() &
      ref0(expression) &
      string('else').token() &
      ref0(expression);

  Parser caseExpressionTerm() =>
      (string('case') & ref0(expression).optional()) &
      ref0(caseExpressionItem).plus() &
      string('else').token() &
      ref0(expression) &
      string('end').token();

  Parser aggregateExpressionTerm() =>
      (string('distinct') | string('flatten')).token() & ref0(expression);

  Parser setAggregateExpressionTerm() =>
      (string('expand') | string('collapse')).token() &
      ref0(expression) &
      string('per').token() &
      (ref0(dateTimePrecision) | ref0(expression)).token();

  Parser caseExpressionItem() =>
      string('when') & ref0(expression) & string('then') & ref0(expression);

  Parser dateTimePrecisionSpecifier() =>
      ref0(dateTimePrecision).token() & string('of').token();

  Parser relativeQualifier() =>
      string('or before').token() | string('or after').token();

  Parser offsetRelativeQualifier() =>
      string('or more').token() | string('or less').token();

  Parser exclusiveRelativeQualifier() =>
      string('less than').token() | string('more than').token();

  Parser quantityOffset() =>
      ((ref0(quantity) & ref0(offsetRelativeQualifier).optional()) |
              (ref0(exclusiveRelativeQualifier) & ref0(quantity)))
          .token();

  Parser temporalRelationship() =>
      ((string('on').optional() & (string('before') | string('after'))) |
              ((string('before') | string('after')) & string('or').optional()))
          .token();

  // TODO(Dokotela): review
  Parser intervalOperatorPhrase() =>
      ((string('starts') | string('ends') | string('occurs')).optional() &
                  string('same').optional() &
                  ref0(dateTimePrecision).optional() &
                  (ref0(relativeQualifier) | string('as')).optional() &
                  (string('start') | string('end')).optional() |
              string('properly').optional() &
                  string('includes') &
                  ref0(dateTimePrecisionSpecifier).optional() &
                  (string('start') | string('end')).optional() |
              (string('starts') | string('ends') | string('occurs'))
                      .optional() &
                  string('properly').optional() &
                  (string('during') | string('included in')) &
                  ref0(dateTimePrecisionSpecifier).optional() |
              (string('starts') | string('ends') | string('occurs'))
                      .optional() &
                  ref0(quantityOffset).optional() &
                  ref0(temporalRelationship) &
                  ref0(dateTimePrecisionSpecifier).optional() &
                  (string('start') | string('end')).optional() |
              (string('starts') | string('ends') | string('occurs'))
                      .optional() &
                  string('properly').optional() &
                  string('within') &
                  ref0(quantity) &
                  string('of') &
                  (string('start') | string('end')).optional() |
              string('meets') &
                  (string('before') | string('after')).optional() &
                  ref0(dateTimePrecisionSpecifier))
          .optional() |
      string('overlaps') &
          (string('before') | string('after')).optional() &
          ref0(dateTimePrecisionSpecifier).optional() |
      string('starts') & ref0(dateTimePrecisionSpecifier).optional() |
      string('ends') & ref0(dateTimePrecisionSpecifier).optional().token();

  Parser term() => (ref0(invocation) |
          ref0(literal) |
          externalConstantLexer |
          ref0(intervalSelector) |
          ref0(tupleSelector) |
          ref0(instanceSelector) |
          ref0(listSelector) |
          ref0(codeSelector) |
          ref0(conceptSelector) |
          (char('(') & ref0(expression) & char(')')))
      .token();

  Parser qualifiedInvocation() =>
      (ref0(referentialIdentifier) | ref0(qualifiedFunction)).token();

  Parser qualifiedFunction() =>
      ref0(identifierOrFunctionIdentifier) &
      char('(') &
      ref0(paramList).star() &
      char(')');

  Parser paramList() => fhirPathLexer() & (char(',') & fhirPathLexer()).star();

  Parser invocation() =>
      ref0(referentialIdentifier) |
      ref0(function) |
      string(r'$this') |
      string(r'$index') |
      string(r'$total');

  Parser function() =>
      ref0(referentialIdentifier) &
      char('(') &
      ref0(paramList).star() &
      char(')');

  Parser ratio() => ref0(quantity) & char(':') & ref0(quantity);

  Parser quantity() =>
      numberLexer &
      ref0(whiteSpacePlus) &
      (ref0(dateTimePrecision) | ref0(pluralDateTimePrecision) | stringLexer)
          .token();

  Parser whiteSpacePlus() => (whiteSpaceLexer & ref0(ignored)).token();

  Parser ignored() =>
      (whiteSpaceLexer | lineCommentLexer | multiLineCommentLexer | escLexer)
          .star()
          .token();

  Parser literal() => (booleanLexer |
          string('null') |
          stringLexer |
          numberLexer |
          ref0(longNumber) |
          dateTimeLexer |
          dateLexer |
          timeLexer |
          quantityLexer |
          ref0(ratio))
      .token();

  Parser intervalSelector() =>
      string('Interval') &
      (string('[') & ref0(expression) & string(']') |
          string('(') & ref0(expression) & string(')'));

  Parser tupleSelector() =>
      (string('Tuple')).star() &
      string('{') &
      (string(':') |
          (ref0(tupleElementSelector) &
              (char(',') & ref0(tupleElementSelector)).star()));

  Parser tupleElementSelector() =>
      ref0(referentialIdentifier) & string(':') & ref0(expression);

  Parser instanceSelector() =>
      ref0(namedTypeSpecifier) &
      string('{') &
      (string(':') |
          (ref0(instanceElementSelector) &
              (char(',') & ref0(instanceElementSelector)).star()));

  Parser instanceElementSelector() =>
      ref0(referentialIdentifier) & string(':') & ref0(expression);

  Parser listSelector() =>
      (string('List').star() &
          string('<') &
          ref0(typeSpecifier) &
          string('>')) &
      string('{') &
      (ref0(expression) & (char(',') & ref0(expression)).star()).optional();

  Parser displayClause() => string('display') & stringLexer;

  Parser codeSelector() =>
      string('Code') &
      stringLexer &
      string('from') &
      ref0(codesystemIdentifier) &
      ref0(displayClause).star();

  Parser conceptSelector() =>
      string('Concept') &
      string('{') &
      (ref0(codeSelector) & (char(',') & ref0(codeSelector)).star())
          .optional() &
      string('}');

  Parser keyword() =>
      string('after') |
      string('aggregate') |
      string('all') |
      string('and') |
      string('as') |
      string('asc') |
      string('ascending') |
      string('before') |
      string('between') |
      string('by') |
      string('called') |
      string('case') |
      string('cast') |
      string('code') |
      string('Code') |
      string('codesystem') |
      string('codesystems') |
      string('collapse') |
      string('concept') |
      string('Concept') |
      string('contains') |
      string('context') |
      string('convert') |
      string('date') |
      string('day') |
      string('days') |
      string('default') |
      string('define') |
      string('desc') |
      string('descending') |
      string('difference') |
      string('display') |
      string('distinct') |
      string('div') |
      string('duration') |
      string('during') |
      string('else') |
      string('end') |
      string('ends') |
      string('except') |
      string('exists') |
      string('expand') |
      string('false') |
      string('flatten') |
      string('fluent') |
      string('from') |
      string('function') |
      string('hour') |
      string('hours') |
      string('if') |
      string('implies') |
      string('in') |
      string('include') |
      string('includes') |
      string('included in') |
      string('intersect') |
      string('Interval') |
      string('is') |
      string('let') |
      string('library') |
      string('List') |
      string('maximum') |
      string('meets') |
      string('millisecond') |
      string('milliseconds') |
      string('minimum') |
      string('minute') |
      string('minutes') |
      string('mod') |
      string('month') |
      string('months') |
      string('not') |
      string('null') |
      string('occurs') |
      string('of') |
      string('on or') |
      string('or') |
      string('or after') |
      string('or before') |
      string('or less') |
      string('or more') |
      string('or on') |
      string('overlaps') |
      string('parameter') |
      string('per') |
      string('point') |
      string('predecessor') |
      string('private') |
      string('properly') |
      string('public') |
      string('return') |
      string('same') |
      string('second') |
      string('seconds') |
      string('singleton') |
      string('start') |
      string('starting') |
      string('starts') |
      string('sort') |
      string('successor') |
      string('such that') |
      string('then') |
      string('time') |
      string('timezoneoffset') |
      string('to') |
      string('true') |
      string('Tuple') |
      string('union') |
      string('using') |
      string('valueset') |
      string('version') |
      string('week') |
      string('weeks') |
      string('where') |
      string('when') |
      string('width') |
      string('with') |
      string('within') |
      string('without') |
      string('xor') |
      string('year') |
      string('years');

// NOTE: Not used, this is the set of reserved words that may not appear as identifiers in ambiguous contexts
  Parser reservedWord() =>
      string('aggregate') |
      string('all') |
      string('and') |
      string('as') |
      string('after') |
      string('before') |
      string('between') |
      string('case') |
      string('cast') |
      string('Code') |
      string('collapse') |
      string('Concept') |
      string('convert') |
      string('day') |
      string('days') |
      string('difference') |
      string('distinct') |
      string('duration') |
      string('during') |
      string('else') |
      string('exists') |
      string('expand') |
      string('false') |
      string('flatten') |
      string('from') |
      string('if') |
      string('in') |
      string('included in') |
      string('is') |
      string('hour') |
      string('hours') |
      string('Interval') |
      string('let') |
      string('List') |
      string('maximum') |
      string('millisecond') |
      string('milliseconds') |
      string('minimum') |
      string('minute') |
      string('minutes') |
      string('month') |
      string('months') |
      string('not') |
      string('null') |
      string('occurs') |
      string('of') |
      string('on or') |
      string('or') |
      string('or on') |
      string('per') |
      string('point') |
      string('properly') |
      string('return') |
      string('same') |
      string('second') |
      string('seconds') |
      string('singleton') |
      string('sort') |
      string('such that') |
      string('then') |
      string('to') |
      string('true') |
      string('Tuple') |
      string('week') |
      string('weeks') |
      string('when') |
      string('with') |
      string('within') |
      string('without') |
      string('year') |
      string('years');

  /// Keyword identifiers are keywords that may be used as identifiers in a referential context
  /// Effectively, keyword except reservedWord
  Parser keywordIdentifier() =>
      string('asc') |
      string('ascending') |
      string('by') |
      string('called') |
      string('code') |
      string('codesystem') |
      string('codesystems') |
      string('concept') |
      string('contains') |
      string('context') |
      string('date') |
      string('default') |
      string('define') |
      string('desc') |
      string('descending') |
      string('display') |
      string('div') |
      string('end') |
      string('ends') |
      string('except') |
      string('fluent') |
      string('function') |
      string('implies') |
      string('include') |
      string('includes') |
      string('intersect') |
      string('library') |
      string('meets') |
      string('mod') |
      string('or after') |
      string('or before') |
      string('or less') |
      string('or more') |
      string('overlaps') |
      string('parameter') |
      string('predecessor') |
      string('private') |
      string('public') |
      string('start') |
      string('starting') |
      string('starts') |
      string('successor') |
      string('time') |
      string('timezoneoffset') |
      string('union') |
      string('using') |
      string('valueset') |
      string('version') |
      string('where') |
      string('width') |
      string('xor');

  /// Obsolete identifiers are keywords that could be used as identifiers in CQL 1.3 NOTE: Not
  /// currently used, this is the set of keywords that were defined as allowed identifiers as part of
  /// 1.3 NOTE: Several keywords were commented out in this list (notably exists) because of an issue
  /// with the ANTLR tooling. In 4.5, having these keywords as identifiers results in unacceptable
  /// parsing performance. In 4.6+, having them as identifiers resulted in incorrect parsing. See
  /// Github issue [#343](https://github.com/cqframework/clinical_quality_language/issues/343) for more
  /// detail This should no longer be an issue with 1.4 due to the introduction of reserved words
  Parser obsoleteIdentifier() =>
      string('all') |
      string('Code') |
      string('code') |
      string('Concept') |
      string('concept') |
      string('contains') |
      string('date') |
      string('display') |
      string('distinct') |
      string('end') |
      string('exists') |
      string('not') |
      string('start') |
      string('time') |
      string('timezoneoffset') |
      string('version') |
      string('where');

// Function identifiers are keywords that may be used as identifiers for functions
  Parser functionIdentifier() =>
      string('after') |
      string('aggregate') |
      string('all') |
      string('and') |
      string('as') |
      string('asc') |
      string('ascending') |
      string('before') |
      string('between') |
      string('by') |
      string('called') |
      string('case') |
      string('cast') |
      string('code') |
      string('Code') |
      string('codesystem') |
      string('codesystems') |
      string('collapse') |
      string('concept') |
      string('Concept') |
      string('contains') |
      string('context') |
      string('convert') |
      string('date') |
      string('day') |
      string('days') |
      string('default') |
      string('define') |
      string('desc') |
      string('descending') |
      string('difference') |
      string('display') |
      string('distinct') |
      string('div') |
      string('duration') |
      string('during') |
      string('else') |
      string('end') |
      string('ends') |
      string('except') |
      string('exists') |
      string('expand') |
      string('false') |
      string('flatten') |
      string('fluent') |
      string('from') |
      string('function') |
      string('hour') |
      string('hours') |
      string('if') |
      string('implies') |
      string('in') |
      string('include') |
      string('includes') |
      string('included in') |
      string('intersect') |
      string('Interval') |
      string('is') |
      string('let') |
      string('library') |
      string('List') |
      string('maximum') |
      string('meets') |
      string('millisecond') |
      string('milliseconds') |
      string('minimum') |
      string('minute') |
      string('minutes') |
      string('mod') |
      string('month') |
      string('months') |
      string('not') |
      string('null') |
      string('occurs') |
      string('of') |
      string('or') |
      string('or after') |
      string('or before') |
      string('or less') |
      string('or more') |
      string('overlaps') |
      string('parameter') |
      string('per') |
      string('point') |
      string('predecessor') |
      string('private') |
      string('properly') |
      string('public') |
      string('return') |
      string('same') |
      string('singleton') |
      string('second') |
      string('seconds') |
      string('start') |
      string('starting') |
      string('starts') |
      string('sort') |
      string('successor') |
      string('such that') |
      string('then') |
      string('time') |
      string('timezoneoffset') |
      string('to') |
      string('true') |
      string('Tuple') |
      string('union') |
      string('using') |
      string('valueset') |
      string('version') |
      string('week') |
      string('weeks') |
      string('where') |
      string('when') |
      string('width') |
      string('with') |
      string('within') |
      string('without') |
      string('xor') |
      string('year') |
      string('years');

//   /// Reserved words that are also type names
  Parser typeNameIdentifier() =>
      string('Code') | string('Concept') | string('date') | string('time');

  Parser referentialIdentifier() => ref0(identifier) | ref0(keywordIdentifier);

  Parser referentialOrTypeNameIdentifier() =>
      ref0(referentialIdentifier) | ref0(typeNameIdentifier);

  Parser identifierOrFunctionIdentifier() =>
      ref0(identifier) | ref0(functionIdentifier);

  Parser identifier() =>
      identifierLexer | delimitedIdentifierLexer | ref0(quotedIdentifier);

  Parser quotedIdentifier() =>
      char('"') & (escLexer | char('"').neg()).star() & char('"');

//   Parser cqlDateTime() =>(char('@') &
//       dateFormatLexer &
//       char('T') &
//       timeFormatLexer.optional() &
//       timeZoneOffsetFormatLexer.optional());

  Parser longNumber() => (digit().plus() & char('L'));
}
