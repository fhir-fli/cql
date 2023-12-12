import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'tuple_type_specifier.g.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
@JsonSerializable()
class TupleTypeSpecifier extends TypeSpecifier {
  /// Elements within TupleTypeSpecifier.
  List<TupleTypeSpecifierElement>? element;

  String type = 'TupleType';

  TupleTypeSpecifier({
    this.element,
  });

  factory TupleTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$TupleTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$TupleTypeSpecifierToJson(this);
}
