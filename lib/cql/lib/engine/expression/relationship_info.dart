/// Defines the relationship of a class to the context.
///
/// The [RelationshipInfo] type defines relationships between a class and
/// its context, specifying the target context and related key elements.
class RelationshipInfo {
  /// Specifies the target context of the relationship.
  String context;

  /// Specifies the related key elements of the type containing the reference.
  String? relatedKeyElement;

  RelationshipInfo({
    required this.context,
    this.relatedKeyElement,
  });
}
