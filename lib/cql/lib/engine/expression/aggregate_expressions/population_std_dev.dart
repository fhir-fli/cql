import '../../../cql.dart';

/// The PopulationStdDev operator returns the statistical standard deviation of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationStdDev extends AggregateExpression {
  PopulationStdDev({
    required Expression source,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );
}
