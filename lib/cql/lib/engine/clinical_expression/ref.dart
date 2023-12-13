import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'ref.g.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
@JsonSerializable()
class Ref extends Expression {
  /// The name of the code.
  String? name;

  /// The library name.
  String? libraryName;

  String? type;

  Ref({this.name, this.libraryName, this.type});

  factory Ref.fromJson(Map<String, dynamic> json) => _$RefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefToJson(this);
}
