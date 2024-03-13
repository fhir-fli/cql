import '../../cql.dart';

class ConceptType implements CqlType {
  String? display;
  List<CodeType> codes = <CodeType>[];

  ConceptType({this.display, List<CodeType>? codes})
      : codes = codes ?? <CodeType>[];

  factory ConceptType.fromJson(Map<String, dynamic> json) {
    return ConceptType(
      display: json['display'],
      codes: json['codes'] != null
          ? (json['codes'] as List).map((e) => CodeType.fromJson(e)).toList()
          : null,
    );
  }

  ConceptType copyWith({
    String? display,
    List<CodeType>? codes,
  }) =>
      ConceptType(display: display ?? this.display, codes: codes ?? this.codes);

  @override
  bool equivalent(Object other) {
    if (other is ConceptType) {
      final otherCodes = other.codes.toList();
      for (CodeType code in codes) {
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
  bool equal(Object other) {
    if (other is ConceptType) {
      final otherCodes = other.codes.toList();
      for (CodeType code in codes) {
        final index = otherCodes.indexWhere((element) => element.equal(code));
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
  String toString() {
    return 'ConceptType(display: $display, codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is ConceptType &&
          other.display == display &&
          other.codes == codes;
    }
  }

  @override
  int get hashCode {
    return display.hashCode ^ codes.hashCode;
  }
}
