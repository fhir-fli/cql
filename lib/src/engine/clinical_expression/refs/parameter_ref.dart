import 'package:cql/src/internal.dart';

/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Ref {
  ParameterRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ParameterRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError('JSON name cannot be null');
    }

    return ParameterRef(
      name: name as String,
      libraryName: json['libraryName'] as String?,
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

  @override
  String get type => 'ParameterRef';

  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();
    return val;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Check if the parameter value was provided in the execution context
    if (context.containsKey(name)) {
      return context[name];
    }

    // If not provided, look up the default from the library's parameter definitions
    final library = context['library'];
    if (library is CqlLibrary && library.parameters != null) {
      for (final paramDef in library.parameters!.def) {
        if (paramDef.name == name) {
          if (paramDef.defaultExpression != null) {
            return paramDef.defaultExpression!.execute(context);
          }
          return null;
        }
      }
    }

    return null;
  }
}
