import '../cql.dart';

dynamic build(dynamic json) {
  if (json == null) {
    return json;
  }

  if (typeIsArray(json)) {
    return (json as List)
        .map((dynamic child) => build(child) as Expression)
        .toList();
  }

  if (json['type'] == 'FunctionRef') {
    return FunctionRef(json);
  } else if (json['type'] == 'Literal') {
    return Literal.fromJson(json);
  } else if (functionExists(json['type'])) {
    return constructByName(json['type'], json);
  } else {
    return null;
  }
}
