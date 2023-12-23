import '../../cql.dart';

class ChoiceType extends DataType {
  final List<DataType> _types;

  ChoiceType(Iterable<DataType> types)
      : _types = List<DataType>.from(types),
        super(null) {
    // Expand choice types in the constructor, similar to the Java implementation
    for (final type in _types) {
      if (type is ChoiceType) {
        for (final choice in type.types) {
          addType(choice);
        }
      } else {
        addType(type);
      }
    }
  }

  @override
  bool operator ==(Object other) {
    if (other is ChoiceType) {
      final that = other;
      if (_types.length == that.types.length) {
        for (var i = 0; i < _types.length; i++) {
          if (_types[i] != that.types.elementAt(i)) {
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
    for (final type in _types) {
      result = (37 * result) + type.hashCode;
    }
    return result;
  }

  @override
  DataType instantiate(InstantiationContext context) => this;

  @override
  bool isCompatibleWith(DataType other) {
    if (other is ChoiceType) {
      return isSubSetOf(other) || isSuperSetOf(other);
    }
    for (final type in _types) {
      if (other.isCompatibleWith(type)) {
        return true;
      }
    }
    return super.isCompatibleWith(other);
  }

  @override
  bool get isGeneric {
    for (var type in _types) {
      if (type.isGeneric) {
        return true;
      }
    }
    return false;
  }

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) =>
      isSuperTypeOf(callType);

  @override
  String toString() {
    final sb = StringBuffer();
    sb.write('choice<');
    var first = true;
    for (final type in _types) {
      if (first) {
        first = false;
      } else {
        sb.write(',');
      }
      sb.write(type);
    }
    sb.write('>');
    return sb.toString();
  }

  void addType(DataType type) {
    if (type is ChoiceType) {
      final choiceType = type;
      for (var choice in choiceType.types) {
        addType(choice);
      }
    } else {
      _types.add(type);
    }
  }

  Iterable<DataType> get types => _types;

  bool isSubSetOf(ChoiceType other) {
    for (final type in _types) {
      var isSubType = false;
      for (final otherType in other.types) {
        isSubType = type.isSubTypeOf(otherType);
        if (isSubType) {
          break;
        }
      }
      if (!isSubType) {
        return false;
      }
    }
    return true;
  }

  bool isSuperSetOf(ChoiceType other) => other.isSubSetOf(this);
}
