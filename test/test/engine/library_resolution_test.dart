import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// A reference to a code, value set or code system the library does not
/// define resolves to null. It used to throw a bare Exception, which five
/// callers caught wholesale and turned into null anyway.
void main() {
  final empty = CqlLibrary();
  // A library that defines one of each, under another name: the lookup
  // reaches the search, where the old code threw.
  final defined = CqlLibrary(
    codes: CodeDefs()..def = [CodeDef(name: 'Known', id: '1')],
    valueSets: ValueSetDefs()..def = [ValueSetDef(name: 'Known', id: 'vs')],
    codeSystems: CodeSystemDefs()
      ..def = [CodeSystemDef(name: 'Known', id: 'cs')],
  );

  test('an unknown name resolves to null', () {
    for (final lib in [empty, defined]) {
      expect(lib.resolveCodeRef('nope'), isNull);
      expect(lib.resolveValueSetRef('nope'), isNull);
      expect(lib.resolveCodeSystemRef('nope'), isNull);
    }
  });

  test('a defined name resolves', () {
    expect(defined.resolveCodeRef('Known')?.code, '1');
    expect(defined.resolveValueSetRef('Known'), isNotNull);
    expect(defined.resolveCodeSystemRef('Known'), isNotNull);
  });

  test('a cross-library lookup of an unknown library is null', () async {
    expect(await empty.resolveCodeRefFromLibrary('x', 'NoSuchLib'), isNull);
    expect(await empty.resolveValueSetRefFromLibrary('x', 'NoSuchLib'), isNull);
    expect(
      await empty.resolveCodeSystemRefFromLibrary('x', 'NoSuchLib'),
      isNull,
    );
  });
}
