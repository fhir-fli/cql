import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// Common base for the engine's representation of CQL *literal* expressions —
/// constant values written directly in CQL source (e.g. `5`, `true`,
/// `'text'`, `@2020-01-01`, `1 'mg'`).
///
/// Each concrete subclass models a literal of one CQL type: its [type] getter
/// returns the CQL type name and [valueType] the fully-qualified ELM type URI.
/// As an [CqlExpression], a literal evaluates (via `execute`) to the
/// corresponding runtime System value ([LiteralInteger] to `CqlInteger`,
/// [LiteralCode] to [CqlCode], [LiteralIntegerInterval] to a
/// [CqlInterval], and so on).
abstract class LiteralType extends CqlExpression {
  LiteralType({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  @override
  String get type;

  /// The fully-qualified ELM type identifier for this literal's [type], e.g.
  /// `{urn:hl7-org:elm-types:r1}Integer`.
  String get valueType => '{urn:hl7-org:elm-types:r1}$type';

  /// Maps a runtime CQL System type name (e.g. `CqlInteger`) to the name of
  /// its corresponding literal class (e.g. `LiteralInteger`), or `null` when
  /// there is no literal representation for [type].
  static String? typeToLiteral(String type) {
    switch (type) {
      case 'CqlBoolean':
        return 'LiteralBoolean';
      case 'CqlDate':
        return 'LiteralDate';
      case 'CqlDateTime':
        return 'LiteralDateTime';
      case 'CqlDecimal':
        return 'LiteralDecimal';
      case 'CqlInteger':
        return 'LiteralInteger';
      case 'CqlLong':
        return 'LiteralLong';
      case 'String':
        return 'LiteralString';
      case 'CqlTime':
        return 'LiteralTime';
      case 'ValidatedQuantity':
        return 'LiteralQuantity';
      case 'ValidatedRatio':
        return 'LiteralRatio';
      case 'Null':
        return 'LiteralNull';
      default:
        return null;
    }
  }

  /// The names of the literal classes for the primitive/simple CQL types that
  /// have a direct literal form.
  static List<String> get literalTypes => [
        'LiteralBoolean',
        'LiteralDate',
        'LiteralDateTime',
        'LiteralDecimal',
        'LiteralInteger',
        'LiteralLong',
        'LiteralString',
        'LiteralTime',
        'LiteralQuantity',
        'LiteralRatio',
        'LiteralNull',
      ];
}

/// The CQL `null` literal — the untyped absence of a value.
class LiteralNull extends LiteralType {
  LiteralNull({super.resultTypeName});

  factory LiteralNull.fromJson(dynamic json) =>
      LiteralNull(resultTypeName: json['resultTypeName'] as String?);

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    json['type'] = type;
    return json;
  }

  @override
  Future<String?> execute(Map<String, dynamic> context) async => null;

  @override
  String toString() => 'LiteralNull';

  @override
  String get type => 'Null';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Null'];
}

/// A CQL `Boolean` literal (`true` or `false`).
class LiteralBoolean extends LiteralType {
  /// Creates a boolean literal wrapping [value].
  LiteralBoolean(this.value);

  factory LiteralBoolean.fromJson(dynamic json) {
    if (json is bool) {
      return LiteralBoolean(json);
    } else if (json is Map<String, dynamic>) {
      return LiteralBoolean(json['value'] as bool);
    } else if (json is String && (json == 'true' || json == 'false')) {
      return LiteralBoolean(json == 'true');
    }
    throw ArgumentError('LiteralBoolean: Invalid json type');
  }
  final bool value;

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<CqlBoolean> execute(Map<String, dynamic> context) async =>
      CqlBoolean(value);

  @override
  String get type => 'Boolean';

  @override
  String toString() => 'LiteralBoolean: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Boolean'];
}

/// A CQL `Code` literal: a terminology code written directly in CQL, with its
/// [code] value and optional [system], [version] and [display]. Evaluates to a
/// [CqlCode].
class LiteralCode extends LiteralType {
  /// Creates a code literal for [code] with optional [display], [system] and
  /// [version].
  LiteralCode(
    this.code, {
    this.display,
    this.system,
    this.version,
  });

  factory LiteralCode.fromJson(Map<String, dynamic> json) {
    return LiteralCode(
      json['code'] as String,
      display: json['display'] as String?,
      system: json['system'] as String?,
      version: json['version'] as String?,
    );
  }
  final String code;
  final String? display;
  final String? system;
  final String? version;

  @override
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      if (display != null) 'display': display,
      if (system != null) 'system': system,
      if (version != null) 'version': version,
    };
  }

  @override
  String get type => 'Code';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Code'];

  @override
  Future<CqlCode> execute(Map<String, dynamic> context) async => CqlCode(
        code: code,
        display: display,
        // system: system,
        version: version,
      );
}

/// A CQL `Concept` literal: a set of equivalent [LiteralCode]s plus an
/// optional [display]. Evaluates to a [CqlConcept].
class LiteralConcept extends LiteralType {
  /// Creates a concept literal from its [codes] and optional [display].
  LiteralConcept(
    this.codes, {
    this.display,
  });

  factory LiteralConcept.fromJson(Map<String, dynamic> json) {
    return LiteralConcept(
      (json['codes'] as List)
          .map((code) => LiteralCode.fromJson(code as Map<String, dynamic>))
          .toList(),
      display: json['display'] as String?,
    );
  }
  final List<LiteralCode> codes;
  final String? display;

  @override
  Map<String, dynamic> toJson() {
    return {
      'codes': codes.map((code) => code.toJson()).toList(),
      if (display != null) 'display': display,
    };
  }

  @override
  String get type => 'Concept';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Concept'];

  @override
  Future<CqlConcept> execute(Map<String, dynamic> context) async {
    final codesList = <CqlCode>[];
    for (final code in codes) {
      final codeResult = await code.execute(context);
      codesList.add(codeResult);
    }
    return CqlConcept(display: display, codes: codesList);
  }
}

/// Common base for the CQL terminology-reference literals — a value set or a
/// code system declared in a library. Carries the vocabulary [id], optional
/// [version] and local [name]; concrete forms are [LiteralValueSet] and
/// [LiteralCodeSystem].
abstract class LiteralVocabularyType extends LiteralType {
  /// Creates a vocabulary literal with the given [id], [version] and [name].
  LiteralVocabularyType(
    this.id, {
    this.version,
    this.name,
  });

  factory LiteralVocabularyType.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('codesystem')) {
      return LiteralValueSet.fromJson(json);
    } else {
      return LiteralCodeSystem.fromJson(json);
    }
  }
  final String id;
  final String? version;
  final String? name;

  @override
  Map<String, dynamic> toJson();
}

/// A CQL `ValueSet` literal: a reference to a value set by [id], optionally
/// scoped to one or more [codesystem]s.
class LiteralValueSet extends LiteralVocabularyType {
  /// Creates a value-set literal referencing [id], with optional [version],
  /// [name] and constraining [codesystem]s.
  LiteralValueSet(
    super.id, {
    super.version,
    super.name,
    this.codesystem,
  });

  factory LiteralValueSet.fromJson(Map<String, dynamic> json) {
    return LiteralValueSet(
      json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String?,
      codesystem: (json['codesystem'] as List?)
          ?.map((cs) => LiteralCodeSystem.fromJson(cs as Map<String, dynamic>))
          .toList(),
    );
  }
  final List<LiteralCodeSystem>? codesystem;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (codesystem != null) {
      json['codesystem'] = codesystem!.map((cs) => cs.toJson()).toList();
    }
    return json;
  }

  @override
  String get type => 'ValueSet';
}

/// A CQL `CodeSystem` literal: a reference to a code system by [id] (its
/// canonical URI) with optional [version] and local [name].
class LiteralCodeSystem extends LiteralVocabularyType {
  /// Creates a code-system literal referencing [id], with optional [version]
  /// and [name].
  LiteralCodeSystem(
    super.id, {
    super.version,
    super.name,
  });

  factory LiteralCodeSystem.fromJson(Map<String, dynamic> json) {
    return LiteralCodeSystem(
      json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'id': id};
    if (version != null) {
      json['version'] = version;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  @override
  String get type => 'CodeSystem';
}

/// A CQL `Date` literal (e.g. `@2020-01-01`), possibly with reduced precision
/// (year, or year-month). Evaluates to a `CqlDate`.
class LiteralDate extends LiteralType {
  /// Creates a date literal from its ISO-8601 [value] string.
  LiteralDate(this.value);

  factory LiteralDate.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDate(json);
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value'] as String) != null) {
      return LiteralDate(json['value'] as String);
    }
    throw ArgumentError('LiteralDate: Invalid json type');
  }
  final String value;

  @override
  Map<String, dynamic> toJson() {
    final date = CqlDate.fromString(value);
    return {
      'type': type,
      if (date.hasYear) 'year': LiteralInteger(date.year!).toJson(),
      if (date.hasMonth) 'month': LiteralInteger(date.month!).toJson(),
      if (date.hasDay) 'day': LiteralInteger(date.day!).toJson(),
    };
  }

  @override
  Future<CqlDate> execute(Map<String, dynamic> context) async =>
      CqlDate.fromString(value);

  @override
  String get type => 'Date';

  @override
  String toString() => 'LiteralDate: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Date'];
}

/// A CQL `DateTime` literal (e.g. `@2020-01-01T12:00:00.0`), possibly with
/// reduced precision. Evaluates to a `CqlDateTime`.
class LiteralDateTime extends LiteralType {
  /// Creates a date-time literal from its ISO-8601 [value] string.
  LiteralDateTime(this.value);

  factory LiteralDateTime.fromJson(dynamic json) {
    if (json is String) {
      return LiteralDateTime(json);
    } else if (json is Map<String, dynamic> &&
        DateTime.tryParse(json['value'] as String) != null) {
      return LiteralDateTime(json['value'] as String);
    }
    throw ArgumentError('LiteralDateTime: Invalid json type');
  }
  final String value;

  @override
  Map<String, dynamic> toJson() {
    final dateTime = CqlDateTime.fromString(value);
    return {
      'type': type,
      'year': LiteralInteger(dateTime.year!).toJson(),
      if (dateTime.hasMonth) 'month': LiteralInteger(dateTime.month!).toJson(),
      if (dateTime.hasDay) 'day': LiteralInteger(dateTime.day!).toJson(),
      if (dateTime.hasHours) 'hour': LiteralInteger(dateTime.hour!).toJson(),
      if (dateTime.hasMinutes)
        'minute': LiteralInteger(dateTime.minute!).toJson(),
      if (dateTime.hasSeconds)
        'second': LiteralInteger(dateTime.second!).toJson(),
      if (dateTime.hasMilliseconds)
        'millisecond': LiteralInteger(dateTime.millisecond!).toJson(),
    };
  }

  @override
  String get type => 'DateTime';

  @override
  String toString() => 'LiteralDateTime: $value';

  @override
  Future<CqlDateTime> execute(Map<String, dynamic> context) async =>
      CqlDateTime.fromString(value);

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['DateTime'];
}

/// A CQL `Decimal` literal. Tracks the number of significant figures
/// ([sigFigs]) so that the declared precision can be preserved, per CQL's
/// decimal precision rules. Evaluates to a `CqlDecimal`.
class LiteralDecimal extends LiteralType {
  /// Creates a decimal literal for [value], optionally recording its number
  /// of significant figures in [sigFigs].
  LiteralDecimal(this.value, {this.sigFigs});

  /// Parses [stringValue] into a decimal literal, computing the number of
  /// significant figures from the source text.
  factory LiteralDecimal.fromString(String stringValue) {
    if (num.tryParse(stringValue) != null) {
      /// Remove any leading and trailing whitespaces
      var number = stringValue.trim();

      /// Check if the number includes a decimal point
      final isDecimal = number.contains('.');

      /// Remove leading zeros, they are not significant
      number = number.replaceFirst(RegExp('^0+'), '');

      /// If the number is in decimal form, remove the decimal point for simplicity
      if (isDecimal) {
        number = number.replaceAll('.', '');
      }

      /// For a non-decimal number, trailing zeros are not significant
      if (!isDecimal) {
        number = number.replaceFirst(RegExp(r'0+$'), '');
      }

      // At this point, all remaining digits are significant
      return LiteralDecimal(num.parse(stringValue), sigFigs: number.length);
    }
    throw 'Incorrectly formed String for type LiteralDecimal: $stringValue';
  }

  factory LiteralDecimal.fromJson(dynamic json) {
    if (json is num) {
      return LiteralDecimal(json.toDouble());
    } else if (json is String && num.tryParse(json) != null) {
      return LiteralDecimal(num.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralDecimal((json['value'] as num).toDouble());
      } else if (json['value'] is String &&
          num.tryParse(json['value'] as String) != null) {
        return LiteralDecimal(num.parse(json['value'] as String));
      }
    }
    throw ArgumentError('LiteralDecimal: Invalid json type');
  }
  // TODO(Dokotela): in order to properly match decimal places
  final num value;
  final int? sigFigs;

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': sigFigs == null
            ? value.toString()
            : value.toStringAsPrecision(sigFigs!),
        'type': 'Literal',
      };

  @override
  Future<CqlDecimal> execute(Map<String, dynamic> context) async =>
      CqlDecimal(value);

  @override
  String get type => 'Decimal';

  @override
  String toString() => 'LiteralDecimal: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Decimal'];
}

/// A CQL `Integer` literal (a 32-bit signed integer). Evaluates to a
/// `CqlInteger`.
class LiteralInteger extends LiteralType {
  /// Creates an integer literal wrapping [value].
  LiteralInteger(this.value);

  factory LiteralInteger.fromJson(dynamic json) {
    if (json is num) {
      return LiteralInteger(json.toInt());
    } else if (json is String && int.tryParse(json) != null) {
      return LiteralInteger(int.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralInteger((json['value'] as num).toInt());
      } else if (json['value'] is String &&
          int.tryParse(json['value'] as String) != null) {
        return LiteralInteger(int.parse(json['value'] as String));
      }
    }
    throw ArgumentError('LiteralInteger: Invalid json type');
  }
  final int value;

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<CqlInteger> execute(Map<String, dynamic> context) async =>
      CqlInteger(value);

  @override
  String get type => 'Integer';

  @override
  String toString() => 'LiteralInteger: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];
}

/// A CQL `Long` literal (a 64-bit signed integer, written with an `L`
/// suffix). Backed by a [BigInt] and evaluates to a `CqlLong`.
class LiteralLong extends LiteralType {
  /// Creates a long literal wrapping [value].
  LiteralLong(this.value);

  factory LiteralLong.fromJson(dynamic json) {
    if (json is num) {
      return LiteralLong(BigInt.from(json));
    } else if (json is String && BigInt.tryParse(json) != null) {
      return LiteralLong(BigInt.parse(json));
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is num) {
        return LiteralLong(BigInt.from(json['value'] as num));
      } else if (json['value'] is String &&
          BigInt.tryParse(json['value'] as String) != null) {
        return LiteralLong(BigInt.parse(json['value'] as String));
      }
    }
    throw ArgumentError('LiteralLong: Invalid json type');
  }
  final BigInt value;

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value.toString(),
        'type': 'Literal',
      };

  @override
  Future<CqlLong> execute(Map<String, dynamic> context) async => CqlLong(value);

  @override
  String get type => 'Long';

  @override
  String toString() => 'LiteralLong: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer64'];
}

/// A CQL `Quantity` literal: a decimal [value] paired with an optional UCUM
/// [unit] (e.g. `5 'mg'`). Evaluates to a `ValidatedQuantity`.
class LiteralQuantity extends LiteralType {
  /// Creates a quantity literal from its decimal [value] and optional UCUM
  /// [unit].
  LiteralQuantity(this.value, {this.unit});

  factory LiteralQuantity.fromJson(Map<String, dynamic> json) {
    return LiteralQuantity(
      LiteralDecimal.fromJson(json['value']),
      unit: json['unit'] as String?,
    );
  }
  final LiteralDecimal value;
  final String? unit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': value.value,
      if (unit != null) 'unit': unit,
      'type': type,
    };
  }

  @override
  Future<ValidatedQuantity> execute(Map<String, dynamic> context) async {
    return ValidatedQuantity(
      value: UcumDecimal.fromString(value.value.toString()),
      unit: unit,
    );
  }

  @override
  String get type => 'Quantity';

  @override
  String toString() => 'LiteralQuantity: ${value.value} $unit';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Quantity'];
}

/// A CQL `Ratio` literal: a [numerator] quantity over a [denominator] quantity
/// (e.g. `1 'mg' : 2 'mL'`). Evaluates to a `ValidatedRatio`.
class LiteralRatio extends LiteralType {
  /// Creates a ratio literal from its [numerator] and [denominator]
  /// quantities.
  LiteralRatio(this.numerator, this.denominator);

  factory LiteralRatio.fromJson(Map<String, dynamic> json) {
    return LiteralRatio(
      LiteralQuantity.fromJson(json['numerator'] as Map<String, dynamic>),
      LiteralQuantity.fromJson(json['denominator'] as Map<String, dynamic>),
    );
  }
  final LiteralQuantity numerator;
  final LiteralQuantity denominator;

  @override
  Map<String, dynamic> toJson() {
    return {
      'numerator': numerator.toJson(),
      'denominator': denominator.toJson(),
    };
  }

  @override
  Future<ValidatedRatio> execute(Map<String, dynamic> context) async =>
      ValidatedRatio(
        numerator: await numerator.execute(context),
        denominator: await denominator.execute(context),
      );

  @override
  String get type => 'Ratio';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Ratio'];

  @override
  String toString() => 'LiteralRatio: $numerator : $denominator';
}

/// A CQL `String` literal. The constructor resolves CQL/Unicode escape
/// sequences (e.g. `\n`, `\uXXXX`) into their character values.
class LiteralString extends LiteralType {
  /// Creates a string literal from [value], unescaping any escape sequences.
  LiteralString(String value) : value = _unescape(value);

  factory LiteralString.fromJson(dynamic json) {
    if (json is String) {
      return LiteralString(json);
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String) {
        return LiteralString(json['value'] as String);
      }
    }
    throw ArgumentError('LiteralString: Invalid json type');
  }
  final String value;

  static String _unescape(String s) {
    // Process Unicode escapes first (\uXXXX)
    s = s.replaceAllMapped(
      RegExp(r'\\u([0-9a-fA-F]{4})'),
      (m) => String.fromCharCode(int.parse(m.group(1)!, radix: 16)),
    );
    return s
        .replaceAll(r'\n', '\n')
        .replaceAll(r'\t', '\t')
        .replaceAll(r'\b', '\b')
        .replaceAll(r'\r', '\r')
        .replaceAll(r'\\', r'\')
        .replaceAll(r"\'", "'")
        .replaceAll(r'\"', '"');
  }

  @override
  Map<String, dynamic> toJson() => {
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value,
        'type': 'Literal',
      };

  @override
  Future<String> execute(Map<String, dynamic> context) async => value;

  @override
  String get type => 'String';

  @override
  String toString() => 'LiteralString: $value';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];
}

/// A CQL `Time` literal (e.g. `@T12:00:00.0`), possibly with reduced
/// precision. Evaluates to a `CqlTime`.
class LiteralTime extends LiteralType {
  /// Creates a time literal from [value], stripping any leading `@`/`T`
  /// prefix.
  LiteralTime(String value)
      : value = value.replaceFirst('@', '').replaceFirst('T', '');

  /// Builds a time literal from an operand list of hour, minute, second and
  /// millisecond [LiteralInteger]s (as produced by the `Time(...)` operator).
  factory LiteralTime.fromOperandList({required List<CqlExpression> operand}) {
    var value = '';
    if (operand.isNotEmpty) {
      value = (operand[0] as LiteralInteger).value.toString().padLeft(2, '0');
      if (operand.length > 1) {
        value +=
            ':${(operand[1] as LiteralInteger).value.toString().padLeft(2, '0')}';
        if (operand.length > 2) {
          value +=
              ':${(operand[2] as LiteralInteger).value.toString().padLeft(2, '0')}';
          if (operand.length > 3) {
            value +=
                '.${(operand[3] as LiteralInteger).value.toString().padLeft(3, '0')}';
          }
        }
      }
    }
    return LiteralTime(value);
  }

  factory LiteralTime.fromJson(dynamic json) {
    if (json is String && CqlTime.tryParse(json) != null) {
      return LiteralTime(
        json,
      );
    } else if (json is Map<String, dynamic> && json['value'] != null) {
      if (json['value'] is String && CqlTime.tryParse(json['value']) != null) {
        return LiteralTime(
          json['value'] as String,
        );
      }
    }
    throw ArgumentError('LiteralTime: Invalid json type');
  }
  final String value;

  @override
  Map<String, dynamic> toJson() {
    final date = CqlTime(value);
    final json = <String, dynamic>{'type': type};
    if (date.hour != null) {
      json['hour'] = LiteralInteger(date.hour!).toJson();
      if (date.minute != null) {
        json['minute'] = LiteralInteger(date.minute!).toJson();
        if (date.second != null) {
          json['second'] = LiteralInteger(date.second!).toJson();
          if (date.millisecond != null) {
            json['millisecond'] = LiteralInteger(date.millisecond!).toJson();
          }
        }
      }
    }
    return json;
  }

  @override
  String get type => 'Time';

  @override
  Future<CqlTime> execute(Map<String, dynamic> context) async => CqlTime(value);

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Time'];
}

/// Common base for CQL `Interval` literals (e.g. `Interval[1, 10]`).
///
/// Holds the boundary-inclusivity flags [lowClosed]/[highClosed]; concrete
/// subclasses ([LiteralIntegerInterval], [LiteralDecimalInterval],
/// [LiteralQuantityInterval], [LiteralDateInterval],
/// [LiteralDateTimeInterval], [LiteralTimeInterval]) add typed `low`/`high`
/// boundary literals and evaluate to a [CqlInterval] of the corresponding
/// point type.
abstract class LiteralCqlInterval extends LiteralType {
  /// Creates an interval literal with the given boundary-inclusivity flags.
  LiteralCqlInterval({this.lowClosed, this.highClosed});

  factory LiteralCqlInterval.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('low')) {
      return LiteralIntegerInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDecimalInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralQuantityInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralDateInterval.fromJson(json);
    } else if (json.containsKey('low')) {
      return LiteralDateTimeInterval.fromJson(json);
    } else if (json.containsKey('high')) {
      return LiteralTimeInterval.fromJson(json);
    } else {
      throw ArgumentError('Invalid interval type');
    }
  }
  final LiteralBoolean? lowClosed;
  final LiteralBoolean? highClosed;

  @override
  Map<String, dynamic> toJson();
}

/// A CQL `Interval<Integer>` literal. Evaluates to a
/// [CqlInterval] of `CqlInteger` boundaries.
class LiteralIntegerInterval extends LiteralCqlInterval {
  /// Creates an integer interval literal from its [low]/[high] boundary
  /// literals and inclusivity flags.
  LiteralIntegerInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralIntegerInterval.fromJson(Map<String, dynamic> json) {
    return LiteralIntegerInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralInteger.fromJson(json['low']),
      high: LiteralInteger.fromJson(json['high']),
    );
  }
  final LiteralInteger? low;
  final LiteralInteger? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Integer>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<Integer>'];

  @override
  Future<CqlInterval<CqlInteger>?> execute(
    Map<String, dynamic> context,
  ) async =>
      CqlInterval<CqlInteger>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

/// A CQL `Interval<Decimal>` literal. Evaluates to a
/// [CqlInterval] of `CqlDecimal` boundaries.
class LiteralDecimalInterval extends LiteralCqlInterval {
  /// Creates a decimal interval literal from its [low]/[high] boundary
  /// literals and inclusivity flags.
  LiteralDecimalInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDecimalInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDecimalInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDecimal.fromJson(json['low']),
      high: LiteralDecimal.fromJson(json['high']),
    );
  }
  final LiteralDecimal? low;
  final LiteralDecimal? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Decimal>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<Decimal>'];

  @override
  Future<CqlInterval<CqlDecimal>?> execute(
    Map<String, dynamic> context,
  ) async =>
      CqlInterval<CqlDecimal>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

/// A CQL `Interval<Quantity>` literal. Evaluates to a
/// [CqlInterval] of `ValidatedQuantity` boundaries.
class LiteralQuantityInterval extends LiteralCqlInterval {
  /// Creates a quantity interval literal from its [low]/[high] boundary
  /// literals and inclusivity flags.
  LiteralQuantityInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralQuantityInterval.fromJson(Map<String, dynamic> json) {
    return LiteralQuantityInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralQuantity.fromJson(json['low'] as Map<String, dynamic>),
      high: LiteralQuantity.fromJson(json['high'] as Map<String, dynamic>),
    );
  }
  final LiteralQuantity? low;
  final LiteralQuantity? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Quantity>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<Quantity>'];

  @override
  Future<CqlInterval<ValidatedQuantity>?> execute(
    Map<String, dynamic> context,
  ) async =>
      CqlInterval<ValidatedQuantity>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

/// A CQL `Interval<Date>` literal. Evaluates to a
/// [CqlInterval] of `CqlDate` boundaries.
class LiteralDateInterval extends LiteralCqlInterval {
  /// Creates a date interval literal from its [low]/[high] boundary literals
  /// and inclusivity flags.
  LiteralDateInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDate.fromJson(json['low']),
      high: LiteralDate.fromJson(json['high']),
    );
  }
  final LiteralDate? low;
  final LiteralDate? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Date>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<Date>'];

  @override
  Future<CqlInterval<CqlDate>?> execute(Map<String, dynamic> context) async =>
      CqlInterval<CqlDate>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

/// A CQL `Interval<DateTime>` literal. Evaluates to a
/// [CqlInterval] of `CqlDateTime` boundaries.
class LiteralDateTimeInterval extends LiteralCqlInterval {
  /// Creates a date-time interval literal from its [low]/[high] boundary
  /// literals and inclusivity flags.
  LiteralDateTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralDateTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralDateTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralDateTime.fromJson(json['low']),
      high: LiteralDateTime.fromJson(json['high']),
    );
  }
  final LiteralDateTime? low;
  final LiteralDateTime? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<DateTime>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<DateTime>'];

  @override
  Future<CqlInterval<CqlDateTime>?> execute(
    Map<String, dynamic> context,
  ) async =>
      CqlInterval<CqlDateTime>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}

/// A CQL `Interval<Time>` literal. Evaluates to a
/// [CqlInterval] of `CqlTime` boundaries.
class LiteralTimeInterval extends LiteralCqlInterval {
  /// Creates a time interval literal from its [low]/[high] boundary literals
  /// and inclusivity flags.
  LiteralTimeInterval({
    super.lowClosed,
    super.highClosed,
    this.low,
    this.high,
  });

  factory LiteralTimeInterval.fromJson(Map<String, dynamic> json) {
    return LiteralTimeInterval(
      lowClosed: LiteralBoolean.fromJson(json['lowClosed']),
      highClosed: LiteralBoolean.fromJson(json['highClosed']),
      low: LiteralTime.fromJson(json['low']),
      high: LiteralTime.fromJson(json['high']),
    );
  }
  final LiteralTime? low;
  final LiteralTime? high;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (lowClosed != null) 'lowClosed': lowClosed!.toJson(),
      if (highClosed != null) 'highClosed': highClosed!.toJson(),
      if (low != null) 'low': low!.toJson(),
      if (high != null) 'high': high!.toJson(),
    };
  }

  @override
  String get type => 'Interval<Time>';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Interval<Time>'];

  @override
  Future<CqlInterval<CqlTime>?> execute(Map<String, dynamic> context) async =>
      CqlInterval<CqlTime>(
        low: await low?.execute(context),
        lowClosed: (await lowClosed?.execute(context))?.valueBoolean,
        high: await high?.execute(context),
        highClosed: (await highClosed?.execute(context))?.valueBoolean,
      );
}
