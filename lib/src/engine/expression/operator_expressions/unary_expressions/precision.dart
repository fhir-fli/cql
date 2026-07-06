import 'package:cql/src/internal.dart';

/// Operator to return the number of digits of precision in the input value.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the argument is null, the result is null.
class Precision extends UnaryExpression {
  Precision({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Precision.fromJson(Map<String, dynamic> json) => Precision(
        operand: CqlExpression.fromJson(json['operand']),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  String get type => 'Precision';
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

    return data;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    if (value is CqlDecimal) {
      // Use the original literal string if available (preserves trailing zeros)
      String str;
      if (operand is LiteralDecimal) {
        final json = operand.toJson();
        str = json['value']?.toString() ?? value.valueString ?? '';
      } else {
        str = value.valueString ?? '';
      }
      final dotIdx = str.indexOf('.');
      if (dotIdx == -1) return CqlInteger(0);
      return CqlInteger(str.length - dotIdx - 1);
    }
    if (value is CqlDate) {
      // Count total significant digits: YYYY=4, YYYY-MM=6, YYYY-MM-DD=8
      final str = value.valueString ?? '';
      if (str.length >= 10) return CqlInteger(8); // day: 4+2+2
      if (str.length >= 7) return CqlInteger(6); // month: 4+2
      return CqlInteger(4); // year: 4
    }
    if (value is CqlDateTime) {
      // Count total significant digits (excluding separators):
      // YYYY=4, +MM=6, +DD=8, +HH=10, +MM=12, +SS=14, +mmm=17
      final str = value.valueString ?? '';
      if (str.contains('.')) return CqlInteger(17); // millisecond
      if (str.contains('T')) {
        final timePart = str.split('T')[1];
        final timeOnly =
            timePart.replaceAll(RegExp(r'[+-].*'), '').replaceAll('Z', '');
        final parts = timeOnly.split(':');
        if (parts.length >= 3) return CqlInteger(14); // second
        if (parts.length >= 2) return CqlInteger(12); // minute
        return CqlInteger(10); // hour
      }
      if (str.length >= 10) return CqlInteger(8);
      if (str.length >= 7) return CqlInteger(6);
      return CqlInteger(4);
    }
    if (value is CqlTime) {
      // Count total significant digits: HH=2, +MM=4, +SS=6, +mmm=9
      final str = value.valueString ?? '';
      if (str.contains('.')) return CqlInteger(9); // millisecond
      final parts = str.split(':');
      if (parts.length >= 3) return CqlInteger(6); // second
      if (parts.length >= 2) return CqlInteger(4); // minute
      return CqlInteger(2); // hour
    }
    return null;
  }
}
