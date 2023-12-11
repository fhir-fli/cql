import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'code_ref.g.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
@JsonSerializable()
class CodeRef extends Expression {
  /// The name of the code.
  late String? name;

  /// The library name.
  late String? libraryName;

  CodeRef({this.name, this.libraryName});

  factory CodeRef.fromJson(Map<String, dynamic> json) =>
      _$CodeRefFromJson(json);

  Map<String, dynamic> toJson() => _$CodeRefToJson(this);
}
