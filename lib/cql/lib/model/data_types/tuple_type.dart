import '../../cql.dart';

class TupleType extends DataType {
  List<TupleTypeElement> elements = [];
  List<TupleTypeElement>? sortedElements;

  TupleType({required this.elements, this.sortedElements}) : super(null);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    if (o is TupleType) {
      TupleType that = o;
      if (elements.length == that.elements.length) {
        List<TupleTypeElement> theseElements = getSortedElements();
        List<TupleTypeElement> thoseElements = that.getSortedElements();
        for (var i = 0; i < theseElements.length; i++) {
          if (theseElements[i] != thoseElements[i]) {
            return false;
          }
        }
        return true;
      }
    }
    return false;
  }

  @override
  int get hashCode {
    int result = 13;
    for (var element in elements) {
      result += (37 * element.hashCode);
    }
    return result;
  }

  @override
  DataType instantiate(InstantiationContext context) {
    if (!isGeneric) {
      return this;
    }
    TupleType result = TupleType(elements: []);
    for (var i = 0; i < elements.length; i++) {
      result.addElement(TupleTypeElement(
          name: elements[i].getName(),
          type: elements[i].getType().instantiate(context)));
    }
    return result;
  }

  @override
  bool isCompatibleWith(DataType other) {
    if (other is ClassType) {
      ClassType classType = other;
      return this == classType.getTupleType();
    }
    return super.isCompatibleWith(other);
  }

  @override
  bool get isGeneric {
    for (var e in elements) {
      if (e.getType().isGeneric) {
        return true;
      }
    }
    return false;
  }

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) {
    if (callType is TupleType) {
      TupleType tupleType = callType;
      if (elements.length == tupleType.elements.length) {
        List<TupleTypeElement> theseElements = getSortedElements();
        List<TupleTypeElement> thoseElements = tupleType.getSortedElements();
        for (var i = 0; i < theseElements.length; i++) {
          if (!(theseElements[i].getName() == thoseElements[i].getName() &&
              theseElements[i]
                  .getType()
                  .isInstantiable(thoseElements[i].getType(), context))) {
            return false;
          }
        }
        return true;
      }
    }
    return false;
  }

  @override
  bool isSubTypeOf(DataType other) {
    if (other is TupleType) {
      TupleType that = other;
      if (elements.length == that.elements.length) {
        List<TupleTypeElement> theseElements = getSortedElements();
        List<TupleTypeElement> thoseElements = that.getSortedElements();
        for (var i = 0; i < theseElements.length; i++) {
          if (!theseElements[i].isSubTypeOf(thoseElements[i])) {
            return false;
          }
        }
        return true;
      }
    }
    return super.isSubTypeOf(other);
  }

  @override
  bool isSuperTypeOf(DataType other) {
    if (other is TupleType) {
      TupleType that = other;
      if (elements.length == that.elements.length) {
        List<TupleTypeElement> theseElements = getSortedElements();
        List<TupleTypeElement> thoseElements = that.getSortedElements();
        for (var i = 0; i < theseElements.length; i++) {
          if (!theseElements[i].isSuperTypeOf(thoseElements[i])) {
            return false;
          }
        }
        return true;
      }
    }
    return super.isSuperTypeOf(other);
  }

  @override
  String toLabel() {
    var builder = StringBuffer();
    builder.write("tuple of ");
    for (var i = 0; i < elements.length; i++) {
      if (i > 0) {
        builder.write(", ");
      }
      builder.write(elements[i].toLabel());
    }
    return builder.toString();
  }

  @override
  String toString() {
    var builder = StringBuffer();
    builder.write("tuple{");
    for (var i = 0; i < elements.length; i++) {
      if (i > 0) {
        builder.write(",");
      }
      builder.write(elements[i].toString());
    }
    builder.write("}");
    return builder.toString();
  }

  Iterable<TupleTypeElement> getElements() {
    return elements;
  }

  void addElement(TupleTypeElement element) {
    elements.add(element);
    sortedElements = null;
  }

  void addElements(Iterable<TupleTypeElement> elements) {
    this.elements.addAll(elements);
    sortedElements = null;
  }

  List<TupleTypeElement> getSortedElements() {
    if (sortedElements == null) {
      sortedElements = List<TupleTypeElement>.from(elements);
      sortedElements!
          .sort((left, right) => left.getName().compareTo(right.getName()));
    }

    return sortedElements!;
  }
}
