import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// Operator to convert the value of its argument to a String value.
/// The operator uses specific string representations for each type:
/// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '`<unit>`'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: `<quantity>`:`<quantity>`
/// If the argument is null, the result is null.
class ToString extends UnaryExpression {
  ToString({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToString.fromJson(Map<String, dynamic> json) => ToString(
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
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) data['localId'] = localId;
    if (locator != null) data['locator'] = locator;
    if (resultTypeName != null) data['resultTypeName'] = resultTypeName;
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String get type => 'ToString';

  @override
  Future<CqlString?> execute(Map<String, dynamic> context) async {
    final raw = await operand.execute(context);
    if (raw == null) return null;
    // Convert any FHIR-typed input to CQL System types at the boundary.
    final mr = requireModelResolver(context);
    return toStringCql(mr.toCqlSystemType(raw));
  }

  CqlString? toStringCql(dynamic value) {
    if (value == null) return null;
    switch (value) {
      case bool _:
        return CqlString(value ? 'true' : 'false');
      case int _:
        return CqlString(value.toString());
      case double _:
        return CqlString(value.toString());
      case String _:
        return CqlString(value);
      case DateTime _:
        return CqlString(value.toIso8601String());
      case Ratio _:
        final numerator = '${value.numerator.value} ${value.numerator.unit}';
        final denominator =
            '${value.denominator.value} ${value.denominator.unit}';
        return CqlString('$numerator:$denominator');
      case CqlBoolean _:
        return CqlString(value.valueString);
      case CqlNumber _:
        return CqlString(value.valueString);
      case CqlString _:
        return value;
      case CqlDateTimeBase _:
        return CqlString(value.valueString);
      case CqlTime _:
        return CqlString(value.valueString);
      case ValidatedQuantity _:
        return CqlString("${value.value.asUcumDecimal()} '${value.unit}'");
      case CqlCode _:
        return CqlString('Code { code: ${value.code} system: ${value.system} '
            'version: ${value.version} display: ${value.display} }');
      case CqlConcept _:
        final codesStr = value.codes
            .map(
              (c) => 'Code { code: ${c.code} system: ${c.system} '
                  'version: ${c.version} display: ${c.display} }',
            )
            .join(', ');
        return CqlString('Concept { $codesStr display: ${value.display} }');
      default:
        throw Exception(
          'Unsupported type for ToString: ${value.runtimeType}',
        );
    }
  }
}
