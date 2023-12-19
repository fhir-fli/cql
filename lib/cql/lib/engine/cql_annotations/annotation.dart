import '../../cql.dart';

class Annotation extends CqlToElmBase {
  // List of tags associated with the annotation
  final List<Tag> t;

  // Optional narrative text for the annotation
  final Narrative? s;

  // Optional locator information for the annotation
  final Locator? locator;

  Annotation({
    List<Tag>? t,
    this.s,
    this.locator,
  }) : t = t ?? [];

  void addTag(Tag tag) {
    t.add(tag);
  }

  @override
  String toString() => 'Annotation{t: $t, s: $s, locator: $locator}';
}
