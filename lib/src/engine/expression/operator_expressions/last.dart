import 'package:cql/src/internal.dart';

/// Last operator returns the last element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering
/// prior to returning the last element.
/// If the argument is null, the result is null.
/// Signature:
///
/// Last(argument `List<T>`) T
/// Description:
///
/// The Last operator returns the last element in a list. In a list of length
/// N, the operator is equivalent to invoking the indexer with an index of
/// N - 1.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the Last operator:
///
/// define "Last5": Last({ 1, 3, 5 }) // 5
/// define "LastIsNull": Last(null)
class Last extends OperatorExpression {
  Last({
    required this.source,
    this.orderBy,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Last.fromJson(Map<String, dynamic> json) {
    return Last(
      source: CqlExpression.fromJson(json['source']! as Map<String, dynamic>),
      orderBy: json['orderBy'] as String?,
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
  final String? orderBy;
  final CqlExpression source;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (orderBy != null) {
      data['orderBy'] = orderBy;
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
  String get type => 'Last';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = source.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return [];
    }
    return [returnTypes.last];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final list = await source.execute(context);
    if (list == null) {
      return null;
    } else if (list is List) {
      if (list.isEmpty) {
        return null;
      }
      return list.last;
    } else {
      throw ArgumentError('Last operator can only be applied to a list');
    }
  }
}
