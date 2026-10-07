import 'package:cql/src/internal.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Ref {
  ConceptRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConceptRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError('JSON name cannot be null');
    }

    return ConceptRef(
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
  String get type => 'ConceptRef';

  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();
    return val;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (resultTypeName != null) {
      return [resultTypeName!];
    }
    if (resultTypeSpecifier != null) {
      // unwrap the specifier into a list of type names
      return resultTypeSpecifier!.getReturnTypes(library);
    }
    return ['CodeableConcept'];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final current = context['library'];
    if (current is! CqlLibrary) return null;
    // A concept of an included library (ELM 04, ConceptRef.libraryName):
    // looked up there, and its codes resolved there too. Ignored until
    // 2026-10-07 (cql-engine IncludedConceptRefTest answered null).
    var library = current;
    var conceptContext = context;
    if (libraryName != null) {
      final included = await current.resolveIncludedLibrary(libraryName!);
      if (included == null) return null;
      library = included;
      conceptContext = Map<String, dynamic>.from(context)
        ..['library'] = included;
    }
    final conceptDefs = library.concepts?.def;
    if (conceptDefs == null) return null;
    for (final conceptDef in conceptDefs) {
      if (conceptDef.name == name) {
        // Resolve each CodeRef in the ConceptDef
        final codes = <CqlCode>[];
        for (final codeRef in conceptDef.code) {
          final resolved = await codeRef.execute(conceptContext);
          if (resolved is CqlCode) {
            codes.add(resolved);
          }
        }
        return CqlConcept(
          codes: codes,
          display: conceptDef.display,
        );
      }
    }
    return null;
  }
}
