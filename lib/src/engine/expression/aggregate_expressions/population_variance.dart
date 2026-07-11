import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// The PopulationVariance operator returns the statistical population variance of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
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
                .map((e) =>
                    TypeSpecifierExpression.fromJson(e as Map<String, dynamic>))
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
                json['resultTypeSpecifier'] as Map<String, dynamic>)
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
    } else if (mean is ValidatedQuantity) {
      final svc = UcumService();
      final meanUnit = mean.unit;
      ValidatedQuantity? sumOfSquaredValues;
      for (final val in sourceResult) {
        if (val is! ValidatedQuantity) continue;
        final converted = val.unit == meanUnit
            ? val
            : ValidatedQuantity(
                value: svc.convert(val.value, val.unit, meanUnit),
                unit: meanUnit,
              );
        final diffValue = converted - mean;
        if (diffValue != null) {
          final squaredDiff = diffValue * diffValue;
          sumOfSquaredValues = sumOfSquaredValues == null
              ? squaredDiff
              : sumOfSquaredValues + squaredDiff;
        }
      }
      if (sumOfSquaredValues != null) {
        final sum =
            UcumDecimal.fromString(sumOfSquaredValues.value.asUcumDecimal());
        var varianceValue =
            sum / UcumDecimal.fromNum(sourceResult.length); // N instead of N-1
        // Truncate to 8 decimal places to match CQF reference precision
        final truncated = double.tryParse(varianceValue.asUcumDecimal());
        if (truncated != null) {
          varianceValue = UcumDecimal.fromString(truncated.toStringAsFixed(8));
        }
        return ValidatedQuantity(
          value: varianceValue,
          unit: sumOfSquaredValues.unit,
        );
      }
    }

    throw ArgumentError(
      'Unsupported type for Population Variance: ${sourceResult.runtimeType}',
    );
  }

  @override
  String toString() => 'PopulationVariance { source: $source }';
}
