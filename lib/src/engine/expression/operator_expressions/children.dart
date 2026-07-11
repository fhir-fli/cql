import 'package:cql/src/internal.dart';

/// For structured types, the Children operator returns a list of all the values of the elements of the type.
/// For list types, the result is the same as invoking Children on each element in the list and flattening the resulting lists into a single result.
class Children extends OperatorExpression {
  Children({
    required this.source,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Children.fromJson(Map<String, dynamic> json) => Children(
        source: CqlExpression.fromJson(json['source']! as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlExpression source;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Children';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await source.execute(context);
    if (value == null) return null;
    final mr = getModelResolver(context);
    if (value is List) {
      final results = <dynamic>[];
      for (final item in value) {
        results.addAll(_getChildren(item, mr));
      }
      return results;
    }
    return _getChildren(value, mr);
  }

  static List<dynamic> _getChildren(dynamic value, ModelResolver? mr) {
    if (value == null) return [];
    // A structured value's children are the values of its elements. Raw FHIR
    // JSON is already a name→value map; typed model objects decompose to one
    // via the resolver.
    final map = value is Map<String, dynamic> ? value : mr?.toElementMap(value);
    if (map != null) {
      return map.values.where((v) => v != null).toList();
    }
    return [value];
  }
}
