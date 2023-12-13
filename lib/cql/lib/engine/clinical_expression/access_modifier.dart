import 'package:json_annotation/json_annotation.dart';

enum AccessModifier {
  @JsonValue('Public')
  public,
  @JsonValue('Private')
  private
}
