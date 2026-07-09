import 'package:cql/src/internal.dart';

class Tag extends CqlToElmBase {
  Tag({this.name, this.value});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }
  String? name;
  String? value;

  @override
  Map<String, dynamic> toJson() => {
        if (name != null) 'name': name,
        if (value != null) 'value': value,
      };
}
