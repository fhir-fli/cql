import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart' show ValidatedQuantity, ValidatedRatio;

/// Expression allowing class instances to be built up.
/// Instance : Expression
///  ¦
///  0..* --> element : InstanceElement
///  ¦
///  1..1 --> classType
/// The Instance expression allows class instances of any type to be built up
/// as an expression. The classType attribute specifies the type of the class
/// instance being built, and the list of instance elements specify the values
/// for the elements of the class instance. Note that the value of an element
/// may be any expression, including another Instance.
class Instance extends CqlExpression {
  Instance({
    required this.classType,
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Instance.fromJson(Map<String, dynamic> json) {
    return Instance(
      classType: QName.fromJson(json['classType'] as String),
      element: json['element'] != null
          ? (json['element'] as List)
              .map((e) => InstanceElement.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
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
  }

  /// Type of the class instance being built.
  QName classType;

  /// List of instance elements specifying values for the elements of the
  /// class instance.
  List<InstanceElement>? element;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'classType': classType.toJson(),
      'type': type,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('element', element!.map((e) => e.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Instance';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return [classType.localPart];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    switch (classType.localPart) {
      case 'Null':
        return null;
      case 'String':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type String must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type String must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is String) {
            return result;
          }
        }
      case 'Boolean':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Boolean must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Boolean must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is bool || result is String) {
            return CqlBoolean(result);
          } else if (result is CqlBoolean) {
            return result;
          }
        }
      case 'Date':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Date must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Date must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is String) {
            return CqlDate.fromString(result);
          } else if (result is CqlDate) {
            return result;
          }
        }
      case 'DateTime':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type DateTime must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type DateTime must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result == null) {
            return null;
          }
          if (result is String) {
            return CqlDateTime.fromString(result);
          } else if (result is CqlDateTime) {
            return result;
          }
        }
      case 'Integer':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Integer must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Integer must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is int) {
            return CqlInteger(result);
          } else if (result is CqlInteger) {
            return result;
          }
        }
      case 'Long':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Long must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Long must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is int) {
            return CqlLong.fromNum(result);
          } else if (result is CqlLong) {
            return result;
          }
        }
      case 'Decimal':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Decimal must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Decimal must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is num) {
            return CqlDecimal(result);
          } else if (result is CqlDecimal) {
            return result;
          }
        }
      case 'Time':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Time must have at least one element',
            );
          }
          if (element!.length != 1) {
            throw ArgumentError(
              'Instance of type Time must have exactly one element',
            );
          }
          final result = await element!.first.value.execute(context);
          if (result is String) {
            return CqlTime(result);
          } else if (result is CqlTime) {
            return result;
          }
        }
      case 'Code':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Code must have at least one element',
            );
          } else {
            final json = <String, dynamic>{};
            for (final e in element!) {
              json[e.name] = await e.value.execute(context);
            }
            return CqlCode.fromJson(json);
          }
        }
      case 'Concept':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Concept must have at least one element',
            );
          } else {
            final json = <String, dynamic>{};
            for (final e in element!) {
              var result = await e.value.execute(context);
              // Wrap single Code in a list for the 'codes' field
              if (e.name == 'codes' && result is CqlCode) {
                result = [result];
              }
              json[e.name] = result;
            }
            return CqlConcept.fromJson(json);
          }
        }

      case 'Quantity':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Quantity must have at least one element',
            );
          }
          num? value;
          var unit = '1';
          for (final e in element!) {
            final result = await e.value.execute(context);
            if (e.name == 'value') {
              if (result is CqlDecimal) {
                value = result.valueNum;
              } else if (result is CqlInteger) {
                value = result.valueNum;
              } else if (result is num) {
                value = result;
              }
            } else if (e.name == 'unit') {
              if (result is String) {
                unit = result;
              } else if (result is CqlPrimitive) {
                unit = result.valueString ?? '1';
              }
            }
          }
          if (value != null) {
            return ValidatedQuantity.fromNumber(value, unit: unit);
          }
          return null;
        }
      case 'Ratio':
        {
          if (element == null) {
            throw ArgumentError(
              'Instance of type Ratio must have at least one element',
            );
          }
          ValidatedQuantity? numerator;
          ValidatedQuantity? denominator;
          for (final e in element!) {
            final result = await e.value.execute(context);
            if (e.name == 'numerator') {
              if (result is ValidatedQuantity) {
                numerator = result;
              }
            } else if (e.name == 'denominator') {
              if (result is ValidatedQuantity) {
                denominator = result;
              }
            }
          }
          if (numerator != null && denominator != null) {
            return ValidatedRatio(
              numerator: numerator,
              denominator: denominator,
            );
          }
          return null;
        }
      case 'Interval':
        {
          dynamic low;
          dynamic high;
          var lowClosed = true;
          var highClosed = true;
          if (element != null) {
            for (final e in element!) {
              final result = await e.value.execute(context);
              switch (e.name) {
                case 'low':
                  low = result;
                case 'high':
                  high = result;
                case 'lowClosed':
                  if (result is CqlBoolean) {
                    lowClosed = result.valueBoolean ?? true;
                  } else if (result is bool) {
                    lowClosed = result;
                  }
                case 'highClosed':
                  if (result is CqlBoolean) {
                    highClosed = result.valueBoolean ?? true;
                  } else if (result is bool) {
                    highClosed = result;
                  }
              }
            }
          }
          return CqlInterval(
            low: low,
            high: high,
            lowClosed: lowClosed,
            highClosed: highClosed,
          );
        }
      case 'ValueSet':
        {
          final json = <String, dynamic>{};
          if (element != null) {
            for (final e in element!) {
              json[e.name] = await e.value.execute(context);
            }
          }
          return CqlValueSet(
            id: json['id']?.toString() ?? '',
            version: json['version']?.toString() ?? '',
            name: json['name']?.toString() ?? '',
          );
        }
      case 'CodeSystem':
        {
          final json = <String, dynamic>{};
          if (element != null) {
            for (final e in element!) {
              json[e.name] = await e.value.execute(context);
            }
          }
          return CqlCodeSystem(
            id: json['id']?.toString() ?? '',
            version: json['version']?.toString() ?? '',
            name: json['name']?.toString() ?? '',
          );
        }
      default:
        return null;
    }
    return null;
  }
}
