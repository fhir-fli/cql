import 'package:cql/src/internal.dart';

/// Operator for converting a value to a specific type.
/// Converts a value to a specific type.
/// The result of the operator is the value of the argument converted to the
/// target type, if possible.
/// If no valid conversion exists from the actual value to the target type,
/// the result is null.
/// This operator supports conversion between String and each of Boolean,
/// Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from Integer
/// to Decimal or Quantity, from Decimal to Quantity, between Date and DateTime,
/// from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is performed using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class Convert extends UnaryExpression {
  Convert({
    required super.operand,
    this.toTypeSpecifier,
    this.toType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Convert.fromJson(Map<String, dynamic> json) => Convert(
        toTypeSpecifier: TypeSpecifierExpression.fromJson(
          json['toTypeSpecifier'] as Map<String, dynamic>,
        ),
        toType: QName.parse(json['toType'] as String),
        operand:
            CqlExpression.fromJson(json['operand']! as Map<String, dynamic>),
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

  /// Target type to convert to.
  QName? toType;

  /// Type specifier for the target type.
  TypeSpecifierExpression? toTypeSpecifier;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    if (toTypeSpecifier != null) {
      data['toTypeSpecifier'] = toTypeSpecifier!.toJson();
    }

    if (toType != null) {
      data['toType'] = toType!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Convert';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    final targetType = toType?.localPart.toLowerCase() ?? '';
    switch (targetType) {
      case 'boolean':
        return ToBoolean(operand: operand).execute(context);
      case 'integer':
        return ToInteger(operand: operand).execute(context);
      case 'long':
        return ToLong(operand: operand).execute(context);
      case 'decimal':
        return ToDecimal(operand: operand).execute(context);
      case 'string':
        return ToString(operand: operand).execute(context);
      case 'quantity':
        return ToQuantity(operand: operand).execute(context);
      case 'ratio':
        return ToRatio(operand: operand).execute(context);
      case 'date':
        return ToDate(operand: operand).execute(context);
      case 'datetime':
        return ToDateTime(operand: operand).execute(context);
      case 'time':
        return ToTime(operand: operand).execute(context);
      case 'concept':
        return ToConcept(operand: operand).execute(context);
      default:
        return null;
    }
  }
}
