import '../../cql.dart';

/// Literal expression defining a single scalar value.
class Literal extends Expression {
  /// Qualified name of the value type.
  QName valueType;

  LiteralType? value;

  Literal({required this.valueType, this.value});

  factory Literal.fromJson(Map<String, dynamic> json) {
    final String valueType = json['valueType'];
    LiteralType? value;
    switch (valueType) {
      case 'Null':
      case '{urn:hl7-org:elm-types:r1}Null':
        value = json['value'] == null
            ? null
            : LiteralBoolean.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Boolean':
        value = json['value'] == null
            ? null
            : LiteralBoolean.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Code':
        value =
            json['value'] == null ? null : LiteralCode.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Concept':
        value = json['value'] == null
            ? null
            : LiteralConcept.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}ValueSet':
        value = json['value'] == null
            ? null
            : LiteralValueSet.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}CodeSystem':
        value = json['value'] == null
            ? null
            : LiteralCodeSystem.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Date':
        value =
            json['value'] == null ? null : LiteralDate.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateTime':
        value = json['value'] == null
            ? null
            : LiteralDateTime.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Decimal':
        value = json['value'] == null
            ? null
            : LiteralDecimal.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Integer':
        value = json['value'] == null
            ? null
            : LiteralInteger.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Long':
        value =
            json['value'] == null ? null : LiteralLong.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Quantity':
        value = json['value'] == null
            ? null
            : LiteralQuantity.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Ratio':
        value =
            json['value'] == null ? null : LiteralRatio.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}String':
        value = json['value'] == null
            ? null
            : LiteralString.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Time':
        value =
            json['value'] == null ? null : LiteralTime.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}IntegerInterval':
        value = json['value'] == null
            ? null
            : LiteralIntegerInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DecimalInterval':
        value = json['value'] == null
            ? null
            : LiteralDecimalInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}QuantityInterval':
        value = json['value'] == null
            ? null
            : LiteralQuantityInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateTimeInterval':
        value = json['value'] == null
            ? null
            : LiteralDateTimeInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateInterval':
        value = json['value'] == null
            ? null
            : LiteralDateInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}TimeInterval':
        value = json['value'] == null
            ? null
            : LiteralTimeInterval.fromJson(json['value']);
        break;
    }
    return Literal(
      valueType: QName.fromFull(valueType),
      value: value,
    );
  }

  factory Literal.fromType(LiteralType type) {
    switch (type.runtimeType) {
      case LiteralBoolean:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Boolean'),
          value: type as LiteralBoolean,
        );
      case LiteralCode:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Code'),
          value: type as LiteralCode,
        );
      case LiteralConcept:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Concept'),
          value: type as LiteralConcept,
        );
      case LiteralValueSet:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}ValueSet'),
          value: type as LiteralValueSet,
        );
      case LiteralCodeSystem:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}CodeSystem'),
          value: type as LiteralCodeSystem,
        );
      case LiteralDate:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Date'),
          value: type as LiteralDate,
        );
      case LiteralDateTime:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateTime'),
          value: type as LiteralDateTime,
        );
      case LiteralDecimal:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Decimal'),
          value: type as LiteralDecimal,
        );
      case LiteralInteger:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Integer'),
          value: type as LiteralInteger,
        );
      case LiteralLong:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Long'),
          value: type as LiteralLong,
        );
      case LiteralQuantity:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Quantity'),
          value: type as LiteralQuantity,
        );
      case LiteralRatio:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Ratio'),
          value: type as LiteralRatio,
        );
      case LiteralString:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}String'),
          value: type as LiteralString,
        );
      case LiteralTime:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Time'),
          value: type as LiteralTime,
        );
      case LiteralIntegerInterval:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}IntegerInterval'),
          value: type as LiteralIntegerInterval,
        );
      case LiteralDecimalInterval:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}DecimalInterval'),
          value: type as LiteralDecimalInterval,
        );
      case LiteralQuantityInterval:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}QuantityInterval'),
          value: type as LiteralQuantityInterval,
        );
      case LiteralDateTimeInterval:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}DateTimeInterval'),
          value: type as LiteralDateTimeInterval,
        );
      case LiteralDateInterval:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateInterval'),
          value: type as LiteralDateInterval,
        );
      case LiteralTimeInterval:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}TimeInterval'),
          value: type as LiteralTimeInterval,
        );
    }
    throw ArgumentError('Invalid LiteralType');
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'valueType': valueType.toJson(),
      if (value != null) 'value': value!.toJson(),
    };
  }

  @override
  String toString() {
    return 'Literal(type: $type, valueType: ${valueType.toJson()}, value: $value)';
  }

  @override
  String get type => 'Literal';
}
