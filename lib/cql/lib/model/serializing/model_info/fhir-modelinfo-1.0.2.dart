import '../../../cql.dart';

final fhirmodelinfo102 = ModelInfo.fromJson({
    "name": "FHIR",
    "url": "http://hl7.org/fhir",
    "targetQualifier": "fhir",
    "patientClassName": "FHIR.Patient",
    "patientBirthDatePropertyName": "birthDate.value",
    "version": "1.0.2",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "FHIR.uuid",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Count",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NamingSystem.UniqueId",
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
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.date",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Date"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DetectedIssue.Mitigation",
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
            "name": "FHIR.ImplementationGuide.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "purpose",
                    "type": "FHIR.GuideResourcePurpose"
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
                    "name": "sourceUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "sourceReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "exampleFor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationAdministration.Dosage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "siteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteReference",
                    "type": "FHIR.Reference"
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
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateRange",
                    "type": "FHIR.Range"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClinicalImpression.Finding",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "cause",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingObjectSelection.Frames",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "frameNumbers",
                    "type": "list<FHIR.unsignedInt>"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.TestScript.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "metadata",
                    "type": "FHIR.TestScript.Metadata"
                },
                {
                    "name": "multiserver",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "fixture",
                    "type": "list<FHIR.TestScript.Fixture>"
                },
                {
                    "name": "profile",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "variable",
                    "type": "list<FHIR.TestScript.Variable>"
                },
                {
                    "name": "setup",
                    "type": "FHIR.TestScript.Setup"
                },
                {
                    "name": "test",
                    "type": "list<FHIR.TestScript.Test>"
                },
                {
                    "name": "teardown",
                    "type": "FHIR.TestScript.Teardown"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Attachment",
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
            "name": "FHIR.ProvenanceEntityRole",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.UnitsOfTime",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingObjectSelection.Study",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "imagingStudy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "series",
                    "type": "list<FHIR.ImagingObjectSelection.Series>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AddressType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle.Link",
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
            "name": "FHIR.ClaimResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                },
                {
                    "name": "outcome",
                    "type": "FHIR.code"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "payeeType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.ClaimResponse.Item>"
                },
                {
                    "name": "addItem",
                    "type": "list<FHIR.ClaimResponse.AddItem>"
                },
                {
                    "name": "error",
                    "type": "list<FHIR.ClaimResponse.Error>"
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
                    "name": "paymentAdjustment",
                    "type": "FHIR.Money"
                },
                {
                    "name": "paymentAdjustmentReason",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "paymentDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "paymentAmount",
                    "type": "FHIR.Money"
                },
                {
                    "name": "paymentRef",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "reserved",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "form",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.ClaimResponse.Note>"
                },
                {
                    "name": "coverage",
                    "type": "list<FHIR.ClaimResponse.Coverage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.SubDetail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication2>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Practitioner.PractitionerRole",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "location",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "healthcareService",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.StructureDefinition.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "fhirVersion",
                    "type": "FHIR.id"
                },
                {
                    "name": "mapping",
                    "type": "list<FHIR.StructureDefinition.Mapping>"
                },
                {
                    "name": "kind",
                    "type": "FHIR.StructureDefinitionKind"
                },
                {
                    "name": "constrainedType",
                    "type": "FHIR.code"
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
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "base",
                    "type": "FHIR.uri"
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
            "name": "FHIR.AllergyIntoleranceCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Filter",
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
            "name": "FHIR.HealthcareService.NotAvailable",
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
            "name": "FHIR.Immunization.VaccinationProtocol",
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
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.Conformance.Event",
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
                    "type": "FHIR.ConformanceEventMode"
                },
                {
                    "name": "focus",
                    "type": "FHIR.code"
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
            "name": "FHIR.Medication.Package",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "container",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "content",
                    "type": "list<FHIR.Medication.Content>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SpecimenStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceUseStatement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "bodySiteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "whenUsed",
                    "type": "FHIR.Period"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "indication",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "notes",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "recordedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "timingTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "timingDateTime",
                    "type": "FHIR.dateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Procedure",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.ProcedureStatus"
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
                    "name": "notPerformed",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reasonNotPerformed",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "bodySite",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<FHIR.Procedure.Performer>"
                },
                {
                    "name": "performedDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "performedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "report",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "complication",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "followUp",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "notes",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "focalDevice",
                    "type": "list<FHIR.Procedure.FocalDevice>"
                },
                {
                    "name": "used",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DetectedIssueSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EligibilityResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.code"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.ValueSet.CodeSystem",
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
                    "name": "caseSensitive",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.SubDetail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
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
                },
                {
                    "name": "udi",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SearchParameter",
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
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.SearchParameter.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "base",
                    "type": "FHIR.code"
                },
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "description",
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
                    "type": "list<FHIR.code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.IssueSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataElementStringency",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Appointment",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.AppointmentStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                },
                {
                    "name": "participant",
                    "type": "list<FHIR.Appointment.Participant>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Assert",
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
                    "name": "compareToSourcePath",
                    "type": "FHIR.string"
                },
                {
                    "name": "contentType",
                    "type": "FHIR.ContentType"
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
                    "name": "resource",
                    "type": "FHIR.code"
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
            "name": "FHIR.Conformance.Certificate",
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
            "name": "FHIR.Contract.ValuedItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entityCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "entityReference",
                    "type": "FHIR.Reference"
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
                    "type": "FHIR.SimpleQuantity"
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
            "name": "FHIR.VisionEyes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ElementDefinition.Binding",
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
                    "name": "valueSetUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueSetReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationDefinition.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinitionKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Actor1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ElementDefinition",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "representation",
                    "type": "list<FHIR.PropertyRepresentation>"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "label",
                    "type": "FHIR.string"
                },
                {
                    "name": "code",
                    "type": "list<FHIR.Coding>"
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
                    "name": "comments",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "alias",
                    "type": "list<FHIR.string>"
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
                    "name": "base",
                    "type": "FHIR.ElementDefinition.Base"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.ElementDefinition.Type>"
                },
                {
                    "name": "nameReference",
                    "type": "FHIR.string"
                },
                {
                    "name": "defaultValueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "defaultValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "defaultValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "defaultValueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "defaultValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "defaultValueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "defaultValueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "defaultValueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "defaultValueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "defaultValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "defaultValueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "defaultValueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "defaultValueUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "defaultValueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "defaultValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "defaultValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "defaultValueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "defaultValueAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "defaultValueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "defaultValueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "defaultValueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "defaultValueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "defaultValueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "defaultValueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "defaultValuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "defaultValueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "defaultValueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "defaultValueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "defaultValueSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "defaultValueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "defaultValueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "defaultValueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "defaultValueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "defaultValueMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "meaningWhenMissing",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "fixedBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "fixedInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "fixedDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "fixedBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "fixedInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "fixedString",
                    "type": "FHIR.string"
                },
                {
                    "name": "fixedUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "fixedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "fixedDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "fixedTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "fixedCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "fixedOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "fixedUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "fixedId",
                    "type": "FHIR.id"
                },
                {
                    "name": "fixedUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "fixedPositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "fixedMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "fixedAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "fixedAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "fixedIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "fixedCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "fixedCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "fixedQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "fixedRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "fixedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "fixedRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "fixedReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "fixedSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "fixedSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "fixedHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "fixedAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "fixedContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "fixedTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "fixedMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "patternBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "patternInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "patternDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "patternBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "patternInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "patternString",
                    "type": "FHIR.string"
                },
                {
                    "name": "patternUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "patternDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "patternDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "patternTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "patternCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "patternOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "patternUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "patternId",
                    "type": "FHIR.id"
                },
                {
                    "name": "patternUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "patternPositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "patternMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "patternAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "patternAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "patternIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patternCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patternCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "patternQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "patternRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "patternPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "patternRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "patternReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "patternSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "patternSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "patternHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "patternAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "patternContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "patternTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "patternMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "exampleBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "exampleInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "exampleDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "exampleBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "exampleInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "exampleString",
                    "type": "FHIR.string"
                },
                {
                    "name": "exampleUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "exampleDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "exampleDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "exampleTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "exampleCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "exampleOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "exampleUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "exampleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "exampleUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "examplePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "exampleMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "exampleAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "exampleAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "exampleIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "exampleCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "exampleCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "exampleQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "exampleRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "examplePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "exampleRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "exampleReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "exampleSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "exampleSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "exampleHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "exampleAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "exampleContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "exampleTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "exampleMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "minValueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "minValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "minValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "minValueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "minValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "minValueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "minValueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "minValueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "minValueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "minValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "minValueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "minValueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "minValueUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "minValueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "minValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "minValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "minValueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "minValueAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "minValueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "minValueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "minValueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "minValueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "minValueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "minValueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "minValuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "minValueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "minValueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "minValueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "minValueSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "minValueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "minValueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "minValueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "minValueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "minValueMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "maxValueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "maxValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "maxValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "maxValueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "maxValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "maxValueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "maxValueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "maxValueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "maxValueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "maxValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "maxValueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "maxValueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "maxValueUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "maxValueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "maxValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "maxValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "maxValueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "maxValueAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "maxValueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "maxValueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "maxValueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "maxValueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "maxValueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "maxValueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "maxValuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "maxValueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "maxValueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "maxValueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "maxValueSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "maxValueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "maxValueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "maxValueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "maxValueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "maxValueMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "maxLength",
                    "type": "FHIR.integer"
                },
                {
                    "name": "condition",
                    "type": "list<FHIR.id>"
                },
                {
                    "name": "constraint",
                    "type": "list<FHIR.ElementDefinition.Constraint>"
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
                    "type": "list<FHIR.ElementDefinition.Mapping>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Composition.Attester",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "list<FHIR.CompositionAttestationMode>"
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
            "name": "FHIR.Device",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "status",
                    "type": "FHIR.DeviceStatus"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.string"
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
                    "name": "manufactureDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "expiry",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "udi",
                    "type": "FHIR.string"
                },
                {
                    "name": "lotNumber",
                    "type": "FHIR.string"
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ProcedureRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "bodySite",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "scheduledDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "scheduledPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "scheduledTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.ProcedureRequestStatus"
                },
                {
                    "name": "notes",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "orderedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "orderer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.ProcedureRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Capability",
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
                    "name": "destination",
                    "type": "FHIR.integer"
                },
                {
                    "name": "link",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "conformance",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationOutcome.Issue",
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
                    "type": "list<FHIR.string>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuestionnaireResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceMetric",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
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
                    "type": "list<FHIR.DeviceMetric.Calibration>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "profile",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "interaction",
                    "type": "list<FHIR.Conformance.Interaction>"
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
                    "name": "conditionalUpdate",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "conditionalDelete",
                    "type": "FHIR.ConditionalDeleteStatus"
                },
                {
                    "name": "searchInclude",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "searchRevInclude",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "searchParam",
                    "type": "list<FHIR.Conformance.SearchParam>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Flag",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.FlagStatus"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
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
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Messaging",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "endpoint",
                    "type": "list<FHIR.Conformance.Endpoint>"
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
                    "name": "event",
                    "type": "list<FHIR.Conformance.Event>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EnrollmentRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataElement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.DataElement.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "stringency",
                    "type": "FHIR.DataElementStringency"
                },
                {
                    "name": "mapping",
                    "type": "list<FHIR.DataElement.Mapping>"
                },
                {
                    "name": "element",
                    "type": "list<FHIR.ElementDefinition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Substance.Ingredient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "substance",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Action",
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
            "name": "FHIR.Conformance.SearchParam",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "target",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.SearchModifierCode>"
                },
                {
                    "name": "chain",
                    "type": "list<FHIR.string>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SearchParameter.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationOrder.Substitution",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntoleranceType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ElementDefinition.Constraint",
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
                    "name": "xpath",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConformanceResourceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingObjectSelection.Instance",
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
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "frames",
                    "type": "list<FHIR.ImagingObjectSelection.Frames>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication1>"
                },
                {
                    "name": "subDetail",
                    "type": "list<FHIR.ClaimResponse.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ProcessRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "action",
                    "type": "FHIR.ActionList"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                    "type": "list<FHIR.ProcessRequest.Item>"
                },
                {
                    "name": "include",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "exclude",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlanActivityStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Detail",
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
            "name": "FHIR.ActionList",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Test",
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
                    "name": "metadata",
                    "type": "FHIR.TestScript.Metadata"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.TestScript.Action1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder.Nutrient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "modifier",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "amount",
                    "type": "FHIR.SimpleQuantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Age",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingStudy.Series",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "modality",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "uid",
                    "type": "FHIR.oid"
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
                    "name": "url",
                    "type": "FHIR.uri"
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
                    "name": "instance",
                    "type": "list<FHIR.ImagingStudy.Instance>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ParticipationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Composition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
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
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.CompositionStatus"
                },
                {
                    "name": "confidentiality",
                    "type": "FHIR.code"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "author",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "attester",
                    "type": "list<FHIR.Composition.Attester>"
                },
                {
                    "name": "custodian",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "event",
                    "type": "list<FHIR.Composition.Event>"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "section",
                    "type": "list<FHIR.Composition.Section>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinition.Snapshot",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<FHIR.ElementDefinition>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlan.RelatedPlan",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CarePlanRelationship"
                },
                {
                    "name": "plan",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImmunizationRecommendation.DateCriterion",
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
            "name": "FHIR.MedicationOrder",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "dateWritten",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationOrderStatus"
                },
                {
                    "name": "dateEnded",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "reasonEnded",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "prescriber",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "note",
                    "type": "FHIR.string"
                },
                {
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<FHIR.MedicationOrder.DosageInstruction>"
                },
                {
                    "name": "dispenseRequest",
                    "type": "FHIR.MedicationOrder.DispenseRequest"
                },
                {
                    "name": "substitution",
                    "type": "FHIR.MedicationOrder.Substitution"
                },
                {
                    "name": "priorPrescription",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.instant",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Communication.Payload",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentString",
                    "type": "FHIR.string"
                },
                {
                    "name": "contentAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AssertionOperatorType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.VisionPrescription.Dispense",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "product",
                    "type": "FHIR.Coding"
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
                    "type": "FHIR.SimpleQuantity"
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
                    "name": "notes",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DaysOfWeek",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConformanceEventMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.IssueType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TransactionMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ContentType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuestionnaireResponse.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
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
                    "name": "group",
                    "type": "list<FHIR.QuestionnaireResponse.Group>"
                },
                {
                    "name": "question",
                    "type": "list<FHIR.QuestionnaireResponse.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingStudy.Instance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "sopClass",
                    "type": "FHIR.oid"
                },
                {
                    "name": "type",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "content",
                    "type": "list<FHIR.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FamilyHistoryStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationOrder.DispenseRequest",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
                },
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
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "expectedSupplyDuration",
                    "type": "FHIR.Duration"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.positiveInt",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ValueSet.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "lockedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "immutable",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "extensible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "codeSystem",
                    "type": "FHIR.ValueSet.CodeSystem"
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
            "name": "FHIR.Signature",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "when",
                    "type": "FHIR.instant"
                },
                {
                    "name": "whoUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "whoReference",
                    "type": "FHIR.Reference"
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
            "name": "FHIR.AuditEventParticipantNetworkType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CommunicationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClinicalImpressionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AssertionResponseTypes",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentReference.Context",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "event",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "list<FHIR.DocumentReference.Related>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationOutcome",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": {
                "name": "issue",
                "type": "list<FHIR.OperationOutcome.Issue>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Practitioner.Qualification",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
            "name": "FHIR.ImagingObjectSelection.Series",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "instance",
                    "type": "list<FHIR.ImagingObjectSelection.Instance>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Signer",
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
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceUseRequestPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ProcessResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                },
                {
                    "name": "form",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "notes",
                    "type": "list<FHIR.ProcessResponse.Notes>"
                },
                {
                    "name": "error",
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Immunization.Explanation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonNotGiven",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Narrative",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "status",
                "type": "FHIR.NarrativeStatus"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OrderStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NarrativeStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Friendly",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Adjudication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.Specimen.Container",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "specimenQuantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "additiveCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "additiveReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.string",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GuidePageKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GuideDependencyType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Provenance.RelatedAgent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "target",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Element",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.code"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.ResourceVersionPolicy",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.dateTime",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationAdministrationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Encounter.Location",
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
            "name": "FHIR.Claim.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "provider",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "diagnosisLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "serviceDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
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
                },
                {
                    "name": "udi",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subSite",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.Claim.Detail>"
                },
                {
                    "name": "prosthesis",
                    "type": "FHIR.Claim.Prosthesis"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.List.Entry",
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
            "name": "FHIR.Patient.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "name",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "FHIR.Address"
                },
                {
                    "name": "gender",
                    "type": "FHIR.code"
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
            "name": "FHIR.RestfulConformanceMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlan",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.CarePlanStatus"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "modified",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "category",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "addresses",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "support",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "relatedPlan",
                    "type": "list<FHIR.CarePlan.RelatedPlan>"
                },
                {
                    "name": "participant",
                    "type": "list<FHIR.CarePlan.Participant>"
                },
                {
                    "name": "goal",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "activity",
                    "type": "list<FHIR.CarePlan.Activity>"
                },
                {
                    "name": "note",
                    "type": "FHIR.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Subscription",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "criteria",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "reason",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.SubscriptionStatus"
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
                    "name": "end",
                    "type": "FHIR.instant"
                },
                {
                    "name": "tag",
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Person",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "name",
                    "type": "list<FHIR.HumanName>"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "gender",
                    "type": "FHIR.code"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "address",
                    "type": "list<FHIR.Address>"
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
                    "type": "list<FHIR.Person.Link>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Duration",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Questionnaire",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "version",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.QuestionnaireStatus"
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
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "subjectType",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "group",
                    "type": "FHIR.Questionnaire.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle.Entry",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "link",
                    "type": "list<FHIR.Bundle.Link>"
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
            "name": "FHIR.Patient",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "type": "list<FHIR.HumanName>"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "gender",
                    "type": "FHIR.code"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "deceasedBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "deceasedDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "address",
                    "type": "list<FHIR.Address>"
                },
                {
                    "name": "maritalStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "multipleBirthBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "multipleBirthInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "photo",
                    "type": "list<FHIR.Attachment>"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.Patient.Contact>"
                },
                {
                    "name": "animal",
                    "type": "FHIR.Patient.Animal"
                },
                {
                    "name": "communication",
                    "type": "list<FHIR.Patient.Communication>"
                },
                {
                    "name": "careProvider",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "link",
                    "type": "list<FHIR.Patient.Link>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NamingSystemIdentifierType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuestionnaireResponse.Question",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "answer",
                    "type": "list<FHIR.QuestionnaireResponse.Answer>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.List",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.ListStatus"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "orderedBy",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "mode",
                    "type": "FHIR.ListMode"
                },
                {
                    "name": "note",
                    "type": "FHIR.string"
                },
                {
                    "name": "entry",
                    "type": "list<FHIR.List.Entry>"
                },
                {
                    "name": "emptyReason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.RelatedPerson",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "gender",
                    "type": "FHIR.code"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "address",
                    "type": "list<FHIR.Address>"
                },
                {
                    "name": "photo",
                    "type": "list<FHIR.Attachment>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AccountStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Link",
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
            "name": "FHIR.ProcedureRequestPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationDispenseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FamilyMemberHistory.Condition",
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
                    "name": "onsetQuantity",
                    "type": "FHIR.Age"
                },
                {
                    "name": "onsetRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "onsetPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "onsetString",
                    "type": "FHIR.string"
                },
                {
                    "name": "note",
                    "type": "FHIR.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NamingSystem",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "kind",
                    "type": "FHIR.NamingSystemType"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.NamingSystem.Contact>"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.string"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "uniqueId",
                    "type": "list<FHIR.NamingSystem.UniqueId>"
                },
                {
                    "name": "replacedBy",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntolerance.Reaction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "certainty",
                    "type": "FHIR.AllergyIntoleranceCertainty"
                },
                {
                    "name": "manifestation",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "FHIR.Annotation"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder.Texture",
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
            "name": "FHIR.IdentifierUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DigitalMediaType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Specimen.Treatment",
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
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.HealthcareService.ServiceType",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Provenance.Entity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.ProvenanceEntityRole"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reference",
                    "type": "FHIR.uri"
                },
                {
                    "name": "display",
                    "type": "FHIR.string"
                },
                {
                    "name": "agent",
                    "type": "FHIR.Provenance.Agent"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Detail1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication4>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentReference",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
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
                    "name": "author",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "custodian",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authenticator",
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
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "docStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "relatesTo",
                    "type": "list<FHIR.DocumentReference.RelatesTo>"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "securityLabel",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "content",
                    "type": "list<FHIR.DocumentReference.Content>"
                },
                {
                    "name": "context",
                    "type": "FHIR.DocumentReference.Context"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Address",
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
                    "type": "list<FHIR.string>"
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
            "name": "FHIR.CodeableConcept",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "coding",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.BindingStrength",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Medication.Product",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "form",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "ingredient",
                    "type": "list<FHIR.Medication.Ingredient>"
                },
                {
                    "name": "batch",
                    "type": "list<FHIR.Medication.Batch>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Money",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.BodySite",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "image",
                    "type": "list<FHIR.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Coverage",
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
                    "name": "relationship",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "preAuthRef",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingObjectSelection",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "title",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authoringTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "study",
                    "type": "list<FHIR.ImagingObjectSelection.Study>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Appointment.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.ValueSet.Expansion",
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
                    "type": "list<FHIR.ValueSet.Parameter>"
                },
                {
                    "name": "contains",
                    "type": "list<FHIR.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMap",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ConceptMap.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "sourceUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "sourceReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "targetUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "targetReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "element",
                    "type": "list<FHIR.ConceptMap.Element>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataElement.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Practitioner",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "name",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<FHIR.Address>"
                },
                {
                    "name": "gender",
                    "type": "FHIR.code"
                },
                {
                    "name": "birthDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "photo",
                    "type": "list<FHIR.Attachment>"
                },
                {
                    "name": "practitionerRole",
                    "type": "list<FHIR.Practitioner.PractitionerRole>"
                },
                {
                    "name": "qualification",
                    "type": "list<FHIR.Practitioner.Qualification>"
                },
                {
                    "name": "communication",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ParticipantRequired",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Reference",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "reference",
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
            "name": "FHIR.XPathUsageType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.VisionPrescription",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "dateWritten",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "prescriber",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dispense",
                    "type": "list<FHIR.VisionPrescription.Dispense>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.InstanceAvailability",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.id",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Encounter.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.MessageHeader",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "timestamp",
                    "type": "FHIR.instant"
                },
                {
                    "name": "event",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "response",
                    "type": "FHIR.MessageHeader.Response"
                },
                {
                    "name": "source",
                    "type": "FHIR.MessageHeader.Source"
                },
                {
                    "name": "destination",
                    "type": "list<FHIR.MessageHeader.Destination>"
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
                    "name": "receiver",
                    "type": "FHIR.Reference"
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
                    "name": "data",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Observation.Related",
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
            "name": "FHIR.NutritionOrder.Administration",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "schedule",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "rateQuantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Contains",
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
                    "name": "contains",
                    "type": "list<FHIR.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FilterOperator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NamingSystemType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentNotice",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "response",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "paymentStatus",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.AddItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumberLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication3>"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.ClaimResponse.Detail1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Range",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "high",
                    "type": "FHIR.SimpleQuantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExtensionContext",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImplementationGuide.Page",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "source",
                    "type": "FHIR.uri"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "kind",
                    "type": "FHIR.GuidePageKind"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "package",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "format",
                    "type": "FHIR.code"
                },
                {
                    "name": "page",
                    "type": "list<FHIR.ImplementationGuide.Page>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEventOutcome",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SimpleQuantity",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                },
                {
                    "name": "comparator",
                    "type": "FHIR.QuantityComparator",
                    "prohibited": true
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Compose",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "import",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "include",
                    "type": "list<FHIR.ValueSet.Include>"
                },
                {
                    "name": "exclude",
                    "type": "list<FHIR.ValueSet.Include>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentReconciliation.Note",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConstraintSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DomainResource",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.Narrative"
                },
                {
                    "name": "contained",
                    "type": "list<FHIR.ResourceContainer>"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                },
                {
                    "name": "modifierExtension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntolerance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "substance",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "onset",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "recordedDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "recorder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reporter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "substance",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.AllergyIntoleranceStatus"
                },
                {
                    "name": "criticality",
                    "type": "FHIR.AllergyIntoleranceCriticality"
                },
                {
                    "name": "type",
                    "type": "FHIR.AllergyIntoleranceType"
                },
                {
                    "name": "category",
                    "type": "FHIR.AllergyIntoleranceCategory"
                },
                {
                    "name": "lastOccurence",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "note",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "reaction",
                    "type": "list<FHIR.AllergyIntolerance.Reaction>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Encounter",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.EncounterState"
                },
                {
                    "name": "statusHistory",
                    "type": "list<FHIR.Encounter.StatusHistory>"
                },
                {
                    "name": "class",
                    "type": "FHIR.EncounterClass"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "episodeOfCare",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "incomingReferral",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "participant",
                    "type": "list<FHIR.Encounter.Participant>"
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
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "indication",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "hospitalization",
                    "type": "FHIR.Encounter.Hospitalization"
                },
                {
                    "name": "location",
                    "type": "list<FHIR.Encounter.Location>"
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
            "name": "FHIR.GuideResourcePurpose",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Procedure.FocalDevice",
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
            "name": "FHIR.DocumentReference.Related",
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
            "name": "FHIR.Contract.ValuedItem1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entityCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "entityReference",
                    "type": "FHIR.Reference"
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
                    "type": "FHIR.SimpleQuantity"
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
            "name": "FHIR.ProcedureStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Diagnosis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "diagnosis",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Timing",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "list<FHIR.dateTime>"
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
            "name": "FHIR.QuestionnaireResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
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
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authored",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "group",
                    "type": "FHIR.QuestionnaireResponse.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingStudy",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "started",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
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
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "order",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "modalityList",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "referrer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "availability",
                    "type": "FHIR.InstanceAvailability"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
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
                    "name": "procedure",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "interpreter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "series",
                    "type": "list<FHIR.ImagingStudy.Series>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Account",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.AccountStatus"
                },
                {
                    "name": "activePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "currency",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "balance",
                    "type": "FHIR.Money"
                },
                {
                    "name": "coveragePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Network",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "address",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.AuditEventParticipantNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinition.Mapping",
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
                    "name": "comments",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ContactPoint",
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
            "name": "FHIR.MedicationDispense.Substitution",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "responsibleParty",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Extension",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valueUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "valueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "valueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "valueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "valueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "valueSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "FHIR.Meta"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Group.Characteristic",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "FHIR.Range"
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
            "name": "FHIR.ValueSet.Concept1",
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
                    "type": "list<FHIR.ValueSet.Designation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder.Supplement",
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
                    "type": "list<FHIR.Timing>"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "instruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder.EnteralFormula",
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
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "routeofAdministration",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "administration",
                    "type": "list<FHIR.NutritionOrder.Administration>"
                },
                {
                    "name": "maxVolumeToDeliver",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "administrationInstruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Composition.Section",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "orderedBy",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "entry",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "emptyReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "section",
                    "type": "list<FHIR.Composition.Section>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceMetricCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Immunization",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "vaccineCode",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
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
                    "name": "wasNotGiven",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reported",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "location",
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
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "explanation",
                    "type": "FHIR.Immunization.Explanation"
                },
                {
                    "name": "reaction",
                    "type": "list<FHIR.Immunization.Reaction>"
                },
                {
                    "name": "vaccinationProtocol",
                    "type": "list<FHIR.Immunization.VaccinationProtocol>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuestionnaireStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Specimen.Collection",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "collector",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "comment",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "collectedDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "collectedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
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
            "name": "FHIR.ResponseType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.decimal",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Decimal"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle.Request",
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
            "name": "FHIR.AggregationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Person.Link",
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
            "name": "FHIR.ClaimResponse.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication>"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.ClaimResponse.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentReconciliation.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responce",
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
            "name": "FHIR.ReferralRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.ReferralStatus"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specialty",
                    "type": "FHIR.CodeableConcept"
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
                    "name": "requester",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dateSent",
                    "type": "FHIR.dateTime"
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
                    "name": "serviceRequested",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "fulfillmentTime",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlan.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonCode",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "goal",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "status",
                    "type": "FHIR.CarePlanActivityStatus"
                },
                {
                    "name": "statusReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "prohibited",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "scheduledTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "scheduledPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "scheduledString",
                    "type": "FHIR.string"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "productCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "productReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dailyAmount",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImmunizationRecommendation.Protocol",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseSequence",
                    "type": "FHIR.integer"
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
            "name": "FHIR.AuditEvent.Event",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subtype",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "action",
                    "type": "FHIR.AuditEventAction"
                },
                {
                    "name": "dateTime",
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
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EventTiming",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Condition.Stage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "summary",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "assessment",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "event",
                    "type": "FHIR.AuditEvent.Event"
                },
                {
                    "name": "participant",
                    "type": "list<FHIR.AuditEvent.Participant>"
                },
                {
                    "name": "source",
                    "type": "FHIR.AuditEvent.Source"
                },
                {
                    "name": "object",
                    "type": "list<FHIR.AuditEvent.Object>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GoalStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OrderResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "who",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "orderStatus",
                    "type": "FHIR.OrderStatus"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "fulfillment",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SearchParamType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SystemRestfulInteraction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationDefinition",
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
                    "type": "FHIR.code"
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
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.OperationDefinition.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
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
                    "name": "notes",
                    "type": "FHIR.string"
                },
                {
                    "name": "base",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "system",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "instance",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "parameter",
                    "type": "list<FHIR.OperationDefinition.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SupplyDelivery",
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
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "suppliedItem",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supplier",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "whenPrepared",
                    "type": "FHIR.Period"
                },
                {
                    "name": "time",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "destination",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "receiver",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticOrder.Event",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.DiagnosticOrderStatus"
                },
                {
                    "name": "description",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Rest",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "FHIR.RestfulConformanceMode"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "security",
                    "type": "FHIR.Conformance.Security"
                },
                {
                    "name": "resource",
                    "type": "list<FHIR.Conformance.Resource>"
                },
                {
                    "name": "interaction",
                    "type": "list<FHIR.Conformance.Interaction1>"
                },
                {
                    "name": "transactionMode",
                    "type": "FHIR.TransactionMode"
                },
                {
                    "name": "searchParam",
                    "type": "list<FHIR.Conformance.SearchParam>"
                },
                {
                    "name": "operation",
                    "type": "list<FHIR.Conformance.Operation>"
                },
                {
                    "name": "compartment",
                    "type": "list<FHIR.uri>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.HealthcareService.AvailableTime",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "type": "list<FHIR.DaysOfWeek>"
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
            "name": "FHIR.SubscriptionChannelType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EligibilityRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Parameters.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valueUuid",
                    "type": "FHIR.uuid"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueAnnotation",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "valueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "valueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "valueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "valueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "valueSignature",
                    "type": "FHIR.Signature"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "valueElementDefinition",
                    "type": "FHIR.ElementDefinition"
                },
                {
                    "name": "resource",
                    "type": "FHIR.ResourceContainer"
                },
                {
                    "name": "part",
                    "type": "list<FHIR.Parameters.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Payee",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
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
                    "name": "person",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationDispense",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationDispenseStatus"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dispenser",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authorizingPrescription",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "daysSupply",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "FHIR.string"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<FHIR.MedicationDispense.DosageInstruction>"
                },
                {
                    "name": "substitution",
                    "type": "FHIR.MedicationDispense.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ProcedureRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Substance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "category",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "list<FHIR.Substance.Instance>"
                },
                {
                    "name": "ingredient",
                    "type": "list<FHIR.Substance.Ingredient>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NamingSystem.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Legal",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentReference.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "attachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "format",
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMap.Target",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "equivalence",
                    "type": "FHIR.code"
                },
                {
                    "name": "comments",
                    "type": "FHIR.string"
                },
                {
                    "name": "dependsOn",
                    "type": "list<FHIR.ConceptMap.DependsOn>"
                },
                {
                    "name": "product",
                    "type": "list<FHIR.ConceptMap.DependsOn>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ReferralStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Teardown",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "action",
                "type": "list<FHIR.TestScript.Action2>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Designation",
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
            "name": "FHIR.AssertionDirectionType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImmunizationRecommendation.Recommendation",
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
                    "name": "doseNumber",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "forecastStatus",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateCriterion",
                    "type": "list<FHIR.ImmunizationRecommendation.DateCriterion>"
                },
                {
                    "name": "protocol",
                    "type": "FHIR.ImmunizationRecommendation.Protocol"
                },
                {
                    "name": "supportingImmunization",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "supportingPatientInformation",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AppointmentResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "participantStatus",
                    "type": "FHIR.ParticipantStatus"
                },
                {
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SlicingRules",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Communication",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "sender",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "payload",
                    "type": "list<FHIR.Communication.Payload>"
                },
                {
                    "name": "medium",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "status",
                    "type": "FHIR.CommunicationStatus"
                },
                {
                    "name": "encounter",
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
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestDetail",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Term",
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
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actionReason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actor",
                    "type": "list<FHIR.Contract.Actor1>"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "valuedItem",
                    "type": "list<FHIR.Contract.ValuedItem1>"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.Contract.Term>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Operation",
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
            "name": "FHIR.Patient.Animal",
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
            "name": "FHIR.Substance.Instance",
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
                    "type": "FHIR.SimpleQuantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Encounter.StatusHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.EncounterState"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticOrder.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specimen",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "bodySite",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.DiagnosticOrderStatus"
                },
                {
                    "name": "event",
                    "type": "list<FHIR.DiagnosticOrder.Event>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.LinkType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImplementationGuide.Package",
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
                    "type": "list<FHIR.ImplementationGuide.Resource>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntoleranceCriticality",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlan.Participant",
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMapEquivalence",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImmunizationRecommendation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recommendation",
                    "type": "list<FHIR.ImmunizationRecommendation.Recommendation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PropertyRepresentation",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEventAction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceMetric.Calibration",
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
            "name": "FHIR.Questionnaire.Question",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.AnswerFormat"
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
                    "name": "options",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "option",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.Questionnaire.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Goal.Outcome",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resultCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "resultReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.Conformance.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.string"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "kind",
                    "type": "FHIR.ConformanceStatementKind"
                },
                {
                    "name": "software",
                    "type": "FHIR.Conformance.Software"
                },
                {
                    "name": "implementation",
                    "type": "FHIR.Conformance.Implementation"
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
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "profile",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "rest",
                    "type": "list<FHIR.Conformance.Rest>"
                },
                {
                    "name": "messaging",
                    "type": "list<FHIR.Conformance.Messaging>"
                },
                {
                    "name": "document",
                    "type": "list<FHIR.Conformance.Document>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentManifest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "author",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "source",
                    "type": "FHIR.uri"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "content",
                    "type": "list<FHIR.DocumentManifest.Content>"
                },
                {
                    "name": "related",
                    "type": "list<FHIR.DocumentManifest.Related>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SearchModifierCode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Observation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "effectiveDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "issued",
                    "type": "FHIR.instant"
                },
                {
                    "name": "performer",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "valueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "valueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "valueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
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
                    "name": "comments",
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
                    "type": "list<FHIR.Observation.ReferenceRange>"
                },
                {
                    "name": "related",
                    "type": "list<FHIR.Observation.Related>"
                },
                {
                    "name": "component",
                    "type": "list<FHIR.Observation.Component>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Security",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "cors",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "service",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "certificate",
                    "type": "list<FHIR.Conformance.Certificate>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceUseRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CompositionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Annotation",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "authorReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "authorString",
                    "type": "FHIR.string"
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
            "name": "FHIR.AppointmentStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MessageSignificanceCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationParameterUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ValueSet.Include",
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
                    "type": "list<FHIR.ValueSet.Concept1>"
                },
                {
                    "name": "filter",
                    "type": "list<FHIR.ValueSet.Filter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ListMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceComponent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
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
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "parameterGroup",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "measurementPrinciple",
                    "type": "FHIR.Measmnt_Principle"
                },
                {
                    "name": "productionSpecification",
                    "type": "list<FHIR.DeviceComponent.ProductionSpecification>"
                },
                {
                    "name": "languageCode",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ObservationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Meta",
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
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "security",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "tag",
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Software",
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
            "name": "FHIR.Conformance.Implementation",
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
            "name": "FHIR.MessageHeader.Destination",
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
            "name": "FHIR.ParticipantStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AdministrativeGender",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticReport.Image",
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
            "name": "FHIR.Slot",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "schedule",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "freeBusyType",
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
            "name": "FHIR.ValueSet.Concept",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "abstract",
                    "type": "FHIR.boolean"
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
                    "type": "list<FHIR.ValueSet.Designation>"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConformanceStatementKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EnrollmentResponse",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.code"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.EpisodeOfCare.StatusHistory",
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
            "name": "FHIR.Observation.ReferenceRange",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "high",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "meaning",
                    "type": "FHIR.CodeableConcept"
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
            "name": "FHIR.Coverage",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "issuer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "bin",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subscriberId",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "group",
                    "type": "FHIR.string"
                },
                {
                    "name": "plan",
                    "type": "FHIR.string"
                },
                {
                    "name": "subPlan",
                    "type": "FHIR.string"
                },
                {
                    "name": "dependent",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "subscriber",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "network",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "contract",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Order.When",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "schedule",
                    "type": "FHIR.Timing"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ResourceContainer",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "Account",
                    "type": "FHIR.Account"
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
                    "name": "CarePlan",
                    "type": "FHIR.CarePlan"
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
                    "name": "Communication",
                    "type": "FHIR.Communication"
                },
                {
                    "name": "CommunicationRequest",
                    "type": "FHIR.CommunicationRequest"
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
                    "name": "Conformance",
                    "type": "FHIR.Conformance"
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
                    "name": "DeviceUseRequest",
                    "type": "FHIR.DeviceUseRequest"
                },
                {
                    "name": "DeviceUseStatement",
                    "type": "FHIR.DeviceUseStatement"
                },
                {
                    "name": "DiagnosticOrder",
                    "type": "FHIR.DiagnosticOrder"
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
                    "name": "Group",
                    "type": "FHIR.Group"
                },
                {
                    "name": "HealthcareService",
                    "type": "FHIR.HealthcareService"
                },
                {
                    "name": "ImagingObjectSelection",
                    "type": "FHIR.ImagingObjectSelection"
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
                    "name": "List",
                    "type": "FHIR.List"
                },
                {
                    "name": "Location",
                    "type": "FHIR.Location"
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
                    "name": "MedicationOrder",
                    "type": "FHIR.MedicationOrder"
                },
                {
                    "name": "MedicationStatement",
                    "type": "FHIR.MedicationStatement"
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
                    "name": "Order",
                    "type": "FHIR.Order"
                },
                {
                    "name": "OrderResponse",
                    "type": "FHIR.OrderResponse"
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
                    "name": "Practitioner",
                    "type": "FHIR.Practitioner"
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
            "name": "FHIR.DeviceComponent.ProductionSpecification",
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
            "name": "FHIR.DiagnosticOrderStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClinicalImpression.Investigations",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Timing.Repeat",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "boundsQuantity",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "boundsRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "boundsPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "count",
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
                    "name": "durationUnits",
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
                    "name": "periodUnits",
                    "type": "FHIR.UnitsOfTime"
                },
                {
                    "name": "when",
                    "type": "FHIR.EventTiming"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Medication.Ingredient",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Media",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.DigitalMediaType"
                },
                {
                    "name": "subtype",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "operator",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "view",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "deviceName",
                    "type": "FHIR.string"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.boolean",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Boolean"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
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
                    "name": "subject",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "authority",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "domain",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "subType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actionReason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actor",
                    "type": "list<FHIR.Contract.Actor>"
                },
                {
                    "name": "valuedItem",
                    "type": "list<FHIR.Contract.ValuedItem>"
                },
                {
                    "name": "signer",
                    "type": "list<FHIR.Contract.Signer>"
                },
                {
                    "name": "term",
                    "type": "list<FHIR.Contract.Term>"
                },
                {
                    "name": "bindingAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "bindingReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "friendly",
                    "type": "list<FHIR.Contract.Friendly>"
                },
                {
                    "name": "legal",
                    "type": "list<FHIR.Contract.Legal>"
                },
                {
                    "name": "rule",
                    "type": "list<FHIR.Contract.Rule>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Location.Position",
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
            "name": "FHIR.DeviceMetricCalibrationType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticReport",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "effectiveDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "issued",
                    "type": "FHIR.instant"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "request",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "specimen",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "result",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "imagingStudy",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "image",
                    "type": "list<FHIR.DiagnosticReport.Image>"
                },
                {
                    "name": "conclusion",
                    "type": "FHIR.string"
                },
                {
                    "name": "codedDiagnosis",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "presentedForm",
                    "type": "list<FHIR.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Immunization.Reaction",
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
            "name": "FHIR.AuditEvent.Source",
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
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMap.DependsOn",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "element",
                    "type": "FHIR.uri"
                },
                {
                    "name": "codeSystem",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Prosthesis",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "initial",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "priorDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "priorMaterial",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.code",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Metadata",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "link",
                    "type": "list<FHIR.TestScript.Link>"
                },
                {
                    "name": "capability",
                    "type": "list<FHIR.TestScript.Capability>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Binary",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "FHIR.code"
                },
                {
                    "name": "content",
                    "type": "FHIR.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SupplyRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EncounterLocationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SupplyDeliveryStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Schedule",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
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
            "name": "FHIR.MedicationAdministration",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationAdministrationStatus"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "practitioner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "prescription",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "wasNotGiven",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reasonNotGiven",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonGiven",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "effectiveTimeDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "effectiveTimePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "device",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "FHIR.string"
                },
                {
                    "name": "dosage",
                    "type": "FHIR.MedicationAdministration.Dosage"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Ratio",
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
            "name": "FHIR.DiagnosticReportStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Note",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.RequestHeader",
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
            "name": "FHIR.ProcessResponse.Notes",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SampledData",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "origin",
                    "type": "FHIR.SimpleQuantity"
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
            "name": "FHIR.ClaimResponse.Coverage",
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
                    "name": "relationship",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "preAuthRef",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticOrder",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "orderer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "specimen",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "status",
                    "type": "FHIR.DiagnosticOrderStatus"
                },
                {
                    "name": "priority",
                    "type": "FHIR.DiagnosticOrderPriority"
                },
                {
                    "name": "event",
                    "type": "list<FHIR.DiagnosticOrder.Event>"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.DiagnosticOrder.Item>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FlagStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Provenance",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "target",
                    "type": "list<FHIR.Reference>"
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
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "activity",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "policy",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "agent",
                    "type": "list<FHIR.Provenance.Agent>"
                },
                {
                    "name": "entity",
                    "type": "list<FHIR.Provenance.Entity>"
                },
                {
                    "name": "signature",
                    "type": "list<FHIR.Signature>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Variable",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "headerField",
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
            "name": "FHIR.AllergyIntoleranceCertainty",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Medication",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "isBrand",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "manufacturer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "product",
                    "type": "FHIR.Medication.Product"
                },
                {
                    "name": "package",
                    "type": "FHIR.Medication.Package"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlan.Activity",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionResulting",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "progress",
                    "type": "list<FHIR.Annotation>"
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
            "name": "FHIR.Distance",
            "baseType": "FHIR.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<FHIR.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ElementDefinition.Mapping",
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Setup",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "metadata",
                    "type": "FHIR.TestScript.Metadata"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.TestScript.Action>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlanStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ListStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.base64Binary",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.HumanName",
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
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "given",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "prefix",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "suffix",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Operation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "resource",
                    "type": "FHIR.code"
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
                    "name": "params",
                    "type": "FHIR.string"
                },
                {
                    "name": "requestHeader",
                    "type": "list<FHIR.TestScript.RequestHeader>"
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
            "name": "FHIR.Group",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "list<FHIR.Group.Characteristic>"
                },
                {
                    "name": "member",
                    "type": "list<FHIR.Group.Member>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CommunicationRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "sender",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "payload",
                    "type": "list<FHIR.CommunicationRequest.Payload>"
                },
                {
                    "name": "medium",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.CommunicationRequestStatus"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "scheduledDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "scheduledPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requestedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.RiskAssessment.Prediction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "probabilityDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "probabilityRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "probabilityCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "relativeRisk",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "whenPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "whenRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "rationale",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DetectedIssue",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
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
                    "name": "implicated",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "detail",
                    "type": "FHIR.string"
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
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "reference",
                    "type": "FHIR.uri"
                },
                {
                    "name": "mitigation",
                    "type": "list<FHIR.DetectedIssue.Mitigation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Location",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.LocationStatus"
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
                    "name": "mode",
                    "type": "FHIR.LocationMode"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CommunicationRequest.Payload",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentString",
                    "type": "FHIR.string"
                },
                {
                    "name": "contentAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.BackboneElement",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "modifierExtension",
                "type": "list<FHIR.Extension>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Resource",
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
            "name": "FHIR.AddressUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentReference.RelatesTo",
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
            "name": "FHIR.ImplementationGuide.Dependency",
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
            "name": "FHIR.ConditionalDeleteStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationOrder.DosageInstruction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "additionalInstructions",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timing",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteReference",
                    "type": "FHIR.Reference"
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
                    "name": "doseRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "doseQuantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "orderer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "status",
                    "type": "FHIR.NutritionOrderStatus"
                },
                {
                    "name": "allergyIntolerance",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "foodPreferenceModifier",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "excludeFoodModifier",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "oralDiet",
                    "type": "FHIR.NutritionOrder.OralDiet"
                },
                {
                    "name": "supplement",
                    "type": "list<FHIR.NutritionOrder.Supplement>"
                },
                {
                    "name": "enteralFormula",
                    "type": "FHIR.NutritionOrder.EnteralFormula"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Action2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "operation",
                "type": "FHIR.TestScript.Operation"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ContactPointUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceMetricOperationalStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Action1",
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
            "name": "FHIR.Questionnaire.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "FHIR.string"
                },
                {
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "text",
                    "type": "FHIR.string"
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
                    "name": "group",
                    "type": "list<FHIR.Questionnaire.Group>"
                },
                {
                    "name": "question",
                    "type": "list<FHIR.Questionnaire.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrderStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DiagnosticOrderPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.uri",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Use",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.IdentityAssuranceLevel",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Object",
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
                    "type": "list<FHIR.Coding>"
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
                    "type": "list<FHIR.AuditEvent.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MessageHeader.Response",
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
            "name": "FHIR.ElementDefinition.Slicing",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "discriminator",
                    "type": "list<FHIR.string>"
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
            "name": "FHIR.DeviceMetricColor",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SearchEntryMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Group.Member",
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
            "name": "FHIR.SupplyRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "kind",
            "element": [
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.SupplyRequestStatus"
                },
                {
                    "name": "kind",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "orderedItem",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supplier",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "when",
                    "type": "FHIR.SupplyRequest.When"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.time",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Time"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinition.Differential",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<FHIR.ElementDefinition>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Condition.Evidence",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Interaction",
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
            "name": "FHIR.ConditionVerificationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentReconciliation",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "request",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.code"
                },
                {
                    "name": "disposition",
                    "type": "FHIR.string"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
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
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.PaymentReconciliation.Detail>"
                },
                {
                    "name": "form",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "total",
                    "type": "FHIR.Money"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.PaymentReconciliation.Note>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntoleranceSeverity",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Document",
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
            "name": "FHIR.Identifier",
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
            "name": "FHIR.EpisodeOfCare",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.EpisodeOfCareStatus"
                },
                {
                    "name": "statusHistory",
                    "type": "list<FHIR.EpisodeOfCare.StatusHistory>"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "condition",
                    "type": "list<FHIR.Reference>"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "careManager",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "careTeam",
                    "type": "list<FHIR.EpisodeOfCare.CareTeam>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Patient.Communication",
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
            "name": "FHIR.OperationKind",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataElement.Mapping",
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
                    "name": "comments",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Organization",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "active",
                    "type": "FHIR.boolean"
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
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<FHIR.Address>"
                },
                {
                    "name": "partOf",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.Organization.Contact>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMap.Element",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "FHIR.uri"
                },
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "target",
                    "type": "list<FHIR.ConceptMap.Target>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ObservationRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionOrder.OralDiet",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "schedule",
                    "type": "list<FHIR.Timing>"
                },
                {
                    "name": "nutrient",
                    "type": "list<FHIR.NutritionOrder.Nutrient>"
                },
                {
                    "name": "texture",
                    "type": "list<FHIR.NutritionOrder.Texture>"
                },
                {
                    "name": "fluidConsistencyType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "instruction",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.unsignedInt",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NameUse",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SubscriptionStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationDispense.DosageInstruction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "additionalInstructions",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timing",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteReference",
                    "type": "FHIR.Reference"
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
                    "name": "doseRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "doseQuantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CommunicationRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentReferenceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.LocationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.integer",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CarePlanRelationship",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.LocationStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Basic",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "created",
                    "type": "FHIR.date"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.UnknownContentCode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClinicalImpression",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "assessor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.ClinicalImpressionStatus"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "previous",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "problem",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "triggerCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "triggerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "investigations",
                    "type": "list<FHIR.ClinicalImpression.Investigations>"
                },
                {
                    "name": "protocol",
                    "type": "FHIR.uri"
                },
                {
                    "name": "summary",
                    "type": "FHIR.string"
                },
                {
                    "name": "finding",
                    "type": "list<FHIR.ClinicalImpression.Finding>"
                },
                {
                    "name": "resolved",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "ruledOut",
                    "type": "list<FHIR.ClinicalImpression.RuledOut>"
                },
                {
                    "name": "prognosis",
                    "type": "FHIR.string"
                },
                {
                    "name": "plan",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImplementationGuide.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SupplyRequest.When",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "schedule",
                    "type": "FHIR.Timing"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NoteType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Fixture",
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
            "name": "FHIR.Observation.Component",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "valueRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "valueSampledData",
                    "type": "FHIR.SampledData"
                },
                {
                    "name": "valueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "dataAbsentReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "referenceRange",
                    "type": "list<FHIR.Observation.ReferenceRange>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationStatement.Dosage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "FHIR.string"
                },
                {
                    "name": "timing",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "siteReference",
                    "type": "FHIR.Reference"
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
                    "name": "quantityQuantity",
                    "type": "FHIR.SimpleQuantity"
                },
                {
                    "name": "quantityRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "FHIR.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EncounterState",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EncounterClass",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.HTTPVerb",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MessageHeader.Source",
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
            "name": "FHIR.ClinicalImpression.RuledOut",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reason",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.RiskAssessment",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "method",
            "element": [
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "condition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "method",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "basis",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "prediction",
                    "type": "list<FHIR.RiskAssessment.Prediction>"
                },
                {
                    "name": "mitigation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.ClaimType"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "originalRuleset",
                    "type": "FHIR.Coding"
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
                    "name": "use",
                    "type": "FHIR.Use"
                },
                {
                    "name": "priority",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "fundsReserve",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "enterer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facility",
                    "type": "FHIR.Reference"
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
                    "name": "diagnosis",
                    "type": "list<FHIR.Claim.Diagnosis>"
                },
                {
                    "name": "condition",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverage",
                    "type": "list<FHIR.Claim.Coverage>"
                },
                {
                    "name": "exception",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "school",
                    "type": "FHIR.string"
                },
                {
                    "name": "accident",
                    "type": "FHIR.date"
                },
                {
                    "name": "accidentType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "interventionException",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.Claim.Item>"
                },
                {
                    "name": "additionalMaterials",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "missingTeeth",
                    "type": "list<FHIR.Claim.MissingTeeth>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationDefinition.Binding",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "strength",
                    "type": "FHIR.code"
                },
                {
                    "name": "valueSetUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueSetReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EpisodeOfCareStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.RemittanceOutcome",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ContactPointSystem",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImplementationGuide.Global",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
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
            "name": "FHIR.MedicationOrderStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SlotStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ProcessRequest.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "sequenceLinkId",
                "type": "FHIR.integer"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConceptMap.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Parameters",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": {
                "name": "parameter",
                "type": "list<FHIR.Parameters.Parameter>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.HealthcareService",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "providedBy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "type": "list<FHIR.HealthcareService.ServiceType>"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "serviceName",
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
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "coverageArea",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "serviceProvisionCode",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "characteristic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "referralMethod",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "publicKey",
                    "type": "FHIR.string"
                },
                {
                    "name": "appointmentRequired",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "availableTime",
                    "type": "list<FHIR.HealthcareService.AvailableTime>"
                },
                {
                    "name": "notAvailable",
                    "type": "list<FHIR.HealthcareService.NotAvailable>"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Condition",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "asserter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dateRecorded",
                    "type": "FHIR.date"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "clinicalStatus",
                    "type": "FHIR.code"
                },
                {
                    "name": "verificationStatus",
                    "type": "FHIR.ConditionVerificationStatus"
                },
                {
                    "name": "severity",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "onsetDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "onsetQuantity",
                    "type": "FHIR.Age"
                },
                {
                    "name": "onsetPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "onsetRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "onsetString",
                    "type": "FHIR.string"
                },
                {
                    "name": "abatementDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "abatementQuantity",
                    "type": "FHIR.Age"
                },
                {
                    "name": "abatementBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "abatementPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "abatementRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "abatementString",
                    "type": "FHIR.string"
                },
                {
                    "name": "stage",
                    "type": "FHIR.Condition.Stage"
                },
                {
                    "name": "evidence",
                    "type": "list<FHIR.Condition.Evidence>"
                },
                {
                    "name": "bodySite",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "notes",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle.Search",
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
            "name": "FHIR.ElementDefinition.Type",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "profile",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "aggregation",
                    "type": "list<FHIR.AggregationMode>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.markdown",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Subscription.Channel",
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
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Error",
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
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationStatementStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Goal",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "startDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "startCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "targetDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "targetQuantity",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "category",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "status",
                    "type": "FHIR.GoalStatus"
                },
                {
                    "name": "statusDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "statusReason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "addresses",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "outcome",
                    "type": "list<FHIR.Goal.Outcome>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuestionnaireResponse.Answer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "valueReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.QuestionnaireResponse.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Patient.Link",
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
            "name": "FHIR.DeviceUseRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "bodySiteCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "status",
                    "type": "FHIR.DeviceUseRequestStatus"
                },
                {
                    "name": "device",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "encounter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "indication",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "notes",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "prnReason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "orderedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "recordedOn",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "timingTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "timingDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "priority",
                    "type": "FHIR.DeviceUseRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.QuantityComparator",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Procedure.Performer",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.OperationDefinition.Parameter",
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
                    "type": "FHIR.code"
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
                    "type": "list<FHIR.OperationDefinition.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Detail",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.SimpleQuantity"
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
                },
                {
                    "name": "udi",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subDetail",
                    "type": "list<FHIR.Claim.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Actor",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "role",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationStatement",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "medicationCodeableConcept",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "informationSource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dateAsserted",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "status",
                    "type": "FHIR.MedicationStatementStatus"
                },
                {
                    "name": "wasNotTaken",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reasonNotTaken",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonForUseCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonForUseReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "effectiveDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "effectivePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "note",
                    "type": "FHIR.string"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dosage",
                    "type": "list<FHIR.MedicationStatement.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.oid",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Order",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "source",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "target",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "when",
                    "type": "FHIR.Order.When"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Coding",
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
            "name": "FHIR.Period",
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
            "name": "FHIR.Measmnt_Principle",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Medication.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "amount",
                    "type": "FHIR.SimpleQuantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Specimen",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "parent",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "accessionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "receivedTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "collection",
                    "type": "FHIR.Specimen.Collection"
                },
                {
                    "name": "treatment",
                    "type": "list<FHIR.Specimen.Treatment>"
                },
                {
                    "name": "container",
                    "type": "list<FHIR.Specimen.Container>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FamilyMemberHistory",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "status",
                    "type": "FHIR.FamilyHistoryStatus"
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
                    "type": "FHIR.code"
                },
                {
                    "name": "bornPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "bornDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "bornString",
                    "type": "FHIR.string"
                },
                {
                    "name": "ageQuantity",
                    "type": "FHIR.Age"
                },
                {
                    "name": "ageRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "ageString",
                    "type": "FHIR.string"
                },
                {
                    "name": "deceasedBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "deceasedQuantity",
                    "type": "FHIR.Age"
                },
                {
                    "name": "deceasedRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "deceasedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "deceasedString",
                    "type": "FHIR.string"
                },
                {
                    "name": "note",
                    "type": "FHIR.Annotation"
                },
                {
                    "name": "condition",
                    "type": "list<FHIR.FamilyMemberHistory.Condition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DocumentManifest.Content",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "pAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "pReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureDefinition.Contact",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.SampledDataDataType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntoleranceStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Provenance.Agent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "userId",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "relatedAgent",
                    "type": "list<FHIR.Provenance.RelatedAgent>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Interaction1",
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
            "name": "FHIR.DocumentManifest.Related",
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
            "name": "FHIR.Composition.Event",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Quantity",
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
            "name": "FHIR.CompositionAttestationMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Conformance.Endpoint",
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
            "name": "FHIR.DeviceMetricCalibrationState",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Adjudication2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.ClaimResponse.Adjudication1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.ClaimResponse.Adjudication4",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.GroupType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Adjudication3",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.TypeRestfulInteraction",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImplementationGuide",
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
                    "type": "FHIR.code"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ImplementationGuide.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "fhirVersion",
                    "type": "FHIR.id"
                },
                {
                    "name": "dependency",
                    "type": "list<FHIR.ImplementationGuide.Dependency>"
                },
                {
                    "name": "package",
                    "type": "list<FHIR.ImplementationGuide.Package>"
                },
                {
                    "name": "global",
                    "type": "list<FHIR.ImplementationGuide.Global>"
                },
                {
                    "name": "binary",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "page",
                    "type": "FHIR.ImplementationGuide.Page"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EpisodeOfCare.CareTeam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "member",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Medication.Batch",
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
            "name": "FHIR.Claim.MissingTeeth",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "tooth",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reason",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "extractionDate",
                    "type": "FHIR.date"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ElementDefinition.Base",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "min",
                    "type": "FHIR.integer"
                },
                {
                    "name": "max",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle",
            "baseType": "FHIR.Resource",
            "retrievable": false,
            "element": [
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
                    "type": "list<FHIR.Bundle.Link>"
                },
                {
                    "name": "entry",
                    "type": "list<FHIR.Bundle.Entry>"
                },
                {
                    "name": "signature",
                    "type": "FHIR.Signature"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Encounter.Hospitalization",
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
                    "name": "admittingDiagnosis",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "reAdmission",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dietPreference",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialCourtesy",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialArrangement",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "destination",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dischargeDiagnosis",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AnswerFormat",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Participant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "list<FHIR.uri>"
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
                    "type": "list<FHIR.Coding>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Organization.Contact",
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
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "FHIR.Address"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.VisionBase",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.BundleType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Bundle.Response",
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
            "fromType": "FHIR.StructureDefinitionKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireResponseStatus",
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
            "fromType": "FHIR.ConformanceResourceStatus",
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
            "fromType": "FHIR.ConformanceEventMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.IssueType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TransactionMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ContentType",
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
            "fromType": "FHIR.AuditEventParticipantNetworkType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CommunicationStatus",
            "toType": "System.String"
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
            "fromType": "FHIR.DeviceUseRequestPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.OrderStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NarrativeStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.string",
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
            "fromType": "FHIR.MedicationAdministrationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.RestfulConformanceMode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.NamingSystemIdentifierType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AccountStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProcedureRequestPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationDispenseStatus",
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
            "fromType": "FHIR.BindingStrength",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ParticipantRequired",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.XPathUsageType",
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
            "fromType": "FHIR.ExtensionContext",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ClaimType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AuditEventOutcome",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConstraintSeverity",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.GuideResourcePurpose",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProcedureStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceMetricCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireStatus",
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
            "fromType": "FHIR.SubscriptionChannelType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProcedureRequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ReferralStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AssertionDirectionType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SlicingRules",
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
            "fromType": "FHIR.ConceptMapEquivalence",
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
            "fromType": "FHIR.SearchModifierCode",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceUseRequestStatus",
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
            "fromType": "FHIR.ObservationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ParticipantStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AdministrativeGender",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ConformanceStatementKind",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DiagnosticOrderStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToBoolean",
            "fromType": "FHIR.boolean",
            "toType": "System.Boolean"
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
            "fromType": "FHIR.AllergyIntoleranceCertainty",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CarePlanStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ListStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.base64Binary",
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
            "fromType": "FHIR.DiagnosticOrderPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.uri",
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
            "fromType": "FHIR.CommunicationRequestStatus",
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
            "fromType": "FHIR.CarePlanRelationship",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.LocationStatus",
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
            "fromType": "FHIR.EncounterState",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EncounterClass",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.HTTPVerb",
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
            "fromType": "FHIR.ContactPointSystem",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationOrderStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SlotStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.markdown",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationStatementStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuantityComparator",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.oid",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.DeviceStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.Measmnt_Principle",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.SampledDataDataType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AllergyIntoleranceStatus",
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
            "fromType": "FHIR.AnswerFormat",
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
        }
    ]
});