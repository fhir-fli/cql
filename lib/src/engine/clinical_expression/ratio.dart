import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// The Ratio type defines a ratio between two quantities. For example, the
/// titre 1:128, or the concentration ratio 5 mg/10 mL. The numerator and
/// denominator are both quantities.
class Ratio extends CqlExpression {
  Ratio({
    required this.numerator,
    required this.denominator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ratio.fromJson(Map<String, dynamic> json) => Ratio(
        numerator: Quantity.fromJson(json['numerator'] as Map<String, dynamic>),
        denominator:
            Quantity.fromJson(json['denominator'] as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final Quantity denominator;
  final Quantity numerator;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['type'] = type;
    json['numerator'] = numerator.toJson();
    json['denominator'] = denominator.toJson();
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Ratio';

  // Ratio's own fields ([numerator], [denominator]) are final and are the
  // only state equality reads, but the class cannot be @immutable: its
  // [Element] base carries mutable-by-design translator metadata (e.g.
  // inferredResultType) shared by every ELM node. That metadata is excluded
  // from equality, so value semantics remain sound.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else if (other is Ratio) {
      return (numerator.validatedQuantity / denominator.validatedQuantity) ==
          (other.numerator.validatedQuantity /
              other.denominator.validatedQuantity);
    } else {
      return false;
    }
  }

  // See the rationale on [==].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => numerator.hashCode ^ denominator.hashCode;

  @override
  Future<ValidatedRatio> execute(Map<String, dynamic> context) async =>
      ValidatedRatio(
        numerator: await numerator.execute(context),
        denominator: await denominator.execute(context),
      );
}
