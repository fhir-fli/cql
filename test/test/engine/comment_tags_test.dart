import 'dart:convert';
import 'dart:io';

import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL Developer's Guide, Tags: a multi-line comment immediately before a
/// declaration carries @tags, each with the text up to the next tag or the
/// end of the comment. The reference translator writes them as an
/// Annotation of Tags on the define; ours dropped every comment until
/// 2026-10-06.
void main() {
  /// The tags on the [nth] define named [name] (functions overload).
  List<Map<String, dynamic>> tagsOf(
    CqlLibrary library,
    String name, [
    int nth = 0,
  ]) {
    final def =
        library.statements!.def.where((d) => d.name == name).elementAt(nth);
    return (def.annotation ?? [])
        .whereType<Annotation>()
        .expand((a) => a.t)
        .map((t) => t.toJson())
        .toList();
  }

  test("the guide's first example: three tags, one without a value", () {
    final library = libraryFromCql('''
library L version '1'
/*
@inclusion
@author: Frederic Chopin
@description: Defines whether the patient is included in the initial population
*/
define "InInitialPopulation": true
define "Untagged": false
''');
    expect(tagsOf(library, 'InInitialPopulation'), [
      {'name': 'inclusion'},
      {'name': 'author', 'value': 'Frederic Chopin'},
      {
        'name': 'description',
        'value':
            'Defines whether the patient is included in the initial population',
      },
    ]);
    expect(tagsOf(library, 'Untagged'), isEmpty);
  });

  test("the guide's second example: a function, a value over two lines", () {
    final library = libraryFromCql('''
library L version '1'
/*
@author: Ludwig van Beethoven
@description: Determines the cumulative duration of a list of intervals
@comment: This function collapses the input intervals prior to determining the cumulative duration
to ensure overlapping intervals do not contribute multiple times to the result
*/
define function "CumulativeDuration"(Intervals List<Interval<DateTime>>):
  Count(Intervals)
''');
    expect(tagsOf(library, 'CumulativeDuration'), [
      {'name': 'author', 'value': 'Ludwig van Beethoven'},
      {
        'name': 'description',
        'value': 'Determines the cumulative duration of a list of intervals',
      },
      {
        'name': 'comment',
        'value': 'This function collapses the input intervals prior to '
            'determining the cumulative duration\nto ensure overlapping '
            'intervals do not contribute multiple times to the result',
      },
    ]);
  });

  test('FHIRCommon: every tagged define matches the reference exactly', () {
    final reference = (jsonDecode(
      File('test/test/exercises/FHIRCommon.json').readAsStringSync(),
    ) as Map<String, dynamic>)['library'] as Map<String, dynamic>;
    final ours = libraryFromCql(
      File('test/test/exercises/FHIRCommon.cql').readAsStringSync(),
    );
    var tagged = 0;
    final seen = <String, int>{};
    for (final def in (reference['statements'] as Map)['def'] as List) {
      final name = (def as Map)['name'] as String;
      final nth = seen[name] ?? 0;
      seen[name] = nth + 1;
      final refTags = (def['annotation'] as List? ?? const [])
          .whereType<Map<String, dynamic>>()
          .expand((a) => a['t'] as List? ?? const [])
          .toList();
      if (refTags.isEmpty) continue;
      tagged++;
      expect(tagsOf(ours, name, nth), refTags, reason: '$name #$nth');
    }
    expect(tagged, 35);
  });
}
