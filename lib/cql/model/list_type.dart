import '../cql.dart';

class ListType extends DataType {
  late DataType elementType;

  ListType(this.elementType) : super(null);

  DataType getElementType() {
    return this.elementType;
  }

  @override
  int get hashCode => 67 * elementType.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ListType && this.elementType == o.elementType;
  }

  @override
  bool isSubTypeOf(DataType other) {
    if (other is ListType) {
      ListType that = other;
      return this.elementType.isSubTypeOf(that.elementType);
    }

    return super.isSubTypeOf(other);
  }

  @override
  bool isSuperTypeOf(DataType other) {
    if (other is ListType) {
      ListType that = other;
      return this.elementType.isSuperTypeOf(that.elementType);
    }

    return super.isSuperTypeOf(other);
  }

  @override
  String toString() {
    return "list<${elementType.toString()}>";
  }

  String toLabel() {
    return "List of ${elementType.toLabel()}";
  }

  @override
  bool get isGeneric => elementType.isGeneric;

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) {
    if (callType is ListType) {
      ListType listType = callType;
      return elementType.isInstantiable(listType.elementType, context);
    }

    bool isAlreadyInstantiable = false;
    for (ListType targetListType
        in context.getListConversionTargets(callType)) {
      bool isInstantiable =
          elementType.isInstantiable(targetListType.elementType, context);
      if (isInstantiable) {
        if (isAlreadyInstantiable) {
          throw ArgumentError(
              "Ambiguous generic instantiation involving $callType to $targetListType.");
        }
        isAlreadyInstantiable = true;
      }
    }

    return isAlreadyInstantiable;
  }

  @override
  DataType instantiate(InstantiationContext context) {
    return ListType(elementType.instantiate(context));
  }
}