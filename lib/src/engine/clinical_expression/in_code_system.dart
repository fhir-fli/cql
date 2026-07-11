import 'package:cql/src/internal.dart';

/// The InCodeSystem operator returns true if the given code is in the given
/// code system.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class InCodeSystem extends OperatorExpression {
  InCodeSystem({
    required this.code,
    required this.codesystem,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InCodeSystem.fromJson(Map<String, dynamic> json) => InCodeSystem(
        code: CqlExpression.fromJson(json['code'] as Map<String, dynamic>),
        codesystem:
            CodeSystemRef.fromJson(json['codesystem'] as Map<String, dynamic>),
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
  final CqlExpression code;
  final CodeSystemRef codesystem;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'code': code.toJson(),
      'codesystem': codesystem.toJson(),
    };

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'InCodeSystem';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final codeValue = await code.execute(context);
    if (codeValue == null) return null;
    final codeSystemValue = await codesystem.execute(context);
    if (codeSystemValue == null) return null;
    // Basic implementation: check if the code's system matches
    if (codeValue is CqlCode) {
      return CqlBoolean(codeValue.system == codeSystemValue.id);
    }
    return null;
  }
}
