import 'package:cql/src/internal.dart';

/// The CQL System `Concept` type: a clinical idea represented by a set of
/// equivalent [CqlCode]s.
///
/// A `Concept` groups one or more [codes] that are all understood to mean the
/// same thing (often the same code expressed in different code systems), plus
/// an optional human-readable [display]. Because the codes are considered
/// equivalent representations, two concepts are [equivalent] when each code of
/// one has an equivalent code in the other (order-independent).
class CqlConcept implements CqlType {
  /// Creates a [CqlConcept] with an optional [display] and its list of
  /// equivalent [codes] (defaulting to an empty list).
  CqlConcept({this.display, List<CqlCode>? codes})
      : codes = codes ?? <CqlCode>[];

  factory CqlConcept.fromJson(Map<String, dynamic> json) {
    return CqlConcept(
      display: json['display']?.toString(),
      codes: json['codes'] != null
          ? (json['codes'] as List)
              .map(
                (e) => e is CqlCode
                    ? e
                    : CqlCode.fromJson(e as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }
  String? display;
  List<CqlCode> codes = <CqlCode>[];

  CqlConcept copyWith({
    String? display,
    List<CqlCode>? codes,
  }) =>
      CqlConcept(display: display ?? this.display, codes: codes ?? this.codes);

  @override
  bool equivalent(Object other) {
    if (other is CqlConcept) {
      final otherCodes = other.codes.toList();
      for (final code in codes) {
        final index =
            otherCodes.indexWhere((element) => element.equivalent(code));
        if (index == -1) {
          return false;
        } else {
          otherCodes.removeAt(index);
        }
      }
      return otherCodes.isEmpty;
    } else {
      return false;
    }
  }

  @override
  bool? equal(Object other) {
    if (other is CqlConcept) {
      // Check codes using three-valued code equality
      bool? codeResult = true;
      final otherCodes = other.codes.toList();
      for (final code in codes) {
        // Find matching code using three-valued equal
        var matchIdx = -1;
        var hasNull = false;
        for (var i = 0; i < otherCodes.length; i++) {
          final eq = otherCodes[i].equal(code);
          if (eq == true) {
            matchIdx = i;
            break;
          } else if (eq == null) {
            hasNull = true;
          }
        }
        if (matchIdx != -1) {
          otherCodes.removeAt(matchIdx);
        } else if (hasNull) {
          codeResult = null;
        } else {
          return false; // definite mismatch
        }
      }
      if (otherCodes.isNotEmpty) return false;
      // Check display field
      if (display == null && other.display == null) {
        // both null → same
      } else if (display == null || other.display == null) {
        codeResult = null; // one null → uncertain
      } else if (display != other.display) {
        return false; // definite mismatch
      }
      return codeResult;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'CqlConcept(display: $display, codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlConcept &&
          other.display == display &&
          other.codes == codes;
    }
  }

  @override
  int get hashCode {
    return display.hashCode ^ codes.hashCode;
  }
}
