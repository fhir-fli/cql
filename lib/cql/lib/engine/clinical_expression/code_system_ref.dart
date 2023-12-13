import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'code_system_ref.g.dart';

/// The CodeSystemRef expression allows a previously defined named code system to
/// be referenced within an expression. Conceptually, referencing a code system
/// returns the set of codes in the code system. Note that this operation should
/// almost never be performed in practice. Code system references are allowed in
/// order to allow for testing of code membership in a particular code system.
@JsonSerializable()
class CodeSystemRef extends Expression {
  /// The name of the code system.
  late String? name;

  /// The library name.
  late String? libraryName;

  CodeSystemRef({this.name, this.libraryName});

  factory CodeSystemRef.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemRefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemRefToJson(this);

  @override
  String toString() => toJson().toString();
}
