import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../cql.dart';

/// Represents a case operator allowing multiple conditional expressions to be
/// chained together.
class Case extends CqlExpression {
  /// List of case items specifying conditions and actions.
  final List<CaseItem> caseItem;

  /// CqlExpression to compare against.
  CqlExpression? comparand;

  /// Action to perform if none of the conditions are met.
  final CqlExpression elseExpr;

  Case({
    this.comparand,
    required this.caseItem,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Case.fromJson(Map<String, dynamic> json) => Case(
        comparand: json['comparand'] == null
            ? null
            : CqlExpression.fromJson(json['comparand']),
        caseItem: (json['caseItem']! as List)
            .map((e) => CaseItem.fromJson(e))
            .toList(),
        elseExpr: CqlExpression.fromJson(json['else']!),
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
    };

    if (comparand != null) {
      data['comparand'] = comparand!.toJson();
    }

    data['caseItem'] = caseItem.map((e) => e.toJson()).toList();

    data['else'] = elseExpr.toJson();

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
  String get type => 'Case';

  @override
  List<Type>? getReturnTypes(Library library) {
    List<Type>? types;
    for (final item in caseItem) {
      final newTypes = item.then.getReturnTypes(library);
      if (newTypes != null) {
        types ??= [];
        types.addAll(newTypes);
      }
    }
    final elseTypes = elseExpr.getReturnTypes(library);
    if (elseTypes != null) {
      types ??= [];
      types.addAll(elseTypes);
    }
    if (types == null || types.isEmpty) {
      return null;
    } else {
      if (types.contains(ValidatedQuantity) || types.contains(FhirDecimal)) {
        return [FhirDecimal];
      } else if (types.contains(FhirInteger64)) {
        return [FhirInteger64];
      } else if (types.contains(FhirInteger)) {
        return [FhirInteger];
      } else {
        return types.toSet().toList();
      }
    }
  }

  @override
  dynamic execute(Map<String, dynamic> context) {
    if (comparand == null) {
      final index = caseItem.indexWhere((element) {
        final whenResult = element.when_.execute(context);
        if (whenResult is FhirBoolean && whenResult.isValid) {
          return whenResult.value!;
        } else {
          return false;
        }
      });
      if (index != -1) {
        return caseItem[index].then.execute(context);
      } else {
        return elseExpr.execute(context);
      }
    } else {
      final comparandResult = comparand!.execute(context);
      final index = caseItem.indexWhere((element) {
        final whenResult = element.when_.execute(context);
        return Equal.equal(comparandResult, whenResult) ?? false;
      });
      if (index != -1) {
        return caseItem[index].then.execute(context);
      } else {
        return elseExpr.execute(context);
      }
    }
  }
}
