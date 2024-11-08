// ignore_for_file: file_names

import 'package:fhir_r4/fhir_r4.dart';

final exercises05 = <String, dynamic>{
  'Patient': 'Patient(id=example)',
  'Patient Gender': 'code',
  'Patient Gender is Male': FhirBoolean(true),
  'Patient Martial Status': 'CodeableConcept',
  'Patient is Married (=)': FhirBoolean(true),
  'Patient is Married (~)': FhirBoolean(true),
  'Married in Marital Status': FhirBoolean(true),
};

final context05 = <String, dynamic>{
  'Patient': {
    "resourceType": "Patient",
    "id": "example",
    "meta": {
      "profile": [
        "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient"
      ]
    },
    "text": {
      "status": "generated",
      "div":
          "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>meta</b>: </p><p><b>identifier</b>: Medical record number = 12345 (USUAL)</p><p><b>active</b>: true</p><p><b>name</b>: Peter James Chalmers (OFFICIAL), Jim Chalmers , Peter James Windsor (MAIDEN)</p><p><b>telecom</b>: ph: (03) 5555 6473(WORK), ph: (03) 3410 5613(MOBILE), ph: (03) 5555 8834(OLD)</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1974-12-25</p><p><b>deceased</b>: false</p><p><b>address</b>: 534 Erewhon St PeasantVille, Utah 84414(HOME)</p><h3>Contacts</h3><table class=\"grid\"><tr><td>-</td><td><b>Relationship</b></td><td><b>Name</b></td><td><b>Telecom</b></td><td><b>Address</b></td><td><b>Gender</b></td><td><b>Period</b></td></tr><tr><td>*</td><td>Next-of-Kin <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/v2-0131 code 'N' = 'Next-of-Kin)</span></td><td>Bénédicte du Marché </td><td>ph: +33 (237) 998327</td><td>534 Erewhon St PleasantVille VT 3999 (HOME)</td><td>female</td><td>Jan 1, 2012 12:00:00 AM --&gt; (ongoing)</td></tr></table><p><b>managingOrganization</b>: <a href=\"Organization-example.html\">Generated Summary: id: example; ??; active; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/organization-type team}\">Organizational team</span>; name: Health Level Seven International; ph: (+1) 734-677-7777, fax: (+1) 734-677-6622, hq@HL7.org</a></p></div>"
    },
    "extension": [
      {
        "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
        "extension": [
          {
            "url": "ombCategory",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2106-3",
              "display": "White"
            }
          },
          {
            "url": "ombCategory",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "1002-5",
              "display": "American Indian or Alaska Native"
            }
          },
          {
            "url": "ombCategory",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2028-9",
              "display": "Asian"
            }
          },
          {
            "url": "detailed",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "1586-7",
              "display": "Shoshone"
            }
          },
          {
            "url": "detailed",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2036-2",
              "display": "Filipino"
            }
          },
          {
            "url": "detailed",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "1735-0",
              "display": "Alaska Native"
            }
          },
          {"url": "text", "valueString": "Mixed"}
        ]
      },
      {
        "url":
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
        "extension": [
          {
            "url": "ombCategory",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2135-2",
              "display": "Hispanic or Latino"
            }
          },
          {
            "url": "detailed",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2184-0",
              "display": "Dominican"
            }
          },
          {
            "url": "detailed",
            "valueCoding": {
              "system": "urn:oid:2.16.840.1.113883.6.238",
              "code": "2148-5",
              "display": "Mexican"
            }
          },
          {"url": "text", "valueString": "Hispanic or Latino"}
        ]
      },
      {
        "url":
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
        "valueCode": "M"
      }
    ],
    "identifier": [
      {
        "use": "usual",
        "type": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code": "MR"
            }
          ]
        },
        "system": "urn:oid:1.2.36.146.595.217.0.1",
        "value": "12345",
        "period": {"start": "2001-05-06"},
        "assigner": {"display": "Acme Healthcare"}
      }
    ],
    "active": true,
    "name": [
      {
        "use": "official",
        "family": "Chalmers",
        "given": ["Peter", "James"]
      },
      {
        "use": "usual",
        "family": "Chalmers",
        "given": ["Jim"]
      },
      {
        "use": "maiden",
        "family": "Windsor",
        "given": ["Peter", "James"],
        "period": {"end": "2002"}
      }
    ],
    "telecom": [
      {"system": "phone", "value": "(03) 5555 6473", "use": "work", "rank": 1},
      {
        "system": "phone",
        "value": "(03) 3410 5613",
        "use": "mobile",
        "rank": 2
      },
      {
        "system": "phone",
        "value": "(03) 5555 8834",
        "use": "old",
        "period": {"end": "2014"}
      }
    ],
    "gender": "male",
    "birthDate": "1974-12-25",
    "_birthDate": {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
          "valueDateTime": "1974-12-25T14:35:45-05:00"
        }
      ]
    },
    "deceasedBoolean": false,
    "address": [
      {
        "use": "home",
        "type": "both",
        "text": "534 Erewhon St PeasantVille, Utah 84414",
        "line": ["534 Erewhon St"],
        "city": "PleasantVille",
        "district": "Rainbow",
        "state": "UT",
        "postalCode": "84414",
        "period": {"start": "1974-12-25"}
      }
    ],
    "maritalStatus": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
          "code": "M"
        }
      ]
    },
    "contact": [
      {
        "relationship": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0131",
                "code": "N"
              }
            ]
          }
        ],
        "name": {
          "family": "du Marché",
          "_family": {
            "extension": [
              {
                "url":
                    "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix",
                "valueString": "VV"
              }
            ]
          },
          "given": ["Bénédicte"]
        },
        "telecom": [
          {"system": "phone", "value": "+33 (237) 998327"}
        ],
        "address": {
          "use": "home",
          "type": "both",
          "line": ["534 Erewhon St"],
          "city": "PleasantVille",
          "district": "Rainbow",
          "state": "VT",
          "postalCode": "3999",
          "period": {"start": "1974-12-25"}
        },
        "gender": "female",
        "period": {"start": "2012"}
      }
    ],
    "managingOrganization": {"reference": "Organization/example"}
  }
};
