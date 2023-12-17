class ModelImporterMapperValue {
  final String targetSystemClass;
  final ModelRelationship relationship;
  final Map<String, String> targetClassElementMap = <String, String>{};

  ModelImporterMapperValue(this.targetSystemClass, this.relationship);

  String getTargetSystemClass() => targetSystemClass;

  ModelRelationship getModelRelationship() => relationship;

  Map<String, String> getTargetClassElementMap() => targetClassElementMap;

  void addClassElementMapping(String element, String targetElement) {
    targetClassElementMap[element] = targetElement;
  }

  static ModelImporterMapperValue newRetype(String targetSystemClass) =>
      ModelImporterMapperValue(targetSystemClass, ModelRelationship.retype);

  static ModelImporterMapperValue newExtend(String targetSystemClass) =>
      ModelImporterMapperValue(targetSystemClass, ModelRelationship.extend);
}

enum ModelRelationship {
  retype,
  extend,
}
