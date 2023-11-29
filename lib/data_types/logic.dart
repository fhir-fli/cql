class ThreeValuedLogic {
  static and(List<bool?> val) {
    if (val.contains(false)) {
      return false;
    } else if (val.contains(null)) {
      return null;
    } else {
      return true;
    }
  }

  static or(List<bool?> val) {
    if (val.contains(true)) {
      return true;
    } else if (val.contains(null)) {
      return null;
    } else {
      return false;
    }
  }

  static xor(List<bool?> val) {
    if (val.contains(null)) {
      return null;
    } else {
      return val.fold(false, (acc, b) => (!acc ^ !(b ?? false)) == true);
    }
  }

  static not(bool? val) {
    if (val != null) {
      return !val;
    } else {
      return null;
    }
  }
}
