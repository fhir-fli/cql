import 'package:cql/src/internal.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
class CodeRef extends Ref {
  CodeRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CodeRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError('JSON name cannot be null');
    }

    return CodeRef(
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
              json['resultTypeSpecifier'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  String get type => 'CodeRef';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (resultTypeName != null) {
      return [resultTypeName!];
    }
    if (resultTypeSpecifier != null) {
      // unwrap the specifier into a list of type names
      return resultTypeSpecifier!.getReturnTypes(library);
    }
    return ['Code'];
  }

  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();
    return val;
  }

  @override
  Future<CqlCode?> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    final library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }

    // Cross-library resolution
    if (libraryName != null) {
      return library.resolveCodeRefFromLibrary(name, libraryName!);
    }

    final code = library.resolveCodeRef(name);

    return code;
  }
}
