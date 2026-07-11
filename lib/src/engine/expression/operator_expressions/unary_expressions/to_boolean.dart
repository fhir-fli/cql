import 'package:cql/src/internal.dart';

/// Operator to convert the value of its argument to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is null.
/// If the argument is null, the result is null.
class ToBoolean extends UnaryExpression {
  ToBoolean({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToBoolean.fromJson(Map<String, dynamic> json) => ToBoolean(
        operand:
            CqlExpression.fromJson(json['operand'] as Map<String, dynamic>),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );

  @override
  String get type => 'ToBoolean';
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
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    switch (value) {
      case CqlBoolean _:
        return value;
      case bool _:
        return CqlBoolean(value);
      case CqlInteger _:
        if (value.valueInt == 1) return CqlBoolean(true);
        if (value.valueInt == 0) return CqlBoolean(false);
        return null;
      case CqlDecimal _:
        if (value.valueNum == 1.0) return CqlBoolean(true);
        if (value.valueNum == 0.0) return CqlBoolean(false);
        return null;
      case CqlString _:
        final s = value.valueString?.toLowerCase();
        if (s == 'true' || s == 't' || s == 'yes' || s == 'y' || s == '1') {
          return CqlBoolean(true);
        }
        if (s == 'false' || s == 'f' || s == 'no' || s == 'n' || s == '0') {
          return CqlBoolean(false);
        }
        return null;
      case String _:
        final s = value.toLowerCase();
        if (s == 'true' || s == 't' || s == 'yes' || s == 'y' || s == '1') {
          return CqlBoolean(true);
        }
        if (s == 'false' || s == 'f' || s == 'no' || s == 'n' || s == '0') {
          return CqlBoolean(false);
        }
        return null;
      default:
        return null;
    }
  }
}
