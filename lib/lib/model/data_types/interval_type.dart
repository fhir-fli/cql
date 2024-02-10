import '../../cql.dart';

class IntervalType extends DataType {
  final DataType pointType;

  IntervalType(this.pointType) : super(null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IntervalType && pointType == other.pointType;
  }

  @override
  int get hashCode => 53 * pointType.hashCode;

  @override
  DataType instantiate(InstantiationContext context) {
    return IntervalType(pointType.instantiate(context));
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
  String toLabel() {
    return "Interval of ${pointType.toLabel()}";
  }

  @override
  String toString() {
    return "interval<${pointType.toString()}>";
  }

  DataType getPointType() {
    return pointType;
  }
}
