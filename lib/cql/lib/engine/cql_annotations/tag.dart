import '../../cql.dart';

class Tag extends CqlToElmBase {
  String? name;
  String? value;

  Tag({this.name, this.value});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };
}
