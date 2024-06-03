import '../../../cql.dart';

class CqlTimingExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlTimingExpressionVisitor(super.library);

  @override
  CqlExpression visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    if (ctx.childCount == 3) {
      CqlExpression left =
          visitTermExpression(ctx.children![0] as TermExpressionContext);
      CqlExpression right =
          visitTermExpression(ctx.children![2] as TermExpressionContext);
      // CqlExpression? result;
      final intervalOperatorPhrase = ctx.children![1];
      switch (intervalOperatorPhrase) {
        case ConcurrentWithIntervalOperatorPhraseContext _:
          return visitConcurrentWithIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case IncludesIntervalOperatorPhraseContext _:
          return visitIncludesIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case IncludedInIntervalOperatorPhraseContext _:
          return visitIncludedInIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case BeforeOrAfterIntervalOperatorPhraseContext _:
          return visitBeforeOrAfterIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case WithinIntervalOperatorPhraseContext _:
          return visitWithinIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case MeetsIntervalOperatorPhraseContext _:
          return visitMeetsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case OverlapsIntervalOperatorPhraseContext _:
          return visitOverlapsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case StartsIntervalOperatorPhraseContext _:
          return visitStartsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
        case EndsIntervalOperatorPhraseContext _:
          return visitEndsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
      }
    }
    throw ArgumentError('$thisNode Invalid TimingExpression');
  }
}
