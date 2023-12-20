import 'package:collection/collection.dart';

import '../cql.dart';

class ProfileType extends ClassType {
  ProfileType({
    required super.name,
    super.baseType,
    super.elements = const [],
  });

  factory ProfileType.empty() => ProfileType(name: '');

  factory ProfileType.withName(String name) => ProfileType(name: name);

  factory ProfileType.withBaseType(String name, DataType baseType) =>
      ProfileType(name: name, baseType: baseType);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileType) return false;
    return other.name == name &&
        other.baseType == baseType &&
        const ListEquality().equals(other.elements, elements);
  }

  @override
  int get hashCode => Object.hash(name, baseType, elements);

  @override
  String toString() =>
      'ProfileType(name: $name, baseType: $baseType, elements: $elements)';
}
