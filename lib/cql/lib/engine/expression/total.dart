import '../../cql.dart';


/// The Total expression returns the current value of the total aggregation accumulator in an aggregate operation.
class Total extends Expression {
  Total({required this.scope});

  final String scope;
}