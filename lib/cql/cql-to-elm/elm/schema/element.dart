import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'element.g.dart';

@JsonSerializable()
class Element {
  // The annotation element provides a mechanism for decorating expressions
  // with application-specific information such as translation hints, visual
  // designer information, or debug symbols.
  List<dynamic>? annotation;

  // The resultTypeSpecifier element describes the type information for this ELM node.
  // ELM documents are not required to contain result type information, but if they do,
  // the result type of each node is specified using the resultTypeName attribute for
  // named types, and this resultTypeSpecifier element for non-named types.
  ExpTypeSpecifier? resultTypeSpecifier;

  // The localId for an ELM node identifies the location in the source document
  // that produced the ELM. The format is L:C[-L:C], where L is a line number
  // and C is a column number. For locators that span a range, an optional
  // range can be given to an ending line and column number. Line and column
  // numbers are 1-based.
  String? localId;

  // The locator for an ELM node identifies the location in the source document
  // that produced the ELM. The format is L:C[-L:C], where L is a line number
  // and C is a column number. For locators that span a range, an optional
  // range can be given to an ending line and column number. Line and column
  // numbers are 1-based.
  String? locator;

  // The resultTypeName attribute is part of type information for an ELM document.
  // ELM documents are not required to specify result type information, but if they
  // do, the result type of each node is specified using this attribute for named
  // types, or the resultTypeSpecifier element for non-named types.
  String? resultTypeName;

  Element(
      {this.annotation,
      this.resultTypeSpecifier,
      this.localId,
      this.locator,
      this.resultTypeName});

  factory Element.fromJson(Map<String, dynamic> json) =>
      _$ElementFromJson(json);

  Map<String, dynamic> toJson() => _$ElementToJson(this);
}
