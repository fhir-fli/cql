import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// The Variance operator returns the statistical variance of the elements in
/// source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Variance(argument `List<Decimal>`) Decimal
/// Variance(argument `List<Quantity>`) Quantity
/// Description:
///
/// The Variance operator returns the statistical variance of the elements
/// in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Variance operator:
///
/// define "DecimalVariance": Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.5
/// define "QuantityVariance": Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg',
///   4.0 'mg', 5.0 'mg' }) // 2.5 'mg'
/// define "VarianceIsNull": Variance({ null as Quantity, null as Quantity,
///   null as Quantity })
/// define "VarianceIsAlsoNull": Variance(null as `List<Decimal>`)
class Variance extends AggregateExpression {
  Variance({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Variance.fromJson(Map<String, dynamic> json) => Variance(
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
  String get type => 'Variance';

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
    return variance(sourceResult);
  }

  static dynamic variance(dynamic sourceResult) {
    if (sourceResult == null) {
      return null;
    }
    final values = sourceResult as List<dynamic>;
    if (values.isEmpty) {
      return null;
    }
    values.removeWhere((dynamic element) => element == null);
    if (values.isEmpty) {
      return null;
    }

    // Sample variance requires at least 2 values (denominator is N-1)
    if (values.length < 2) {
      return null;
    }

    final mean = Avg.avg(values);

    // For CqlDecimal — sample variance uses (N-1) denominator
    if (mean is CqlDecimal) {
      var sumOfSquaredDiffs = CqlDecimal(0.0);
      for (final val in values) {
        if (val is CqlNumber) {
          final diff = CqlDecimal(val.valueNum! - mean.valueNum!);
          final squaredDiff = CqlDecimal(diff.valueNum! * diff.valueNum!);
          sumOfSquaredDiffs =
              CqlDecimal(sumOfSquaredDiffs.valueNum! + squaredDiff.valueNum!);
        }
      }
      final variance = sumOfSquaredDiffs.valueNum! / (values.length - 1);
      return CqlDecimal(variance);
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
      for (final val in values) {
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
      final variance = sumOfSquaredDiffs / (count - 1);
      return ValidatedQuantity(
        value: UcumDecimal.fromString(_eightPlaces(variance)),
        unit: meanUnit,
      );
    }

    throw ArgumentError(
      'Unsupported type for Variance: ${sourceResult.runtimeType}',
    );
  }

  @override
  String toString() => 'Variance { source: $source }';
}

/// A double at the Decimal scale of 8 (09-b, Decimal), trailing zeros
/// dropped but one decimal kept (`2.5`, `1.58113883`).
String _eightPlaces(double value) {
  final fixed = value.toStringAsFixed(8);
  final trimmed = fixed.replaceFirst(RegExp(r'0+$'), '');
  return trimmed.endsWith('.') ? '${trimmed}0' : trimmed;
}
