// ignore_for_file: file_names

import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

final exercises03 = {
  'String Equality': FhirBoolean(true),
  'String Equivalence': FhirBoolean(true),
  'String Comparison': FhirBoolean(true),
  'String Inequality': FhirBoolean(true),
  'String Inequivalence': FhirBoolean(true),
  'String Equality With Null': FhirBoolean(true),
  'String Equivalence With Null': FhirBoolean(true),
  'T1': <String, dynamic>{
    "X": 1,
    "Y": null,
  },
  'T2': <String, dynamic>{
    "X": 1,
    "Y": null,
  },
  'T3': <String, dynamic>{
    "X": 1,
    "Y": 2,
  },
  'TEqual': FhirBoolean(true),
  'TEqualWithNull': FhirBoolean(true),
  'TEquivalent': FhirBoolean(true),
  'C1': <String, dynamic>{
    'code': 'ABC',
    'system': 'http://example.com',
    'version': '2017-01',
    'display': 'Code ABC'
  },
  'C2': <String, dynamic>{
    'code': 'ABC',
    'system': 'http://example.com',
    'version': '2017-05',
    'display': 'Variant Description'
  },
  'CEqual': FhirBoolean(true),
  'CEquivalent': FhirBoolean(true),
  'Standard Precedence': FhirBoolean(true),
  'Force Precedence': FhirBoolean(true),
  'Division Always Results in a Decimal': FhirBoolean(true),
  'Truncated Divide for Integer Division': FhirBoolean(true),
  'Modulo is the Remainder': FhirBoolean(true),
  'Negation': FhirBoolean(true),
  'Absolute Value': FhirBoolean(true),
  'Successor Of': FhirBoolean(true),
  'Predecessor Of': FhirBoolean(true),
  'Minimum Integer': FhirBoolean(true),
  'Maximum Integer': FhirBoolean(true),
  'Default Round': FhirBoolean(true),
  'Precision Round': FhirBoolean(true),
  'Truncate': FhirBoolean(true),
  'Truncate Negative': FhirBoolean(true),
  'Floor': FhirBoolean(true),
  'Floor Negative': FhirBoolean(true),
  'Ceiling': FhirBoolean(true),
  'Ceiling Negative': FhirBoolean(true),
  'Integer Exponent': FhirBoolean(false),
  'Decimal Exponent': FhirBoolean(true),
  'Logarithm Base 5': FhirBoolean(true),
  'Logarithm Base 25': FhirBoolean(true),
  'Natural Logarithm': FhirBoolean(false),
  'Exponent': FhirBoolean(false),
  'String Concatenate': FhirBoolean(true),
  'String Concatenate With Nulls': null,
  'String Null Concatenate': 'ABCD',
  'String Length': FhirInteger(4),
  'String Indexer': 'A',
  'PositionOf': FhirInteger(2),
  'LastPositionOf': FhirInteger(4),
  'StartsWith': FhirBoolean(false),
  'EndsWith': FhirBoolean(false),
  'Matches': FhirBoolean(true),
  'ReplaceMatches': 'ABXD',
  'Date Equal': FhirBoolean(false),
  'Date Less Than': FhirBoolean(true),
  'Date Less Or Equal': FhirBoolean(true),
  'Same Year As': FhirBoolean(true),
  'Same Year Or Before': FhirBoolean(true),
  'Before Year Of': FhirBoolean(true),
  'Day Quantity': ValidatedQuantity.fromString("1 'day'"),
  'Years Quantity': ValidatedQuantity.fromString("2 'years'"),
  'Minutes Quantity': ValidatedQuantity.fromString("30 'minutes'"),
  'UCUM Days': ValidatedQuantity.fromString("1 'd'"),
  'UCUM Annum': ValidatedQuantity.fromString("2 'a'"),
  'UCUM Minutes': ValidatedQuantity.fromString("30 'min'"),
  '1 Year Ago': FhirDate('2023-03-08'),
  'Add 30 Minutes': FhirDateTime('2014-02-01T15:00'),
  'Add 24 Months': FhirInteger(2016),
  'Calendar Years Equivalent To UCUM Annum (a)': FhirBoolean(true),
  'Calendar Months Equivalent To UCUM Month (mo)': FhirBoolean(true),
  'Calendar Weeks Equal To UCUM Weeks (wk)': FhirBoolean(true),
  'Calendar Days Equal To UCUM Days (d)': FhirBoolean(true),
  'Calendar Hours Equal To UCUM Hours (h)': FhirBoolean(true),
  'Calendar Minutes Equal To UCUM Minutes (min)': FhirBoolean(true),
  'Calendar Seconds Equal To UCUM Seconds (s)': FhirBoolean(true),
  'Calendar Milliseconds Equal To UCUM Milliseconds (ms)': FhirBoolean(true),
  'Duration In Months Between': FhirInteger(0),
  'Difference In Months Between': FhirInteger(1),
  'strength': ValidatedQuantity.fromString("10.0 'mg/mL'"),
  'If Conditional': ValidatedQuantity.fromString("10.0 'mg/mL'"),
  'unit': 'MG/ACTUAT',
  'Selected Case Conditional': 'mg/{actuat}',
  'doseFormCode': FhirInteger(316897),
  'Conditional Case': FhirDecimal(12.6),
};