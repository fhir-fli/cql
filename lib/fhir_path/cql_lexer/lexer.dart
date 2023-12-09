// This defines the structure of a CQL library.
import 'package:petitparser/petitparser.dart';

import '../fhir_path.dart';

final Parser library = libraryDefinition.optional() &
    definition.star() &
    statement.star() &
    endOfInput();

final Parser definition = usingDefinition |
    includeDefinition |
    codesystemDefinition |
    valuesetDefinition |
    codeDefinition |
    conceptDefinition |
    parameterDefinition;

final Parser libraryDefinition = string('library') &
    qualifiedIdentifier &
    (string('version') & versionSpecifier).optional();

final Parser usingDefinition = string('using') &
    modelIdentifier &
    (string('version') & versionSpecifier).optional();

final Parser includeDefinition = string('include') &
    qualifiedIdentifier &
    (string('version') & versionSpecifier).optional() &
    (string('called') & localIdentifier).optional();

final Parser localIdentifier = identifier;

final Parser accessModifier = string('public') | string('private');

final Parser parameterDefinition = (accessModifier.optional() &
    string('parameter') &
    identifier &
    typeSpecifier.optional() &
    (string('default') & expression).optional());

final Parser codesystemDefinition = (accessModifier.optional() &
    string('codesystem') &
    identifier &
    char(':') &
    codesystemId &
    (string('version') & versionSpecifier).optional());

final Parser valuesetDefinition = (accessModifier.optional() &
    string('valueset') &
    identifier &
    char(':') &
    valuesetId &
    (string('version') & versionSpecifier).optional() &
    codesystems.optional());

final Parser codesystems = (string('codesystems') &
    char('{') &
    (codesystemIdentifier & (char(',') & codesystemIdentifier).star())
        .optional() &
    char('}'));

final Parser codesystemIdentifier =
    (libraryIdentifier.optional() & char('.') & identifier) | identifier;

final Parser libraryIdentifier = identifier;

final Parser codeDefinition = (accessModifier.optional() &
    string('code') &
    identifier &
    char(':') &
    codeId &
    string('from') &
    codesystemIdentifier &
    displayClause.optional());

final Parser conceptDefinition = (accessModifier.optional() &
    string('concept') &
    identifier &
    char(':') &
    char('{') &
    (codeIdentifier & (char(',') & codeIdentifier).star()).optional() &
    char('}') &
    displayClause.optional());

final Parser codeIdentifier =
    (libraryIdentifier.optional() & char('.') & identifier) | identifier;

final Parser codesystemId = stringLexer;

final Parser valuesetId = stringLexer;

final Parser versionSpecifier = stringLexer;

final Parser codeId = stringLexer;

final typeSpecifier = namedTypeSpecifier |
    listTypeSpecifier |
    intervalTypeSpecifier |
    tupleTypeSpecifier |
    choiceTypeSpecifier;

final namedTypeSpecifier =
    (qualifier.flatten() & char('.')).star() & referentialOrTypeNameIdentifier;

final modelIdentifier = identifier.token();

final listTypeSpecifier =
    string('List') & char('<').token() & typeSpecifier & char('>').token();

final intervalTypeSpecifier =
    string('Interval') & char('<').token() & typeSpecifier & char('>').token();

final tupleTypeSpecifier = string('Tuple') &
    string('{') &
    tupleElementDefinition.separatedBy(char(',')) &
    string('}');

final tupleElementDefinition = referentialIdentifier & typeSpecifier;

final choiceTypeSpecifier = string('Choice') &
    char('<').token() &
    typeSpecifier.separatedBy(char(',')) &
    char('>').token();

final Parser statement =
    expressionDefinition | contextDefinition | functionDefinition;

final Parser expressionDefinition = string('define') &
    (accessModifier.optional() & identifier & char(':') & expression);

final Parser contextDefinition =
    string('context') & (modelIdentifier & char('.')).optional() & identifier;

final Parser functionDefinition = string('define') &
    (accessModifier.optional() &
        string('fluent').optional() &
        string('function') &
        identifierOrFunctionIdentifier &
        char('(') &
        (operandDefinition & (char(',') & operandDefinition).star())
            .optional() &
        char(')') &
        (string('returns') & typeSpecifier).optional() &
        char(':') &
        (functionBody | string('external')));

final Parser operandDefinition = referentialIdentifier & typeSpecifier;

final Parser functionBody = expression;

final Parser querySource = retrieve |
    qualifiedIdentifierExpression |
    (char('(') & expression & char(')'));

final Parser aliasedQuerySource = querySource & alias;

final Parser alias = identifier;

final Parser queryInclusionClause = withClause | withoutClause;

final Parser withClause =
    string('with') & aliasedQuerySource & string('such that') & expression;

final Parser withoutClause =
    string('without') & aliasedQuerySource & string('such that') & expression;

final Parser retrieve = char('[') &
    (contextIdentifier & string('->')).optional() &
    namedTypeSpecifier &
    (char(':') & (codePath & codeComparator).optional() & terminology)
        .optional() &
    char(']');

final Parser contextIdentifier = qualifiedIdentifierExpression;

final Parser codePath = simplePath;

final Parser codeComparator = string('in') | char('=') | string('~');

final Parser terminology = qualifiedIdentifierExpression | expression;

final Parser qualifier = identifier;

final Parser query = sourceClause &
    letClause.optional() &
    queryInclusionClause.star() &
    whereClause.optional() &
    (aggregateClause | returnClause).optional() &
    sortClause.optional();

final Parser sourceClause = (string('from').optional() &
    aliasedQuerySource &
    (char(',') & aliasedQuerySource).star());

final Parser letClause =
    string('let') & letClauseItem & (char(',') & letClauseItem).star();

final Parser letClauseItem = identifier & char(':') & expression;

final Parser whereClause = string('where') & expression;

final Parser returnClause = string('return') &
    (string('all') | string('distinct')).optional() &
    expression;

final Parser aggregateClause = string('aggregate') &
    (string('all') | string('distinct')).optional() &
    identifier &
    startingClause.optional() &
    char(':') &
    expression;

final Parser startingClause = string('starting') &
    (simpleLiteral | quantity | (char('(') & expression & char(')')));

final Parser sortClause = string('sort') &
    (sortDirection |
        (string('by') & sortByItem & (char(',') & sortByItem).star()));

final Parser sortDirection =
    string('asc') | string('ascending') | string('desc') | string('descending');

final Parser sortByItem = expressionTerm & sortDirection.optional();

final Parser qualifiedIdentifier = (qualifier & char('.')).star() & identifier;

final Parser qualifiedIdentifierExpression =
    (qualifierExpression & char('.')).star() & referentialIdentifier;

final Parser qualifierExpression = referentialIdentifier;

final Parser simplePath = referentialIdentifier |
    (simplePath & char('.') & referentialIdentifier) |
    (simplePath & char('[') & simpleLiteral & char(']'));

final Parser simpleLiteral = stringLexer |
    digit().plus().flatten().trim(); // Assumes stringLexer parser for STRING

final Parser expression = expressionTerm |
    retrieve |
    query |
    (expression &
        string('is') &
        string('not').optional() &
        (string('null') | string('true') | string('false'))) |
    (expression & (string('is') | string('as')) & typeSpecifier) |
    (string('cast') & expression & string('as') & typeSpecifier) |
    (string('not') & expression) |
    (string('exists') & expression) |
    (expression &
        string('properly').optional() &
        string('between') &
        expressionTerm &
        string('and') &
        expressionTerm) |
    ((string('duration') & string('in').optional()).optional() &
        pluralDateTimePrecision &
        string('between') &
        expressionTerm &
        string('and') &
        expressionTerm) |
    (string('difference') &
        string('in') &
        pluralDateTimePrecision &
        string('between') &
        expressionTerm &
        string('and') &
        expressionTerm) |
    (expression &
        (string('<=') | string('<') | string('>') | string('>=')) &
        expression) |
    (expression & intervalOperatorPhrase & expression) |
    (expression &
        (string('=') | string('!=') | string('~') | string('!~')) &
        expression) |
    (expression &
        (string('in') | string('contains')) &
        dateTimePrecisionSpecifier.optional() &
        expression) |
    (expression & string('and') & expression) |
    (expression & (string('or') | string('xor')) & expression) |
    (expression & string('implies') & expression) |
    (expression &
        (string('|') |
            string('union') |
            string('intersect') |
            string('except')) &
        expression);

final Parser dateTimePrecision = (string('year') |
        string('month') |
        string('week') |
        string('day') |
        string('hour') |
        string('minute') |
        string('second') |
        string('millisecond'))
    .trim()
    .token();

final Parser dateTimeComponent =
    (string('date') | string('time') | string('timezoneoffset')).trim().token();

final Parser pluralDateTimePrecision = (string('years') |
        string('months') |
        string('weeks') |
        string('days') |
        string('hours') |
        string('minutes') |
        string('seconds') |
        string('milliseconds'))
    .trim()
    .token();

final Parser expressionTerm = (termExpressionTerm |
        invocationExpressionTerm |
        indexedExpressionTerm |
        conversionExpressionTerm |
        polarityExpressionTerm |
        timeBoundaryExpressionTerm |
        timeUnitExpressionTerm |
        durationExpressionTerm |
        differenceExpressionTerm |
        widthExpressionTerm |
        successorExpressionTerm |
        predecessorExpressionTerm |
        elementExtractorExpressionTerm |
        pointExtractorExpressionTerm |
        typeExtentExpressionTerm |
        powerExpressionTerm |
        multiplicationExpressionTerm |
        additionExpressionTerm |
        ifThenElseExpressionTerm |
        caseExpressionTerm |
        aggregateExpressionTerm |
        setAggregateExpressionTerm)
    .token();

final Parser termExpressionTerm = term.token();

final Parser invocationExpressionTerm =
    expressionTerm & char('.').token() & qualifiedInvocation;

final Parser indexedExpressionTerm =
    expressionTerm & char('[').token() & expression & char(']').token();

final Parser conversionExpressionTerm = string('convert').token() &
    expression &
    string('to').token() &
    (typeSpecifier | unitLexer).token();

final Parser polarityExpressionTerm =
    (char('+') | char('-')).token() & expressionTerm;

final Parser timeBoundaryExpressionTerm =
    (string('start') | string('end')).token() &
        string('of').token() &
        expressionTerm;

final Parser timeUnitExpressionTerm =
    dateTimeComponent.token() & string('from').token() & expressionTerm;

final Parser durationExpressionTerm = string('duration').token() &
    string('in').token() &
    pluralDateTimePrecision.token() &
    string('of').token() &
    expressionTerm;

final Parser differenceExpressionTerm = string('difference').token() &
    string('in').token() &
    pluralDateTimePrecision.token() &
    string('of').token() &
    expressionTerm;

final Parser widthExpressionTerm =
    string('width').token() & string('of').token() & expressionTerm;

final Parser successorExpressionTerm =
    string('successor').token() & string('of').token() & expressionTerm;

final Parser predecessorExpressionTerm =
    string('predecessor').token() & string('of').token() & expressionTerm;

final Parser elementExtractorExpressionTerm =
    string('singleton').token() & string('from').token() & expressionTerm;

final Parser pointExtractorExpressionTerm =
    string('point').token() & string('from').token() & expressionTerm;

final Parser typeExtentExpressionTerm =
    (string('minimum') | string('maximum')).token() &
        namedTypeSpecifier.token();

final Parser powerExpressionTerm =
    expressionTerm & char('^').token() & expressionTerm;

final Parser multiplicationExpressionTerm = expressionTerm &
    (char('*') | char('/') | string('div') | string('mod')).token() &
    expressionTerm;

final Parser additionExpressionTerm = expressionTerm &
    (char('+') | char('-') | char('&')).token() &
    expressionTerm;

final Parser ifThenElseExpressionTerm = string('if').token() &
    expression &
    string('then').token() &
    expression &
    string('else').token() &
    expression;

final Parser caseExpressionTerm = (string('case') & expression.optional()) &
    caseExpressionItem.plus() &
    string('else').token() &
    expression &
    string('end').token();

final Parser aggregateExpressionTerm =
    (string('distinct') | string('flatten')).token() & expression;

final Parser setAggregateExpressionTerm =
    (string('expand') | string('collapse')).token() &
        expression &
        string('per').token() &
        (dateTimePrecision | expression).token();

final Parser caseExpressionItem =
    string('when') & expression & string('then') & expression;

final Parser dateTimePrecisionSpecifier =
    dateTimePrecision.token() & string('of').token();

final Parser relativeQualifier =
    string('or before').token() | string('or after').token();

final Parser offsetRelativeQualifier =
    string('or more').token() | string('or less').token();

final Parser exclusiveRelativeQualifier =
    string('less than').token() | string('more than').token();

final Parser quantityOffset = ((quantity & offsetRelativeQualifier.optional()) |
        (exclusiveRelativeQualifier & quantity))
    .token();

final Parser temporalRelationship =
    ((string('on').optional() & (string('before') | string('after'))) |
            ((string('before') | string('after')) & string('or').optional()))
        .token();

final Parser intervalOperatorPhrase =
    ((string('starts') | string('ends') | string('occurs')).optional() &
                string('same').optional() &
                dateTimePrecision.optional() &
                (relativeQualifier | string('as')).optional() &
                (string('start') | string('end')).optional() |
            string('properly').optional() &
                string('includes') &
                dateTimePrecisionSpecifier.optional() &
                (string('start') | string('end')).optional() |
            (string('starts') | string('ends') | string('occurs')).optional() &
                string('properly').optional() &
                (string('during') | string('included in')) &
                dateTimePrecisionSpecifier.optional() |
            (string('starts') | string('ends') | string('occurs')).optional() &
                quantityOffset.optional() &
                temporalRelationship &
                dateTimePrecisionSpecifier.optional() &
                (string('start') | string('end')).optional() |
            (string('starts') | string('ends') | string('occurs')).optional() &
                string('properly').optional() &
                string('within') &
                quantity &
                string('of') &
                (string('start') | string('end')).optional() |
            string('meets') &
                (string('before') | string('after')).optional() &
                dateTimePrecisionSpecifier.optional() |
            string('overlaps') &
                (string('before') | string('after')).optional() &
                dateTimePrecisionSpecifier.optional() |
            string('starts') & dateTimePrecisionSpecifier.optional() |
            string('ends') & dateTimePrecisionSpecifier.optional())
        .token();

final Parser term = (invocation |
        literal |
        externalConstantLexer |
        intervalSelector |
        tupleSelector |
        instanceSelector |
        listSelector |
        codeSelector |
        conceptSelector |
        (char('(') & expression & char(')')))
    .token();

final Parser qualifiedInvocation =
    (referentialIdentifier | qualifiedFunction).token();

final Parser qualifiedFunction =
    identifierOrFunctionIdentifier & char('(') & paramList.star() & char(')');

final Parser paramList = fhirPathLexer() & (char(',') & fhirPathLexer()).star();

final Parser invocation = referentialIdentifier |
    function |
    string(r'$this') |
    string(r'$index') |
    string(r'$total');

final Parser function =
    referentialIdentifier & char('(') & paramList.star() & char(')');

final Parser ratio = quantity & char(':') & quantity;

final Parser quantity = numberLexer &
    whiteSpacePlus &
    (dateTimePrecision | pluralDateTimePrecision | stringLexer).token();

Parser whiteSpacePlus = (whiteSpaceLexer & ignored).token();

Parser ignored =
    (whiteSpaceLexer | lineCommentLexer | multiLineCommentLexer | escLexer)
        .star()
        .token();

final Parser literal = (booleanLexer |
        string('null') |
        stringLexer |
        numberLexer |
        longNumber |
        dateTimeLexer |
        dateLexer |
        timeLexer |
        quantityLexer |
        ratio)
    .token();

final Parser intervalSelector = string('Interval') &
    (string('[') & expression & string(']') |
        string('(') & expression & string(')'));

final tupleSelector = (string('Tuple')).star() &
    string('{') &
    (string(':') |
        (tupleElementSelector & (char(',') & tupleElementSelector).star()));

final tupleElementSelector = referentialIdentifier & string(':') & expression;

final instanceSelector = namedTypeSpecifier &
    string('{') &
    (string(':') |
        (instanceElementSelector &
            (char(',') & instanceElementSelector).star()));

final instanceElementSelector =
    referentialIdentifier & string(':') & expression;

final listSelector =
    (string('List').star() & string('<') & typeSpecifier & string('>')) &
        string('{') &
        (expression & (char(',') & expression).star()).optional();

final displayClause = string('display') & stringLexer;

final codeSelector = string('Code') &
    stringLexer &
    string('from') &
    codesystemIdentifier &
    (displayClause).star();

final Parser conceptSelector = string('Concept') &
    string('{') &
    (codeSelector & (char(',') & codeSelector).star()).optional() &
    string('}');

Parser keyword = string('after') |
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
Parser reservedWord = string('aggregate') |
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
Parser keywordIdentifier = string('asc') |
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
Parser obsoleteIdentifier = string('all') |
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
Parser functionIdentifier = string('after') |
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

/// Reserved words that are also type names
Parser typeNameIdentifier =
    string('Code') | string('Concept') | string('date') | string('time');

Parser referentialIdentifier = identifier | keywordIdentifier;

Parser referentialOrTypeNameIdentifier =
    referentialIdentifier | typeNameIdentifier;

Parser identifierOrFunctionIdentifier = identifier | functionIdentifier;

Parser identifier =
    identifierLexer | delimitedIdentifierLexer | quotedIdentifier;

Parser quotedIdentifier =
    char('"') & (escLexer | char('"').neg()).star() & char('"');

final Parser cqlDateTime = (char('@') &
    dateFormatLexer &
    char('T') &
    timeFormatLexer.optional() &
    timeZoneOffsetFormatLexer.optional());

final Parser longNumber = (digit().plus() & char('L'));
