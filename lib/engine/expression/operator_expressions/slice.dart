import '../../../cql.dart';

/// The Slice operator returns a portion of the elements in a list, beginning at the start index and ending just before the ending index.
/// If the source list is null, the result is null.
/// If the startIndex is null, the slice begins at the first element of the list.
/// If the endIndex is null, the slice continues to the last element of the list.
/// If the startIndex or endIndex is less than 0, or if the endIndex is less than the startIndex, the result is an empty list.
class Slice extends OperatorExpression {
  final CqlExpression endIndex;
  final CqlExpression source;
  final CqlExpression startIndex;

  Slice({
    required this.source,
    required this.startIndex,
    required this.endIndex,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Slice.fromJson(Map<String, dynamic> json) => Slice(
        source: CqlExpression.fromJson(json['source']),
        startIndex: CqlExpression.fromJson(json['startIndex']),
        endIndex: CqlExpression.fromJson(json['endIndex']),
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
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'startIndex': startIndex.toJson(),
      'endIndex': endIndex.toJson(),
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
  String get type => 'Slice';
}
