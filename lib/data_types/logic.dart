class ThreeValuedLogic {
  static bool? and(List<bool?> val) {
    if (val.contains(false)) {
      return false;
    } else if (val.contains(null)) {
      return null;
    } else {
      return true;
    }
  }

  static bool? or(List<bool?> val) {
    if (val.contains(true)) {
      return true;
    } else if (val.contains(null)) {
      return null;
    } else {
      return false;
    }
  }

  static bool? xor(List<bool?> val) {
    if (val.contains(null)) {
      return null;
    } else {
      return val.fold(
          false, (acc, b) => (!(acc ?? true) ^ !(b ?? false)) == true);
    }
  }

  static bool? not(bool? val) {
    if (val != null) {
      return !val;
    } else {
      return null;
    }
  }
}
