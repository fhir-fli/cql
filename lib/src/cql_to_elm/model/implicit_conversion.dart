import 'package:cql/src/internal.dart';

/// Modelinfo-driven implicit conversion — the translator-side mechanism the
/// reference implementations use to keep engines model-free.
///
/// When an expression's inferred result type is a model type with a declared
/// implicit conversion (the modelinfo's `conversionInfo`, e.g.
/// `FHIR.Quantity` → `System.Quantity` via `FHIRHelpers.ToQuantity`), the
/// expression is wrapped in a [FunctionRef] to the declared conversion
/// function. All conversion decisions are driven by the loaded [Model] —
/// never by property-name heuristics.

/// Infers the static result type of [expression], as a normalized type name
/// (`List<...>` for collections), or `null` when it can't be determined.
///
/// [scopeType] resolves a query alias or let identifier to the type it
/// ranges over; [defineType] resolves a local expression-definition name to
/// its recorded result type. Both look-ups are supplied by the visitor layer
/// (which owns scope tracking) — see `CqlBaseVisitor.inferType`.
String? inferResultType(
  CqlExpression expression,
  Model model, {
  String? Function(String name)? scopeType,
  String? Function(String name)? defineType,
}) {
  if (expression is Retrieve) {
    return 'List<${model.normalizeTypeName(expression.dataType.toString())}>';
  }
  if (expression is ExpressionRef && expression.libraryName == null) {
    final recorded = defineType?.call(expression.name);
    if (recorded != null) return recorded;
  }
  if (expression is AliasRef) return scopeType?.call(expression.name);
  if (expression is QueryLetRef) return scopeType?.call(expression.name);
  if (expression is OperandRef) return scopeType?.call(expression.name);
  if (expression is IdentifierRef) {
    final qualifier = expression.libraryName;
    // Unqualified: a query alias, let identifier, or function operand.
    if (qualifier == null) return scopeType?.call(expression.name);
    // Qualified (`immz.extension`): a property access on a scoped name —
    // resolve the element's declared type on the qualifier's type.
    final qualifierType = scopeType?.call(qualifier);
    if (qualifierType != null && !qualifierType.startsWith('List<')) {
      final resolved = model.resolveElementType(qualifierType, expression.name);
      if (resolved != null && !resolved.isChoice) {
        return resolved.isList ? 'List<${resolved.single}>' : resolved.single;
      }
    }
    return null;
  }
  if (expression is SingletonFrom) {
    final operandType = inferResultType(expression.operand, model,
        scopeType: scopeType, defineType: defineType);
    return operandType == null ? null : elementTypeName(operandType);
  }
  if (expression is First) {
    final sourceType = inferResultType(expression.source, model,
        scopeType: scopeType, defineType: defineType);
    return sourceType == null ? null : elementTypeName(sourceType);
  }
  if (expression is Last) {
    final sourceType = inferResultType(expression.source, model,
        scopeType: scopeType, defineType: defineType);
    return sourceType == null ? null : elementTypeName(sourceType);
  }
  if (expression is Query) {
    // A query without a return or aggregate clause yields its (single)
    // source's type: filtering/sorting don't change it.
    if (expression.returnClause == null &&
        expression.aggregate == null &&
        expression.source.length == 1) {
      return inferResultType(expression.source.first.expression, model,
          scopeType: scopeType, defineType: defineType);
    }
    return null;
  }
  return expression.knownResultType;
}

/// The normalized type name declared by [specifier] (e.g. a function
/// operand's `List<Identifier>` → `List<FHIR.Identifier>`), or `null` for
/// specifier shapes that don't map to a single name (choice, tuple).
String? typeSpecifierTypeName(TypeSpecifierExpression specifier, Model model) {
  if (specifier is NamedTypeSpecifier) {
    return model.normalizeTypeName(specifier.namespace.toString());
  }
  if (specifier is ListTypeSpecifier) {
    final element = specifier.elementType == null
        ? null
        : typeSpecifierTypeName(specifier.elementType!, model);
    return element == null ? null : 'List<$element>';
  }
  if (specifier is IntervalTypeSpecifier) {
    final point = specifier.pointType == null
        ? null
        : typeSpecifierTypeName(specifier.pointType!, model);
    return point == null ? null : 'Interval<$point>';
  }
  return null;
}

/// `List<T>` → `T`; any other type name is its own element type (a query
/// over a non-list source ranges over that single value).
String elementTypeName(String typeName) =>
    typeName.startsWith('List<') && typeName.endsWith('>')
        ? typeName.substring(5, typeName.length - 1)
        : typeName;

/// The element type of [source] when used as a query source (the type the
/// query alias ranges over), or `null` when it can't be statically inferred.
String? inferSourceElementType(
  CqlExpression source,
  Model model, {
  String? Function(String name)? scopeType,
  String? Function(String name)? defineType,
}) {
  final type = inferResultType(source, model,
      scopeType: scopeType, defineType: defineType);
  return type == null ? null : elementTypeName(type);
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
