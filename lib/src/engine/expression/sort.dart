import 'package:cql/src/internal.dart';

/// The Sort operator returns a list with all the elements in source, sorted
/// as described by the by element.
/// When the sort elements do not provide a unique ordering, the order of
/// duplicates is unspecified.
/// If the argument is null, the result is null.
class Sort extends CqlExpression {
  Sort({
    required this.source,
    required this.by,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        source: CqlExpression.fromJson(json['source'] as Map<String, dynamic>),
        by: List<SortByItem>.from(
          (json['by'] as List)
              .map((x) => SortByItem.fromJson(x as Map<String, dynamic>)),
        ),
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
  final List<SortByItem> by;
  final CqlExpression source;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'by': List<dynamic>.from(by.map((x) => x.toJson())),
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Sort';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    if (sourceResult == null) return null;
    if (sourceResult is! Iterable) return sourceResult;

    final list = sourceResult.toList();
    if (list.isEmpty || by.isEmpty) return list;

    final descending = by
        .map(
          (spec) =>
              spec.direction == SortDirection.desc ||
              spec.direction == SortDirection.descending,
        )
        .toList();

    // Precompute sort keys for each element
    final keyLists = <List<Comparable<dynamic>?>>[];
    for (final element in list) {
      final keys = <Comparable<dynamic>?>[];
      for (final spec in by) {
        dynamic rawKey;
        if (spec is ByExpression) {
          final execCtx = <String, dynamic>{}
            ..addAll(context)
            ..[r'$this'] = element;
          rawKey = await spec.expression.execute(execCtx);
        } else if (spec is ByDirection) {
          rawKey = element;
        } else if (spec is ByColumn) {
          if (element is Map<String, dynamic>) {
            rawKey = spec.path.split('.').fold<dynamic>(
                  element,
                  (curr, key) =>
                      curr is Map<String, dynamic> ? curr[key] : null,
                );
          }
        }
        keys.add(rawKey is Comparable ? rawKey : null);
      }
      keyLists.add(keys);
    }

    final indices = List<int>.generate(list.length, (i) => i)
      ..sort((i, j) {
        final k1 = keyLists[i];
        final k2 = keyLists[j];
        for (var idx = 0; idx < k1.length; idx++) {
          final a = k1[idx];
          final b = k2[idx];
          final cmp = (a == null && b == null)
              ? 0
              : (a == null ? -1 : (b == null ? 1 : a.compareTo(b)));
          if (cmp != 0) return descending[idx] ? -cmp : cmp;
        }
        return 0;
      });
    return [for (final idx in indices) list[idx]];
  }
}
