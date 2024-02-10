import '../cql.dart';

class Relationship {
  final ModelContext context;
  List<String> relatedKeys = [];

  Relationship({required this.context, Iterable<String>? relatedKeys})
      : relatedKeys =
            relatedKeys != null ? List<String>.from(relatedKeys) : <String>[];

  ModelContext getContext() {
    return context;
  }

  Iterable<String> getRelatedKeys() {
    return relatedKeys;
  }
}
