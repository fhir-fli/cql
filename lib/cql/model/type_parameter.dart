import '../cql.dart';

enum TypeParameterConstraint {
  NONE,
  CLASS,
  VALUE,
  TUPLE,
  INTERVAL,
  CHOICE,
  TYPE,
}

class TypeParameter extends DataType {
  String identifier;
  TypeParameterConstraint constraint = TypeParameterConstraint.NONE;
  DataType? constraintType;

  TypeParameter({
    required this.identifier,
    this.constraint = TypeParameterConstraint.NONE,
    this.constraintType,
  }) : super(null);

  bool canBind(DataType callType) {
    switch (constraint) {
      case TypeParameterConstraint.CHOICE:
        return callType is ChoiceType;
      case TypeParameterConstraint.TUPLE:
        return callType is TupleType;
      case TypeParameterConstraint.INTERVAL:
        return callType is IntervalType;
      case TypeParameterConstraint.CLASS:
        return callType is ClassType;
      case TypeParameterConstraint.VALUE:
        return callType is SimpleType && callType != DataType.ANY;
      case TypeParameterConstraint.TYPE:
        return callType.isSubTypeOf(constraintType!);
      case TypeParameterConstraint.NONE:
      default:
        return true;
    }
  }

  @override
  int get hashCode => identifier.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is TypeParameter && this.identifier == o.identifier;
  }

  @override
  String toString() => identifier;

  @override
  bool get isGeneric => true;

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) =>
      context.isInstantiable(this, callType);

  @override
  DataType instantiate(InstantiationContext context) =>
      context.instantiate(this);
}
