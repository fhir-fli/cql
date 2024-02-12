class Signature {
  final List<String> operandTypes = [];

  Signature(List<String?>? operandTypes) {
    if (operandTypes == null || operandTypes.isEmpty) {
      throw ArgumentError("operandTypes is empty");
    }
    final List<String> newOperandTypes = [];
    for (var operandType in operandTypes) {
      if (operandType != null && operandType.isNotEmpty) {
        newOperandTypes.add(operandType);
      }
    }
  }

  Iterable<String> getOperandTypes() => operandTypes;

  int getSize() => operandTypes.length;

  // bool isSuperTypeOf(Signature other) {
  //   if (operandTypes.length == other.operandTypes.length) {
  //     for (int i = 0; i < operandTypes.length; i++) {
  //       if (!operandTypes[i].isSuperTypeOf(other.operandTypes[i])) {
  //         return false;
  //       }
  //     }
  //     return true;
  //   }
  //   return false;
  // }

  // bool _getHasChoices() {
  //   for (var operandType in operandTypes) {
  //     if (operandType is ChoiceType) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  // late final bool hasChoices = _getHasChoices();

  // bool containsChoices() => hasChoices;

  // bool isSubTypeOf(Signature other) {
  //   if (operandTypes.length == other.operandTypes.length) {
  //     for (int i = 0; i < operandTypes.length; i++) {
  //       if (!operandTypes[i].isSubTypeOf(other.operandTypes[i])) {
  //         return false;
  //       }
  //     }
  //     return true;
  //   }
  //   return false;
  // }

  // bool isInstantiable(Signature callSignature, InstantiationContext context) {
  //   if (operandTypes.length == callSignature.operandTypes.length) {
  //     for (int i = 0; i < operandTypes.length; i++) {
  //       if (!operandTypes[i]
  //           .isInstantiable(callSignature.operandTypes[i], context)) {
  //         return false;
  //       }
  //     }
  //     return true;
  //   }
  //   return false;
  // }

  // Signature instantiate(InstantiationContext context) {
  //   var result = List<String>.generate(
  //       operandTypes.length, (i) => operandTypes[i].instantiate(context));
  //   return Signature(result);
  // }

  // Note: The method isConvertibleTo is left out because it requires
  // implementation of ConversionMap, OperatorMap, and Conversion classes
  // which are not defined in the scope of this translation.

  @override
  int get hashCode {
    int result = 53;
    for (var operandType in operandTypes) {
      result += (39 * operandType.hashCode);
    }
    return result;
  }

  @override
  bool operator ==(Object other) {
    if (other is Signature) {
      if (operandTypes.length != other.operandTypes.length) return false;
      for (int i = 0; i < operandTypes.length; i++) {
        if (operandTypes[i] != other.operandTypes[i]) return false;
      }
      return true;
    }
    return false;
  }

  @override
  String toString() {
    var builder = StringBuffer("(");
    for (int i = 0; i < operandTypes.length; i++) {
      if (i > 0) {
        builder.write(", ");
      }
      builder.write(operandTypes[i].toString());
    }
    builder.write(")");
    return builder.toString();
  }
}
