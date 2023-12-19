import '../../../cql.dart';

/// Represents a tuple type information, extending [TypeInfo].
///
/// The [TupleTypeInfo] type extends TypeInfo and consists of elements
/// representing TupleTypeInfoElement.
class TupleTypeInfo extends TypeInfo {
  /// Elements within TupleTypeInfo.
  List<TupleTypeInfoElement>? element;

  TupleTypeInfo({
    this.element,
  });

  factory TupleTypeInfo.fromJson(Map<String, dynamic> json) {
    return TupleTypeInfo(
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => TupleTypeInfoElement.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (element != null) {
      data['element'] = element!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
