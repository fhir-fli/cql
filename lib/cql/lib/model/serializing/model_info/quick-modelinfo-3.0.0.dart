import '../../../cql.dart';

final quickmodelinfo300 = ModelInfo.fromJson({
    "name": "QUICK",
    "url": "http://cimi.hl7.org",
    "schemaLocation": "urn:hl7-org:elm-modelinfo:r1 modelinfo.xsd",
    "targetQualifier": "quick",
    "patientClassName": "Patient",
    "patientBirthDatePropertyName": "birthDate",
    "version": "3.0.0",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "QUICK.DoseRange",
            "baseType": "QUICK.MedicationDoseQuantity",
            "retrievable": false,
            "element": {
                "name": "value",
                "typeSpecifier": {
                    "type": "IntervalTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Goal",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "lifecycleStatus",
                    "type": "System.String"
                },
                {
                    "name": "description",
                    "type": "System.Concept"
                },
                {
                    "name": "start",
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
                                "name": "{urn:hl7-org:elm-types:r1}Concept"
                            }
                        ]
                    }
                },
                {
                    "name": "addresses",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Condition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Observation"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}MedicationStatement"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "NutritionRequest"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}ServiceRequest"
                            }
                        ]
                    }
                },
                {
                    "name": "target",
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
                            }
                        ]
                    }
                },
                {
                    "name": "expressedBy",
                    "type": "QUICK.Party"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProfessionalQualification",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "issuer",
                    "type": "QUICK.Organization"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Group",
            "baseType": "QUICK.CareRecipient",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "actual",
                    "type": "System.Boolean"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "quantity",
                    "type": "System.Integer"
                },
                {
                    "name": "managingEntity",
                    "type": "QUICK.Party"
                },
                {
                    "name": "characteristic",
                    "type": "QUICK.GroupCharacteristic"
                },
                {
                    "name": "member",
                    "type": "QUICK.GroupMember"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Finding",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": {
                "name": "status",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Reference",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "reference",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CareTeam",
            "baseType": "QUICK.CareGiver",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "subject",
                    "type": "QUICK.CareRecipient"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Encounter"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "participant",
                    "type": "QUICK.Participation"
                },
                {
                    "name": "reasonCode",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "QUICK.Condition"
                },
                {
                    "name": "managingOrganization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "note",
                    "type": "QUICK.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Location",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "operationalStatus",
                    "type": "System.Code"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "alias",
                    "type": "System.String"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "mode",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "physicalType",
                    "type": "System.Concept"
                },
                {
                    "name": "position",
                    "type": "QUICK.GpsLocation"
                },
                {
                    "name": "managingOrganization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Location"
                },
                {
                    "name": "hoursOfOperation",
                    "type": "QUICK.AvailableTime"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationAdministration",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "medication",
                    "type": "QUICK.Medication"
                },
                {
                    "name": "dosage",
                    "type": "QUICK.DosageTaken"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Narrative",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "div",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Hospitalization",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "preAdmissionIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "origin",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Location"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "admitSource",
                    "type": "System.Concept"
                },
                {
                    "name": "reAdmission",
                    "type": "System.Concept"
                },
                {
                    "name": "dietPreference",
                    "type": "System.Concept"
                },
                {
                    "name": "specialCourtesy",
                    "type": "System.Concept"
                },
                {
                    "name": "specialArrangement",
                    "type": "System.Concept"
                },
                {
                    "name": "destination",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Location"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Organization"
                            }
                        ]
                    }
                },
                {
                    "name": "dischargeDisposition",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Meta",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "versionId",
                    "type": "System.String"
                },
                {
                    "name": "lastUpdated",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "System.String"
                },
                {
                    "name": "security",
                    "type": "System.Code"
                },
                {
                    "name": "tag",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DosageTaken",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "site",
                    "type": "System.Concept"
                },
                {
                    "name": "route",
                    "type": "System.Concept"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "dose",
                    "type": "QUICK.DoseQuantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.MedicationDosePointRate"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUdiCarrier",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "deviceIdentifier",
                    "type": "System.String"
                },
                {
                    "name": "issuer",
                    "type": "System.String"
                },
                {
                    "name": "jurisdiction",
                    "type": "System.String"
                },
                {
                    "name": "carrierAIDC",
                    "type": "System.String"
                },
                {
                    "name": "carrierHRF",
                    "type": "System.String"
                },
                {
                    "name": "entryType",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EncounterDiagnosisOrProcedure",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "reference",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Condition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Procedure"
                            }
                        ]
                    }
                },
                {
                    "name": "use",
                    "type": "System.Concept"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDoseQuantity",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AdverseEvent",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Party"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "seriousness",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "System.Concept"
                },
                {
                    "name": "recorder",
                    "type": "QUICK.Party"
                },
                {
                    "name": "location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "suspectEntity",
                    "type": "QUICK.SuspectEntity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "vaccineCode",
            "element": [
                {
                    "name": "vaccineCode",
                    "type": "System.Concept"
                },
                {
                    "name": "doseQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "route",
                    "type": "System.Concept"
                },
                {
                    "name": "primarySource",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Address",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "line",
                    "type": "System.String"
                },
                {
                    "name": "city",
                    "type": "System.String"
                },
                {
                    "name": "district",
                    "type": "System.String"
                },
                {
                    "name": "state",
                    "type": "System.String"
                },
                {
                    "name": "postalCode",
                    "type": "System.String"
                },
                {
                    "name": "country",
                    "type": "System.String"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient",
            "baseType": "QUICK.IndividualCareRecipient",
            "retrievable": false,
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "birthDate",
                    "type": "System.DateTime"
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
                    "type": "QUICK.Address"
                },
                {
                    "name": "maritalStatus",
                    "type": "System.Concept"
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
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contact",
                    "type": "QUICK.IndividualContact"
                },
                {
                    "name": "communication",
                    "type": "QUICK.LanguageCompetency"
                },
                {
                    "name": "generalPractitioner",
                    "type": "QUICK.CareGiver"
                },
                {
                    "name": "managingOrganization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "link",
                    "type": "QUICK.RecordLink"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Appointment",
            "baseType": "QUICK.Event",
            "retrievable": false,
            "element": [
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "System.Concept"
                },
                {
                    "name": "appointmentTime",
                    "type": "System.Concept"
                },
                {
                    "name": "priority",
                    "type": "System.Integer"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "supportingInformation",
                    "type": "QUICK.Resource"
                },
                {
                    "name": "start",
                    "type": "System.DateTime"
                },
                {
                    "name": "stop",
                    "type": "System.DateTime"
                },
                {
                    "name": "minutesDuration",
                    "type": "System.Integer"
                },
                {
                    "name": "slot",
                    "type": "QUICK.Slot"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "patientInstruction",
                    "type": "System.String"
                },
                {
                    "name": "participant",
                    "type": "QUICK.Participation"
                },
                {
                    "name": "requestedPeriod",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PractitionerRole",
            "baseType": "QUICK.IndividualCareGiver",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "practitioner",
                    "type": "QUICK.Practitioner"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "System.Concept"
                },
                {
                    "name": "location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "healthcareService",
                    "type": "QUICK.HealthcareService"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "availableTime",
                    "type": "QUICK.AvailableTime"
                },
                {
                    "name": "notAvailable",
                    "type": "QUICK.NonAvailability"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DomainResource",
            "baseType": "QUICK.Resource",
            "retrievable": false,
            "element": {
                "name": "text",
                "type": "QUICK.Narrative"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.LanguageCompetency",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "System.Concept"
                },
                {
                    "name": "preferred",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceName",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RecordLink",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "other",
                    "type": "QUICK.IndividualCareRecipient"
                },
                {
                    "name": "type",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GroupMember",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "QUICK.Party"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "inactive",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AvailableTime",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "type": "System.String"
                },
                {
                    "name": "allDay",
                    "type": "System.Boolean"
                },
                {
                    "name": "availableStartTime",
                    "type": "System.Time"
                },
                {
                    "name": "availableEndTime",
                    "type": "System.Time"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Ingredient",
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
                                "modelName": "QUICK",
                                "name": "DomainResource"
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
                    "name": "isActive",
                    "type": "System.Boolean"
                },
                {
                    "name": "strength",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Device",
            "baseType": "QUICK.Party",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "udiCarrier",
                    "type": "QUICK.DeviceUdiCarrier"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "deviceName",
                    "type": "QUICK.DeviceName"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "statusReason",
                    "type": "System.Concept"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Patient"
                },
                {
                    "name": "owner",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "distinctIdentifier",
                    "type": "System.String"
                },
                {
                    "name": "manufacturer",
                    "type": "System.String"
                },
                {
                    "name": "manufactureDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "expirationDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "lotNumber",
                    "type": "System.String"
                },
                {
                    "name": "serialNumber",
                    "type": "System.String"
                },
                {
                    "name": "modelNumber",
                    "type": "System.String"
                },
                {
                    "name": "partNumber",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "QUICK.DeviceVersion"
                },
                {
                    "name": "contact",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "note",
                    "type": "QUICK.Annotation"
                },
                {
                    "name": "safety",
                    "type": "System.Concept"
                },
                {
                    "name": "parent",
                    "type": "QUICK.Device"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Slot",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "System.Concept"
                },
                {
                    "name": "appointmentType",
                    "type": "System.Concept"
                },
                {
                    "name": "schedule",
                    "type": "QUICK.Schedule"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "start",
                    "type": "System.DateTime"
                },
                {
                    "name": "end",
                    "type": "System.DateTime"
                },
                {
                    "name": "overbooked",
                    "type": "System.Boolean"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RelatedPerson",
            "baseType": "QUICK.IndividualCareRecipient",
            "retrievable": false,
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Patient"
                },
                {
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "birthDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "photo",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "communication",
                    "type": "QUICK.LanguageCompetency"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GroupCharacteristic",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
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
                                "modelName": "QUICK",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
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
                    "name": "exclude",
                    "type": "System.Boolean"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SampledData",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "origin",
                    "type": "System.Quantity"
                },
                {
                    "name": "period",
                    "type": "System.Decimal"
                },
                {
                    "name": "factor",
                    "type": "System.Decimal"
                },
                {
                    "name": "lowerLimit",
                    "type": "System.Decimal"
                },
                {
                    "name": "upperLimit",
                    "type": "System.Decimal"
                },
                {
                    "name": "dimensions",
                    "type": "System.Integer"
                },
                {
                    "name": "data",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDoseRate",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CareGiver",
            "baseType": "QUICK.Party",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ChoiceElement",
            "baseType": "QUICK.Element",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DoseAndRate",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "dose",
                    "type": "QUICK.MedicationDoseQuantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.MedicationDoseRate"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CareRecipient",
            "baseType": "QUICK.Party",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IndividualCareGiver",
            "baseType": "QUICK.CareGiver",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Causality",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "assessment",
                    "type": "System.Concept"
                },
                {
                    "name": "productRelatedness",
                    "type": "System.String"
                },
                {
                    "name": "author",
                    "type": "QUICK.IndividualCareGiver"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GpsLocation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "longitude",
                    "type": "System.Decimal"
                },
                {
                    "name": "latitude",
                    "type": "System.Decimal"
                },
                {
                    "name": "altitude",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDosePointRate",
            "baseType": "QUICK.MedicationDoseRate",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "manufacturer",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "form",
                    "type": "System.Concept"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "ingredient",
                    "type": "QUICK.Ingredient"
                },
                {
                    "name": "batch",
                    "type": "QUICK.MedicationBatch"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "outcome",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
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
                                "type": "IntervalTypeSpecifier"
                            }
                        ]
                    }
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Event"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IndividualCareRecipient",
            "baseType": "QUICK.CareRecipient",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RateQuantity",
            "baseType": "QUICK.MedicationDosePointRate",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Quantity"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GoalTarget",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "measure",
                    "type": "System.Concept"
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
                                "modelName": "QUICK",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ContactPoint",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "use",
                    "type": "System.String"
                },
                {
                    "name": "rank",
                    "type": "System.Integer"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "daysSupply",
                    "type": "System.Quantity"
                },
                {
                    "name": "dosageInstruction",
                    "type": "QUICK.DosageInstruction"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Performer"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Medication"
                },
                {
                    "name": "fillNumber",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionRequest",
            "baseType": "QUICK.Request",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Money",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "currency",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticReport",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Party"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Encounter"
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
                    "type": "System.DateTime"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Party"
                },
                {
                    "name": "resultsInterpreter",
                    "type": "QUICK.Party"
                },
                {
                    "name": "result",
                    "type": "QUICK.Observation"
                },
                {
                    "name": "conclusion",
                    "type": "System.String"
                },
                {
                    "name": "conclusionCode",
                    "type": "System.Concept"
                },
                {
                    "name": "presentedForm",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "locationPerformed",
                    "type": "QUICK.Location"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
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
                    "name": "abatement",
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
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "System.Concept"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "asserter",
                    "type": "QUICK.Party"
                },
                {
                    "name": "clinicalStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "assertedDate",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyMemberHistoryCondition",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "outcome",
                    "type": "System.Concept"
                },
                {
                    "name": "contributedToDeath",
                    "type": "System.Boolean"
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
                    "name": "note",
                    "type": "QUICK.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Element",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NonAvailability",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "during",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SuspectEntity",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "instance",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Immunization"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Procedure"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Medication"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}MedicationAdministration"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}MedicationStatement"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Device"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Substance"
                            }
                        ]
                    }
                },
                {
                    "name": "causality",
                    "type": "QUICK.Causality"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PatientLocation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "physicalType",
                    "type": "System.Concept"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ServiceRequest",
            "baseType": "QUICK.Request",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "doNotPerform",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Communication",
            "baseType": "QUICK.Event",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "sender",
                    "type": "QUICK.Performer"
                },
                {
                    "name": "recipient",
                    "type": "QUICK.Party"
                },
                {
                    "name": "sent",
                    "type": "System.DateTime"
                },
                {
                    "name": "received",
                    "type": "System.DateTime"
                },
                {
                    "name": "medium",
                    "type": "System.Concept"
                },
                {
                    "name": "payload",
                    "type": "QUICK.CommunicationPayload"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IndividualContact",
            "baseType": "QUICK.Contact",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseStatement",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "device.code",
            "element": [
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "device",
                    "type": "QUICK.Device"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Signature",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "when",
                    "type": "System.DateTime"
                },
                {
                    "name": "who",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "onBehalfOf",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "targetFormat",
                    "type": "System.String"
                },
                {
                    "name": "sigFormat",
                    "type": "System.String"
                },
                {
                    "name": "data",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SubstancePackage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "expiry",
                    "type": "System.DateTime"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Eligibility",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BackboneElement",
            "baseType": "QUICK.Element",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "class",
            "element": [
                {
                    "name": "class",
                    "type": "System.Code"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "System.Concept"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
                },
                {
                    "name": "participant",
                    "type": "QUICK.Participation"
                },
                {
                    "name": "appointment",
                    "type": "QUICK.Appointment"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "length",
                    "type": "System.Quantity"
                },
                {
                    "name": "diagnosisOrProcedure",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Condition"
                            },
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "{http://hl7.org/fhir}Procedure"
                            }
                        ]
                    }
                },
                {
                    "name": "hospitalization",
                    "type": "QUICK.Hospitalization"
                },
                {
                    "name": "location",
                    "type": "QUICK.PatientLocation"
                },
                {
                    "name": "serviceProvider",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Encounter"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Observation",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
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
                                "modelName": "QUICK",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
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
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "component",
                    "type": "QUICK.ObservationComponent"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Party"
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
                    "type": "System.DateTime"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "dataAbsentReason",
                    "type": "System.Concept"
                },
                {
                    "name": "basedOn",
                    "type": "QUICK.Request"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationStatement",
            "baseType": "QUICK.Event",
            "retrievable": true,
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "dosage",
                    "type": "QUICK.DosageInstruction"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Medication"
                },
                {
                    "name": "informationSource",
                    "type": "QUICK.Party"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DoseQuantity",
            "baseType": "QUICK.MedicationDoseQuantity",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Quantity"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntolerance",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "criticality",
                    "type": "System.String"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Patient"
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
                    "name": "recorder",
                    "type": "QUICK.Party"
                },
                {
                    "name": "asserter",
                    "type": "QUICK.Party"
                },
                {
                    "name": "assertedDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "lastOccurrence",
                    "type": "System.DateTime"
                },
                {
                    "name": "note",
                    "type": "QUICK.Annotation"
                },
                {
                    "name": "reaction",
                    "type": "QUICK.Reaction"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceRequest",
            "baseType": "QUICK.Request",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": {
                "name": "code",
                "elementTypeSpecifier": {
                    "type": "ChoiceTypeSpecifier",
                    "choice": [
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "QUICK",
                            "name": "DomainResource"
                        },
                        {
                            "type": "NamedTypeSpecifier",
                            "modelName": "System",
                            "name": "{urn:hl7-org:elm-types:r1}Concept"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RateRange",
            "baseType": "QUICK.MedicationDoseRate",
            "retrievable": false,
            "element": {
                "name": "value",
                "typeSpecifier": {
                    "type": "IntervalTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Timing",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "System.DateTime"
                },
                {
                    "name": "repeat",
                    "type": "QUICK.TimingRepeat"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OrganizationalContact",
            "baseType": "QUICK.Contact",
            "retrievable": false,
            "element": {
                "name": "purpose",
                "type": "System.Concept"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.InitialFill",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "duration",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HumanName",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "System.String"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "family",
                    "type": "System.String"
                },
                {
                    "name": "given",
                    "type": "System.String"
                },
                {
                    "name": "prefix",
                    "type": "System.String"
                },
                {
                    "name": "suffix",
                    "type": "System.String"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Party",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "identifier",
                "type": "QUICK.Identifier"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RateRatio",
            "baseType": "QUICK.MedicationDosePointRate",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.Ratio"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequest",
            "baseType": "QUICK.Request",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "doNotPerform",
                    "type": "System.Boolean"
                },
                {
                    "name": "medium",
                    "type": "System.Concept"
                },
                {
                    "name": "payload",
                    "type": "QUICK.CommunicationPayload"
                },
                {
                    "name": "sender",
                    "type": "QUICK.Party"
                },
                {
                    "name": "recipient",
                    "type": "QUICK.Party"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "function",
                    "type": "System.Concept"
                },
                {
                    "name": "actor",
                    "type": "QUICK.Party"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationBatch",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "lotNumber",
                    "type": "System.String"
                },
                {
                    "name": "expirationDate",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Practitioner",
            "baseType": "QUICK.IndividualCareGiver",
            "retrievable": false,
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "birthdate",
                    "type": "System.DateTime"
                },
                {
                    "name": "photo",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "qualification",
                    "type": "QUICK.ProfessionalQualification"
                },
                {
                    "name": "communication",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DosageInstruction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseAndRate",
                    "type": "QUICK.DoseAndRate"
                },
                {
                    "name": "timing",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "route",
                    "type": "System.Concept"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Participation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "System.Concept"
                },
                {
                    "name": "member",
                    "type": "QUICK.Party"
                },
                {
                    "name": "onBehalfOf",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "required",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DispenseRequest",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "initialFill",
                    "type": "QUICK.InitialFill"
                },
                {
                    "name": "dispenseInterval",
                    "type": "System.Quantity"
                },
                {
                    "name": "validityPeriod",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "numberOfRepeatsAllowed",
                    "type": "System.Integer"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "expectedSupplyDuration",
                    "type": "System.Quantity"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Organization"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Resource",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "meta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "implicitRules",
                    "type": "System.String"
                },
                {
                    "name": "language",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService",
            "baseType": "QUICK.CareGiver",
            "retrievable": false,
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "providedBy",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "System.Concept"
                },
                {
                    "name": "location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "extraDetails",
                    "type": "System.String"
                },
                {
                    "name": "photo",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "coverageArea",
                    "type": "QUICK.Location"
                },
                {
                    "name": "serviceProvisionCode",
                    "type": "System.Concept"
                },
                {
                    "name": "eligibility",
                    "type": "QUICK.Eligibility"
                },
                {
                    "name": "program",
                    "type": "System.Concept"
                },
                {
                    "name": "characteristic",
                    "type": "System.Concept"
                },
                {
                    "name": "communication",
                    "type": "System.Concept"
                },
                {
                    "name": "referralMethod",
                    "type": "System.Concept"
                },
                {
                    "name": "appointmentRequired",
                    "type": "System.Boolean"
                },
                {
                    "name": "availableTime",
                    "type": "QUICK.AvailableTime"
                },
                {
                    "name": "notAvailable",
                    "type": "QUICK.NonAvailability"
                },
                {
                    "name": "availabilityException",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Organization",
            "baseType": "QUICK.CareGiver",
            "retrievable": false,
            "element": [
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "alias",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "contact",
                    "type": "QUICK.OrganizationalContact"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationRequest",
            "baseType": "QUICK.Request",
            "retrievable": true,
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "dosageInstruction",
                    "type": "QUICK.DosageInstruction"
                },
                {
                    "name": "dispenseRequest",
                    "type": "QUICK.DispenseRequest"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Medication"
                },
                {
                    "name": "doNotPerform",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceVersion",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "component",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "value",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Request",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "intent",
                    "type": "System.String"
                },
                {
                    "name": "reasonCode",
                    "type": "System.Concept"
                },
                {
                    "name": "authoredOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "requester",
                    "type": "QUICK.Party"
                },
                {
                    "name": "subject",
                    "type": "QUICK.CareRecipient"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "statusReason",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyMemberHistory",
            "baseType": "QUICK.Finding",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "condition",
                    "type": "QUICK.FamilyMemberHistoryCondition"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Patient"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Event",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "statusReason",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.CareRecipient"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Performer"
                },
                {
                    "name": "reasonCode",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "QUICK.Condition"
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
                    "name": "basedOn",
                    "type": "QUICK.Request"
                },
                {
                    "name": "recorded",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Identifier",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "period",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "assigner",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationComponent",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
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
                                "modelName": "QUICK",
                                "name": "{urn:hl7-org:elm-types:r1}Ratio"
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
                    "type": "System.Concept"
                },
                {
                    "name": "interpretation",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Reaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "manifestation",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "onset",
                    "type": "System.DateTime"
                },
                {
                    "name": "severity",
                    "type": "System.String"
                },
                {
                    "name": "exposureRoute",
                    "type": "System.Concept"
                },
                {
                    "name": "note",
                    "type": "QUICK.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Ratio",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "numerator",
                    "type": "System.Quantity"
                },
                {
                    "name": "denominator",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationPayload",
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
                            "name": "DomainResource"
                        }
                    ]
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Annotation",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "author",
                    "elementTypeSpecifier": {
                        "type": "ChoiceTypeSpecifier",
                        "choice": [
                            {
                                "type": "NamedTypeSpecifier",
                                "modelName": "QUICK",
                                "name": "DomainResource"
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
                    "type": "System.DateTime"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Schedule",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "System.Concept"
                },
                {
                    "name": "actor",
                    "type": "QUICK.Party"
                },
                {
                    "name": "planningHorizon",
                    "typeSpecifier": {
                        "type": "IntervalTypeSpecifier"
                    }
                },
                {
                    "name": "comment",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Substance",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "instance",
                    "type": "QUICK.SubstancePackage"
                },
                {
                    "name": "ingredient",
                    "type": "QUICK.Ingredient"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Attachment",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "System.String"
                },
                {
                    "name": "language",
                    "type": "System.String"
                },
                {
                    "name": "data",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "size",
                    "type": "System.Integer"
                },
                {
                    "name": "hash",
                    "type": "System.String"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "creation",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.TimingRepeat",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
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
                    "type": "System.Integer"
                },
                {
                    "name": "countMax",
                    "type": "System.Integer"
                },
                {
                    "name": "duration",
                    "type": "System.Decimal"
                },
                {
                    "name": "durationMax",
                    "type": "System.Decimal"
                },
                {
                    "name": "durationUnit",
                    "type": "System.String"
                },
                {
                    "name": "frequency",
                    "type": "System.Integer"
                },
                {
                    "name": "frequencyMax",
                    "type": "System.Integer"
                },
                {
                    "name": "period",
                    "type": "System.Decimal"
                },
                {
                    "name": "periodMax",
                    "type": "System.Decimal"
                },
                {
                    "name": "periodUnit",
                    "type": "System.String"
                },
                {
                    "name": "dayOfWeek",
                    "type": "System.String"
                },
                {
                    "name": "timeOfDay",
                    "type": "System.Time"
                },
                {
                    "name": "when",
                    "type": "System.String"
                },
                {
                    "name": "offset",
                    "type": "System.Integer"
                }
            ]
        }
    ]
});