import '../cql.dart';

final functionMap = <String, Function>{
  'Count': Count.fromJson,
  'Sum': Sum.fromJson,
  'Min': Min.fromJson,
  'Max': Max.fromJson,
  'Avg': Avg.fromJson,
  'Median': Median.fromJson,
  'Mode': Mode.fromJson,
  'StdDev': StdDev.fromJson,
  'Product': Product.fromJson,
  'GeometricMean': GeometricMean.fromJson,
  'PopulationStdDev': PopulationStdDev.fromJson,
  'Variance': Variance.fromJson,
  'PopulationVariance': PopulationVariance.fromJson,
  'AllTrue': AllTrue.fromJson,
  'AnyTrue': AnyTrue.fromJson,
  'FunctionRef': FunctionRef.fromJson,
  'Literal': Literal.fromJson,
};
