#!/usr/bin/env python3
"""Every non-nullable `json['x'] as T` cast in a reader, against the ELM
schema: flags fields the schema makes optional (minOccurs=0 or an attribute
without use="required") that the reader would crash on when absent, unless
the reader null-guards the field. Found AggregateClause.distinct, Convert,
Split, Aggregate, Concept, Quantity and the n-ary operand on 2026-10-06.

Usage, from the package root:
  python3 -I tool/elm_census/optional_field_casts.py <dir>
where <dir> holds elm_expression.xsd, elm_library.xsd,
elm_clinicalexpression.xsd and elm_types.xsd, each saved from
https://cql.hl7.org/elm/schema/<name without elm_>. Every print flushes.
"""
import functools
import glob
import re
import sys
import xml.etree.ElementTree as ET

print = functools.partial(print, flush=True)  # noqa: A001
S = sys.argv[1]
X = '{http://www.w3.org/2001/XMLSchema}'
types={}
for f in ['elm_expression.xsd','elm_library.xsd','elm_clinicalexpression.xsd','elm_types.xsd']:
    root=ET.parse(f'{S}/{f}').getroot()
    for ct in root.iter(X+'complexType'):
        name=ct.get('name')
        if not name: continue
        base=None; fields={}
        for ext in ct.iter(X+'extension'):
            b=ext.get('base')
            if b: base=b.split(':')[-1]
        for el in ct.iter(X+'element'):
            if el.get('name'): fields[el.get('name')]=(el.get('minOccurs','1')!='0', 'max='+el.get('maxOccurs','1'))
        for at in ct.iter(X+'attribute'):
            if at.get('name'): fields[at.get('name')]=(at.get('use')=='required', 'default='+str(at.get('default')))
        types[name]=(base,fields)
print('xsd complexTypes:',len(types))
def lookup(t, field):
    seen=set()
    while t and t not in seen:
        seen.add(t); base,fields=types.get(t,(None,{}))
        if field in fields: return t, fields[field]
        t=base
    return None,None
flags=[]; checked=0; nomap=[]
for f in sorted(glob.glob('lib/src/**/*.dart', recursive=True)):
    s=open(f).read()
    if 'fromJson(' not in s: continue
    m=re.search(r"String get type => '([^']+)'", s); cls=re.search(r"class (\w+)", s)
    cands=[x for x in [m.group(1) if m else None, cls.group(1) if cls else None] if x]
    t=next((c for c in cands if c in types), None)
    if not t: nomap.append((f.replace('lib/src/',''), cands)); continue
    for cm in re.finditer(r"json\['(\w+)'\] as ([\w<>, ]+?)(\??)\s*[,);\n]", s):
        field, typ, q = cm.group(1), cm.group(2).strip(), cm.group(3)
        if q=='?': continue
        if re.search(r"json\['%s'\]\s*(==|!=)\s*null|containsKey\('%s'\)|json\['%s'\]\s*\?\?" % (field,field,field), s): continue
        checked+=1
        owner,info=lookup(t, field)
        if info is None: flags.append((f.replace('lib/src/engine/',''), t, field, typ, 'NOT IN XSD', '')); continue
        if not info[0]: flags.append((f.replace('lib/src/engine/',''), t, field, typ, owner, info[1]))
print('files mapped to an xsd type:', sum(1 for f in glob.glob('lib/src/**/*.dart', recursive=True) if 'fromJson(' in open(f).read())-len(nomap), ' unmapped:', len(nomap))
print('non-null casts checked:', checked)
print('OPTIONAL IN THE SCHEMA (or absent from it) BUT CAST AS REQUIRED (%d):' % len(flags))
for x in flags: print('  %s  %s.%s as %s  (xsd owner %s %s)' % x)
print('UNMAPPED FILES:'); [print('  ',a,b) for a,b in nomap]
