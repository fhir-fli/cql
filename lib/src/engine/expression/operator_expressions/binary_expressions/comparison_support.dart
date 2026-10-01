import 'package:ucum/ucum.dart';

/// `a.compareTo(b)`, or null when the two are quantities whose units do not
/// compare: CQL Greater, "For comparisons involving quantities, the
/// dimensions of each quantity must be the same ... Attempting to operate on
/// quantities with invalid units will result in a null." ucum reports both
/// cases as UcumException; nothing else is absorbed.
int? compareOrNull(Comparable<dynamic> a, Object b) {
  try {
    return a.compareTo(b);
  } on UcumException {
    return null;
  }
}
