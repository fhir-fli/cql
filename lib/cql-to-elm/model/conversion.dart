import '../../cql.dart';

class Conversion {
  late bool implicit;
  Operator? operator;
  Conversion? conversionField;
  List<Conversion>? alternativeConversions;
  bool isCastFlag = false;
  bool isListConversionFlag = false;
  bool isListPromotionFlag = false;
  bool isListDemotionFlag = false;
  bool isIntervalConversionFlag = false;
  bool isIntervalPromotionFlag = false;
  bool isIntervalDemotionFlag = false;
  Type? fromType;
  Type? toType;

  Conversion.fromOperator(Operator operator, {required this.implicit}) {
    setOperator(operator);
  }

  Conversion.fromTypes(this.fromType, this.toType,
      {this.implicit = true, this.conversionField, bool isCast = false}) {
    if (fromType == null) {
      throw ArgumentError("fromType is null");
    }
    if (toType == null) {
      throw ArgumentError("toType is null");
    }
    isCastFlag = isCast;
  }

  Conversion.fromChoiceType(
      {this.fromType,
      this.toType,
      required this.conversionField,
      this.implicit = true});

  // Add other constructors as necessary

  void setOperator(Operator operator) {
    // Additional logic for setting operator, fromType, and toType
  }

  bool get isImplicit => implicit;

  void addAlternativeConversion(Conversion alternativeConversion) {
    alternativeConversions ??= [];
    alternativeConversions!.add(alternativeConversion);
  }

  // Add other methods as necessary, adapting Java logic to Dart.

  // Example getter for a property, adapt as necessary for your use case
  bool get isCast => isCastFlag;
  // Add other getters and methods as necessary
}
