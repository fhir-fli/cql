import 'package:fhir_cql/fhir_cql.dart';

/// Modelinfo-driven implicit conversion — the translator-side mechanism the
/// reference implementations use to keep engines model-free.
///
/// When an expression's inferred result type is a model type with a declared
/// implicit conversion (the modelinfo's `conversionInfo`, e.g.
/// `FHIR.Quantity` → `System.Quantity` via `FHIRHelpers.ToQuantity`), the
/// expression is wrapped in a [FunctionRef] to the declared conversion
/// function. All conversion decisions are driven by the loaded [Model] —
/// never by property-name heuristics.

/// The element type of [source] when used as a query source (the type the
/// query alias ranges over), or `null` when it can't be statically inferred.
///
/// A [Retrieve] yields `List<dataType>`, so the alias ranges over the
/// retrieve's data type.
String? inferSourceElementType(CqlExpression source, Model model) {
  if (source is Retrieve) {
    final dataType = source.dataType;
    return model.normalizeTypeName(dataType.toString());
  }
  if (source is Query) {
    // A nested query without a return clause ranges over its (single)
    // source's element type.
    if (source.returnClause == null && source.source.length == 1) {
      return inferSourceElementType(source.source.first.expression, model);
    }
    return null;
  }
  return null;
}

/// Resolves the declared element type of `<sourceType>.<path>` and records
/// it on [property] as translator-internal [Element.inferredResultType]
/// (`List<...>` for collections — never the serialized `resultTypeName`,
/// which the reference translators only emit behind an option). Choice
/// elements are left untyped — selecting among choice alternatives is the
/// caller's concern (`As` casts).
ResolvedElementType? typeProperty(
  Property property,
  String sourceType,
  Model model,
) {
  final resolved = model.resolveElementType(sourceType, property.path);
  if (resolved == null || resolved.isChoice) return resolved;
  property.inferredResultType =
      resolved.isList ? 'List<${resolved.single}>' : resolved.single;
  return resolved;
}

/// Wraps [expression] in its modelinfo-declared implicit conversion when one
/// exists for the expression's known result type. Returns [expression]
/// unchanged when its type is unknown, already a System type, list-valued,
/// or has no declared conversion.
///
/// Per the reference implementations, this is applied at *operand binding*
/// (when an expression is bound into an operator/function that expects a
/// System-typed operand) — never unconditionally at property creation, where
/// it would double-convert operands whose binding site inserts its own
/// conversion.
CqlExpression applyImplicitConversion(CqlExpression expression, Model model) {
  final type = expression.knownResultType;
  if (type == null || type.startsWith('List<')) return expression;

  final conversion = model.findConversionFrom(type);
  if (conversion == null) return expression;

  final functionName = conversion.functionName;
  final dot = functionName.indexOf('.');
  final libraryName = dot > 0 ? functionName.substring(0, dot) : null;
  final name = dot > 0 ? functionName.substring(dot + 1) : functionName;

  return FunctionRef(
    name: name,
    libraryName: libraryName,
    operand: [expression],
  )..inferredResultType = conversion.toType == null
      ? null
      : model.normalizeTypeName(conversion.toType!);
}
