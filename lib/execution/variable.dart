class Variable {
  String name;
  Object value;
  bool isList;

  Variable({required this.name, required this.value, this.isList = false});

  Variable.copyWith({String? name, Object? value, bool? isList})
      : name = name ?? "",
        value = value ?? "",
        isList = isList ?? false;
}
