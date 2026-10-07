import 'package:cql/src/internal.dart';

/// Operator to combine a list of strings, optionally separating each string
/// with the given separator.
/// If either argument is null, the result is null. If the source list is empty,
/// the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the input
/// list are ignored.
/// Signature:
///
/// Combine(source `List<String>`) String
/// Combine(source `List<String>`, separator String) String
/// Description:
///
/// The Combine operator combines a list of strings, optionally separating each
/// string with the given separator.
///
/// If either argument is null, or the source list is empty, the result is null.
///
/// For consistency with aggregate operator behavior, null elements in the input
/// list are ignored.
///
/// The following examples illustrate the behavior of the Combine operator:
///
/// define "CombineList": Combine({ 'A', 'B', 'C' }) // 'ABC'
/// define "CombineWithSeparator": Combine({ 'A', 'B', 'C' }, ' ') // 'A B C'
/// define "CombineWithNulls": Combine({ 'A', 'B', 'C', null }) // 'ABC'
class Combine extends OperatorExpression {
  Combine({
    required this.source,
    this.separator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Combine.fromJson(Map<String, dynamic> json) => Combine(
        source: CqlExpression.fromJson(json['source']! as Map<String, dynamic>),
        separator: json['separator'] == null
            ? null
            : CqlExpression.fromJson(json['separator'] as Map<String, dynamic>),
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
  final CqlExpression? separator;
  final CqlExpression source;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (separator != null) {
      data['separator'] = separator!.toJson();
    }
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
  String get type => 'Combine';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];

  @override
  Future<CqlString?> execute(Map<String, dynamic> context) async {
    final sourceValue = await source.execute(context);
    final separatorValue = await separator?.execute(context);
    return combine(sourceValue, separatorValue);
  }

  static String? textOf(dynamic value) => value is String
      ? value
      : value is CqlString
          ? value.valueString
          : null;

  /// CQL reference 09-b, Combine: "If the source is null, the result is
  /// null"; "if the separator is null, the result is the same as if it were
  /// the empty string"; "if the source list contains null elements, they
  /// are ignored". A source that is not a list of strings is a run-time
  /// error (CqlException): a definition carries it as its value and the
  /// rest of the library still evaluates. Until 2026-10-06 it was an
  /// ArgumentError, which stopped the whole CqlTestSuite run (1,789 cases)
  /// at one define.
  CqlString? combine(dynamic sourceValue, dynamic separatorValue) {
    if (sourceValue == null) return null;
    if (sourceValue is List) {
      final parts = <String>[];
      for (final element in sourceValue) {
        if (element == null) continue;
        final text = textOf(element);
        if (text == null) {
          throw CqlException(
            message: 'Combine: the source must be a List<String>, found '
                '${element.runtimeType}',
          );
        }
        parts.add(text);
      }
      if (parts.isEmpty) return null;
      final separator = separatorValue == null ? '' : textOf(separatorValue);
      if (separator == null) {
        throw CqlException(
          message: 'Combine: the separator must be a String, found '
              '${separatorValue.runtimeType}',
        );
      }
      return CqlString(parts.join(separator));
    }
    throw CqlException(
      message: 'Combine: the source must be a List<String>, found '
          '${sourceValue.runtimeType}',
    );
  }
}
