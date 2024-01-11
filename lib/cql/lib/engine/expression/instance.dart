import '../../cql.dart';

/// Expression allowing class instances to be built up.
class Instance extends Expression {
  /// Type of the class instance being built.
  QName classType;

  /// List of instance elements specifying values for the elements of the class instance.
  List<InstanceElement>? element;

  Instance({
    required this.classType,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Instance.fromJson(Map<String, dynamic> json) {
    return Instance(
        classType: QName.fromJson(json['classType']),
        element: json['element'] != null
            ? (json['element'] as List)
                .map((e) => InstanceElement.fromJson(e))
                .toList()
            : null);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'classType': classType.toJson(),
      'type': type,
      if (element != null) 'element': element!.map((e) => e.toJson()).toList()
    };
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Instance';
}
