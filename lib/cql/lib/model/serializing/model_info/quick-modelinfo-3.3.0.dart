import '../../../cql.dart';

final quickmodelinfo330 = ModelInfo.fromJson({
    "name": "QUICK",
    "url": "http://hl7.org/fhir/us/qicore",
    "targetQualifier": "quick",
    "patientClassName": "QUICK.Patient",
    "patientBirthDatePropertyName": "birthDate",
    "version": "3.3.0",
    "requiredModelInfo": {
        "name": "System",
        "version": "1.0.0"
    },
    "typeInfo": [
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Address",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Address",
            "label": "Address",
            "element": [
                {
                    "name": "use",
                    "elementType": "QUICK.AddressUse"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.AddressType"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "line",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "city",
                    "elementType": "System.String"
                },
                {
                    "name": "district",
                    "elementType": "System.String"
                },
                {
                    "name": "state",
                    "elementType": "System.String"
                },
                {
                    "name": "postalCode",
                    "elementType": "System.String"
                },
                {
                    "name": "country",
                    "elementType": "System.String"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AddressType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AddressUse",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AdministrativeGender",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AdverseEvent",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-adverseevent",
            "label": "AdverseEvent",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "actuality",
                    "elementType": "QUICK.AdverseEventActuality"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "event",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "detected",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "recordedDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "resultingCondition",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "seriousness",
                    "elementType": "System.Concept"
                },
                {
                    "name": "severity",
                    "elementType": "System.Concept"
                },
                {
                    "name": "outcome",
                    "elementType": "System.Concept"
                },
                {
                    "name": "recorder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "contributor",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "suspectEntity",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subjectMedicalHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referenceDocument",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "study",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AdverseEvent.SuspectEntity",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "instance",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "causality",
                    "elementType": "QUICK.AdverseEvent.SuspectEntity.Causality"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AdverseEvent.SuspectEntity.Causality",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "assessment",
                    "elementType": "System.Concept"
                },
                {
                    "name": "productRelatedness",
                    "elementType": "System.String"
                },
                {
                    "name": "author",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AdverseEventActuality",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntolerance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-allergyintolerance",
            "label": "AllergyIntolerance",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "resolutionAge",
                    "elementType": "QUICK.resolutionAge"
                },
                {
                    "name": "reasonRefuted",
                    "elementType": "QUICK.reasonRefuted"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "clinicalStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "verificationStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.AllergyIntoleranceType"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "criticality",
                    "elementType": "QUICK.AllergyIntoleranceCriticality"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "onset",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "recordedDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "asserter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "lastOccurrence",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reaction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntolerance.Reaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "elementType": "System.Concept"
                },
                {
                    "name": "manifestation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "onset",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "severity",
                    "elementType": "QUICK.AllergyIntoleranceSeverity"
                },
                {
                    "name": "exposureRoute",
                    "elementType": "System.Concept"
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntoleranceCategory",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntoleranceCriticality",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntoleranceSeverity",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "AllergyIntoleranceType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Annotation",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Annotation",
            "label": "Annotation",
            "element": [
                {
                    "name": "author",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "time",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Attachment",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Attachment",
            "label": "Attachment",
            "element": [
                {
                    "name": "contentType",
                    "elementType": "QUICK.MimeType"
                },
                {
                    "name": "language",
                    "elementType": "System.String"
                },
                {
                    "name": "data",
                    "elementType": "System.String"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "size",
                    "elementType": "System.Integer"
                },
                {
                    "name": "hash",
                    "elementType": "System.String"
                },
                {
                    "name": "title",
                    "elementType": "System.String"
                },
                {
                    "name": "creation",
                    "elementType": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "BackboneElement",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/BackboneElement",
            "label": "BackboneElement",
            "element": {
                "name": "modifierExtension",
                "elementTypeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "BodyLengthUnits",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "BodyStructure",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-bodystructure",
            "label": "BodyStructure",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "morphology",
                    "elementType": "System.Concept"
                },
                {
                    "name": "location",
                    "elementType": "System.Concept"
                },
                {
                    "name": "locationQualifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "image",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "BodyTempUnits",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "BodyWeightUnits",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-claim",
            "label": "Claim",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.ClaimStatus"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "use",
                    "elementType": "QUICK.Use"
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "billablePeriod",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "created",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "enterer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "insurer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "provider",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "priority",
                    "elementType": "System.Concept"
                },
                {
                    "name": "fundsReserve",
                    "elementType": "System.Concept"
                },
                {
                    "name": "related",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prescription",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "originalPrescription",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "payee",
                    "elementType": "QUICK.Claim.Payee"
                },
                {
                    "name": "referral",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "facility",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "careTeam",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInfo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedure",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "insurance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "accident",
                    "elementType": "QUICK.Claim.Accident"
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "total",
                    "elementType": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Accident",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "elementType": "System.Date"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "location",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.CareTeam",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "provider",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "responsible",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "role",
                    "elementType": "System.Concept"
                },
                {
                    "name": "qualification",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Diagnosis",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "diagnosis",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "onAdmission",
                    "elementType": "System.Concept"
                },
                {
                    "name": "packageCode",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Insurance",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "focal",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "identifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "coverage",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "businessArrangement",
                    "elementType": "System.String"
                },
                {
                    "name": "preAuthRef",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "claimResponse",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "careTeamSequence",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosisSequence",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedureSequence",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "informationSequence",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "revenue",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "productOrService",
                    "elementType": "System.Concept"
                },
                {
                    "name": "modifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviced",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "location",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "factor",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "net",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "udi",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subSite",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Item.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "revenue",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "productOrService",
                    "elementType": "System.Concept"
                },
                {
                    "name": "modifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "factor",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "net",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "udi",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subDetail",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Item.Detail.SubDetail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "revenue",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "productOrService",
                    "elementType": "System.Concept"
                },
                {
                    "name": "modifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "factor",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "net",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "udi",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Payee",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "party",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Procedure",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "procedure",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "udi",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.Related",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "claim",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "relationship",
                    "elementType": "System.Concept"
                },
                {
                    "name": "reference",
                    "elementType": "QUICK.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Claim.SupportingInfo",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "timing",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "reason",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ClaimStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Communication",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communication",
            "label": "Communication",
            "primaryCodePath": "reasonCode",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesUri",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "inResponseTo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.CommunicationStatus"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "elementType": "QUICK.CommunicationPriority"
                },
                {
                    "name": "medium",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "topic",
                    "elementType": "System.Concept"
                },
                {
                    "name": "about",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "sent",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "received",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "recipient",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "sender",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "payload",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Communication.Payload",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "elementTypeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}String"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CommunicationPriority",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CommunicationRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationrequest",
            "label": "CommunicationRequest",
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.CommunicationRequestStatus"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "elementType": "QUICK.CommunicationPriority"
                },
                {
                    "name": "doNotPerform",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "medium",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "about",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "payload",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "occurrence",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "requester",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "recipient",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "sender",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CommunicationRequest.Payload",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "elementTypeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}String"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CommunicationRequestStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CommunicationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Condition",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-condition",
            "label": "Condition",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "dueTo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "occurredFollowing",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "clinicalStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "verificationStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "severity",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "onset",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "abatement",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "recordedDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "asserter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "stage",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "evidence",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Condition.Evidence",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Condition.Stage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "summary",
                    "elementType": "System.Concept"
                },
                {
                    "name": "assessment",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ContactDetail",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/ContactDetail",
            "label": "ContactDetail",
            "element": [
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ContactPoint",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/ContactPoint",
            "label": "ContactPoint",
            "element": [
                {
                    "name": "system",
                    "elementType": "QUICK.ContactPointSystem"
                },
                {
                    "name": "value",
                    "elementType": "System.String"
                },
                {
                    "name": "use",
                    "elementType": "QUICK.ContactPointUse"
                },
                {
                    "name": "rank",
                    "elementType": "System.Integer"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ContactPointSystem",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ContactPointUse",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Contributor",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Contributor",
            "label": "Contributor",
            "element": [
                {
                    "name": "type",
                    "elementType": "QUICK.ContributorType"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "contact",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ContributorType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Coverage",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-coverage",
            "label": "Coverage",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.CoverageStatus"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "policyHolder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "subscriber",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "subscriberId",
                    "elementType": "System.String"
                },
                {
                    "name": "beneficiary",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "dependent",
                    "elementType": "System.String"
                },
                {
                    "name": "relationship",
                    "elementType": "System.Concept"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "payor",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "class",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "order",
                    "elementType": "System.Integer"
                },
                {
                    "name": "network",
                    "elementType": "System.String"
                },
                {
                    "name": "costToBeneficiary",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subrogation",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "contract",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Coverage.Class",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementType": "System.String"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Coverage.CostToBeneficiary",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            }
                        ]
                    }
                },
                {
                    "name": "exception",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Coverage.CostToBeneficiary.Exception",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "CoverageStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DataRequirement",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/DataRequirement",
            "label": "DataRequirement",
            "element": [
                {
                    "name": "type",
                    "elementType": "QUICK.FHIRAllTypes"
                },
                {
                    "name": "profile",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "mustSupport",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "codeFilter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "path",
                    "elementType": "System.String"
                },
                {
                    "name": "searchParam",
                    "elementType": "System.String"
                },
                {
                    "name": "valueSet",
                    "elementType": "System.String"
                },
                {
                    "name": "code",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dateFilter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "path",
                    "elementType": "System.String"
                },
                {
                    "name": "searchParam",
                    "elementType": "System.String"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "limit",
                    "elementType": "System.Integer"
                },
                {
                    "name": "sort",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "path",
                    "elementType": "System.String"
                },
                {
                    "name": "direction",
                    "elementType": "QUICK.SortDirection"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DayOfWeek",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DaysOfWeek",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-device",
            "label": "Device",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "udiCarrier",
                    "elementType": "QUICK.Device.UdiCarrier"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.FHIRDeviceStatus"
                },
                {
                    "name": "statusReason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "distinctIdentifier",
                    "elementType": "System.String"
                },
                {
                    "name": "manufacturer",
                    "elementType": "System.String"
                },
                {
                    "name": "manufactureDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "expirationDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "lotNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "serialNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "deviceName",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "modelNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "partNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specialization",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "property",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "owner",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "contact",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "safety",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "parent",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device.DeviceName",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.DeviceNameType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device.Property",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "valueQuantity",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valueCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device.Specialization",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "systemType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "version",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device.UdiCarrier",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "deviceIdentifier",
                    "elementType": "System.String"
                },
                {
                    "name": "issuer",
                    "elementType": "System.String"
                },
                {
                    "name": "jurisdiction",
                    "elementType": "System.String"
                },
                {
                    "name": "carrierAIDC",
                    "elementType": "System.String"
                },
                {
                    "name": "carrierHRF",
                    "elementType": "System.String"
                },
                {
                    "name": "entryType",
                    "elementType": "QUICK.UDIEntryType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Device.Version",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "component",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "value",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DeviceNameType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DeviceUseStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement",
            "label": "DeviceUseStatement",
            "primaryCodePath": "device.code",
            "element": [
                {
                    "name": "notDone",
                    "elementType": "QUICK._Not_Done_Extension"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.DeviceUseStatementStatus"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "timing",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "recordedOn",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "source",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DeviceUseStatementStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DiagnosticReport.Media",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "comment",
                    "elementType": "System.String"
                },
                {
                    "name": "link",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DiagnosticReportLab",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab",
            "label": "DiagnosticReportLab",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "locationPerformed",
                    "elementType": "QUICK.locationPerformed"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "lab",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "resultsInterpreter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specimen",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "result",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "imagingStudy",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "media",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "conclusion",
                    "elementType": "System.String"
                },
                {
                    "name": "conclusionCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "presentedForm",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DiagnosticReportNote",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-note",
            "label": "DiagnosticReportNote",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "locationPerformed",
                    "elementType": "QUICK.locationPerformed"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "resultsInterpreter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specimen",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "result",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "imagingStudy",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "media",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "conclusion",
                    "elementType": "System.String"
                },
                {
                    "name": "conclusionCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "presentedForm",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "DomainResource",
            "baseType": "QUICK.Resource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/DomainResource",
            "label": "DomainResource",
            "element": [
                {
                    "name": "text",
                    "elementType": "QUICK.Narrative"
                },
                {
                    "name": "contained",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "extension",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "modifierExtension",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Dosage",
            "label": "Dosage",
            "element": [
                {
                    "name": "sequence",
                    "elementType": "System.Integer"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "additionalInstruction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patientInstruction",
                    "elementType": "System.String"
                },
                {
                    "name": "timing",
                    "elementType": "QUICK.Timing"
                },
                {
                    "name": "asNeeded",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            }
                        ]
                    }
                },
                {
                    "name": "site",
                    "elementType": "System.Concept"
                },
                {
                    "name": "route",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "doseAndRate",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "dose",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "rate",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "maxDosePerPeriod",
                    "elementType": "System.Ratio"
                },
                {
                    "name": "maxDosePerAdministration",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "maxDosePerLifetime",
                    "elementType": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Element",
            "label": "Element",
            "element": [
                {
                    "name": "id",
                    "elementType": "System.String"
                },
                {
                    "name": "extension",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "EnableWhenBehavior",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter",
            "label": "Encounter",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "reasonCancelled",
                    "elementType": "QUICK.reasonCancelled"
                },
                {
                    "name": "procedure",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.EncounterStatus"
                },
                {
                    "name": "statusHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "class",
                    "elementType": "System.Code"
                },
                {
                    "name": "classHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviceType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "priority",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "episodeOfCare",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "participant",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointment",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "length",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "account",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hospitalization",
                    "elementType": "QUICK.Encounter.Hospitalization"
                },
                {
                    "name": "location",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviceProvider",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "partOf",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.ClassHistory",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "class",
                    "elementType": "System.Code"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.Diagnosis",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "condition",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "use",
                    "elementType": "System.Concept"
                },
                {
                    "name": "rank",
                    "elementType": "System.Integer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.Hospitalization",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "preAdmissionIdentifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "origin",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "admitSource",
                    "elementType": "System.Concept"
                },
                {
                    "name": "reAdmission",
                    "elementType": "System.Concept"
                },
                {
                    "name": "dietPreference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialCourtesy",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialArrangement",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "destination",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "dischargeDisposition",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.Location",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.EncounterLocationStatus"
                },
                {
                    "name": "physicalType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "individual",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Encounter.StatusHistory",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "elementType": "QUICK.EncounterStatus"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "EncounterLocationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "EncounterProcedureExtension",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure",
            "label": "EncounterProcedureExtension",
            "element": [
                {
                    "name": "type",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "rank",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "procedure",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "EncounterStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "EventTiming",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Expression",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Expression",
            "label": "Expression",
            "element": [
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "language",
                    "elementType": "System.String"
                },
                {
                    "name": "expression",
                    "elementType": "System.String"
                },
                {
                    "name": "reference",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Extension",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Extension",
            "label": "Extension",
            "element": [
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactDetail"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Contributor"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "DataRequirement"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Expression"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ParameterDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "RelatedArtifact"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "TriggerDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "UsageContext"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Dosage"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FHIRAllTypes",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FHIRDeviceStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FHIRSubstanceStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FamilyHistoryStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FamilyMemberHistory",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-familymemberhistory",
            "label": "FamilyMemberHistory",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesUri",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.FamilyHistoryStatus"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "relationship",
                    "elementType": "System.Concept"
                },
                {
                    "name": "sex",
                    "elementType": "System.Concept"
                },
                {
                    "name": "born",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "age",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "estimatedAge",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "deceased",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FamilyMemberHistory.Condition",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "outcome",
                    "elementType": "System.Concept"
                },
                {
                    "name": "contributedToDeath",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "onset",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Flag",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-flag",
            "label": "Flag",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.FlagStatus"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "FlagStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Goal",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-goal",
            "label": "Goal",
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "reasonRejected",
                    "elementType": "QUICK.reasonRejected"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "lifecycleStatus",
                    "elementType": "System.String"
                },
                {
                    "name": "achievementStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "elementType": "System.Concept"
                },
                {
                    "name": "description",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "start",
                    "elementType": "System.Date"
                },
                {
                    "name": "target",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "statusDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.String"
                },
                {
                    "name": "expressedBy",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "addresses",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcomeCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcomeReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Goal.Target",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "measure",
                    "elementType": "System.Concept"
                },
                {
                    "name": "detail",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
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
                    "name": "due",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "HumanName",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/HumanName",
            "label": "HumanName",
            "element": [
                {
                    "name": "use",
                    "elementType": "QUICK.NameUse"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "family",
                    "elementType": "System.String"
                },
                {
                    "name": "given",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prefix",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "suffix",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Identifier",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Identifier",
            "label": "Identifier",
            "element": [
                {
                    "name": "use",
                    "elementType": "QUICK.IdentifierUse"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "system",
                    "elementType": "System.String"
                },
                {
                    "name": "value",
                    "elementType": "System.String"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "assigner",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "IdentifierUse",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImagingStudy",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy",
            "label": "ImagingStudy",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.ImagingStudyStatus"
                },
                {
                    "name": "modality",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "started",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referrer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "interpreter",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "endpoint",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "numberOfSeries",
                    "elementType": "System.Integer"
                },
                {
                    "name": "numberOfInstances",
                    "elementType": "System.Integer"
                },
                {
                    "name": "procedureReference",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "procedureCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "series",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImagingStudy.Series",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "elementType": "System.String"
                },
                {
                    "name": "number",
                    "elementType": "System.Integer"
                },
                {
                    "name": "modality",
                    "elementType": "System.Code"
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "numberOfInstances",
                    "elementType": "System.Integer"
                },
                {
                    "name": "endpoint",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Code"
                },
                {
                    "name": "laterality",
                    "elementType": "System.Code"
                },
                {
                    "name": "specimen",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "started",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImagingStudy.Series.Instance",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "elementType": "System.String"
                },
                {
                    "name": "sopClass",
                    "elementType": "System.Code"
                },
                {
                    "name": "number",
                    "elementType": "System.Integer"
                },
                {
                    "name": "title",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImagingStudy.Series.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "elementType": "System.Concept"
                },
                {
                    "name": "actor",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImagingStudyStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Immunization",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization",
            "label": "Immunization",
            "primaryCodePath": "vaccineCode",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "vaccineCode",
                    "elementType": "System.Concept"
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "occurrence",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "recorded",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "primarySource",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "reportOrigin",
                    "elementType": "System.Concept"
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "manufacturer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "lotNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "expirationDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "site",
                    "elementType": "System.Concept"
                },
                {
                    "name": "route",
                    "elementType": "System.Concept"
                },
                {
                    "name": "doseQuantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "isSubpotent",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "subpotentReason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "education",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programEligibility",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fundingSource",
                    "elementType": "System.Concept"
                },
                {
                    "name": "reaction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "protocolApplied",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Immunization.Education",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "documentType",
                    "elementType": "System.String"
                },
                {
                    "name": "reference",
                    "elementType": "System.String"
                },
                {
                    "name": "publicationDate",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "presentationDate",
                    "elementType": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Immunization.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "elementType": "System.Concept"
                },
                {
                    "name": "actor",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Immunization.ProtocolApplied",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "series",
                    "elementType": "System.String"
                },
                {
                    "name": "authority",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "targetDisease",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "doseNumber",
                    "elementTypeSpecifier": {
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "seriesDoses",
                    "elementTypeSpecifier": {
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Immunization.Reaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "detail",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reported",
                    "elementType": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImmunizationRecommendation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrec",
            "label": "ImmunizationRecommendation",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "authority",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "recommendation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImmunizationRecommendation.Recommendation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "vaccineCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "targetDisease",
                    "elementType": "System.Concept"
                },
                {
                    "name": "contraindicatedVaccineCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "forecastStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "forecastReason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dateCriterion",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "series",
                    "elementType": "System.String"
                },
                {
                    "name": "doseNumber",
                    "elementTypeSpecifier": {
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "seriesDoses",
                    "elementTypeSpecifier": {
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            }
                        ]
                    }
                },
                {
                    "name": "supportingImmunization",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingPatientInformation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ImmunizationRecommendation.Recommendation.DateCriterion",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementType": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "LinkType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Location",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location",
            "label": "Location",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "operationalStatus",
                    "elementType": "System.Code"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "alias",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "mode",
                    "elementType": "QUICK.LocationMode"
                },
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "elementType": "QUICK.Address"
                },
                {
                    "name": "physicalType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "position",
                    "elementType": "QUICK.Location.Position"
                },
                {
                    "name": "managingOrganization",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "partOf",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "hoursOfOperation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availabilityExceptions",
                    "elementType": "System.String"
                },
                {
                    "name": "endpoint",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Location.HoursOfOperation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "allDay",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "openingTime",
                    "elementType": "System.Time"
                },
                {
                    "name": "closingTime",
                    "elementType": "System.Time"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Location.Position",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "longitude",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "latitude",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "altitude",
                    "elementType": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "LocationMode",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Medication",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medication",
            "label": "Medication",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.MedicationStatus"
                },
                {
                    "name": "manufacturer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "form",
                    "elementType": "System.Concept"
                },
                {
                    "name": "amount",
                    "elementType": "System.Ratio"
                },
                {
                    "name": "ingredient",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "batch",
                    "elementType": "QUICK.Medication.Batch"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Medication.Batch",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "lotNumber",
                    "elementType": "System.String"
                },
                {
                    "name": "expirationDate",
                    "elementType": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Medication.Ingredient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "isActive",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "strength",
                    "elementType": "System.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationAdministration",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationadministration",
            "label": "MedicationAdministration",
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiates",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.MedicationAdministrationStatus"
                },
                {
                    "name": "statusReason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "medication",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "context",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "supportingInformation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "request",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosage",
                    "elementType": "QUICK.MedicationAdministration.Dosage"
                },
                {
                    "name": "eventHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationAdministration.Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "site",
                    "elementType": "System.Concept"
                },
                {
                    "name": "route",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "dose",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "rate",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationAdministration.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "elementType": "System.Concept"
                },
                {
                    "name": "actor",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationAdministrationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationDispense",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationdispense",
            "label": "MedicationDispense",
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.MedicationDispenseStatus"
                },
                {
                    "name": "statusReason",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "medication",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "context",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "supportingInformation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "authorizingPrescription",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "daysSupply",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "whenPrepared",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "whenHandedOver",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "destination",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "receiver",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosageInstruction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "substitution",
                    "elementType": "QUICK.MedicationDispense.Substitution"
                },
                {
                    "name": "detectedIssue",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "eventHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationDispense.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "elementType": "System.Concept"
                },
                {
                    "name": "actor",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationDispense.Substitution",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "wasSubstituted",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "reason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "responsibleParty",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationDispenseStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest",
            "label": "MedicationRequest",
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "intent",
                    "elementType": "QUICK.MedicationRequestIntent"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "elementType": "QUICK.MedicationRequestPriority"
                },
                {
                    "name": "doNotPerform",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "reported",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "medication",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "supportingInformation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "authoredOn",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "requester",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performerType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "recorder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesUri",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "courseOfTherapyType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "insurance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosageInstruction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dispenseRequest",
                    "elementType": "QUICK.MedicationRequest.DispenseRequest"
                },
                {
                    "name": "substitution",
                    "elementType": "QUICK.MedicationRequest.Substitution"
                },
                {
                    "name": "priorPrescription",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "detectedIssue",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "eventHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequest.DispenseRequest",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "initialFill",
                    "elementType": "QUICK.MedicationRequest.DispenseRequest.InitialFill"
                },
                {
                    "name": "dispenseInterval",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "validityPeriod",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "numberOfRepeatsAllowed",
                    "elementType": "System.Integer"
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "expectedSupplyDuration",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "performer",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequest.DispenseRequest.InitialFill",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "duration",
                    "elementType": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequest.Substitution",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "allowed",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            }
                        ]
                    }
                },
                {
                    "name": "reason",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequestIntent",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationRequestPriority",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationstatement",
            "label": "MedicationStatement",
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "statusReason",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "medication",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "context",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "dateAsserted",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "informationSource",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosage",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MedicationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Meta",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Meta",
            "label": "Meta",
            "element": [
                {
                    "name": "versionId",
                    "elementType": "System.String"
                },
                {
                    "name": "lastUpdated",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "source",
                    "elementType": "System.String"
                },
                {
                    "name": "profile",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "security",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "tag",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MilitaryService",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-military-service",
            "label": "Military Service Extension"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "MimeType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "NameUse",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Narrative",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Narrative",
            "label": "Narrative",
            "element": [
                {
                    "name": "status",
                    "elementType": "QUICK.NarrativeStatus"
                },
                {
                    "name": "div",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "NarrativeStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Observation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation",
            "label": "Observation",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "bodyPosition",
                    "elementType": "QUICK.bodyPosition"
                },
                {
                    "name": "delta",
                    "elementType": "QUICK.delta"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.ObservationStatus"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Observation.Component",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier",
                        "elementTypeSpecifier": {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Observation.ReferenceRange"
                        }
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Observation.ReferenceRange",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "high",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "appliesTo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "age",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ObservationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Organization",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-organization",
            "label": "Organization",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "alias",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "contact",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "endpoint",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Organization.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "purpose",
                    "elementType": "System.Concept"
                },
                {
                    "name": "name",
                    "elementType": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "elementType": "QUICK.Address"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ParameterDefinition",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/ParameterDefinition",
            "label": "ParameterDefinition",
            "element": [
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "use",
                    "elementType": "QUICK.ParameterUse"
                },
                {
                    "name": "min",
                    "elementType": "System.Integer"
                },
                {
                    "name": "max",
                    "elementType": "System.String"
                },
                {
                    "name": "documentation",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.FHIRAllTypes"
                },
                {
                    "name": "profile",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ParameterUse",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Patient",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient",
            "label": "Patient",
            "element": [
                {
                    "name": "race",
                    "elementType": "QUICK.USCoreRaceExtension"
                },
                {
                    "name": "ethnicity",
                    "elementType": "QUICK.USCoreEthnicityExtension"
                },
                {
                    "name": "birthsex",
                    "elementType": "QUICK.USCoreBirthSexExtension"
                },
                {
                    "name": "religion",
                    "elementType": "QUICK.religion"
                },
                {
                    "name": "birthPlace",
                    "elementType": "QUICK.birthPlace"
                },
                {
                    "name": "disability",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "nationality",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "cadavericDonor",
                    "elementType": "QUICK.cadavericDonor"
                },
                {
                    "name": "military-service",
                    "elementType": "QUICK.MilitaryService"
                },
                {
                    "name": "birthTime",
                    "elementType": "QUICK.birthTime"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "name",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "elementType": "System.String"
                },
                {
                    "name": "birthDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "deceased",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "address",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "maritalStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "multipleBirth",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            }
                        ]
                    }
                },
                {
                    "name": "photo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "communication",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "generalPractitioner",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "managingOrganization",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "link",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Patient.Communication",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "elementType": "System.Concept"
                },
                {
                    "name": "preferred",
                    "elementType": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Patient.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "elementType": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "elementType": "QUICK.Address"
                },
                {
                    "name": "gender",
                    "elementType": "QUICK.AdministrativeGender"
                },
                {
                    "name": "organization",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Patient.Link",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "other",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.LinkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Practitioner",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner",
            "label": "Practitioner",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "npislice",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "name",
                    "elementType": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "elementType": "QUICK.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "photo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "qualification",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "communication",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Practitioner.Qualification",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "issuer",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "PractitionerRole",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole",
            "label": "PractitionerRole",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "practitioner",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specialty",
                    "elementType": "System.Concept"
                },
                {
                    "name": "location",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "healthcareService",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availableTime",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "notAvailable",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availabilityExceptions",
                    "elementType": "System.String"
                },
                {
                    "name": "endpoint",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "PractitionerRole.AvailableTime",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "allDay",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "availableStartTime",
                    "elementType": "System.Time"
                },
                {
                    "name": "availableEndTime",
                    "elementType": "System.Time"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "PractitionerRole.NotAvailable",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "during",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Procedure",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedure",
            "label": "Procedure",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "approachBodyStructure",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "incisionDateTime",
                    "elementType": "QUICK.incisionDateTime"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesUri",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "category",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performed",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "recorder",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "asserter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcome",
                    "elementType": "System.Concept"
                },
                {
                    "name": "report",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "complication",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "complicationDetail",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "followUp",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "focalDevice",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "usedReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "usedCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Procedure.FocalDevice",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "elementType": "System.Concept"
                },
                {
                    "name": "manipulated",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Procedure.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "elementType": "System.Concept"
                },
                {
                    "name": "actor",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "PublicationStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuantityComparator",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Questionnaire",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Questionnaire",
            "label": "Questionnaire",
            "primaryCodePath": "name",
            "element": [
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "elementType": "System.String"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "title",
                    "elementType": "System.String"
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "subjectType",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "date",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "publisher",
                    "elementType": "System.String"
                },
                {
                    "name": "contact",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "useContext",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "elementType": "System.String"
                },
                {
                    "name": "copyright",
                    "elementType": "System.String"
                },
                {
                    "name": "approvalDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "lastReviewDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "effectivePeriod",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Questionnaire.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "elementType": "System.String"
                },
                {
                    "name": "definition",
                    "elementType": "System.String"
                },
                {
                    "name": "code",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prefix",
                    "elementType": "System.String"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "QUICK.QuestionnaireItemType"
                },
                {
                    "name": "enableWhen",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "enableBehavior",
                    "elementType": "QUICK.EnableWhenBehavior"
                },
                {
                    "name": "required",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "repeats",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "readOnly",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "maxLength",
                    "elementType": "System.Integer"
                },
                {
                    "name": "answerValueSet",
                    "elementType": "System.String"
                },
                {
                    "name": "answerOption",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "initial",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier",
                        "elementTypeSpecifier": {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Questionnaire.Item"
                        }
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Questionnaire.Item.AnswerOption",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "elementTypeSpecifier": {
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
                                "name": "{urn:hl7-org:elm-types:r1}Date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "initialSelected",
                    "elementType": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Questionnaire.Item.EnableWhen",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "question",
                    "elementType": "System.String"
                },
                {
                    "name": "operator",
                    "elementType": "QUICK.QuestionnaireItemOperator"
                },
                {
                    "name": "answer",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
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
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
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
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Questionnaire.Item.Initial",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "value",
                "elementTypeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}Boolean"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}Decimal"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}Integer"
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
                            "name": "{urn:hl7-org:elm-types:r1}Time"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}String"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}String"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "Attachment"
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
                            "modelName": "QUICK",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireItemOperator",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireItemType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
            "label": "QuestionnaireResponse",
            "element": [
                {
                    "name": "identifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "questionnaire",
                    "elementType": "System.String"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.QuestionnaireResponseStatus"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "authored",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "author",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "source",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireResponse.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "elementType": "System.String"
                },
                {
                    "name": "definition",
                    "elementType": "System.String"
                },
                {
                    "name": "text",
                    "elementType": "System.String"
                },
                {
                    "name": "answer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier",
                        "elementTypeSpecifier": {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "QuestionnaireResponse.Item"
                        }
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireResponse.Item.Answer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
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
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Attachment"
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
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "item",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier",
                        "elementTypeSpecifier": {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "QuestionnaireResponse.Item"
                        }
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "QuestionnaireResponseStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Reference",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Reference",
            "label": "Reference",
            "element": [
                {
                    "name": "reference",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "System.String"
                },
                {
                    "name": "identifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "display",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "RelatedArtifact",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/RelatedArtifact",
            "label": "RelatedArtifact",
            "element": [
                {
                    "name": "type",
                    "elementType": "QUICK.RelatedArtifactType"
                },
                {
                    "name": "label",
                    "elementType": "System.String"
                },
                {
                    "name": "display",
                    "elementType": "System.String"
                },
                {
                    "name": "citation",
                    "elementType": "System.String"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "document",
                    "elementType": "QUICK.Attachment"
                },
                {
                    "name": "resource",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "RelatedArtifactType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "RelatedPerson",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-relatedperson",
            "label": "RelatedPerson",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "patient",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "relationship",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "elementType": "QUICK.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "elementType": "System.Date"
                },
                {
                    "name": "address",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "photo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "communication",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "RelatedPerson.Communication",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "elementType": "System.Concept"
                },
                {
                    "name": "preferred",
                    "elementType": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Resource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Resource",
            "label": "Resource",
            "element": [
                {
                    "name": "id",
                    "elementType": "System.String"
                },
                {
                    "name": "meta",
                    "elementType": "QUICK.Meta"
                },
                {
                    "name": "implicitRules",
                    "elementType": "System.String"
                },
                {
                    "name": "language",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ResourceType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "SampledData",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/SampledData",
            "label": "SampledData",
            "element": [
                {
                    "name": "origin",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "period",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "factor",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "lowerLimit",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "upperLimit",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "dimensions",
                    "elementType": "System.Integer"
                },
                {
                    "name": "data",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ServiceRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest",
            "label": "ServiceRequest",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "statusReason",
                    "elementType": "QUICK.statusReason"
                },
                {
                    "name": "approachBodyStructure",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appropriatenessScore",
                    "elementType": "QUICK.ServiceRequestAppropriatenessScore"
                },
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesUri",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "requisition",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.ServiceRequestStatus"
                },
                {
                    "name": "intent",
                    "elementType": "QUICK.ServiceRequestIntent"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "elementType": "QUICK.ServiceRequestPriority"
                },
                {
                    "name": "doNotPerform",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "orderDetail",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
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
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "occurrence",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "asNeeded",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "requester",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performerType",
                    "elementType": "System.Concept"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "locationCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "locationReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "insurance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInfo",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specimen",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patientInstruction",
                    "elementType": "System.String"
                },
                {
                    "name": "relevantHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ServiceRequestAppropriatenessScore",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore",
            "label": "RAND Appropriateness Score Extension",
            "element": [
                {
                    "name": "id",
                    "elementType": "System.String"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ServiceRequestIntent",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ServiceRequestPriority",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "ServiceRequestStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Signature",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Signature",
            "label": "Signature",
            "element": [
                {
                    "name": "type",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "when",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "who",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "targetFormat",
                    "elementType": "QUICK.MimeType"
                },
                {
                    "name": "sigFormat",
                    "elementType": "QUICK.MimeType"
                },
                {
                    "name": "data",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "SortDirection",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Specimen",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-specimen",
            "label": "Specimen",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "accessionIdentifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "elementType": "QUICK.SpecimenStatus"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "receivedTime",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "parent",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "request",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "collection",
                    "elementType": "QUICK.Specimen.Collection"
                },
                {
                    "name": "processing",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "container",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Specimen.Collection",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "collector",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "collected",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "duration",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "fastingStatus",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Specimen.Container",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "capacity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "specimenQuantity",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "additive",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Specimen.Processing",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "procedure",
                    "elementType": "System.Concept"
                },
                {
                    "name": "additive",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "time",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "SpecimenStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Status",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Substance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-substance",
            "label": "Substance",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.FHIRSubstanceStatus"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "instance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "ingredient",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Substance.Ingredient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "elementType": "System.Ratio"
                },
                {
                    "name": "substance",
                    "elementType": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Substance.Instance",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "expiry",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "quantity",
                    "elementType": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Task",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-task",
            "label": "Task",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instantiatesCanonical",
                    "elementType": "System.String"
                },
                {
                    "name": "instantiatesUri",
                    "elementType": "System.String"
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "elementType": "QUICK.Identifier"
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.TaskStatus"
                },
                {
                    "name": "statusReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "businessStatus",
                    "elementType": "System.Concept"
                },
                {
                    "name": "intent",
                    "elementType": "QUICK.TaskIntent"
                },
                {
                    "name": "priority",
                    "elementType": "QUICK.TaskPriority"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "description",
                    "elementType": "System.String"
                },
                {
                    "name": "focus",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "for",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "executionPeriod",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "authoredOn",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "lastModified",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "requester",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "performerType",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "owner",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "location",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "reasonCode",
                    "elementType": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "insurance",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relevantHistory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "restriction",
                    "elementType": "QUICK.Task.Restriction"
                },
                {
                    "name": "input",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "output",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Task.Input",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactDetail"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Contributor"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "DataRequirement"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Expression"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ParameterDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "RelatedArtifact"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "TriggerDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "UsageContext"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Dosage"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Task.Output",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "elementType": "System.Concept"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
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
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Decimal"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ContactDetail"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Contributor"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "DataRequirement"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Expression"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "ParameterDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "RelatedArtifact"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "TriggerDefinition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "UsageContext"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Dosage"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Task.Restriction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "repetitions",
                    "elementType": "System.Integer"
                },
                {
                    "name": "period",
                    "elementTypeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "recipient",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "TaskIntent",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "TaskPriority",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "TaskStatus",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Timing",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/Timing",
            "label": "Timing",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "event",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "repeat",
                    "elementType": "QUICK.Element"
                },
                {
                    "name": "bounds",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "count",
                    "elementType": "System.Integer"
                },
                {
                    "name": "countMax",
                    "elementType": "System.Integer"
                },
                {
                    "name": "duration",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "durationMax",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "durationUnit",
                    "elementType": "QUICK.UnitsOfTime"
                },
                {
                    "name": "frequency",
                    "elementType": "System.Integer"
                },
                {
                    "name": "frequencyMax",
                    "elementType": "System.Integer"
                },
                {
                    "name": "period",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "periodMax",
                    "elementType": "System.Decimal"
                },
                {
                    "name": "periodUnit",
                    "elementType": "QUICK.UnitsOfTime"
                },
                {
                    "name": "dayOfWeek",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "timeOfDay",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "when",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "offset",
                    "elementType": "System.Integer"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "TriggerDefinition",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/TriggerDefinition",
            "label": "TriggerDefinition",
            "element": [
                {
                    "name": "type",
                    "elementType": "QUICK.TriggerType"
                },
                {
                    "name": "name",
                    "elementType": "System.String"
                },
                {
                    "name": "timing",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
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
                            }
                        ]
                    }
                },
                {
                    "name": "data",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "elementType": "QUICK.Expression"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "TriggerType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "UDIEntryType",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCoreBirthSexExtension",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
            "label": "US Core Birth Sex Extension"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCoreEthnicityExtension",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
            "label": "US Core Ethnicity Extension",
            "element": [
                {
                    "name": "ombCategory",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "detailed",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "text",
                    "elementType": "QUICK.Extension"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCoreLaboratoryResultObservationProfile",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab",
            "label": "US Core Laboratory Result Observation Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "laboratory",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}String"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Integer"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCorePediatricBMIforAgeObservationProfile",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age",
            "label": "US Core Pediatric BMI for Age Observation Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCorePediatricWeightForHeightObservationProfile",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height",
            "label": "US Core Pediatric Weight for Height Observation Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCoreRaceExtension",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
            "label": "US Core Race Extension",
            "element": [
                {
                    "name": "ombCategory",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detailed",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "text",
                    "elementType": "QUICK.Extension"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "USCoreSmokingStatusProfile",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus",
            "label": "US Core Smoking Status Observation Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "System.String"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valueCodeableConcept",
                    "elementType": "System.Concept"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "UnitsOfTime",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "UsageContext",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/UsageContext",
            "label": "UsageContext",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "elementType": "System.Code"
                },
                {
                    "name": "value",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "Use",
            "baseType": "System.String",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "_Not_Done_Extension",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement-notDone",
            "label": "QICore Not Done Extension",
            "element": [
                {
                    "name": "url",
                    "elementType": "System.String"
                },
                {
                    "name": "value",
                    "elementType": "System.Boolean"
                },
                {
                    "name": "valueBoolean",
                    "elementType": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "abatement",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement",
            "label": "abatement"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "approachBodyStructure",
            "baseType": "QUICK.Reference",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure",
            "label": "approachBodyStructure"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "birthPlace",
            "baseType": "QUICK.Address",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
            "label": "Birth Place"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "birthTime",
            "baseType": "System.DateTime",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
            "label": "Birth Time"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "bodyPosition",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition",
            "label": "bodyPosition"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "cadavericDonor",
            "baseType": "System.Boolean",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor",
            "label": "cadavericDonor"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "delta",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/observation-delta",
            "label": "delta"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "disability",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-disability",
            "label": "disability"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "dueTo",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
            "label": "dueTo"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "duration",
            "baseType": "System.Quantity",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration",
            "label": "duration"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "incisionDateTime",
            "baseType": "System.DateTime",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime",
            "label": "incisionDateTime"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "locationPerformed",
            "baseType": "QUICK.Reference",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed",
            "label": "locationPerformed"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "nationality",
            "baseType": "QUICK.Extension",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-nationality",
            "label": "nationality",
            "element": [
                {
                    "name": "code",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "period",
                    "elementType": "QUICK.Extension"
                },
                {
                    "name": "url",
                    "elementType": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-bmi",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/bmi",
            "label": "Observation Body Mass Index Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-bodyheight",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/bodyheight",
            "label": "Observation Body Height Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-bodytemp",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/bodytemp",
            "label": "Observation Body Temperature Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-bodyweight",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/bodyweight",
            "label": "Observation Body Weight Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-bp",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/bp",
            "label": "Observation Blood Pressure Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-headcircum",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/headcircum",
            "label": "Observation Head Circumference Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-heartrate",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/heartrate",
            "label": "Observation Heart Rate Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-oxygensat",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/oxygensat",
            "label": "Observation Oxygen Saturation Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-resprate",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/resprate",
            "label": "Observation Respiratory Rate Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "elementType": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "observation-vitalspanel",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "http://hl7.org/fhir/StructureDefinition/vitalspanel",
            "label": "Observation Vital Signs Panel Profile",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "elementType": "QUICK.Status"
                },
                {
                    "name": "category",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "VSCat",
                    "elementType": "System.Concept"
                },
                {
                    "name": "code",
                    "elementType": "System.Concept"
                },
                {
                    "name": "subject",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "focus",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "effective",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "System",
                                "name": "{urn:hl7-org:elm-types:r1}DateTime"
                            },
                            {
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "elementType": "System.DateTime"
                },
                {
                    "name": "performer",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "elementType": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "elementType": "System.Concept"
                },
                {
                    "name": "method",
                    "elementType": "System.Concept"
                },
                {
                    "name": "specimen",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "elementType": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hasMember",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "derivedFrom",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "elementTypeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "occurredFollowing",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing",
            "label": "occurredFollowing"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "preferred",
            "baseType": "System.Boolean",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
            "label": "preferred"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "reasonCancelled",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/encounter-reasonCancelled",
            "label": "reasonCancelled"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "reasonRefuted",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted",
            "label": "reasonRefuted"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "reasonRejected",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/goal-reasonRejected",
            "label": "reason rejected"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "religion",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/patient-religion",
            "label": "religion"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "resolutionAge",
            "baseType": "System.Quantity",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge",
            "label": "resolutionAge"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "sequenceNumber",
            "baseType": "System.Integer",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber",
            "label": "sequenceNumber"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "severity",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity",
            "label": "severity"
        },
        {
            "type": "ClassInfo",
            "namespace": "QUICK",
            "name": "statusReason",
            "baseType": "System.Concept",
            "retrievable": false,
            "identifier": "http://hl7.org/fhir/StructureDefinition/request-statusReason",
            "label": "Reason for current status"
        }
    ]
});