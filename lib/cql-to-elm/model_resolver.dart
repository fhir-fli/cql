import '../cql.dart';

abstract class ModelResolver {
  Model getModel(String modelName);
}
