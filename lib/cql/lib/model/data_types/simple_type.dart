import '../../cql.dart';

class SimpleType extends DataType implements NamedType {
  final String name;
  String? target;

  SimpleType(this.name, [DataType? baseType]) : super(baseType);

  @override
  bool operator ==(Object other) => other is SimpleType && name == other.name;

  @override
  String getName() => name;

  @override
  String getNamespace() {
    final qualifierIndex = name.indexOf('.');
    return qualifierIndex > 0 ? name.substring(0, qualifierIndex) : '';
  }

  @override
  String getSimpleName() {
    final qualifierIndex = name.indexOf('.');
    return qualifierIndex > 0 ? name.substring(qualifierIndex + 1) : name;
  }

  @override
  String? getTarget() => target;

  @override
  int get hashCode => name.hashCode;

  @override
  DataType instantiate(InstantiationContext context) => this;

  @override
  bool isCompatibleWith(DataType other) {
    // The system type "Any" can be implicitly cast to any other type.
    return this == DataType.ANY || super.isCompatibleWith(other);
  }

  @override
  bool get isGeneric => false;

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) {
    if (isSuperTypeOf(callType)) {
      return true;
    }

    var isAlreadyInstantiable = false;
    for (var targetSimpleType in context.getSimpleConversionTargets(callType)) {
      var isInstantiable =
          true; // If it came back from this call, we can instantiate it...
      if (isInstantiable) {
        if (isAlreadyInstantiable) {
          throw ArgumentError(
              "Ambiguous generic instantiation involving $callType to $targetSimpleType.");
        }
        isAlreadyInstantiable = true;
      }
    }

    return isAlreadyInstantiable;
  }

  @override
  String toString() => name;
}
