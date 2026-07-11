import 'package:cql/src/internal.dart';

/// The Property operator returns the value of the property on source specified
/// by the path attribute.
/// If the result of evaluating source is null, the result is null.
/// The path attribute may include qualifiers (.) and indexers ([x]). Indexers
/// must be literal integer values.
/// If the path attribute contains qualifiers or indexers, each qualifier or
/// indexer is traversed to obtain the actual value.
/// If the object of the property access at any point in traversing the path is
/// null, the result is null.
/// If a scope is specified, the name is used to resolve the scope in which the
/// path will be resolved.
/// Property expressions can also be used to access the individual points and
/// closed indicators for interval types using the property names low, high,
/// lowClosed, and highClosed.
class Property extends CqlExpression {
  Property({
    required this.path,
    this.source,
    this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      path: json['path'] as String,
      source: json['source'] != null
          ? CqlExpression.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      scope: json['scope'] as String?,
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
  }
  final String path;
  final String? scope;
  final CqlExpression? source;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('path', path);
    writeNotNull('type', type);
    writeNotNull('scope', scope);
    writeNotNull('source', source?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Property';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (source != null) {
      final sourceReturnTypes = source!.getReturnTypes(library);
      final returnTypes = <String>[];
      for (final type in sourceReturnTypes) {
        final endType = library.modelResolver?.resolveTypePath('$type.$path');
        if (endType != null) {
          final resolvedType = QName.fhirToElmTypes(endType.type);
          returnTypes
              .add(endType.isList ? 'List<$resolvedType>' : resolvedType);
        }
      }
      return returnTypes;
    }
    return [];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Resolve source: either from explicit source expression or from scope
    final dynamic sourceResult;
    if (source != null) {
      sourceResult = await source!.execute(context);
    } else if (scope != null && context.containsKey(scope)) {
      sourceResult = context[scope];
    } else {
      sourceResult = null;
    }
    // List projection: if sourceResult is a list with multiple elements,
    // map the property access over each element.
    if (sourceResult is List && sourceResult.length > 1) {
      final projected = <dynamic>[];
      for (final element in sourceResult) {
        final value = await _resolveProperty(element, context);
        if (value is List) {
          projected.addAll(value);
        } else if (value != null) {
          projected.add(value);
        }
      }
      return projected;
    }

    return _resolveProperty(sourceResult, context);
  }

  Future<dynamic> _resolveProperty(
    dynamic sourceResult,
    Map<String, dynamic> context,
  ) async {
    // For plain Maps (CQL tuples), directly access the property
    if (sourceResult is Map<String, dynamic> &&
        sourceResult.containsKey(path) &&
        !sourceResult.containsKey('resourceType')) {
      return sourceResult[path];
    }
    // All FHIR-shaped navigation is delegated to the version-specific
    // ModelResolver, keeping the engine free of any fhir_r* dependency.
    return requireModelResolver(context).resolvePath(sourceResult, path);
  }
}
