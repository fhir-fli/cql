import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// The PopulationVariance operator returns the statistical population
/// variance of the elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationVariance extends AggregateExpression {
  PopulationVariance({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PopulationVariance.fromJson(Map<String, dynamic> json) =>
      PopulationVariance(
        source: CqlExpression.fromJson(json['source']! as Map<String, dynamic>),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map(
                  (e) => TypeSpecifierExpression.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
        path: json['path'] as String?,
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

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (signature != null) {
      json['signature'] = signature!.map((e) => e.toJson()).toList();
    }

    if (path != null) {
      json['path'] = path;
    }

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
  String get type => 'PopulationVariance';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = source.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return [];
    } else if (returnTypes.contains('Quantity')) {
      return ['Quantity'];
    } else {
      return ['Decimal'];
    }
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return populationVariance(sourceResult);
  }

  static dynamic populationVariance(dynamic sourceResult) {
    if (sourceResult == null || sourceResult is! List || sourceResult.isEmpty) {
      return null;
    }
    sourceResult.removeWhere((element) => element == null);
    if (sourceResult.isEmpty) {
      return null;
    }

    final mean = Avg.avg(sourceResult);

    if (mean is CqlDecimal) {
      var sumOfSquaredDiffs = CqlDecimal(0.0);
      for (final val in sourceResult) {
        final diff = CqlDecimal((val as CqlNumber).valueNum! - mean.valueNum!);
        final squaredDiff = CqlDecimal(diff.valueNum! * diff.valueNum!);
        sumOfSquaredDiffs =
            CqlDecimal(sumOfSquaredDiffs.valueNum! + squaredDiff.valueNum!);
      }
      final variance =
          sumOfSquaredDiffs.valueNum! / sourceResult.length; // N instead of N-1
      return CqlDecimal(variance.toStringAsFixed(8));
      // The unit of a quantity variance is the elements' unit, unchanged.
      // CQL reference 09-b, Variance example (read whole 2026-10-07):
      // `Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) //
      // 2.5 'mg'`. Two of the three reference engines do the same: the
      // JavaScript cql-execution (elm/aggregate.ts finalizeAggregateResult:
      // `new Quantity(bounded, firstItem.unit)`) and Firely's .NET SDK
      // (CqlOperators.AggregateFunctions.cs Variance: `new
      // CqlQuantity(varianceVal, stdDev.unit)`), both read 2026-10-07 from
      // their main branches. Only the Java engine squares and canonicalizes
      // the unit (its CqlTestSuite expects `0 'm6'` for millilitres, the
      // squared value lost below its 8 decimals); #20 had followed it, and
      // this reverses #20. The value is computed in the mean's unit.
    } else if (mean is ValidatedQuantity) {
      final svc = UcumService();
      final meanUnit = mean.unit;
      var sumOfSquaredDiffs = 0.0;
      var count = 0;
      for (final val in sourceResult) {
        if (val is! ValidatedQuantity) continue;
        final converted = val.unit == meanUnit
            ? val
            : ValidatedQuantity(
                value: svc.convert(val.value, val.unit, meanUnit),
                unit: meanUnit,
              );
        final diff = converted - mean;
        if (diff != null) {
          final d = double.tryParse(diff.value.asUcumDecimal()) ?? 0.0;
          sumOfSquaredDiffs += d * d;
          count++;
        }
      }
      final variance = sumOfSquaredDiffs / count;
      return ValidatedQuantity(
        value: UcumDecimal.fromString(_eightPlaces(variance)),
        unit: meanUnit,
      );
    }

    throw ArgumentError(
      'Unsupported type for Population Variance: ${sourceResult.runtimeType}',
    );
  }

  @override
  String toString() => 'PopulationVariance { source: $source }';
}

/// A double at the Decimal scale of 8 (09-b, Decimal), trailing zeros
/// dropped but one decimal kept (`2.5`, `1.58113883`).
String _eightPlaces(double value) {
  final fixed = value.toStringAsFixed(8);
  final trimmed = fixed.replaceFirst(RegExp(r'0+$'), '');
  return trimmed.endsWith('.') ? '${trimmed}0' : trimmed;
}
