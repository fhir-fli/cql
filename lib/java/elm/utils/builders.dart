import '../../../cql/cql-to-elm/elm/elm.dart';

List<Expression> build(dynamic json) {
  if (json == null) {
    return [];
  } else if (typeIsArray(json)) {
    return (json as List<dynamic>)
        .map((child) => build(child))
        .expand((element) => element)
        .toList();
  } else if (json is! Map<String, dynamic>) {
    return [];
  } else if (json['type'] == 'FunctionRef') {
    return [FunctionRef.fromJson(json)];
  } else if (json['type'] == 'Literal') {
    return [Literal.fromJson(json)];
  } else if (functionExists(json['type'])) {
    return [constructByName(json['type'], json)];
  } else {
    return [];
  }
}

bool functionExists(String name) => functionMap.containsKey(name);

Expression constructByName(String name, dynamic json) =>
    functionMap[name]!(json);
