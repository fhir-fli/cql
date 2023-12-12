import '../cql.dart';

class IntervalType extends DataType {
  late DataType pointType;

  IntervalType(this.pointType) : super(null);

  DataType getPointType() {
    return pointType;
  }

  @override
  int get hashCode => 53 * pointType.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is IntervalType && pointType == o.pointType;
  }

  @override
  bool isSubTypeOf(DataType other) {
    if (other is IntervalType) {
      IntervalType that = other;
      return pointType.isSubTypeOf(that.pointType);
    }

    return super.isSubTypeOf(other);
  }

  @override
  bool isSuperTypeOf(DataType other) {
    if (other is IntervalType) {
      IntervalType that = other;
      return pointType.isSuperTypeOf(that.pointType);
    }

    return super.isSuperTypeOf(other);
  }

  @override
  String toString() {
    return "interval<${pointType.toString()}>";
  }

  @override
  String toLabel() {
    return "Interval of ${pointType.toLabel()}";
  }

  @override
  bool get isGeneric => pointType.isGeneric;

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) {
    if (callType is IntervalType) {
      IntervalType intervalType = callType;
      return pointType.isInstantiable(intervalType.pointType, context);
    }

    bool isAlreadyInstantiable = false;
    for (IntervalType targetIntervalType
        in context.getIntervalConversionTargets(callType)) {
      bool isInstantiable =
          pointType.isInstantiable(targetIntervalType.pointType, context);
      if (isInstantiable) {
        if (isAlreadyInstantiable) {
          throw ArgumentError(
              "Ambiguous generic instantiation involving $callType to $targetIntervalType.");
        }
        isAlreadyInstantiable = true;
      }
    }

    return isAlreadyInstantiable;
  }

  @override
  DataType instantiate(InstantiationContext context) {
    return IntervalType(pointType.instantiate(context));
  }
}
