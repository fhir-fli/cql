import '../../../cql.dart';

final fhirmodelinfo300 = ModelInfo.fromJson({
    "name": "FHIR",
    "url": "http://hl7.org/fhir",
    "targetQualifier": "fhir",
    "patientClassName": "FHIR.Patient",
    "patientBirthDatePropertyName": "birthDate.value",
    "version": "3.0.0",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "Count",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "uuid",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NamingSystem.UniqueId",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.NamingSystemIdentifierType"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "preferred",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "date",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Date"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScriptRequestMethodCode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DetectedIssue.Mitigation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "example",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "acronym",
                    "type": "FHIR.string"
                },
                {
                    "name": "source",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "exampleFor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationAdministration.Dosage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "site",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "route",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dose",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "rate",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClinicalImpression.Finding",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "basis",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.ExcludedSystem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Document",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.DocumentMode"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "origin",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "destination",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "metadata",
                    "type": "FHIR.TestScript.Metadata"
                },
                {
                    "name": "fixture",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "profile",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "variable",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "ruleset",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "setup",
                    "type": "FHIR.TestScript.Setup"
                },
                {
                    "name": "test",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "teardown",
                    "type": "FHIR.TestScript.Teardown"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Attachment",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "FHIR.code"
                },
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "data",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "size",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "hash",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "creation",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ProvenanceEntityRole",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "UnitsOfTime",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.Designation1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.Designation2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AddressType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Bundle.Link",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relation",
                    "type": "FHIR.string"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RequestGroup.Condition",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "kind",
                    "type": "FHIR.ActionConditionKind"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "payeeType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "addItem",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "error",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "totalCost",
                    "type": "FHIR.Money"
                },
                {
                    "name": "unallocDeductable",
                    "type": "FHIR.Money"
                },
                {
                    "name": "totalBenefit",
                    "type": "FHIR.Money"
                },
                {
                    "name": "payment",
                    "type": "FHIR.ClaimResponse.Payment"
                },
                {
                    "name": "reserved",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "processNote",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "communicationRequest",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "insurance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.SubDetail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Param",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "keyword",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fhirVersion",
                    "type": "FHIR.id"
                },
                {
                    "name": "mapping",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "kind",
                    "type": "FHIR.StructureDefinitionKind"
                },
                {
                    "name": "abstract",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "contextType",
                    "type": "FHIR.ExtensionContext"
                },
                {
                    "name": "context",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contextInvariant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "baseDefinition",
                    "type": "FHIR.uri"
                },
                {
                    "name": "derivation",
                    "type": "FHIR.TypeDerivationRule"
                },
                {
                    "name": "snapshot",
                    "type": "FHIR.StructureDefinition.Snapshot"
                },
                {
                    "name": "differential",
                    "type": "FHIR.StructureDefinition.Differential"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Filter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "property",
                    "type": "FHIR.code"
                },
                {
                    "name": "op",
                    "type": "FHIR.FilterOperator"
                },
                {
                    "name": "value",
                    "type": "FHIR.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "HealthcareService.NotAvailable",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "during",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Immunization.VaccinationProtocol",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseSequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "authority",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "series",
                    "type": "FHIR.string"
                },
                {
                    "name": "seriesDoses",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "targetDisease",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "doseStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "doseStatusReason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Medication.Package",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "container",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "content",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "batch",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PractitionerRole.AvailableTime",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "allDay",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "availableStartTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "availableEndTime",
                    "type": "FHIR.time"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SpecimenStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DeviceUseStatement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.DeviceUseStatementStatus"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "whenUsed",
                    "type": "FHIR.Period"
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "recordedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "indication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RestfulCapabilityMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Dosage",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.integer"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "additionalInstruction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patientInstruction",
                    "type": "FHIR.string"
                },
                {
                    "name": "timing",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "asNeeded",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "site",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "route",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dose",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "maxDosePerAdministration",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "maxDosePerLifetime",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "rate",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Measure.Stratifier",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "criteria",
                    "type": "FHIR.string"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Procedure",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.EventStatus"
                },
                {
                    "name": "notDone",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "notDoneReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performed",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "report",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "complication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "complicationDetail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "followUp",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "focalDevice",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "usedReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "usedCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DetectedIssueSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requestProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "inforce",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "insurance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "error",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.SubDetail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SearchParameter",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "base",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.SearchParamType"
                },
                {
                    "name": "derivedFrom",
                    "type": "FHIR.uri"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                },
                {
                    "name": "xpath",
                    "type": "FHIR.string"
                },
                {
                    "name": "xpathUsage",
                    "type": "FHIR.XPathUsageType"
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "comparator",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "chain",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DataRequirement.CodeFilter",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueSet",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "valueCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valueCoding",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valueCodeableConcept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "IssueSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CareTeamStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DataElementStringency",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Appointment",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "serviceType",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.AppointmentStatus"
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointmentType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "indication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "supportingInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "start",
                    "type": "FHIR.instant"
                },
                {
                    "name": "end",
                    "type": "FHIR.instant"
                },
                {
                    "name": "minutesDuration",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "slot",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "incomingReferral",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "requestedPeriod",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.SubDetail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Assert",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "direction",
                    "type": "FHIR.AssertionDirectionType"
                },
                {
                    "name": "compareToSourceId",
                    "type": "FHIR.string"
                },
                {
                    "name": "compareToSourceExpression",
                    "type": "FHIR.string"
                },
                {
                    "name": "compareToSourcePath",
                    "type": "FHIR.string"
                },
                {
                    "name": "contentType",
                    "type": "FHIR.ContentType"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                },
                {
                    "name": "headerField",
                    "type": "FHIR.string"
                },
                {
                    "name": "minimumId",
                    "type": "FHIR.string"
                },
                {
                    "name": "navigationLinks",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "operator",
                    "type": "FHIR.AssertionOperatorType"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestMethod",
                    "type": "FHIR.TestScriptRequestMethodCode"
                },
                {
                    "name": "requestURL",
                    "type": "FHIR.string"
                },
                {
                    "name": "resource",
                    "type": "FHIR.FHIRDefinedType"
                },
                {
                    "name": "response",
                    "type": "FHIR.AssertionResponseTypes"
                },
                {
                    "name": "responseCode",
                    "type": "FHIR.string"
                },
                {
                    "name": "rule",
                    "type": "FHIR.TestScript.Rule2"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.TestScript.Ruleset1"
                },
                {
                    "name": "sourceId",
                    "type": "FHIR.id"
                },
                {
                    "name": "validateProfileId",
                    "type": "FHIR.id"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "warningOnly",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Ruleset1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "rulesetId",
                    "type": "FHIR.id"
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fixedVersion",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "excludedSystem",
                    "type": "FHIR.ExpansionProfile.ExcludedSystem"
                },
                {
                    "name": "includeDesignations",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "designation",
                    "type": "FHIR.ExpansionProfile.Designation"
                },
                {
                    "name": "includeDefinition",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "activeOnly",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "excludeNested",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "excludeNotForUI",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "excludePostCoordinated",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "displayLanguage",
                    "type": "FHIR.code"
                },
                {
                    "name": "limitedExpansion",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Procedure",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "procedure",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.ValuedItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "effectiveTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "points",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "VisionEyes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Binding",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "strength",
                    "type": "FHIR.BindingStrength"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueSet",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.Designation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "include",
                    "type": "FHIR.ExpansionProfile.Include"
                },
                {
                    "name": "exclude",
                    "type": "FHIR.ExpansionProfile.Exclude"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EncounterStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "StructureDefinitionKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PublicationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.MeasureReportStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.MeasureReportType"
                },
                {
                    "name": "measure",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "reportingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "group",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "evaluatedResources",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConsentDataMeaning",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "representation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "sliceName",
                    "type": "FHIR.string"
                },
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "slicing",
                    "type": "FHIR.ElementDefinition.Slicing"
                },
                {
                    "name": "short",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "comment",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "alias",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "min",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                },
                {
                    "name": "base",
                    "type": "FHIR.ElementDefinition.Base"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.uri"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "defaultValue",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                },
                {
                    "name": "meaningWhenMissing",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "orderMeaning",
                    "type": "FHIR.string"
                },
                {
                    "name": "fixed",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                },
                {
                    "name": "pattern",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                },
                {
                    "name": "example",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "minValue",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "maxValue",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            }
                        ]
                    }
                },
                {
                    "name": "maxLength",
                    "type": "FHIR.integer"
                },
                {
                    "name": "condition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "constraint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "mustSupport",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "isModifier",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "isSummary",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "binding",
                    "type": "FHIR.ElementDefinition.Binding"
                },
                {
                    "name": "mapping",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Task.Input",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Composition.Attester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "time",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "party",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Device",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "udi",
                    "type": "FHIR.Device.Udi"
                },
                {
                    "name": "status",
                    "type": "FHIR.FHIRDeviceStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "lotNumber",
                    "type": "FHIR.string"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.string"
                },
                {
                    "name": "manufactureDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "expirationDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "model",
                    "type": "FHIR.string"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "safety",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapSourceListMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "RequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ProcedureRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "requisition",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.RequestStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.RequestIntent"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "doNotPerform",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "asNeeded",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.ProcedureRequest.Requester"
                },
                {
                    "name": "performerType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInfo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specimen",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relevantHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Capability",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "required",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "validated",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "origin",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "destination",
                    "type": "FHIR.integer"
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "capabilities",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationOutcome.Issue",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "severity",
                    "type": "FHIR.IssueSeverity"
                },
                {
                    "name": "code",
                    "type": "FHIR.IssueType"
                },
                {
                    "name": "details",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "diagnostics",
                    "type": "FHIR.string"
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "expression",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QuestionnaireResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "GuidanceResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "requestId",
                    "type": "FHIR.id"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "module",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.GuidanceResponseStatus"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrenceDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "evaluationMessage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outputParameters",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "result",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dataRequirement",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SearchComparator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Endpoint",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "protocol",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "address",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Implementation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetric",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "unit",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "parent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "operationalStatus",
                    "type": "FHIR.DeviceMetricOperationalStatus"
                },
                {
                    "name": "color",
                    "type": "FHIR.DeviceMetricColor"
                },
                {
                    "name": "category",
                    "type": "FHIR.DeviceMetricCategory"
                },
                {
                    "name": "measurementPeriod",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "calibration",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ChargeItemStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Flag",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FlagStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EnrollmentRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CareTeam",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.CareTeamStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "managingOrganization",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DataElement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "stringency",
                    "type": "FHIR.DataElementStringency"
                },
                {
                    "name": "mapping",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "element",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Substance.Ingredient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "substance",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Action",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "operation",
                    "type": "FHIR.TestScript.Operation"
                },
                {
                    "name": "assert",
                    "type": "FHIR.TestScript.Assert"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionParticipantType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "GraphDefinition.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.uri"
                },
                {
                    "name": "compartment",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingManifest.Study",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "imagingStudy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "series",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Account.Coverage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.positiveInt"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Procedure",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "procedure",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "value",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "id"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "string"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "boolean"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "integer"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "decimal"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Constraint",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "key",
                    "type": "FHIR.id"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "severity",
                    "type": "FHIR.ConstraintSeverity"
                },
                {
                    "name": "human",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                },
                {
                    "name": "xpath",
                    "type": "FHIR.string"
                },
                {
                    "name": "source",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Discriminator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.DiscriminatorType"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceClinicalStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Destination",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "index",
                    "type": "FHIR.integer"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Measure.Population",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "criteria",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subDetail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ProcessRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "action",
                    "type": "FHIR.ActionList"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "response",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "nullify",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reference",
                    "type": "FHIR.string"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "include",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "exclude",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CarePlanActivityStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionList",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Test",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.Nutrient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "modifier",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "claim",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Age",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Test",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CareTeam.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "member",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingStudy.Series",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "number",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "modality",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "numberOfInstances",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "availability",
                    "type": "FHIR.InstanceAvailability"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "laterality",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "started",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ParticipationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Composition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.CompositionStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "class",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "confidentiality",
                    "type": "FHIR.ConfidentialityClassification"
                },
                {
                    "name": "attester",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "custodian",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relatesTo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "event",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "section",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.ProcessNote",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureDefinition.Snapshot",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImmunizationRecommendation.DateCriterion",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "value",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Endpoint",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.EndpointStatus"
                },
                {
                    "name": "connectionType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "payloadType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "payloadMimeType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "type": "FHIR.uri"
                },
                {
                    "name": "header",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "kind",
                    "type": "FHIR.CapabilityStatementKind"
                },
                {
                    "name": "instantiates",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "software",
                    "type": "FHIR.CapabilityStatement.Software"
                },
                {
                    "name": "implementation",
                    "type": "FHIR.CapabilityStatement.Implementation"
                },
                {
                    "name": "fhirVersion",
                    "type": "FHIR.id"
                },
                {
                    "name": "acceptUnknown",
                    "type": "FHIR.UnknownContentCode"
                },
                {
                    "name": "format",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patchFormat",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "implementationGuide",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "profile",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "rest",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "messaging",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "document",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReportResult",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Agent1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport.Stratifier",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "stratum",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMapGroupUnmappedMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "instant",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Communication.Payload",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "string"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "QuestionnaireResponse.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.uri"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "answer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActivityDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "topic",
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contributor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "library",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "kind",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "product",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "dosage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "transform",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dynamicValue",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AssertionOperatorType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "VisionPrescription.Dispense",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "product",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "eye",
                    "type": "FHIR.VisionEyes"
                },
                {
                    "name": "sphere",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "cylinder",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "axis",
                    "type": "FHIR.integer"
                },
                {
                    "name": "prism",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "base",
                    "type": "FHIR.VisionBase"
                },
                {
                    "name": "add",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "power",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "backCurve",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "diameter",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "duration",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "color",
                    "type": "FHIR.string"
                },
                {
                    "name": "brand",
                    "type": "FHIR.string"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DaysOfWeek",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "IssueType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ContentType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Rest",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.RestfulCapabilityMode"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "security",
                    "type": "FHIR.CapabilityStatement.Security"
                },
                {
                    "name": "resource",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "interaction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "searchParam",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "operation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "compartment",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MessageDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "base",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "parent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "event",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.MessageSignificanceCategory"
                },
                {
                    "name": "focus",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "responseRequired",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "allowedResponse",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingStudy.Instance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "number",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "sopClass",
                    "type": "FHIR.oid"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapContextType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "claim",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Accident",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FamilyHistoryStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subDetail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Rule3",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Rule2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "positiveInt",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "immutable",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "extensible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "compose",
                    "type": "FHIR.ValueSet.Compose"
                },
                {
                    "name": "expansion",
                    "type": "FHIR.ValueSet.Expansion"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GraphDefinition.Compartment",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CompartmentType"
                },
                {
                    "name": "rule",
                    "type": "FHIR.GraphCompartmentRule"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Input",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "type",
                    "type": "FHIR.string"
                },
                {
                    "name": "mode",
                    "type": "FHIR.StructureMapInputMode"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Origin",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "index",
                    "type": "FHIR.integer"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Rule1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Linkage",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Signature",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "when",
                    "type": "FHIR.instant"
                },
                {
                    "name": "who",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "onBehalfOf",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "contentType",
                    "type": "FHIR.code"
                },
                {
                    "name": "blob",
                    "type": "FHIR.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClinicalImpressionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AssertionResponseTypes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReference.Context",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "event",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "facilityType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "practiceSetting",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "sourcePatientInfo",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "related",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Measure",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "topic",
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contributor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "library",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "disclaimer",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "scoring",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "compositeScoring",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "riskAdjustment",
                    "type": "FHIR.string"
                },
                {
                    "name": "rateAggregation",
                    "type": "FHIR.string"
                },
                {
                    "name": "rationale",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "clinicalRecommendationStatement",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "improvementNotation",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "guidance",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "set",
                    "type": "FHIR.string"
                },
                {
                    "name": "group",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supplementalData",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationOutcome",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": {
                "name": "issue",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "Practitioner.Qualification",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "issuer",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Signer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "party",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "signature",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ProcessResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "processNote",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "error",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "communicationRequest",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Immunization.Explanation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonNotGiven",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Narrative",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "status",
                "type": "FHIR.NarrativeStatus"
            }
        },
        {
            "type": "ClassInfo",
            "name": "RequestIntent",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MessageDefinition.Focus",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "min",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NarrativeStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CommunicationRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Friendly",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport.Population",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "count",
                    "type": "FHIR.integer"
                },
                {
                    "name": "patients",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MessageDefinition.AllowedResponse",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "message",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "situation",
                    "type": "FHIR.markdown"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Adjudication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Money"
                },
                {
                    "name": "value",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasmntPrinciple",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ConsentExceptType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Specimen.Container",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "capacity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "specimenQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "additive",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "string",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Security",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "cors",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "service",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "certificate",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionRequiredBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EndpointStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "GuidePageKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Data1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "meaning",
                    "type": "FHIR.ConsentDataMeaning"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Example",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GuideDependencyType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PaymentReconciliation.ProcessNote",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Element",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ExplanationOfBenefitStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "billablePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "referral",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facility",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "claim",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "related",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalPrescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payee",
                    "type": "FHIR.ExplanationOfBenefit.Payee"
                },
                {
                    "name": "information",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "careTeam",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedure",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "precedence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "insurance",
                    "type": "FHIR.ExplanationOfBenefit.Insurance"
                },
                {
                    "name": "accident",
                    "type": "FHIR.ExplanationOfBenefit.Accident"
                },
                {
                    "name": "employmentImpacted",
                    "type": "FHIR.Period"
                },
                {
                    "name": "hospitalization",
                    "type": "FHIR.Period"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "addItem",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "totalCost",
                    "type": "FHIR.Money"
                },
                {
                    "name": "unallocDeductable",
                    "type": "FHIR.Money"
                },
                {
                    "name": "totalBenefit",
                    "type": "FHIR.Money"
                },
                {
                    "name": "payment",
                    "type": "FHIR.ExplanationOfBenefit.Payment"
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "processNote",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "benefitBalance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResourceVersionPolicy",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImagingManifest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authoringTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "study",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "dateTime",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Messaging",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reliableCache",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "supportedMessage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "event",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationDispense.Performer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationAdministrationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "caseSensitive",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueSet",
                    "type": "FHIR.uri"
                },
                {
                    "name": "hierarchyMeaning",
                    "type": "FHIR.CodeSystemHierarchyMeaning"
                },
                {
                    "name": "compositional",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "versionNeeded",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "content",
                    "type": "FHIR.CodeSystemContentMode"
                },
                {
                    "name": "count",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "filter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "property",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "concept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Account.Guarantor",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "party",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onHold",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.Location",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.EncounterLocationStatus"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Policy",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "authority",
                    "type": "FHIR.uri"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionCardinalityBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "careTeamLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosisLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedureLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "informationLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviced",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subSite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "List.Entry",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "flag",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "deleted",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "item",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Patient.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "type": "FHIR.Address"
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Financial",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "allowed",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            }
                        ]
                    }
                },
                {
                    "name": "used",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequestIntent",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.SupportedMessage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.EventCapabilityMode"
                },
                {
                    "name": "definition",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CarePlan",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.CarePlanStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.CarePlanIntent"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "author",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "careTeam",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "addresses",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInfo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "goal",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "activity",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Subscription",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.SubscriptionStatus"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "end",
                    "type": "FHIR.instant"
                },
                {
                    "name": "reason",
                    "type": "FHIR.string"
                },
                {
                    "name": "criteria",
                    "type": "FHIR.string"
                },
                {
                    "name": "error",
                    "type": "FHIR.string"
                },
                {
                    "name": "channel",
                    "type": "FHIR.Subscription.Channel"
                },
                {
                    "name": "tag",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Person",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "address",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "photo",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Duration",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "Questionnaire",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subjectType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Bundle.Entry",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fullUrl",
                    "type": "FHIR.uri"
                },
                {
                    "name": "resource",
                    "type": "FHIR.ResourceContainer"
                },
                {
                    "name": "search",
                    "type": "FHIR.Bundle.Search"
                },
                {
                    "name": "request",
                    "type": "FHIR.Bundle.Request"
                },
                {
                    "name": "response",
                    "type": "FHIR.Bundle.Response"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Patient",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "deceased",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "address",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "maritalStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "multipleBirth",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            }
                        ]
                    }
                },
                {
                    "name": "photo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "animal",
                    "type": "FHIR.Patient.Animal"
                },
                {
                    "name": "communication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "generalPractitioner",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NamingSystemIdentifierType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImmunizationStatusCodes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "List",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ListStatus"
                },
                {
                    "name": "mode",
                    "type": "FHIR.ListMode"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "orderedBy",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "entry",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "emptyReason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationDefinition.Overload",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "parameterName",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport.Stratum",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "population",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "measureScore",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RelatedPerson",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "address",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "photo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AccountStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EpisodeOfCare.Diagnosis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "condition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "rank",
                    "type": "FHIR.positiveInt"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Link",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationDispenseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FamilyMemberHistory.Condition",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "onset",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingManifest.Series",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RequestGroup",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.RequestStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.RequestIntent"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NamingSystem",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "kind",
                    "type": "FHIR.NamingSystemType"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "responsible",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "uniqueId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replacedBy",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GraphDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "start",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.uri"
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConfidentialityClassification",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntolerance.Reaction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "manifestation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "onset",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "severity",
                    "type": "FHIR.AllergyIntoleranceSeverity"
                },
                {
                    "name": "exposureRoute",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.Texture",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "modifier",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "foodType",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "IdentifierUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Sequence.Repository",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.repositoryType"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "datasetId",
                    "type": "FHIR.string"
                },
                {
                    "name": "variantsetId",
                    "type": "FHIR.string"
                },
                {
                    "name": "readsetId",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DigitalMediaType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MedicationAdministration.Performer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapTargetListMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DeviceRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priorRequest",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.RequestStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.DeviceRequest.Requester"
                },
                {
                    "name": "performerType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInfo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relevantHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Provenance.Entity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.ProvenanceEntityRole"
                },
                {
                    "name": "what",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            }
                        ]
                    }
                },
                {
                    "name": "agent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Detail1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReference",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.DocumentReferenceStatus"
                },
                {
                    "name": "docStatus",
                    "type": "FHIR.CompositionStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "class",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "indexed",
                    "type": "FHIR.instant"
                },
                {
                    "name": "author",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "authenticator",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "custodian",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relatesTo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "content",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "context",
                    "type": "FHIR.DocumentReference.Context"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Address",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "FHIR.AddressUse"
                },
                {
                    "name": "type",
                    "type": "FHIR.AddressType"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "line",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "city",
                    "type": "FHIR.string"
                },
                {
                    "name": "district",
                    "type": "FHIR.string"
                },
                {
                    "name": "state",
                    "type": "FHIR.string"
                },
                {
                    "name": "postalCode",
                    "type": "FHIR.string"
                },
                {
                    "name": "country",
                    "type": "FHIR.string"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Composition.RelatesTo",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.DocumentRelationshipType"
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.Goal",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "start",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "addresses",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "documentation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReportParticipantType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CodeableConcept",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "coding",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Agent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Coverage.Grouping",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "group",
                    "type": "FHIR.string"
                },
                {
                    "name": "groupDisplay",
                    "type": "FHIR.string"
                },
                {
                    "name": "subGroup",
                    "type": "FHIR.string"
                },
                {
                    "name": "subGroupDisplay",
                    "type": "FHIR.string"
                },
                {
                    "name": "plan",
                    "type": "FHIR.string"
                },
                {
                    "name": "planDisplay",
                    "type": "FHIR.string"
                },
                {
                    "name": "subPlan",
                    "type": "FHIR.string"
                },
                {
                    "name": "subPlanDisplay",
                    "type": "FHIR.string"
                },
                {
                    "name": "class",
                    "type": "FHIR.string"
                },
                {
                    "name": "classDisplay",
                    "type": "FHIR.string"
                },
                {
                    "name": "subClass",
                    "type": "FHIR.string"
                },
                {
                    "name": "subClassDisplay",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "BindingStrength",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "RequestPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Money",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "BodySite",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "qualifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "image",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ChargeItem.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport.Population1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "count",
                    "type": "FHIR.integer"
                },
                {
                    "name": "patients",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AdverseEvent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "category",
                    "type": "FHIR.AdverseEventCategory"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "reaction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "seriousness",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "recorder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "eventParticipant",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "suspectEntity",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subjectMedicalHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referenceDocument",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "study",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.Condition",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "kind",
                    "type": "FHIR.ActionConditionKind"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Appointment.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "required",
                    "type": "FHIR.ParticipantRequired"
                },
                {
                    "name": "status",
                    "type": "FHIR.ParticipationStatus"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Expansion",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.uri"
                },
                {
                    "name": "timestamp",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "total",
                    "type": "FHIR.integer"
                },
                {
                    "name": "offset",
                    "type": "FHIR.integer"
                },
                {
                    "name": "parameter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contains",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "source",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "group",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Practitioner",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "photo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "qualification",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "communication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AdverseEvent.SuspectEntity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "instance",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "causality",
                    "type": "FHIR.AdverseEventCausality"
                },
                {
                    "name": "causalityAssessment",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "causalityProductRelatedness",
                    "type": "FHIR.string"
                },
                {
                    "name": "causalityMethod",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "causalityAuthor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "causalityResult",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ParticipantRequired",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DiscriminatorType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.ClassHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "class",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Setup",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "action",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "Reference",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "reference",
                    "type": "FHIR.string"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "XPathUsageType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "VisionPrescription",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dateWritten",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "prescriber",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "dispense",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SearchParameter.Component",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "definition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapInputMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "InstanceAvailability",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "id",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "individual",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MessageHeader",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "event",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "destination",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "receiver",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "sender",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "timestamp",
                    "type": "FHIR.instant"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "source",
                    "type": "FHIR.MessageHeader.Source"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "response",
                    "type": "FHIR.MessageHeader.Response"
                },
                {
                    "name": "focus",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "LinkageType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ReferenceHandlingPolicy",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Payment",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "adjustment",
                    "type": "FHIR.Money"
                },
                {
                    "name": "adjustmentReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Money"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Observation.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ObservationRelationshipType"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Device.Udi",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "deviceIdentifier",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "jurisdiction",
                    "type": "FHIR.uri"
                },
                {
                    "name": "carrierHRF",
                    "type": "FHIR.string"
                },
                {
                    "name": "carrierAIDC",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "issuer",
                    "type": "FHIR.uri"
                },
                {
                    "name": "entryType",
                    "type": "FHIR.UDIEntryType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.Administration",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "schedule",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "rate",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Contains",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "abstract",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "inactive",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "designation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contains",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityResponse.Financial",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "allowed",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            }
                        ]
                    }
                },
                {
                    "name": "used",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FilterOperator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NamingSystemType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PaymentNotice",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "response",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "statusDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "paymentStatus",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.AddItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Range",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "high",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Immunization.Practitioner",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResearchStudyStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExtensionContext",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIRDefinedType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide.Page",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "source",
                    "type": "FHIR.uri"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "kind",
                    "type": "FHIR.GuidePageKind"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "package",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "format",
                    "type": "FHIR.code"
                },
                {
                    "name": "page",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEventOutcome",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReport.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "population",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "measureScore",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "stratifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Compose",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "lockedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "inactive",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "include",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "exclude",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SupplyDelivery.SuppliedItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "ProcedureRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ConstraintSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DomainResource",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.Narrative"
                },
                {
                    "name": "contained",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "extension",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "modifierExtension",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntolerance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "clinicalStatus",
                    "type": "FHIR.AllergyIntoleranceClinicalStatus"
                },
                {
                    "name": "verificationStatus",
                    "type": "FHIR.AllergyIntoleranceVerificationStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.AllergyIntoleranceType"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "criticality",
                    "type": "FHIR.AllergyIntoleranceCriticality"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onset",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "assertedDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "recorder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "asserter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "lastOccurrence",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reaction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Encounter",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.EncounterStatus"
                },
                {
                    "name": "statusHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "class",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "classHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "episodeOfCare",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "incomingReferral",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointment",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "length",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "account",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "hospitalization",
                    "type": "FHIR.Encounter.Hospitalization"
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviceProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "partOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Procedure.FocalDevice",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "manipulated",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReference.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "ref",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Dependent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "variable",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EventCapabilityMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Contract.ValuedItem1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "effectiveTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "points",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Diagnosis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "packageCode",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Interaction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.TypeRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "extends",
                    "type": "FHIR.id"
                },
                {
                    "name": "typeMode",
                    "type": "FHIR.StructureMapGroupTypeMode"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "input",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ContractResourceStatusCodes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DiagnosticReport.Performer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Timing",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "repeat",
                    "type": "FHIR.Timing.Repeat"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QuestionnaireResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "parent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "questionnaire",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.QuestionnaireResponseStatus"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authored",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent.Agent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "userId",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "altId",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestor",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "policy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "media",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "network",
                    "type": "FHIR.AuditEvent.Network"
                },
                {
                    "name": "purposeOfUse",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem.Property1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingStudy",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "accession",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availability",
                    "type": "FHIR.InstanceAvailability"
                },
                {
                    "name": "modalityList",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "started",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referrer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "interpreter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "numberOfSeries",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "numberOfInstances",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "procedureReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedureCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "series",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Account",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.AccountStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "active",
                    "type": "FHIR.Period"
                },
                {
                    "name": "balance",
                    "type": "FHIR.Money"
                },
                {
                    "name": "coverage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "guarantor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResearchSubjectStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent.Network",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "address",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.AuditEventAgentNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Actor",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureDefinition.Mapping",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "FHIR.id"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ContactPoint",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.ContactPointSystem"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "use",
                    "type": "FHIR.ContactPointUse"
                },
                {
                    "name": "rank",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationDispense.Substitution",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "wasSubstituted",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "responsibleParty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Extension",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.BenefitBalance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "excluded",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "network",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "unit",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "term",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "financial",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Group.Characteristic",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                },
                {
                    "name": "exclude",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "UDIEntryType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.Supplement",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "productName",
                    "type": "FHIR.string"
                },
                {
                    "name": "schedule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "instruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PractitionerRole",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "practitioner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "healthcareService",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availableTime",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "notAvailable",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availabilityExceptions",
                    "type": "FHIR.string"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.EnteralFormula",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "baseFormulaType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "baseFormulaProductName",
                    "type": "FHIR.string"
                },
                {
                    "name": "additiveType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "additiveProductName",
                    "type": "FHIR.string"
                },
                {
                    "name": "caloricDensity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "routeofAdministration",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "administration",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "maxVolumeToDeliver",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "administrationInstruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Composition.Section",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "text",
                    "type": "FHIR.Narrative"
                },
                {
                    "name": "mode",
                    "type": "FHIR.ListMode"
                },
                {
                    "name": "orderedBy",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "entry",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "emptyReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "section",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetricCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "GraphDefinition.Link",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "sliceName",
                    "type": "FHIR.string"
                },
                {
                    "name": "min",
                    "type": "FHIR.integer"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReportActionResult",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ActivityDefinition.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ActionParticipantType"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Immunization",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "vaccineCode",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ImmunizationStatusCodes"
                },
                {
                    "name": "notGiven",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "vaccineCode",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "primarySource",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reportOrigin",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "lotNumber",
                    "type": "FHIR.string"
                },
                {
                    "name": "expirationDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "site",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "route",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "doseQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "practitioner",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "explanation",
                    "type": "FHIR.Immunization.Explanation"
                },
                {
                    "name": "reaction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "vaccinationProtocol",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Specimen.Collection",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "collector",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "collected",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapTransform",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Sequence.Quality",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.qualityType"
                },
                {
                    "name": "standardSequence",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "start",
                    "type": "FHIR.integer"
                },
                {
                    "name": "end",
                    "type": "FHIR.integer"
                },
                {
                    "name": "score",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "truthTP",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "queryTP",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "truthFN",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "queryFP",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "gtFP",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "precision",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "recall",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "fScore",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResponseType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "decimal",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Decimal"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Bundle.Request",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "method",
                    "type": "FHIR.HTTPVerb"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "ifNoneMatch",
                    "type": "FHIR.string"
                },
                {
                    "name": "ifModifiedSince",
                    "type": "FHIR.instant"
                },
                {
                    "name": "ifMatch",
                    "type": "FHIR.string"
                },
                {
                    "name": "ifNoneExist",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AggregationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatementKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Person.Link",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "assurance",
                    "type": "FHIR.IdentityAssuranceLevel"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem.Filter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "operator",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PaymentReconciliation.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "response",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "submitter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payee",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ReferralRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.RequestStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.RequestIntent"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "serviceRequested",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.ReferralRequest.Requester"
                },
                {
                    "name": "specialty",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "supportingInfo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relevantHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CarePlan.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "definition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "goal",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.CarePlanActivityStatus"
                },
                {
                    "name": "statusReason",
                    "type": "FHIR.string"
                },
                {
                    "name": "prohibited",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "scheduled",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "product",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "dailyAmount",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImmunizationRecommendation.Protocol",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseSequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "authority",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "series",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceVerificationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EventTiming",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Condition.Stage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "summary",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "assessment",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subtype",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "type": "FHIR.AuditEventAction"
                },
                {
                    "name": "recorded",
                    "type": "FHIR.instant"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.AuditEventOutcome"
                },
                {
                    "name": "outcomeDesc",
                    "type": "FHIR.string"
                },
                {
                    "name": "purposeOfEvent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "agent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "source",
                    "type": "FHIR.AuditEvent.Source"
                },
                {
                    "name": "entity",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.CareTeam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "qualification",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GoalStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "SearchParamType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "SystemRestfulInteraction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Task",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.TaskStatus"
                },
                {
                    "name": "statusReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "businessStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "intent",
                    "type": "FHIR.RequestIntent"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "focus",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "for",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "executionPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "lastModified",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Task.Requester"
                },
                {
                    "name": "performerType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relevantHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "restriction",
                    "type": "FHIR.Task.Restriction"
                },
                {
                    "name": "input",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "output",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionGroupingBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityResponse.Error",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "code",
                "type": "FHIR.CodeableConcept"
            }
        },
        {
            "type": "ClassInfo",
            "name": "OperationDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "kind",
                    "type": "FHIR.OperationKind"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "idempotent",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "base",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "resource",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "system",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "instance",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "parameter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "overload",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapModelMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TaskStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "SupplyDelivery",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.SupplyDeliveryStatus"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "suppliedItem",
                    "type": "FHIR.SupplyDelivery.SuppliedItem"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "supplier",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "destination",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "receiver",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Operation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "result",
                    "type": "FHIR.TestReportActionResult"
                },
                {
                    "name": "message",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "detail",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AdverseEventCausality",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Source",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "context",
                    "type": "FHIR.id"
                },
                {
                    "name": "min",
                    "type": "FHIR.integer"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.string"
                },
                {
                    "name": "defaultValue",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                },
                {
                    "name": "element",
                    "type": "FHIR.string"
                },
                {
                    "name": "listMode",
                    "type": "FHIR.StructureMapSourceListMode"
                },
                {
                    "name": "variable",
                    "type": "FHIR.id"
                },
                {
                    "name": "condition",
                    "type": "FHIR.string"
                },
                {
                    "name": "check",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.TestReportStatus"
                },
                {
                    "name": "testScript",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "result",
                    "type": "FHIR.TestReportResult"
                },
                {
                    "name": "score",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "tester",
                    "type": "FHIR.string"
                },
                {
                    "name": "issued",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "setup",
                    "type": "FHIR.TestReport.Setup"
                },
                {
                    "name": "test",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "teardown",
                    "type": "FHIR.TestReport.Teardown"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "source",
                    "type": "FHIR.uri"
                },
                {
                    "name": "sourceVersion",
                    "type": "FHIR.string"
                },
                {
                    "name": "target",
                    "type": "FHIR.uri"
                },
                {
                    "name": "targetVersion",
                    "type": "FHIR.string"
                },
                {
                    "name": "element",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "unmapped",
                    "type": "FHIR.ConceptMap.Unmapped"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent.Entity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "role",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "lifecycle",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "query",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Sequence",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "coordinateSystem",
                    "type": "FHIR.integer"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "specimen",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "referenceSeq",
                    "type": "FHIR.Sequence.ReferenceSeq"
                },
                {
                    "name": "variant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "observedSeq",
                    "type": "FHIR.string"
                },
                {
                    "name": "quality",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "readCoverage",
                    "type": "FHIR.integer"
                },
                {
                    "name": "repository",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "pointer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "HealthcareService.AvailableTime",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "allDay",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "availableStartTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "availableEndTime",
                    "type": "FHIR.time"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImagingManifest.Instance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sopClass",
                    "type": "FHIR.oid"
                },
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SubscriptionChannelType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem.Property",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.PropertyType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "serviced",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facility",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
                },
                {
                    "name": "benefitCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "benefitSubCategory",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GraphCompartmentRule",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ParameterDefinition",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.code"
                },
                {
                    "name": "min",
                    "type": "FHIR.integer"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Payment",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "adjustment",
                    "type": "FHIR.Money"
                },
                {
                    "name": "adjustmentReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Money"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResearchSubject",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ResearchSubjectStatus"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "study",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "individual",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "assignedArm",
                    "type": "FHIR.string"
                },
                {
                    "name": "actualArm",
                    "type": "FHIR.string"
                },
                {
                    "name": "consent",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Assert",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "result",
                    "type": "FHIR.TestReportActionResult"
                },
                {
                    "name": "message",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "detail",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Parameters.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                },
                {
                    "name": "resource",
                    "type": "FHIR.ResourceContainer"
                },
                {
                    "name": "part",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Payee",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "resourceType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "party",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DataRequirement.DateFilter",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Sequence.Variant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "start",
                    "type": "FHIR.integer"
                },
                {
                    "name": "end",
                    "type": "FHIR.integer"
                },
                {
                    "name": "observedAllele",
                    "type": "FHIR.string"
                },
                {
                    "name": "referenceAllele",
                    "type": "FHIR.string"
                },
                {
                    "name": "cigar",
                    "type": "FHIR.string"
                },
                {
                    "name": "variantPointer",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationDispense",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medication",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationDispenseStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medication",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supportingInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "authorizingPrescription",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "daysSupply",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "whenPrepared",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "whenHandedOver",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "destination",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "receiver",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosageInstruction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "substitution",
                    "type": "FHIR.MedicationDispense.Substitution"
                },
                {
                    "name": "detectedIssue",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "notDone",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "notDoneReason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "eventHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Substance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FHIRSubstanceStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "instance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "ingredient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Legal",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "Specimen.Processing",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "procedure",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "additive",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "time",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "param",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReference.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "attachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "format",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Linkage.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.LinkageType"
                },
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Questionnaire.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prefix",
                    "type": "FHIR.string"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.QuestionnaireItemType"
                },
                {
                    "name": "enableWhen",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "required",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "repeats",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "readOnly",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "maxLength",
                    "type": "FHIR.integer"
                },
                {
                    "name": "options",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "option",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "initial",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Task.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "equivalence",
                    "type": "FHIR.ConceptMapEquivalence"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "dependsOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "product",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Teardown",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "action",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Designation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AssertionDirectionType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CarePlanIntent",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImmunizationRecommendation.Recommendation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "vaccineCode",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "targetDisease",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "doseNumber",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "forecastStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateCriterion",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "protocol",
                    "type": "FHIR.ImmunizationRecommendation.Protocol"
                },
                {
                    "name": "supportingImmunization",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingPatientInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AppointmentResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointment",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "start",
                    "type": "FHIR.instant"
                },
                {
                    "name": "end",
                    "type": "FHIR.instant"
                },
                {
                    "name": "participantType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "participantStatus",
                    "type": "FHIR.ParticipationStatus"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SlicingRules",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TriggerDefinition",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.TriggerType"
                },
                {
                    "name": "eventName",
                    "type": "FHIR.string"
                },
                {
                    "name": "eventTiming",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            }
                        ]
                    }
                },
                {
                    "name": "eventData",
                    "type": "FHIR.DataRequirement"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Interaction1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.SystemRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Insurance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "preAuthRef",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ReferralRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Communication",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.EventStatus"
                },
                {
                    "name": "notDone",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "notDoneReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "medium",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "sent",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "received",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "sender",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "payload",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contract.Term",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "issued",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "applies",
                    "type": "FHIR.Period"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actionReason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "agent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "valuedItem",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "group",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefitStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Patient.Animal",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "species",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "breed",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "genderStatus",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Substance.Instance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "expiry",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Library",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "topic",
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contributor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "parameter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataRequirement",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "content",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequest.DispenseRequest",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "validityPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "numberOfRepeatsAllowed",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "expectedSupplyDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.StatusHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.EncounterStatus"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Information",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "reason",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SupplyRequest.OrderedItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConsentState",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AdverseEventCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.Diagnosis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "condition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "rank",
                    "type": "FHIR.positiveInt"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "LinkType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide.Package",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "resource",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceCriticality",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Consent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ConsentState"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "consentingParty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "organization",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "source",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "policy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "policyRule",
                    "type": "FHIR.uri"
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "data",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "except",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequestPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMapEquivalence",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medication",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationRequestStatus"
                },
                {
                    "name": "intent",
                    "type": "FHIR.MedicationRequestIntent"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.MedicationRequestPriority"
                },
                {
                    "name": "medication",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supportingInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.MedicationRequest.Requester"
                },
                {
                    "name": "recorder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosageInstruction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dispenseRequest",
                    "type": "FHIR.MedicationRequest.DispenseRequest"
                },
                {
                    "name": "substitution",
                    "type": "FHIR.MedicationRequest.Substitution"
                },
                {
                    "name": "priorPrescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "detectedIssue",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "eventHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIRAllTypes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImmunizationRecommendation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recommendation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SupplyRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PropertyRepresentation",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AuditEventAction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetric.Calibration",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.DeviceMetricCalibrationType"
                },
                {
                    "name": "state",
                    "type": "FHIR.DeviceMetricCalibrationState"
                },
                {
                    "name": "time",
                    "type": "FHIR.instant"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Detail1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TriggerType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Information",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentManifest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.DocumentReferenceStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "source",
                    "type": "FHIR.uri"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "content",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "related",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Operation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Observation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ObservationStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "effective",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "type": "FHIR.instant"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "interpretation",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specimen",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "referenceRange",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "related",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "component",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SearchModifierCode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CompositionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap.Unmapped",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.ConceptMapGroupUnmappedMode"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Annotation",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "author",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "time",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AppointmentStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MessageSignificanceCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EventStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "OperationParameterUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Include",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "concept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "filter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valueSet",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ListMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DeviceComponent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "lastSystemChange",
                    "type": "FHIR.instant"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "parent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "operationalStatus",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "parameterGroup",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "measurementPrinciple",
                    "type": "FHIR.MeasmntPrinciple"
                },
                {
                    "name": "productionSpecification",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "languageCode",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionConditionKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ObservationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Meta",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "versionId",
                    "type": "FHIR.id"
                },
                {
                    "name": "lastUpdated",
                    "type": "FHIR.instant"
                },
                {
                    "name": "profile",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "security",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "tag",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MessageHeader.Destination",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "endpoint",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "qualityType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "AdministrativeGender",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DiagnosticReport.Image",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "link",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Slot",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointmentType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "schedule",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.SlotStatus"
                },
                {
                    "name": "start",
                    "type": "FHIR.instant"
                },
                {
                    "name": "end",
                    "type": "FHIR.instant"
                },
                {
                    "name": "overbooked",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Contributor",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ContributorType"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ValueSet.Concept",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "designation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EnrollmentResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EpisodeOfCare.StatusHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.EpisodeOfCareStatus"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ProcessResponse.ProcessNote",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActivityDefinition.DynamicValue",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Observation.ReferenceRange",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "high",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "appliesTo",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "age",
                    "type": "FHIR.Range"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Coverage",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "policyHolder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "subscriber",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "subscriberId",
                    "type": "FHIR.string"
                },
                {
                    "name": "beneficiary",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "payor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "grouping",
                    "type": "FHIR.Coverage.Grouping"
                },
                {
                    "name": "dependent",
                    "type": "FHIR.string"
                },
                {
                    "name": "sequence",
                    "type": "FHIR.string"
                },
                {
                    "name": "order",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "network",
                    "type": "FHIR.string"
                },
                {
                    "name": "contract",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CompartmentDefinition.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "param",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResourceContainer",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "Account",
                    "type": "FHIR.Account"
                },
                {
                    "name": "ActivityDefinition",
                    "type": "FHIR.ActivityDefinition"
                },
                {
                    "name": "AdverseEvent",
                    "type": "FHIR.AdverseEvent"
                },
                {
                    "name": "AllergyIntolerance",
                    "type": "FHIR.AllergyIntolerance"
                },
                {
                    "name": "Appointment",
                    "type": "FHIR.Appointment"
                },
                {
                    "name": "AppointmentResponse",
                    "type": "FHIR.AppointmentResponse"
                },
                {
                    "name": "AuditEvent",
                    "type": "FHIR.AuditEvent"
                },
                {
                    "name": "Basic",
                    "type": "FHIR.Basic"
                },
                {
                    "name": "Binary",
                    "type": "FHIR.Binary"
                },
                {
                    "name": "BodySite",
                    "type": "FHIR.BodySite"
                },
                {
                    "name": "Bundle",
                    "type": "FHIR.Bundle"
                },
                {
                    "name": "CapabilityStatement",
                    "type": "FHIR.CapabilityStatement"
                },
                {
                    "name": "CarePlan",
                    "type": "FHIR.CarePlan"
                },
                {
                    "name": "CareTeam",
                    "type": "FHIR.CareTeam"
                },
                {
                    "name": "ChargeItem",
                    "type": "FHIR.ChargeItem"
                },
                {
                    "name": "Claim",
                    "type": "FHIR.Claim"
                },
                {
                    "name": "ClaimResponse",
                    "type": "FHIR.ClaimResponse"
                },
                {
                    "name": "ClinicalImpression",
                    "type": "FHIR.ClinicalImpression"
                },
                {
                    "name": "CodeSystem",
                    "type": "FHIR.CodeSystem"
                },
                {
                    "name": "Communication",
                    "type": "FHIR.Communication"
                },
                {
                    "name": "CommunicationRequest",
                    "type": "FHIR.CommunicationRequest"
                },
                {
                    "name": "CompartmentDefinition",
                    "type": "FHIR.CompartmentDefinition"
                },
                {
                    "name": "Composition",
                    "type": "FHIR.Composition"
                },
                {
                    "name": "ConceptMap",
                    "type": "FHIR.ConceptMap"
                },
                {
                    "name": "Condition",
                    "type": "FHIR.Condition"
                },
                {
                    "name": "Consent",
                    "type": "FHIR.Consent"
                },
                {
                    "name": "Contract",
                    "type": "FHIR.Contract"
                },
                {
                    "name": "Coverage",
                    "type": "FHIR.Coverage"
                },
                {
                    "name": "DataElement",
                    "type": "FHIR.DataElement"
                },
                {
                    "name": "DetectedIssue",
                    "type": "FHIR.DetectedIssue"
                },
                {
                    "name": "Device",
                    "type": "FHIR.Device"
                },
                {
                    "name": "DeviceComponent",
                    "type": "FHIR.DeviceComponent"
                },
                {
                    "name": "DeviceMetric",
                    "type": "FHIR.DeviceMetric"
                },
                {
                    "name": "DeviceRequest",
                    "type": "FHIR.DeviceRequest"
                },
                {
                    "name": "DeviceUseStatement",
                    "type": "FHIR.DeviceUseStatement"
                },
                {
                    "name": "DiagnosticReport",
                    "type": "FHIR.DiagnosticReport"
                },
                {
                    "name": "DocumentManifest",
                    "type": "FHIR.DocumentManifest"
                },
                {
                    "name": "DocumentReference",
                    "type": "FHIR.DocumentReference"
                },
                {
                    "name": "EligibilityRequest",
                    "type": "FHIR.EligibilityRequest"
                },
                {
                    "name": "EligibilityResponse",
                    "type": "FHIR.EligibilityResponse"
                },
                {
                    "name": "Encounter",
                    "type": "FHIR.Encounter"
                },
                {
                    "name": "Endpoint",
                    "type": "FHIR.Endpoint"
                },
                {
                    "name": "EnrollmentRequest",
                    "type": "FHIR.EnrollmentRequest"
                },
                {
                    "name": "EnrollmentResponse",
                    "type": "FHIR.EnrollmentResponse"
                },
                {
                    "name": "EpisodeOfCare",
                    "type": "FHIR.EpisodeOfCare"
                },
                {
                    "name": "ExpansionProfile",
                    "type": "FHIR.ExpansionProfile"
                },
                {
                    "name": "ExplanationOfBenefit",
                    "type": "FHIR.ExplanationOfBenefit"
                },
                {
                    "name": "FamilyMemberHistory",
                    "type": "FHIR.FamilyMemberHistory"
                },
                {
                    "name": "Flag",
                    "type": "FHIR.Flag"
                },
                {
                    "name": "Goal",
                    "type": "FHIR.Goal"
                },
                {
                    "name": "GraphDefinition",
                    "type": "FHIR.GraphDefinition"
                },
                {
                    "name": "Group",
                    "type": "FHIR.Group"
                },
                {
                    "name": "GuidanceResponse",
                    "type": "FHIR.GuidanceResponse"
                },
                {
                    "name": "HealthcareService",
                    "type": "FHIR.HealthcareService"
                },
                {
                    "name": "ImagingManifest",
                    "type": "FHIR.ImagingManifest"
                },
                {
                    "name": "ImagingStudy",
                    "type": "FHIR.ImagingStudy"
                },
                {
                    "name": "Immunization",
                    "type": "FHIR.Immunization"
                },
                {
                    "name": "ImmunizationRecommendation",
                    "type": "FHIR.ImmunizationRecommendation"
                },
                {
                    "name": "ImplementationGuide",
                    "type": "FHIR.ImplementationGuide"
                },
                {
                    "name": "Library",
                    "type": "FHIR.Library"
                },
                {
                    "name": "Linkage",
                    "type": "FHIR.Linkage"
                },
                {
                    "name": "List",
                    "type": "FHIR.List"
                },
                {
                    "name": "Location",
                    "type": "FHIR.Location"
                },
                {
                    "name": "Measure",
                    "type": "FHIR.Measure"
                },
                {
                    "name": "MeasureReport",
                    "type": "FHIR.MeasureReport"
                },
                {
                    "name": "Media",
                    "type": "FHIR.Media"
                },
                {
                    "name": "Medication",
                    "type": "FHIR.Medication"
                },
                {
                    "name": "MedicationAdministration",
                    "type": "FHIR.MedicationAdministration"
                },
                {
                    "name": "MedicationDispense",
                    "type": "FHIR.MedicationDispense"
                },
                {
                    "name": "MedicationRequest",
                    "type": "FHIR.MedicationRequest"
                },
                {
                    "name": "MedicationStatement",
                    "type": "FHIR.MedicationStatement"
                },
                {
                    "name": "MessageDefinition",
                    "type": "FHIR.MessageDefinition"
                },
                {
                    "name": "MessageHeader",
                    "type": "FHIR.MessageHeader"
                },
                {
                    "name": "NamingSystem",
                    "type": "FHIR.NamingSystem"
                },
                {
                    "name": "NutritionOrder",
                    "type": "FHIR.NutritionOrder"
                },
                {
                    "name": "Observation",
                    "type": "FHIR.Observation"
                },
                {
                    "name": "OperationDefinition",
                    "type": "FHIR.OperationDefinition"
                },
                {
                    "name": "OperationOutcome",
                    "type": "FHIR.OperationOutcome"
                },
                {
                    "name": "Organization",
                    "type": "FHIR.Organization"
                },
                {
                    "name": "Patient",
                    "type": "FHIR.Patient"
                },
                {
                    "name": "PaymentNotice",
                    "type": "FHIR.PaymentNotice"
                },
                {
                    "name": "PaymentReconciliation",
                    "type": "FHIR.PaymentReconciliation"
                },
                {
                    "name": "Person",
                    "type": "FHIR.Person"
                },
                {
                    "name": "PlanDefinition",
                    "type": "FHIR.PlanDefinition"
                },
                {
                    "name": "Practitioner",
                    "type": "FHIR.Practitioner"
                },
                {
                    "name": "PractitionerRole",
                    "type": "FHIR.PractitionerRole"
                },
                {
                    "name": "Procedure",
                    "type": "FHIR.Procedure"
                },
                {
                    "name": "ProcedureRequest",
                    "type": "FHIR.ProcedureRequest"
                },
                {
                    "name": "ProcessRequest",
                    "type": "FHIR.ProcessRequest"
                },
                {
                    "name": "ProcessResponse",
                    "type": "FHIR.ProcessResponse"
                },
                {
                    "name": "Provenance",
                    "type": "FHIR.Provenance"
                },
                {
                    "name": "Questionnaire",
                    "type": "FHIR.Questionnaire"
                },
                {
                    "name": "QuestionnaireResponse",
                    "type": "FHIR.QuestionnaireResponse"
                },
                {
                    "name": "ReferralRequest",
                    "type": "FHIR.ReferralRequest"
                },
                {
                    "name": "RelatedPerson",
                    "type": "FHIR.RelatedPerson"
                },
                {
                    "name": "RequestGroup",
                    "type": "FHIR.RequestGroup"
                },
                {
                    "name": "ResearchStudy",
                    "type": "FHIR.ResearchStudy"
                },
                {
                    "name": "ResearchSubject",
                    "type": "FHIR.ResearchSubject"
                },
                {
                    "name": "RiskAssessment",
                    "type": "FHIR.RiskAssessment"
                },
                {
                    "name": "Schedule",
                    "type": "FHIR.Schedule"
                },
                {
                    "name": "SearchParameter",
                    "type": "FHIR.SearchParameter"
                },
                {
                    "name": "Sequence",
                    "type": "FHIR.Sequence"
                },
                {
                    "name": "ServiceDefinition",
                    "type": "FHIR.ServiceDefinition"
                },
                {
                    "name": "Slot",
                    "type": "FHIR.Slot"
                },
                {
                    "name": "Specimen",
                    "type": "FHIR.Specimen"
                },
                {
                    "name": "StructureDefinition",
                    "type": "FHIR.StructureDefinition"
                },
                {
                    "name": "StructureMap",
                    "type": "FHIR.StructureMap"
                },
                {
                    "name": "Subscription",
                    "type": "FHIR.Subscription"
                },
                {
                    "name": "Substance",
                    "type": "FHIR.Substance"
                },
                {
                    "name": "SupplyDelivery",
                    "type": "FHIR.SupplyDelivery"
                },
                {
                    "name": "SupplyRequest",
                    "type": "FHIR.SupplyRequest"
                },
                {
                    "name": "Task",
                    "type": "FHIR.Task"
                },
                {
                    "name": "TestReport",
                    "type": "FHIR.TestReport"
                },
                {
                    "name": "TestScript",
                    "type": "FHIR.TestScript"
                },
                {
                    "name": "ValueSet",
                    "type": "FHIR.ValueSet"
                },
                {
                    "name": "VisionPrescription",
                    "type": "FHIR.VisionPrescription"
                },
                {
                    "name": "Parameters",
                    "type": "FHIR.Parameters"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceComponent.ProductionSpecification",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "specType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "componentId",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "productionSpec",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Insurance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "focal",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
                },
                {
                    "name": "preAuthRef",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResourceType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QuestionnaireItemType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Timing.Repeat",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "bounds",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "count",
                    "type": "FHIR.integer"
                },
                {
                    "name": "countMax",
                    "type": "FHIR.integer"
                },
                {
                    "name": "duration",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "durationMax",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "durationUnit",
                    "type": "FHIR.UnitsOfTime"
                },
                {
                    "name": "frequency",
                    "type": "FHIR.integer"
                },
                {
                    "name": "frequencyMax",
                    "type": "FHIR.integer"
                },
                {
                    "name": "period",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "periodMax",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "periodUnit",
                    "type": "FHIR.UnitsOfTime"
                },
                {
                    "name": "dayOfWeek",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "timeOfDay",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "when",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "offset",
                    "type": "FHIR.unsignedInt"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Medication.Ingredient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "isActive",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Media",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.DigitalMediaType"
                },
                {
                    "name": "subtype",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "view",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "operator",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "height",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "width",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "frames",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "duration",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "content",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "boolean",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Boolean"
            }
        },
        {
            "type": "ClassInfo",
            "name": "StructureMapGroupTypeMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Contract",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ContractResourceStatusCodes"
                },
                {
                    "name": "issued",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "applies",
                    "type": "FHIR.Period"
                },
                {
                    "name": "subject",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "authority",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "domain",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actionReason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "decisionType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "contentDerivative",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "agent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "signer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "valuedItem",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "term",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "binding",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "friendly",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "legal",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Location.Position",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "longitude",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "latitude",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "altitude",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetricCalibrationType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DiagnosticReport",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.DiagnosticReportStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "effective",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "issued",
                    "type": "FHIR.instant"
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specimen",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "result",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "imagingStudy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "image",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "conclusion",
                    "type": "FHIR.string"
                },
                {
                    "name": "codedDiagnosis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "presentedForm",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Immunization.Reaction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "detail",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reported",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEvent.Source",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "site",
                    "type": "FHIR.string"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap.DependsOn",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "property",
                    "type": "FHIR.uri"
                },
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "type": "FHIR.string"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CompartmentDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CompartmentType"
                },
                {
                    "name": "search",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "resource",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "code",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Metadata",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "capability",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Binary",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "FHIR.code"
                },
                {
                    "name": "securityContext",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "content",
                    "type": "FHIR.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SupplyRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ClinicalImpression.Investigation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionSelectionBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EncounterLocationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "SupplyDeliveryStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.DynamicValue",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Schedule",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "actor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "planningHorizon",
                    "type": "FHIR.Period"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Structure",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "mode",
                    "type": "FHIR.StructureMapModelMode"
                },
                {
                    "name": "alias",
                    "type": "FHIR.string"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Task.Output",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "base64Binary"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "code"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "id"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "instant"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "markdown"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "oid"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "positiveInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "unsignedInt"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Annotation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "ContactPoint"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Count"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Distance"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "HumanName"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Identifier"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Money"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Signature"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Meta"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RelatedArtifact",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.RelatedArtifactType"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "citation",
                    "type": "FHIR.string"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "document",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationAdministration",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medication",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationAdministrationStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medication",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supportingInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "effective",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "performer",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "notGiven",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reasonNotGiven",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "device",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosage",
                    "type": "FHIR.MedicationAdministration.Dosage"
                },
                {
                    "name": "eventHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Ratio",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "numerator",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "denominator",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DiagnosticReportStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.RequestHeader",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "field",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SampledData",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "origin",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "period",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "lowerLimit",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "upperLimit",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "dimensions",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "data",
                    "type": "FHIR.SampledDataDataType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FlagStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "interaction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "versioning",
                    "type": "FHIR.ResourceVersionPolicy"
                },
                {
                    "name": "readHistory",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "updateCreate",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "conditionalCreate",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "conditionalRead",
                    "type": "FHIR.ConditionalReadStatus"
                },
                {
                    "name": "conditionalUpdate",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "conditionalDelete",
                    "type": "FHIR.ConditionalDeleteStatus"
                },
                {
                    "name": "referencePolicy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "searchInclude",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "searchRevInclude",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "searchParam",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Task.Restriction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "repetitions",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Provenance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "recorded",
                    "type": "FHIR.instant"
                },
                {
                    "name": "policy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "activity",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "agent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "entity",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "signature",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Variable",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "defaultValue",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "expression",
                    "type": "FHIR.string"
                },
                {
                    "name": "headerField",
                    "type": "FHIR.string"
                },
                {
                    "name": "hint",
                    "type": "FHIR.string"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "sourceId",
                    "type": "FHIR.id"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Medication",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationStatus"
                },
                {
                    "name": "isBrand",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "isOverTheCounter",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "ingredient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "package",
                    "type": "FHIR.Medication.Package"
                },
                {
                    "name": "image",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CarePlan.Activity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "outcomeCodeableConcept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcomeReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "progress",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "detail",
                    "type": "FHIR.CarePlan.Detail"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Goal.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "measure",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "dueD",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Distance",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.Exclude",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "designation",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ActionParticipantType"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Mapping",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "FHIR.id"
                },
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "map",
                    "type": "FHIR.string"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Setup",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "action",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "CarePlanStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityResponse.Insurance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contract",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "benefitBalance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "source",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dependent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConditionClinicalStatusCodes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ListStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "structure",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "import",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "group",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Accident",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "base64Binary",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "HumanName",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "FHIR.NameUse"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "family",
                    "type": "FHIR.string"
                },
                {
                    "name": "given",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prefix",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "suffix",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Questionnaire.EnableWhen",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "question",
                    "type": "FHIR.string"
                },
                {
                    "name": "hasAnswer",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "answer",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Operation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "resource",
                    "type": "FHIR.FHIRDefinedType"
                },
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "accept",
                    "type": "FHIR.ContentType"
                },
                {
                    "name": "contentType",
                    "type": "FHIR.ContentType"
                },
                {
                    "name": "destination",
                    "type": "FHIR.integer"
                },
                {
                    "name": "encodeRequestUrl",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "origin",
                    "type": "FHIR.integer"
                },
                {
                    "name": "params",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestHeader",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "requestId",
                    "type": "FHIR.id"
                },
                {
                    "name": "responseId",
                    "type": "FHIR.id"
                },
                {
                    "name": "sourceId",
                    "type": "FHIR.id"
                },
                {
                    "name": "targetId",
                    "type": "FHIR.id"
                },
                {
                    "name": "url",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Group",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "type": "FHIR.GroupType"
                },
                {
                    "name": "actual",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "characteristic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "member",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceUseStatementStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CommunicationRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "reasonCode",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "replaces",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "groupIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.RequestStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "medium",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payload",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "sender",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requester",
                    "type": "FHIR.CommunicationRequest.Requester"
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Payee",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "resourceType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "party",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RiskAssessment.Prediction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "probability",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                },
                {
                    "name": "qualitativeRisk",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "relativeRisk",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "when",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                },
                {
                    "name": "rationale",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DetectedIssue",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ObservationStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "severity",
                    "type": "FHIR.DetectedIssueSeverity"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "implicated",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "type": "FHIR.string"
                },
                {
                    "name": "reference",
                    "type": "FHIR.uri"
                },
                {
                    "name": "mitigation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AuditEventAgentNetworkType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Location",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.LocationStatus"
                },
                {
                    "name": "operationalStatus",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "alias",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "mode",
                    "type": "FHIR.LocationMode"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "type": "FHIR.Address"
                },
                {
                    "name": "physicalType",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "position",
                    "type": "FHIR.Location.Position"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "partOf",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem.Concept",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.string"
                },
                {
                    "name": "designation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "property",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "concept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CommunicationRequest.Payload",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "content",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "string"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "BackboneElement",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "modifierExtension",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "Resource",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "FHIR.id"
                },
                {
                    "name": "meta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "implicitRules",
                    "type": "FHIR.uri"
                },
                {
                    "name": "language",
                    "type": "FHIR.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AddressUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReference.RelatesTo",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.DocumentRelationshipType"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide.Dependency",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.GuideDependencyType"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.TestReportParticipantType"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConditionalDeleteStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.NutritionOrderStatus"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "orderer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "allergyIntolerance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "foodPreferenceModifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "excludeFoodModifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "oralDiet",
                    "type": "FHIR.NutritionOrder.OralDiet"
                },
                {
                    "name": "supplement",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "enteralFormula",
                    "type": "FHIR.NutritionOrder.EnteralFormula"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Measure.SupplementalData",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "usage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "criteria",
                    "type": "FHIR.string"
                },
                {
                    "name": "path",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Action2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "operation",
                "type": "FHIR.TestScript.Operation"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ContactPointUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetricOperationalStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Action1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "operation",
                    "type": "FHIR.TestScript.Operation"
                },
                {
                    "name": "assert",
                    "type": "FHIR.TestScript.Assert"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Data",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "meaning",
                    "type": "FHIR.ConsentDataMeaning"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrderStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "RequestGroup.RelatedAction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionId",
                    "type": "FHIR.id"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.ActionRelationshipType"
                },
                {
                    "name": "offset",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "uri",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ContributorType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ReferenceVersionRules",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ServiceDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contributor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "trigger",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataRequirement",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "operationDefinition",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Use",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "IdentityAssuranceLevel",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.AddItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MessageHeader.Response",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.id"
                },
                {
                    "name": "code",
                    "type": "FHIR.ResponseType"
                },
                {
                    "name": "details",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReportStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Slicing",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "discriminator",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "ordered",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "rules",
                    "type": "FHIR.SlicingRules"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetricColor",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "SearchEntryMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Group.Member",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "inactive",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SupplyRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.SupplyRequestStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.RequestPriority"
                },
                {
                    "name": "orderedItem",
                    "type": "FHIR.SupplyRequest.OrderedItem"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "authoredOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.SupplyRequest.Requester"
                },
                {
                    "name": "supplier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "deliverFrom",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "deliverTo",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "time",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Time"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Actor1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResearchStudy",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "protocol",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ResearchStudyStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "focus",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "keyword",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "enrollment",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "sponsor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "principalInvestigator",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "site",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonStopped",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "arm",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureDefinition.Differential",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "RequestGroup.Action",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "textEquivalent",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "documentation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relatedAction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "groupingBehavior",
                    "type": "FHIR.ActionGroupingBehavior"
                },
                {
                    "name": "selectionBehavior",
                    "type": "FHIR.ActionSelectionBehavior"
                },
                {
                    "name": "requiredBehavior",
                    "type": "FHIR.ActionRequiredBehavior"
                },
                {
                    "name": "precheckBehavior",
                    "type": "FHIR.ActionPrecheckBehavior"
                },
                {
                    "name": "cardinalityBehavior",
                    "type": "FHIR.ActionCardinalityBehavior"
                },
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConditionalReadStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequest.Substitution",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "allowed",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Condition.Evidence",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConditionVerificationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PaymentReconciliation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestProvider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "total",
                    "type": "FHIR.Money"
                },
                {
                    "name": "processNote",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ResearchStudy.Arm",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "AllergyIntoleranceSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Identifier",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "FHIR.IdentifierUse"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "assigner",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FinancialResourceStatusCodes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Teardown",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "action",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "EpisodeOfCare",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.EpisodeOfCareStatus"
                },
                {
                    "name": "statusHistory",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "referralRequest",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "careManager",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "team",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "account",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Patient.Communication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "preferred",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Action2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "operation",
                "type": "FHIR.TestReport.Operation"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Action1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "operation",
                    "type": "FHIR.TestReport.Operation"
                },
                {
                    "name": "assert",
                    "type": "FHIR.TestReport.Assert"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DataElement.Mapping",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "FHIR.id"
                },
                {
                    "name": "uri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Diagnosis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "packageCode",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Organization",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "alias",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ContactDetail",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ConceptMap.Element",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "target",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ObservationRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NutritionOrder.OralDiet",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "schedule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "nutrient",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "texture",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "fluidConsistencyType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "instruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "unsignedInt",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "NameUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.FixedVersion",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "mode",
                    "type": "FHIR.SystemVersionProcessingMode"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SubscriptionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DocumentReferenceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "LocationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.RelatedAction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionId",
                    "type": "FHIR.id"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.ActionRelationshipType"
                },
                {
                    "name": "offset",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "integer",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "repositoryType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "LocationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIRSubstanceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Basic",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.date"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "UnknownContentCode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ClinicalImpression",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ClinicalImpressionStatus"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "effective",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "assessor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "previous",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "problem",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "investigation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "protocol",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "summary",
                    "type": "FHIR.string"
                },
                {
                    "name": "finding",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prognosisCodeableConcept",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prognosisReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExpansionProfile.Include",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "designation",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "NoteType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ChargeItem",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.ChargeItemStatus"
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "performingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "bodysite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "factorOverride",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "priceOverride",
                    "type": "FHIR.Money"
                },
                {
                    "name": "overrideReason",
                    "type": "FHIR.string"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "enteredDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "service",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "account",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "supportingInformation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Fixture",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "autocreate",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "autodelete",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Observation.Component",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "SampledData"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "dataAbsentReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "interpretation",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "referenceRange",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Software",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "releaseDate",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReportStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "HTTPVerb",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.SearchParam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "definition",
                    "type": "FHIR.uri"
                },
                {
                    "name": "type",
                    "type": "FHIR.SearchParamType"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystemContentMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MessageHeader.Source",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "software",
                    "type": "FHIR.string"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "endpoint",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RiskAssessment",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "basedOn",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "parent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.ObservationStatus"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "occurrence",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "condition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "basis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prediction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "mitigation",
                    "type": "FHIR.string"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FinancialResourceStatusCodes"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subType",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "use",
                    "type": "FHIR.Use"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "billablePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "insurer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "fundsReserve",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "related",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "prescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalPrescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payee",
                    "type": "FHIR.Claim.Payee"
                },
                {
                    "name": "referral",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facility",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "careTeam",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "information",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosis",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedure",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "insurance",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "accident",
                    "type": "FHIR.Claim.Accident"
                },
                {
                    "name": "employmentImpacted",
                    "type": "FHIR.Period"
                },
                {
                    "name": "hospitalization",
                    "type": "FHIR.Period"
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "total",
                    "type": "FHIR.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationDefinition.Binding",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "strength",
                    "type": "FHIR.BindingStrength"
                },
                {
                    "name": "valueSet",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Event",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.MessageSignificanceCategory"
                },
                {
                    "name": "mode",
                    "type": "FHIR.EventCapabilityMode"
                },
                {
                    "name": "focus",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "response",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EpisodeOfCareStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "RemittanceOutcome",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIRDeviceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.CareTeam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "qualification",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "measure",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "due",
                    "type": "FHIR.Duration"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ContactPointSystem",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide.Global",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ResourceType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SlotStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PractitionerRole.NotAvailable",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "during",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ProcessRequest.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "sequenceLinkId",
                "type": "FHIR.integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CapabilityStatement.Certificate",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "blob",
                    "type": "FHIR.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Parameters",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": {
                "name": "parameter",
                "typeSpecifier": {
                    "type": "ListTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Adjudication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Money"
                },
                {
                    "name": "value",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "HealthcareService",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "providedBy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "type",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialty",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "extraDetails",
                    "type": "FHIR.string"
                },
                {
                    "name": "photo",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "coverageArea",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviceProvisionCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "eligibility",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "eligibilityNote",
                    "type": "FHIR.string"
                },
                {
                    "name": "programName",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "characteristic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "referralMethod",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "appointmentRequired",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "availableTime",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "notAvailable",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "availabilityExceptions",
                    "type": "FHIR.string"
                },
                {
                    "name": "endpoint",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Condition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "clinicalStatus",
                    "type": "FHIR.ConditionClinicalStatusCodes"
                },
                {
                    "name": "verificationStatus",
                    "type": "FHIR.ConditionVerificationStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "severity",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "bodySite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onset",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "abatement",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "assertedDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "asserter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "stage",
                    "type": "FHIR.Condition.Stage"
                },
                {
                    "name": "evidence",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "EligibilityResponse.BenefitBalance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "excluded",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "network",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "unit",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "term",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "financial",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Bundle.Search",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.SearchEntryMode"
                },
                {
                    "name": "score",
                    "type": "FHIR.decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PropertyType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Type",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.uri"
                },
                {
                    "name": "profile",
                    "type": "FHIR.uri"
                },
                {
                    "name": "targetProfile",
                    "type": "FHIR.uri"
                },
                {
                    "name": "aggregation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "versioning",
                    "type": "FHIR.ReferenceVersionRules"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Questionnaire.Option",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "value",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "integer"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "date"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "time"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "string"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Coding"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "markdown",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "TypeDerivationRule",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Subscription.Channel",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.SubscriptionChannelType"
                },
                {
                    "name": "endpoint",
                    "type": "FHIR.uri"
                },
                {
                    "name": "payload",
                    "type": "FHIR.string"
                },
                {
                    "name": "header",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationRequest.Requester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "agent",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Error",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "detailSequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "subdetailSequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationStatementStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Goal",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.GoalStatus"
                },
                {
                    "name": "category",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "start",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            }
                        ]
                    }
                },
                {
                    "name": "target",
                    "type": "FHIR.Goal.Target"
                },
                {
                    "name": "statusDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "statusReason",
                    "type": "FHIR.string"
                },
                {
                    "name": "expressedBy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "addresses",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcomeCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "outcomeReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QuestionnaireResponse.Answer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "decimal"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "integer"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "time"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Attachment"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Coding"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Patient.Link",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "other",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "type",
                    "type": "FHIR.LinkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GuidanceResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QuantityComparator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Procedure.Performer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "OperationDefinition.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.OperationParameterUse"
                },
                {
                    "name": "min",
                    "type": "FHIR.integer"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.FHIRAllTypes"
                },
                {
                    "name": "searchType",
                    "type": "FHIR.SearchParamType"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "binding",
                    "type": "FHIR.OperationDefinition.Binding"
                },
                {
                    "name": "part",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "StructureMap.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "context",
                    "type": "FHIR.id"
                },
                {
                    "name": "contextType",
                    "type": "FHIR.StructureMapContextType"
                },
                {
                    "name": "element",
                    "type": "FHIR.string"
                },
                {
                    "name": "variable",
                    "type": "FHIR.id"
                },
                {
                    "name": "listMode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "listRuleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "transform",
                    "type": "FHIR.StructureMapTransform"
                },
                {
                    "name": "parameter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Claim.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "subDetail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "RelatedArtifactType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "MedicationStatement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medication",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "basedOn",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "partOf",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationStatementStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medication",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "effective",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "dateAsserted",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "informationSource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "derivedFrom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "taken",
                    "type": "FHIR.MedicationStatementTaken"
                },
                {
                    "name": "reasonNotTaken",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dosage",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ClaimResponse.Insurance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "focal",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
                },
                {
                    "name": "preAuthRef",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "careTeamLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "diagnosisLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "procedureLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "informationLinkId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "revenue",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "service",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "programCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "serviced",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            }
                        ]
                    }
                },
                {
                    "name": "location",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Address"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "FHIR.Money"
                },
                {
                    "name": "factor",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "net",
                    "type": "FHIR.Money"
                },
                {
                    "name": "udi",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subSite",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "encounter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "noteNumber",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "adjudication",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestReport.Action",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "operation",
                    "type": "FHIR.TestReport.Operation"
                },
                {
                    "name": "assert",
                    "type": "FHIR.TestReport.Assert"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "oid",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Coding",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "userSelected",
                    "type": "FHIR.boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MeasureReportType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Period",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "start",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "end",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ActionPrecheckBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Medication.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "amount",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Specimen",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "accessionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.SpecimenStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "receivedTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "parent",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "request",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "collection",
                    "type": "FHIR.Specimen.Collection"
                },
                {
                    "name": "processing",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "container",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FamilyMemberHistory",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "definition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "status",
                    "type": "FHIR.FamilyHistoryStatus"
                },
                {
                    "name": "notDone",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "notDoneReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "gender",
                    "type": "FHIR.AdministrativeGender"
                },
                {
                    "name": "born",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "age",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "estimatedAge",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "deceased",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "boolean"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Age"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "date"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "string"
                            }
                        ]
                    }
                },
                {
                    "name": "reasonCode",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reasonReference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "note",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DocumentManifest.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "p",
                "typeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Attachment"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "FHIR",
                            "name": "Reference"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "SampledDataDataType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition.Action",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "textEquivalent",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "reason",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "documentation",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "goalId",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "triggerDefinition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "condition",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "input",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "output",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "relatedAction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "timing",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "dateTime"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Period"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Duration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Timing"
                            }
                        ]
                    }
                },
                {
                    "name": "participant",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "groupingBehavior",
                    "type": "FHIR.ActionGroupingBehavior"
                },
                {
                    "name": "selectionBehavior",
                    "type": "FHIR.ActionSelectionBehavior"
                },
                {
                    "name": "requiredBehavior",
                    "type": "FHIR.ActionRequiredBehavior"
                },
                {
                    "name": "precheckBehavior",
                    "type": "FHIR.ActionPrecheckBehavior"
                },
                {
                    "name": "cardinalityBehavior",
                    "type": "FHIR.ActionCardinalityBehavior"
                },
                {
                    "name": "definition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "transform",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dynamicValue",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Provenance.Agent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "who",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "onBehalfOf",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "uri"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Reference"
                            }
                        ]
                    }
                },
                {
                    "name": "relatedAgentType",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "MedicationStatementTaken",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DocumentManifest.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "ref",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Composition.Event",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "detail",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Quantity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "comparator",
                    "type": "FHIR.QuantityComparator"
                },
                {
                    "name": "unit",
                    "type": "FHIR.string"
                },
                {
                    "name": "system",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CompartmentType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "CompositionAttestationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ExplanationOfBenefit.ProcessNote",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "language",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystem.Designation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "FHIR.code"
                },
                {
                    "name": "use",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DeviceMetricCalibrationState",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "GroupType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Consent.Except",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ConsentExceptType"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "actor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "securityLabel",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "purpose",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "class",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "code",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dataPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "data",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "DataRequirement",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "profile",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "mustSupport",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "codeFilter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "dateFilter",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TypeRestfulInteraction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "ImplementationGuide",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "fhirVersion",
                    "type": "FHIR.id"
                },
                {
                    "name": "dependency",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "package",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "global",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "binary",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "page",
                    "type": "FHIR.ImplementationGuide.Page"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Measure.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "population",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "stratifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "PlanDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.PublicationStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "approvalDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "lastReviewDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "useContext",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "jurisdiction",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "topic",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contributor",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "contact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "copyright",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "relatedArtifact",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "library",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "goal",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "action",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "CodeSystemHierarchyMeaning",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "UsageContext",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "value",
                    "typeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "CodeableConcept"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "{urn:hl7-org:elm-types:r1}Quantity"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "FHIR",
                                "name": "Range"
                            }
                        ]
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Ruleset",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "rule",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Medication.Batch",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "lotNumber",
                    "type": "FHIR.string"
                },
                {
                    "name": "expirationDate",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "ElementDefinition.Base",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "min",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Bundle",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "type",
                    "type": "FHIR.BundleType"
                },
                {
                    "name": "total",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "link",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "entry",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "signature",
                    "type": "FHIR.Signature"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Encounter.Hospitalization",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "preAdmissionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "origin",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "admitSource",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reAdmission",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dietPreference",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialCourtesy",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "specialArrangement",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "destination",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Organization.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "purpose",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "telecom",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "address",
                    "type": "FHIR.Address"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Param3",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "VisionBase",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "BundleType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Bundle.Response",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.string"
                },
                {
                    "name": "location",
                    "type": "FHIR.uri"
                },
                {
                    "name": "etag",
                    "type": "FHIR.string"
                },
                {
                    "name": "lastModified",
                    "type": "FHIR.instant"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.ResourceContainer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "SystemVersionProcessingMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Sequence.ReferenceSeq",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "chromosome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "genomeBuild",
                    "type": "FHIR.string"
                },
                {
                    "name": "referenceSeqId",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "referenceSeqPointer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "referenceSeqString",
                    "type": "FHIR.string"
                },
                {
                    "name": "strand",
                    "type": "FHIR.integer"
                },
                {
                    "name": "windowStart",
                    "type": "FHIR.integer"
                },
                {
                    "name": "windowEnd",
                    "type": "FHIR.integer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Param1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "TestScript.Param2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
                }
            ]
        }
    ],
    "conversionInfo": [
        {
            "functionName": "FHIRHelpers.ToCode",
            "fromType": "FHIR.Coding",
            "toType": "System.Code"
        },
        {
            "functionName": "FHIRHelpers.ToConcept",
            "fromType": "FHIR.CodeableConcept",
            "toType": "System.Concept"
        },
        {
            "functionName": "FHIRHelpers.ToQuantity",
            "fromType": "FHIR.Quantity",
            "toType": "System.Quantity"
        },
        {
            "functionName": "FHIRHelpers.ToInterval",
            "fromType": "FHIR.Period",
            "toType": "Interval<System.DateTime>"
        },
        {
            "functionName": "FHIRHelpers.ToInterval",
            "fromType": "FHIR.Range",
            "toType": "Interval<System.Quantity>"
        },
        {
            "functionName": "FHIRHelpers.ToRatio",
            "fromType": "FHIR.Ratio",
            "toType": "System.Ratio"
        },
        {
            "functionName": "FHIRHelpers.ToDateTime",
            "fromType": "FHIR.dateTime",
            "toType": "System.DateTime"
        },
        {
            "functionName": "FHIRHelpers.ToDate",
            "fromType": "FHIR.date",
            "toType": "System.Date"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.uuid",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TestScriptRequestMethodCode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProvenanceEntityRole",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.UnitsOfTime",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AddressType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SpecimenStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RestfulCapabilityMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DetectedIssueSeverity",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.IssueSeverity",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CareTeamStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DataElementStringency",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.VisionEyes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EncounterStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureDefinitionKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PublicationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConsentDataMeaning",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapSourceListMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireResponseStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SearchComparator",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ChargeItemStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionParticipantType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DocumentRelationshipType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceClinicalStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CarePlanActivityStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionList",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ParticipationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TestReportResult",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConceptMapGroupUnmappedMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToDateTime",
            "fromType": "FHIR.instant",
            "toType": "System.DateTime"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DocumentMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AssertionOperatorType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DaysOfWeek",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.IssueType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContentType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapContextType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FamilyHistoryStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToInteger",
            "fromType": "FHIR.positiveInt",
            "toType": "System.Integer"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ClinicalImpressionStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AssertionResponseTypes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RequestIntent",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NarrativeStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MeasmntPrinciple",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConsentExceptType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.string",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionRequiredBehavior",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EndpointStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GuidePageKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GuideDependencyType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ResourceVersionPolicy",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationRequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationAdministrationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionCardinalityBehavior",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationRequestIntent",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NamingSystemIdentifierType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ImmunizationStatusCodes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AccountStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationDispenseStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConfidentialityClassification",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.IdentifierUse",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DigitalMediaType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapTargetListMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TestReportParticipantType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.BindingStrength",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RequestPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ParticipantRequired",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DiscriminatorType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.XPathUsageType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapInputMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.InstanceAvailability",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.id",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.LinkageType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ReferenceHandlingPolicy",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FilterOperator",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NamingSystemType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ResearchStudyStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ExtensionContext",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FHIRDefinedType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AuditEventOutcome",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionRelationshipType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConstraintSeverity",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EventCapabilityMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContractResourceStatusCodes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ResearchSubjectStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.UDIEntryType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TestReportActionResult",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapTransform",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ResponseType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToDecimal",
            "fromType": "FHIR.decimal",
            "toType": "System.Decimal"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AggregationMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CapabilityStatementKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceVerificationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EventTiming",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GoalStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SearchParamType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SystemRestfulInteraction",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionGroupingBehavior",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapModelMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TaskStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AdverseEventCausality",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SubscriptionChannelType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GraphCompartmentRule",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AssertionDirectionType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CarePlanIntent",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SlicingRules",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ExplanationOfBenefitStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConsentState",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AdverseEventCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.LinkType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceCriticality",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationRequestPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConceptMapEquivalence",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FHIRAllTypes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PropertyRepresentation",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AuditEventAction",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TriggerType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SearchModifierCode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CompositionStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AppointmentStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MessageSignificanceCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EventStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.OperationParameterUse",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ListMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionConditionKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ObservationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.qualityType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AdministrativeGender",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ResourceType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireItemType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToBoolean",
            "fromType": "FHIR.boolean",
            "toType": "System.Boolean"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapGroupTypeMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricCalibrationType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.code",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SupplyRequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionSelectionBehavior",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EncounterLocationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SupplyDeliveryStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DiagnosticReportStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FlagStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CarePlanStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConditionClinicalStatusCodes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ListStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.Tobase64Binary",
            "fromType": "FHIR.base64Binary",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceUseStatementStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AuditEventAgentNetworkType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AddressUse",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConditionalDeleteStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContactPointUse",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricOperationalStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NutritionOrderStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.uri",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContributorType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ReferenceVersionRules",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.Use",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.IdentityAssuranceLevel",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MeasureReportStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricColor",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SearchEntryMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToTime",
            "fromType": "FHIR.time",
            "toType": "System.Time"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConditionalReadStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConditionVerificationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceSeverity",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FinancialResourceStatusCodes",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.OperationKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ObservationRelationshipType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToInteger",
            "fromType": "FHIR.unsignedInt",
            "toType": "System.Integer"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NameUse",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SubscriptionStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DocumentReferenceStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.LocationMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToInteger",
            "fromType": "FHIR.integer",
            "toType": "System.Integer"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.repositoryType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.LocationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FHIRSubstanceStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.UnknownContentCode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NoteType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TestReportStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.HTTPVerb",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CodeSystemContentMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EpisodeOfCareStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RemittanceOutcome",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.FHIRDeviceStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContactPointSystem",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SlotStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PropertyType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.markdown",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TypeDerivationRule",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationStatementStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GuidanceResponseStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuantityComparator",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RelatedArtifactType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.oid",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MeasureReportType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActionPrecheckBehavior",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SampledDataDataType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationStatementTaken",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CompartmentType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CompositionAttestationMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricCalibrationState",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GroupType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TypeRestfulInteraction",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CodeSystemHierarchyMeaning",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.VisionBase",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.BundleType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SystemVersionProcessingMode",
            "toType": "System.String"
        }
    ]
});