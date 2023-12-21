import '../../../cql.dart';

final qdmmodelinfo55 = ModelInfo.fromJson({
    "name": "QDM",
    "url": "urn:healthit-gov:qdm:v5_5",
    "targetQualifier": "qdm",
    "patientClassName": "QDM.Patient",
    "patientClassIdentifier": "Patient",
    "patientBirthDatePropertyName": "birthDatetime",
    "version": "5.5",
    "strictRetrieveTyping": true,
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "QDM.Patient",
            "baseType": "System.Any",
            "retrievable": false,
            "identifier": "Patient",
            "element": {
                "name": "birthDatetime",
                "type": "System.DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Identifier",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "namingSystem",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Entity",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "QDM.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientEntity",
            "baseType": "QDM.Entity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CarePartner",
            "baseType": "QDM.Entity",
            "retrievable": false,
            "element": {
                "name": "relationship",
                "type": "System.Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.RelatedPerson",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Related Person",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "QDM.Identifier"
                },
                {
                    "name": "linkedPatientId",
                    "type": "System.String"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            },
            "targetContextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "linkedPatientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Practitioner",
            "baseType": "QDM.Entity",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "System.Code"
                },
                {
                    "name": "specialty",
                    "type": "System.Code"
                },
                {
                    "name": "qualification",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Organization",
            "baseType": "QDM.Entity",
            "retrievable": false,
            "element": {
                "name": "type",
                "type": "System.Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Participation",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Participation",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "participationPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicSex",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Sex",
            "primaryCodePath": "code",
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CareGoal",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Care Goal",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "statusDate",
                    "type": "System.Date"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "relatedTo",
                    "type": "list<System.String>"
                },
                {
                    "name": "targetOutcome",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristic",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic",
            "primaryCodePath": "code",
            "element": {
                "name": "authorDatetime",
                "type": "System.DateTime"
            },
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicEthnicity",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Ethnicity",
            "primaryCodePath": "code",
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicRace",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Race",
            "primaryCodePath": "code",
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "status",
                    "type": "System.Code"
                },
                {
                    "name": "method",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                },
                {
                    "name": "resultDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "referenceRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "components",
                    "type": "list<QDM.ResultComponent>"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Symptom",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Symptom",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "prevalencePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "severity",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationAdministered",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "admissionSource",
                    "type": "System.Code"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "System.Code"
                },
                {
                    "name": "facilityLocations",
                    "type": "list<QDM.FacilityLocation>"
                },
                {
                    "name": "diagnoses",
                    "type": "list<QDM.DiagnosisComponent>"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "lengthOfStay",
                    "type": "System.Quantity"
                },
                {
                    "name": "priority",
                    "type": "System.Code"
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Diagnosis",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Diagnosis",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "prevalencePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "severity",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "category",
                    "type": "System.Code"
                },
                {
                    "name": "medium",
                    "type": "System.Code"
                },
                {
                    "name": "sender",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "relatedTo",
                    "type": "list<System.String>"
                },
                {
                    "name": "sentDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "receivedDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "method",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            }
                        ]
                    }
                },
                {
                    "name": "components",
                    "type": "list<QDM.Component>"
                },
                {
                    "name": "relatedTo",
                    "type": "list<System.String>"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicClinicalTrialParticipant",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Clinical Trial Participant",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                },
                {
                    "name": "resultDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "System.Code"
                },
                {
                    "name": "method",
                    "type": "System.Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "components",
                    "type": "list<QDM.Component>"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.FamilyHistory",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Family History",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relationship",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Component",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosisComponent",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "presentOnAdmissionIndicator",
                    "type": "System.Code"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ResultComponent",
            "baseType": "QDM.Component",
            "retrievable": false,
            "element": {
                "name": "referenceRange",
                "type": "interval<System.Quantity>"
            },
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.FacilityLocation",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "locationPeriod",
                    "type": "interval<System.DateTime>"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationActive",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Medication, Active",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "supply",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicPayer",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Payer",
            "primaryCodePath": "code",
            "element": {
                "name": "relevantPeriod",
                "type": "interval<System.DateTime>"
            },
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicExpired",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Expired",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "expiredDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "cause",
                    "type": "System.Code"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationAdministered",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceAdministered",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "priority",
                    "type": "System.Code"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedurePerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "method",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                },
                {
                    "name": "status",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                },
                {
                    "name": "priority",
                    "type": "System.Code"
                },
                {
                    "name": "incisionDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "components",
                    "type": "list<QDM.Component>"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AllergyIntolerance",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Allergy/Intolerance",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "prevalencePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "severity",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicBirthdate",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Characteristic Birthdate",
            "primaryCodePath": "code",
            "element": {
                "name": "birthDatetime",
                "type": "System.DateTime"
            },
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AdverseEvent",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Adverse Event",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "severity",
                    "type": "System.Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "System.Code"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.QDMBaseType",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "patientId",
                    "type": "System.String"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceApplied",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationDischarge",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "supply",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "daysSupplied",
                    "type": "System.Integer"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "prescriber",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                },
                {
                    "name": "status",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationDispensed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "supply",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "daysSupplied",
                    "type": "System.Integer"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "prescriber",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "dispenser",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "activeDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "supply",
                    "type": "System.Quantity"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCareExperience",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Patient Care Experience",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProviderCareExperience",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "label": "Provider Care Experience",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                },
                {
                    "name": "priority",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationOrder",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "supply",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "daysSupplied",
                    "type": "System.Integer"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "setting",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "prescriber",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "dosage",
                    "type": "System.Quantity"
                },
                {
                    "name": "frequency",
                    "type": "System.Code"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "route",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionRecommended",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "requester",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamPerformed",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantDatetime",
                    "type": "System.DateTime"
                },
                {
                    "name": "relevantPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "method",
                    "type": "System.Code"
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            }
                        ]
                    }
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "System.Code"
                },
                {
                    "name": "negationRationale",
                    "type": "System.Code"
                },
                {
                    "name": "components",
                    "type": "list<QDM.Component>"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "PatientEntity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "CarePartner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Practitioner"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QDM",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                }
            ],
            "contextRelationship": {
                "context": "Patient",
                "relatedKeyElement": "patientId"
            }
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveAssessmentOrder",
            "baseType": "QDM.AssessmentOrder",
            "identifier": "PositiveAssessmentOrder",
            "label": "Assessment, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeAssessmentOrder",
            "baseType": "QDM.AssessmentOrder",
            "identifier": "NegativeAssessmentOrder",
            "label": "Assessment, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveAssessmentRecommended",
            "baseType": "QDM.AssessmentRecommended",
            "identifier": "PositiveAssessmentRecommended",
            "label": "Assessment, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeAssessmentRecommended",
            "baseType": "QDM.AssessmentRecommended",
            "identifier": "NegativeAssessmentRecommended",
            "label": "Assessment, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveAssessmentPerformed",
            "baseType": "QDM.AssessmentPerformed",
            "identifier": "PositiveAssessmentPerformed",
            "label": "Assessment, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeAssessmentPerformed",
            "baseType": "QDM.AssessmentPerformed",
            "identifier": "NegativeAssessmentPerformed",
            "label": "Assessment, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveCommunicationPerformed",
            "baseType": "QDM.CommunicationPerformed",
            "identifier": "PositiveCommunicationPerformed",
            "label": "Communication, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeCommunicationPerformed",
            "baseType": "QDM.CommunicationPerformed",
            "identifier": "NegativeCommunicationPerformed",
            "label": "Communication, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDeviceOrder",
            "baseType": "QDM.DeviceOrder",
            "identifier": "PositiveDeviceOrder",
            "label": "Device, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDeviceOrder",
            "baseType": "QDM.DeviceOrder",
            "identifier": "NegativeDeviceOrder",
            "label": "Device, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDeviceRecommended",
            "baseType": "QDM.DeviceRecommended",
            "identifier": "PositiveDeviceRecommended",
            "label": "Device, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDeviceRecommended",
            "baseType": "QDM.DeviceRecommended",
            "identifier": "NegativeDeviceRecommended",
            "label": "Device, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDeviceApplied",
            "baseType": "QDM.DeviceApplied",
            "identifier": "PositiveDeviceApplied",
            "label": "Device, Applied",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDeviceApplied",
            "baseType": "QDM.DeviceApplied",
            "identifier": "NegativeDeviceApplied",
            "label": "Device, Not Applied",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDiagnosticStudyOrder",
            "baseType": "QDM.DiagnosticStudyOrder",
            "identifier": "PositiveDiagnosticStudyOrder",
            "label": "Diagnostic Study, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDiagnosticStudyOrder",
            "baseType": "QDM.DiagnosticStudyOrder",
            "identifier": "NegativeDiagnosticStudyOrder",
            "label": "Diagnostic Study, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDiagnosticStudyRecommended",
            "baseType": "QDM.DiagnosticStudyRecommended",
            "identifier": "PositiveDiagnosticStudyRecommended",
            "label": "Diagnostic Study, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDiagnosticStudyRecommended",
            "baseType": "QDM.DiagnosticStudyRecommended",
            "identifier": "NegativeDiagnosticStudyRecommended",
            "label": "Diagnostic Study, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveDiagnosticStudyPerformed",
            "baseType": "QDM.DiagnosticStudyPerformed",
            "identifier": "PositiveDiagnosticStudyPerformed",
            "label": "Diagnostic Study, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeDiagnosticStudyPerformed",
            "baseType": "QDM.DiagnosticStudyPerformed",
            "identifier": "NegativeDiagnosticStudyPerformed",
            "label": "Diagnostic Study, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveEncounterOrder",
            "baseType": "QDM.EncounterOrder",
            "identifier": "PositiveEncounterOrder",
            "label": "Encounter, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeEncounterOrder",
            "baseType": "QDM.EncounterOrder",
            "identifier": "NegativeEncounterOrder",
            "label": "Encounter, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveEncounterRecommended",
            "baseType": "QDM.EncounterRecommended",
            "identifier": "PositiveEncounterRecommended",
            "label": "Encounter, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeEncounterRecommended",
            "baseType": "QDM.EncounterRecommended",
            "identifier": "NegativeEncounterRecommended",
            "label": "Encounter, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveEncounterPerformed",
            "baseType": "QDM.EncounterPerformed",
            "identifier": "PositiveEncounterPerformed",
            "label": "Encounter, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeEncounterPerformed",
            "baseType": "QDM.EncounterPerformed",
            "identifier": "NegativeEncounterPerformed",
            "label": "Encounter, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveInterventionOrder",
            "baseType": "QDM.InterventionOrder",
            "identifier": "PositiveInterventionOrder",
            "label": "Intervention, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeInterventionOrder",
            "baseType": "QDM.InterventionOrder",
            "identifier": "NegativeInterventionOrder",
            "label": "Intervention, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveInterventionRecommended",
            "baseType": "QDM.InterventionRecommended",
            "identifier": "PositiveInterventionRecommended",
            "label": "Intervention, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeInterventionRecommended",
            "baseType": "QDM.InterventionRecommended",
            "identifier": "NegativeInterventionRecommended",
            "label": "Intervention, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveInterventionPerformed",
            "baseType": "QDM.InterventionPerformed",
            "identifier": "PositiveInterventionPerformed",
            "label": "Intervention, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeInterventionPerformed",
            "baseType": "QDM.InterventionPerformed",
            "identifier": "NegativeInterventionPerformed",
            "label": "Intervention, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveImmunizationOrder",
            "baseType": "QDM.ImmunizationOrder",
            "identifier": "PositiveImmunizationOrder",
            "label": "Immunization, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeImmunizationOrder",
            "baseType": "QDM.ImmunizationOrder",
            "identifier": "NegativeImmunizationOrder",
            "label": "Immunization, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveImmunizationAdministered",
            "baseType": "QDM.ImmunizationAdministered",
            "identifier": "PositiveImmunizationAdministered",
            "label": "Immunization, Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeImmunizationAdministered",
            "baseType": "QDM.ImmunizationAdministered",
            "identifier": "NegativeImmunizationAdministered",
            "label": "Immunization, Not Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveMedicationAdministered",
            "baseType": "QDM.MedicationAdministered",
            "identifier": "PositiveMedicationAdministered",
            "label": "Medication, Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeMedicationAdministered",
            "baseType": "QDM.MedicationAdministered",
            "identifier": "NegativeMedicationAdministered",
            "label": "Medication, Not Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveMedicationDispensed",
            "baseType": "QDM.MedicationDispensed",
            "identifier": "PositiveMedicationDispensed",
            "label": "Medication, Dispensed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeMedicationDispensed",
            "baseType": "QDM.MedicationDispensed",
            "identifier": "NegativeMedicationDispensed",
            "label": "Medication, Not Dispensed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveMedicationDischarge",
            "baseType": "QDM.MedicationDischarge",
            "identifier": "PositiveMedicationDischarge",
            "label": "Medication, Discharge",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeMedicationDischarge",
            "baseType": "QDM.MedicationDischarge",
            "identifier": "NegativeMedicationDischarge",
            "label": "Medication, Not Discharged",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveMedicationOrder",
            "baseType": "QDM.MedicationOrder",
            "identifier": "PositiveMedicationOrder",
            "label": "Medication, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeMedicationOrder",
            "baseType": "QDM.MedicationOrder",
            "identifier": "NegativeMedicationOrder",
            "label": "Medication, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositivePhysicalExamOrder",
            "baseType": "QDM.PhysicalExamOrder",
            "identifier": "PositivePhysicalExamOrder",
            "label": "Physical Exam, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativePhysicalExamOrder",
            "baseType": "QDM.PhysicalExamOrder",
            "identifier": "NegativePhysicalExamOrder",
            "label": "Physical Exam, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositivePhysicalExamRecommended",
            "baseType": "QDM.PhysicalExamRecommended",
            "identifier": "PositivePhysicalExamRecommended",
            "label": "Physical Exam, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativePhysicalExamRecommended",
            "baseType": "QDM.PhysicalExamRecommended",
            "identifier": "NegativePhysicalExamRecommended",
            "label": "Physical Exam, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositivePhysicalExamPerformed",
            "baseType": "QDM.PhysicalExamPerformed",
            "identifier": "PositivePhysicalExamPerformed",
            "label": "Physical Exam, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativePhysicalExamPerformed",
            "baseType": "QDM.PhysicalExamPerformed",
            "identifier": "NegativePhysicalExamPerformed",
            "label": "Physical Exam, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveProcedureOrder",
            "baseType": "QDM.ProcedureOrder",
            "identifier": "PositiveProcedureOrder",
            "label": "Procedure, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeProcedureOrder",
            "baseType": "QDM.ProcedureOrder",
            "identifier": "NegativeProcedureOrder",
            "label": "Procedure, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveProcedureRecommended",
            "baseType": "QDM.ProcedureRecommended",
            "identifier": "PositiveProcedureRecommended",
            "label": "Procedure, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeProcedureRecommended",
            "baseType": "QDM.ProcedureRecommended",
            "identifier": "NegativeProcedureRecommended",
            "label": "Procedure, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveProcedurePerformed",
            "baseType": "QDM.ProcedurePerformed",
            "identifier": "PositiveProcedurePerformed",
            "label": "Procedure, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeProcedurePerformed",
            "baseType": "QDM.ProcedurePerformed",
            "identifier": "NegativeProcedurePerformed",
            "label": "Procedure, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveSubstanceOrder",
            "baseType": "QDM.SubstanceOrder",
            "identifier": "PositiveSubstanceOrder",
            "label": "Substance, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeSubstanceOrder",
            "baseType": "QDM.SubstanceOrder",
            "identifier": "NegativeSubstanceOrder",
            "label": "Substance, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveSubstanceRecommended",
            "baseType": "QDM.SubstanceRecommended",
            "identifier": "PositiveSubstanceRecommended",
            "label": "Substance, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeSubstanceRecommended",
            "baseType": "QDM.SubstanceRecommended",
            "identifier": "NegativeSubstanceRecommended",
            "label": "Substance, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveSubstanceAdministered",
            "baseType": "QDM.SubstanceAdministered",
            "identifier": "PositiveSubstanceAdministered",
            "label": "Substance, Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeSubstanceAdministered",
            "baseType": "QDM.SubstanceAdministered",
            "identifier": "NegativeSubstanceAdministered",
            "label": "Substance, Not Administered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveLaboratoryTestOrder",
            "baseType": "QDM.LaboratoryTestOrder",
            "identifier": "PositiveLaboratoryTestOrder",
            "label": "Laboratory Test, Order",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeLaboratoryTestOrder",
            "baseType": "QDM.LaboratoryTestOrder",
            "identifier": "NegativeLaboratoryTestOrder",
            "label": "Laboratory Test, Not Ordered",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveLaboratoryTestRecommended",
            "baseType": "QDM.LaboratoryTestRecommended",
            "identifier": "PositiveLaboratoryTestRecommended",
            "label": "Laboratory Test, Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeLaboratoryTestRecommended",
            "baseType": "QDM.LaboratoryTestRecommended",
            "identifier": "NegativeLaboratoryTestRecommended",
            "label": "Laboratory Test, Not Recommended",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.PositiveLaboratoryTestPerformed",
            "baseType": "QDM.LaboratoryTestPerformed",
            "identifier": "PositiveLaboratoryTestPerformed",
            "label": "Laboratory Test, Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        },
        {
            "type": "ProfileInfo",
            "name": "QDM.NegativeLaboratoryTestPerformed",
            "baseType": "QDM.LaboratoryTestPerformed",
            "identifier": "NegativeLaboratoryTestPerformed",
            "label": "Laboratory Test, Not Performed",
            "retrievable": true,
            "primaryCodePath": "code"
        }
    ],
    "contextInfo": {
        "name": "Patient",
        "keyElement": "id",
        "birthDateElement": "birthDatetime",
        "contextType": {
            "type": "NamedTypeSpecifier",
            "modelName": "QDM",
            "name": "{http://hl7.org/fhir}Patient"
        }
    }
});