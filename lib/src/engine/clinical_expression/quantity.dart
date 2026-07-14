import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// The Quantity type defines a clinical quantity. For example, the quantity 10
/// days or 30 mmHg. The value is a decimal, while the unit is expected to be a
/// valid UCUM unit.
class Quantity extends CqlExpression {
  Quantity({
    required this.value,
    required this.unit,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Quantity.fromJson(Map<String, dynamic> json) => Quantity(
        value: json['value'] is String
            ? num.parse(json['value'] as String)
            : json['value'] is num
                ? json['value'] as num
                : throw ArgumentError('Quantity value must be a number'),
        unit: json['unit'] as String,
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
  final String unit;
  final num value;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['value'] = value;
    json['unit'] = unit;
    json['type'] = type;
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
  String get type => 'Quantity';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Quantity'];

  ValidatedQuantity get validatedQuantity => ValidatedQuantity(
        value: UcumDecimal.fromString(value.toString()),
        unit: unit,
      );

  // Quantity's own fields ([value], [unit]) are final and are the only state
  // equality reads, but the class cannot be @immutable: its [Element] base
  // carries mutable-by-design translator metadata (e.g. inferredResultType)
  // shared by every ELM node. That metadata is excluded from equality, so
  // value semantics remain sound.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else if (other is Quantity) {
      return validatedQuantity == other.validatedQuantity;
    } else {
      return false;
    }
  }

  // See the rationale on [==].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode ^ unit.hashCode;

  @override
  Future<ValidatedQuantity> execute(Map<String, dynamic> context) async =>
      validatedQuantity;
}
