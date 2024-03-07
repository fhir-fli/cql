import 'package:fhir/primitive_types/primitive_types.dart';

import '../../../../cql.dart';

/// Operator to return the indexth element in a string or list.
/// Indexes in strings and lists are defined to be 0-based.
/// If the index is less than 0 or greater than the length of the string or
/// list being indexed, the result is null.
/// If either argument is null, the result is null.
/// Signature:
///
/// [](argument String, index Integer) String
/// Description:
///
/// The indexer ([]) operator returns the character at the indexth position in
/// a string.
///
/// Indexes in strings are defined to be 0-based.
///
/// If either argument is null, the result is null.
///
/// If the index is greater than the length of the string being indexed, the
/// result is null.
///
/// The following examples illustrate the behavior of the indexer operator:
///
/// define "Indexer2": 'ABCDE'[2] // 'C'
/// define "IndexerIsNull": 'ABCDE'[14] // null
/// define "IndexerIsAlsoNull": 'ABCDE'[null] // null
class Indexer extends BinaryExpression {
  Indexer({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Indexer.fromJson(Map<String, dynamic> json) => Indexer(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
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
  String get type => 'Indexer';

  @override
  dynamic execute(Map<String, dynamic> context) {
    final result = operand[0].execute(context);
    final index = operand[1].execute(context);
    if (result == null || index == null) {
      return null;
    }
    if (result is String && index is FhirInteger && index.isValid) {
      if (index < 0 || index >= result.length) {
        return null;
      }
      return result[index.value!];
    }
    if (result is List && index is FhirInteger && index.isValid) {
      if (index < 0 || index >= result.length) {
        return null;
      }
      return result[index.value!];
    }
    return null;
  }

  @override
  List<Type>? get returnTypes {
    if ((operand[0].returnTypes?.contains(String) ?? false) &&
        (operand[1].returnTypes?.contains(FhirInteger) ?? false)) {
      return [String];
    } else if ((operand[0].returnTypes?.contains(List) ?? false) &&
        (operand[1].returnTypes?.contains(FhirInteger) ?? false)) {
      return [dynamic];
    }
    return null;
  }
}
