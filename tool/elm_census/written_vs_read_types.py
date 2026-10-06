#!/usr/bin/env python3
"""Every ELM `type` string a class writes (`String get type => '…'`) against
the `case '…':` strings the readers accept, ignoring commented-out cases.

Run from the package root. Lists types read nowhere (sub-structures that a
parent reads by field are expected here) and types the top-level
`CqlExpression.fromJson` switch lacks (what found OnOrAfter, Skip, Take and
Time on 2026-10-06; this census first counted commented-out cases and
missed OnOrAfter, hence the comment filter). Every print flushes.
"""
import functools
import glob
import re

print = functools.partial(print, flush=True)  # noqa: A001
TOP = 'lib/src/engine/expression/cql_expression.dart'


def live_cases(path, upto=None):
    found = []
    text = open(path).read()
    if upto:
        text = text[:text.index(upto)]
    for line in text.split('\n'):
        if line.lstrip().startswith('//'):
            continue
        found += re.findall(r"case '([^']+)':", line)
    return found


written = {}
for f in glob.glob('lib/src/**/*.dart', recursive=True):
    for m in re.finditer(r"String get type => '([^']+)'", open(f).read()):
        written.setdefault(m.group(1), []).append(f)
top = set(live_cases(TOP, upto='if (json.isEmpty)'))
anywhere = set()
for f in glob.glob('lib/src/**/*.dart', recursive=True):
    if 'fromJson(' in open(f).read():
        anywhere |= set(live_cases(f))
print(f'types written: {len(written)}  top-level cases: {len(top)}  '
      f'cases anywhere: {len(anywhere)}')
print('READ NOWHERE:')
for t in sorted(t for t in written if t not in anywhere):
    print(f'  {t:24} {written[t][0]}')
print('NOT IN THE TOP-LEVEL SWITCH:')
for t in sorted(t for t in written if t in anywhere and t not in top):
    print(f'  {t:24} {written[t][0]}')
