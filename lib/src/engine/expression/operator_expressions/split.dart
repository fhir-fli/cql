import 'package:cql/src/internal.dart';

/// Operator to split a string into a list of strings using a separator.
/// If the stringToSplit argument is null, the result is null.
/// If the stringToSplit argument does not contain any appearances of the
/// separator, the result is a list of strings containing one element that is
/// the value of the stringToSplit argument.
/// Signature:
///
/// Split(stringToSplit String, separator String) `List<String>`
/// Description:
///
/// The Split operator splits a string into a list of strings using a separator.
///
/// If the stringToSplit argument is null, the result is null.
///
/// If the stringToSplit argument does not contain any appearances of the
/// separator, the result is a list of strings containing one element that is
/// the value of the stringToSplit argument.
///
/// The following examples illustrate the behavior of the Split operator:
///
/// define "SplitFound": Split('A B C', ' ') // { 'A', 'B', 'C' }
/// define "SplitNotFound": Split('A B C', ',') // { 'A B C' }
/// define "SplitIsNull": Split(null, ' ') // null
class Split extends OperatorExpression {
  Split({
    required this.stringToSplit,
    required this.separator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Split.fromJson(Map<String, dynamic> json) => Split(
        stringToSplit: CqlExpression.fromJson(
          json['stringToSplit'] as Map<String, dynamic>,
        ),
        separator:
            CqlExpression.fromJson(json['separator'] as Map<String, dynamic>),
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
  final CqlExpression separator;
  final CqlExpression stringToSplit;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'stringToSplit': stringToSplit.toJson(),
      'separator': separator.toJson(),
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
  String get type => 'Split';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['List<String>'];

  @override
  Future<List<String>?> execute(Map<String, dynamic> context) async {
    final stringToSplitValue = await stringToSplit.execute(context);
    final separatorValue = await separator.execute(context);
    return split(stringToSplitValue, separatorValue);
  }

  List<String>? split(dynamic sourceValue, dynamic separatorValue) {
    if (sourceValue == null) {
      return null;
    }
    if (sourceValue is String &&
        (separatorValue is String || separatorValue == null)) {
      if (separatorValue == null) {
        return [sourceValue];
      }
      return sourceValue.split(separatorValue as Pattern);
    }
    throw ArgumentError('Invalid argument for Combine operator');
  }
}
