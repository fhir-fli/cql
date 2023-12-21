import '../../cql.dart';

class ListType extends DataType {
  final DataType elementType;

  ListType(this.elementType) : super(null);

  DataType getElementType() {
    return elementType;
  }

  @override
  int get hashCode => 67 * elementType.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ListType && elementType == other.elementType;
  }

  @override
  bool isSubTypeOf(DataType other) {
    if (other is ListType) {
      ListType that = other;
      return elementType.isSubTypeOf(that.elementType);
    }

    return super.isSubTypeOf(other);
  }

  @override
  bool isSuperTypeOf(DataType other) {
    if (other is ListType) {
      ListType that = other;
      return elementType.isSuperTypeOf(that.elementType);
    }

    return super.isSuperTypeOf(other);
  }

  @override
  String toString() {
    return "list<${elementType.toString()}>";
  }

  @override
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
