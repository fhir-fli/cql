import 'package:json_annotation/json_annotation.dart';

part 'locator.g.dart';

/// Represents the Locator type
@JsonSerializable()
class Locator {
  /// startLine attribute
  int? startLine;

  /// startChar attribute
  int? startChar;

  /// endLine attribute
  int? endLine;

  /// endChar attribute
  int? endChar;

  Locator({this.startLine, this.startChar, this.endLine, this.endChar});

  factory Locator.fromJson(Map<String, dynamic> json) =>
      _$LocatorFromJson(json);

  Map<String, dynamic> toJson() => _$LocatorToJson(this);
}
