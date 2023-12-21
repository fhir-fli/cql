import '../../cql.dart';

/// Literal expression defining a single scalar value.
abstract class Literal extends Expression {
  /// Qualified name of the value type.
  QName valueType;

  final String type = 'Literal';

  Literal({required this.valueType});

  factory Literal.fromJson(Map<String, dynamic> json) {
    final String valueType = json['valueType'];
    switch (valueType) {
      case '{urn:hl7-org:elm-types:r1}String':
        return LiteralString.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Boolean':
        return LiteralBoolean.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Code':
        return LiteralCode.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Concept':
        return LiteralConcept.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Date':
        return LiteralDate.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}DateTime':
        return LiteralDateTime.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Decimal':
        return LiteralDecimal.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Integer':
        return LiteralInteger.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}LongNumber':
        return LiteralLongNumber.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Quantity':
        return LiteralQuantity.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Ratio':
        return LiteralRatio.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}StringElement':
        return LiteralStringElement.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Time':
        return LiteralTime.fromJson(json);

      default:
        throw ArgumentError('Unknown literal type: $valueType');
    }
  }

  @override
  Map<String, dynamic> toJson() => {};
}
