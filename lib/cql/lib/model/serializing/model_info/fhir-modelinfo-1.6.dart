import '../../../cql.dart';

final fhirmodelinfo16 = ModelInfo.fromJson({
    "name": "FHIR",
    "url": "http://hl7.org/fhir",
    "targetQualifier": "fhir",
    "patientClassName": "FHIR.Patient",
    "patientBirthDatePropertyName": "birthDate.value",
    "version": "1.6",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "FHIR.Count",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
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
            "name": "FHIR.EnrollmentRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "dose",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateQuantity",
                    "type": "FHIR.Quantity"
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
                    "name": "itemCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "itemReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "cause",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GuidanceResponse.Action",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionIdentifier",
                    "type": "FHIR.Identifier"
                },
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
                    "name": "concept",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "documentation",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "relatedAction",
                    "type": "FHIR.GuidanceResponse.RelatedAction"
                },
                {
                    "name": "timingDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "timingDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "timingRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "participant",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "groupingBehavior",
                    "type": "FHIR.code"
                },
                {
                    "name": "selectionBehavior",
                    "type": "FHIR.code"
                },
                {
                    "name": "requiredBehavior",
                    "type": "FHIR.code"
                },
                {
                    "name": "precheckBehavior",
                    "type": "FHIR.code"
                },
                {
                    "name": "cardinalityBehavior",
                    "type": "FHIR.code"
                },
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.GuidanceResponse.Action>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PlanActionPrecheckBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Task.Fulfillment",
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
                    "name": "recipients",
                    "type": "list<FHIR.Reference>"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "origin",
                    "type": "list<FHIR.TestScript.Origin>"
                },
                {
                    "name": "destination",
                    "type": "list<FHIR.TestScript.Destination>"
                },
                {
                    "name": "metadata",
                    "type": "FHIR.TestScript.Metadata"
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
                    "name": "rule",
                    "type": "list<FHIR.TestScript.Rule>"
                },
                {
                    "name": "ruleset",
                    "type": "list<FHIR.TestScript.Ruleset>"
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
            "name": "FHIR.ExpansionProfile.Designation1",
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
            "name": "FHIR.EligibilityRequestStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExpansionProfile.Designation2",
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
                    "name": "status",
                    "type": "FHIR.ClaimResponseStatus"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
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
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProviderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestProviderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestOrganizationReference",
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
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationOrderCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Param",
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
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
            "name": "FHIR.PractitionerRole.AvailableTime",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "type": "list<FHIR.code>"
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
            "name": "FHIR.Measure.Stratifier",
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
                    "name": "reasonReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "reasonCode",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "usedReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "usedCode",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "component",
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
                    "name": "status",
                    "type": "FHIR.EligibilityResponseStatus"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.RemittanceOutcome"
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
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProviderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestProviderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestOrganizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "inforce",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "contract",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "form",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "benefitBalance",
                    "type": "list<FHIR.EligibilityResponse.BenefitBalance>"
                },
                {
                    "name": "error",
                    "type": "list<FHIR.EligibilityResponse.Error>"
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.SearchParameter.Contact>"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
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
                    "type": "FHIR.SearchParamType"
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
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "component",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataRequirement.CodeFilter",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueSetString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueSetReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "valueCode",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "valueCoding",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.ImagingManifest.BaseLocation1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Appointment",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "serviceType",
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
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "appointmentType",
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
                    "name": "created",
                    "type": "FHIR.dateTime"
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
            "name": "FHIR.ExplanationOfBenefit.SubDetail",
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
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
                    "name": "requestURL",
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
            "name": "FHIR.TestScript.Ruleset1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "rulesetId",
                    "type": "FHIR.id"
                },
                {
                    "name": "rule",
                    "type": "list<FHIR.TestScript.Rule3>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExpansionProfile",
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.ExpansionProfile.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "codeSystem",
                    "type": "FHIR.ExpansionProfile.CodeSystem"
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
                    "name": "includeInactive",
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
            "name": "FHIR.ExplanationOfBenefit.Procedure",
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
                    "name": "procedureCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "procedureReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMap.Contact",
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
            "name": "FHIR.ExpansionProfile.Designation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "include",
                    "type": "FHIR.ExpansionProfile.Include1"
                },
                {
                    "name": "exclude",
                    "type": "FHIR.ExpansionProfile.Exclude1"
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
            "name": "FHIR.EncounterStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.MeasureReport",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "measure",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "type",
                    "type": "FHIR.MeasureReportType"
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
                    "name": "status",
                    "type": "FHIR.MeasureReportStatus"
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
                    "name": "group",
                    "type": "list<FHIR.MeasureReport.Group>"
                },
                {
                    "name": "evaluatedResources",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConsentDataMeaning",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "contentReference",
                    "type": "FHIR.uri"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.ElementDefinition.Type>"
                },
                {
                    "name": "defaultValueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "defaultValueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "defaultValueCode",
                    "type": "FHIR.code"
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
                    "name": "defaultValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "defaultValueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "defaultValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "defaultValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "defaultValueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "defaultValueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "defaultValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "defaultValueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "defaultValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "defaultValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "defaultValueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "defaultValueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "defaultValueAge",
                    "type": "FHIR.Age"
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
                    "name": "defaultValueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "defaultValueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "defaultValueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "defaultValueCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "defaultValueDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "defaultValueDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "defaultValueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "defaultValueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "defaultValueMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "defaultValuePeriod",
                    "type": "FHIR.Period"
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
                    "name": "fixedBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "fixedBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "fixedCode",
                    "type": "FHIR.code"
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
                    "name": "fixedDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "fixedId",
                    "type": "FHIR.id"
                },
                {
                    "name": "fixedInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "fixedInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "fixedMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "fixedOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "fixedPositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "fixedString",
                    "type": "FHIR.string"
                },
                {
                    "name": "fixedTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "fixedUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "fixedUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "fixedAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "fixedAge",
                    "type": "FHIR.Age"
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
                    "name": "fixedCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "fixedCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "fixedContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "fixedCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "fixedDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "fixedDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "fixedHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "fixedIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "fixedMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "fixedPeriod",
                    "type": "FHIR.Period"
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
                    "name": "fixedTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "fixedMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "patternBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "patternBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "patternCode",
                    "type": "FHIR.code"
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
                    "name": "patternDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "patternId",
                    "type": "FHIR.id"
                },
                {
                    "name": "patternInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "patternInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "patternMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "patternOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "patternPositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "patternString",
                    "type": "FHIR.string"
                },
                {
                    "name": "patternTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "patternUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "patternUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "patternAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "patternAge",
                    "type": "FHIR.Age"
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
                    "name": "patternCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "patternCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "patternContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "patternCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "patternDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "patternDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "patternHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "patternIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patternMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "patternPeriod",
                    "type": "FHIR.Period"
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
                    "name": "patternTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "patternMeta",
                    "type": "FHIR.Meta"
                },
                {
                    "name": "exampleBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "exampleBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "exampleCode",
                    "type": "FHIR.code"
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
                    "name": "exampleDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "exampleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "exampleInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "exampleInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "exampleMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "exampleOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "examplePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "exampleString",
                    "type": "FHIR.string"
                },
                {
                    "name": "exampleTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "exampleUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "exampleUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "exampleAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "exampleAge",
                    "type": "FHIR.Age"
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
                    "name": "exampleCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "exampleCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "exampleContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "exampleCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "exampleDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "exampleDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "exampleHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "exampleIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "exampleMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "examplePeriod",
                    "type": "FHIR.Period"
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
                    "name": "exampleTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "exampleMeta",
                    "type": "FHIR.Meta"
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
                    "name": "minValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "minValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "minValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "minValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "minValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "minValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "minValueQuantity",
                    "type": "FHIR.Quantity"
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
                    "name": "maxValueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "maxValueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "maxValueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "maxValueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "maxValuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "maxValueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "maxValueQuantity",
                    "type": "FHIR.Quantity"
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
            "name": "FHIR.Task.Input",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
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
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueAge",
                    "type": "FHIR.Age"
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
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "valueDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "valueDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
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
                    "name": "udiCarrier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.DeviceStatus"
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
                    "type": "list<FHIR.ContactPoint>"
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
                    "type": "list<FHIR.Annotation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MeasureReport.Group2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "FHIR.string"
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
                    "name": "origin",
                    "type": "list<FHIR.integer>"
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
            "name": "FHIR.MeasureReport.Group1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "FHIR.string"
                },
                {
                    "name": "population",
                    "type": "list<FHIR.MeasureReport.Population1>"
                },
                {
                    "name": "measureScore",
                    "type": "FHIR.decimal"
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
                },
                {
                    "name": "expression",
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
            "name": "FHIR.GuidanceResponse",
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
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "evaluationMessage",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "outputParameters",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.GuidanceResponse.Action>"
                },
                {
                    "name": "dataRequirement",
                    "type": "list<FHIR.DataRequirement>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DeviceMetric",
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
            "name": "FHIR.ImagingStudy.BaseLocation1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
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
                    "name": "documentation",
                    "type": "FHIR.markdown"
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
            "name": "FHIR.NutritionRequest.Administration",
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
                    "name": "rateQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
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
                    "name": "status",
                    "type": "FHIR.EnrollmentRequestStatus"
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
                    "name": "insurerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "insurerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "subjectIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "subjectReference",
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
            "name": "FHIR.CareTeam",
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
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "participant",
                    "type": "list<FHIR.CareTeam.Participant>"
                },
                {
                    "name": "managingOrganization",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PlanActionRelationshipAnchor",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "status",
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.DataElement.Contact>"
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
                    "name": "substanceCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "substanceReference",
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
                    "type": "FHIR.SearchParamType"
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
            "name": "FHIR.ImagingManifest.Study",
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
                    "name": "baseLocation",
                    "type": "list<FHIR.ImagingManifest.BaseLocation>"
                },
                {
                    "name": "series",
                    "type": "list<FHIR.ImagingManifest.Series>"
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
            "name": "FHIR.Claim.Procedure",
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
                    "name": "procedureCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "procedureReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMap.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "valueId",
                    "type": "FHIR.id"
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
                    "name": "expression",
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
            "name": "FHIR.TestScript.Destination",
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
            "name": "FHIR.ClaimResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Measure.Population",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.MeasurePopulationType"
                },
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
                    "name": "criteria",
                    "type": "FHIR.string"
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
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication>"
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
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.ProcessRequestStatus"
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
                    "name": "action",
                    "type": "FHIR.ActionList"
                },
                {
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "targetIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "targetReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "responseReference",
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
                    "name": "action",
                    "type": "list<FHIR.TestScript.Action1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Note",
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
                },
                {
                    "name": "language",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "claimIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "claimReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Age",
            "baseType": "FHIR.Quantity",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CareTeam.Participant",
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
                    "name": "period",
                    "type": "FHIR.Period"
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
                    "name": "baseLocation",
                    "type": "list<FHIR.ImagingStudy.BaseLocation1>"
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
            "name": "FHIR.Endpoint",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.EndpointStatus"
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
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "connectionType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "method",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "address",
                    "type": "FHIR.uri"
                },
                {
                    "name": "payloadFormat",
                    "type": "FHIR.string"
                },
                {
                    "name": "payloadType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "header",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "publicKey",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Contract.Agent1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
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
            "name": "FHIR.MeasureReport.Stratifier",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.MeasureReport.Group1>"
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
                    "name": "status",
                    "type": "FHIR.MedicationOrderStatus"
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
                    "name": "reasonCode",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "category",
                    "type": "FHIR.MedicationOrderCategory"
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
                },
                {
                    "name": "eventHistory",
                    "type": "list<FHIR.MedicationOrder.EventHistory>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PlanActionSelectionBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.QuestionnaireResponse.Item",
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
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "answer",
                    "type": "list<FHIR.QuestionnaireResponse.Answer>"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.QuestionnaireResponse.Item>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ActivityDefinition",
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
                    "name": "title",
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
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.string"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "publicationDate",
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
                    "name": "coverage",
                    "type": "list<FHIR.UsageContext>"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "contributor",
                    "type": "list<FHIR.Contributor>"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactDetail>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "relatedResource",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "library",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "category",
                    "type": "FHIR.ActivityDefinitionCategory"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timingCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "timingTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "location",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "participantType",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "productReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "productCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "transform",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dynamicValue",
                    "type": "list<FHIR.ActivityDefinition.DynamicValue>"
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
            "name": "FHIR.ExpansionProfile.CodeSystem2",
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
            "name": "FHIR.ExpansionProfile.CodeSystem1",
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
            "name": "FHIR.ImagingStudy.Instance",
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
            "name": "FHIR.StructureMapContextType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Related",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "claimIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "claimReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reference",
                    "type": "FHIR.Identifier"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Accident",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "locationAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "locationReference",
                    "type": "FHIR.Reference"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MedicationStatementCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Detail",
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
                },
                {
                    "name": "subDetail",
                    "type": "list<FHIR.ExplanationOfBenefit.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Rule3",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "type": "list<FHIR.TestScript.Param3>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Rule2",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "type": "list<FHIR.TestScript.Param2>"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "FHIR.markdown"
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
                    "type": "FHIR.markdown"
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
            "name": "FHIR.StructureMap.Input",
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
            "name": "FHIR.TestScript.Origin",
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
            "name": "FHIR.TestScript.Rule1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "ruleId",
                    "type": "FHIR.id"
                },
                {
                    "name": "param",
                    "type": "list<FHIR.TestScript.Param1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Linkage",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "author",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.Linkage.Item>"
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
                    "name": "onBehalfOfUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "onBehalfOfReference",
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
            "name": "FHIR.Measure",
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
                    "name": "title",
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
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.string"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "publicationDate",
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
                    "name": "coverage",
                    "type": "list<FHIR.UsageContext>"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "contributor",
                    "type": "list<FHIR.Contributor>"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactDetail>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "relatedResource",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "library",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "disclaimer",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "scoring",
                    "type": "FHIR.MeasureScoring"
                },
                {
                    "name": "type",
                    "type": "list<FHIR.MeasureType>"
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
                    "type": "FHIR.markdown"
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
                    "type": "list<FHIR.Measure.Group>"
                },
                {
                    "name": "supplementalData",
                    "type": "list<FHIR.Measure.SupplementalData>"
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
                    "type": "list<FHIR.Signature>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Practitioner.Role",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
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
                },
                {
                    "name": "endpoint",
                    "type": "list<FHIR.Reference>"
                }
            ]
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
                    "name": "status",
                    "type": "FHIR.ProcessResponseStatus"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
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
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProviderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestProviderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestOrganizationReference",
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
            "name": "FHIR.NutritionRequest.Nutrient",
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
            "name": "FHIR.MeasureReport.Population",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
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
            "name": "FHIR.ReferralCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Adjudication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reason",
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
            "name": "FHIR.EnrollmentResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ConsentExceptType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "specimenQuantity",
                    "type": "FHIR.Quantity"
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
            "name": "FHIR.NutritionRequest.Texture",
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
            "name": "FHIR.EndpointStatus",
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
                    "name": "status",
                    "type": "FHIR.ExplanationOfBenefitStatus"
                },
                {
                    "name": "authorIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "authorReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "claimIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "claimReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "claimResponseIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "claimResponseReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subType",
                    "type": "list<FHIR.Coding>"
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
                    "name": "billablePeriod",
                    "type": "FHIR.Period"
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
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facilityIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "facilityReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "related",
                    "type": "list<FHIR.ExplanationOfBenefit.Related>"
                },
                {
                    "name": "prescriptionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "prescriptionReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalPrescriptionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "originalPrescriptionReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payee",
                    "type": "FHIR.ExplanationOfBenefit.Payee"
                },
                {
                    "name": "referralIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "referralReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "information",
                    "type": "list<FHIR.ExplanationOfBenefit.Information>"
                },
                {
                    "name": "diagnosis",
                    "type": "list<FHIR.ExplanationOfBenefit.Diagnosis>"
                },
                {
                    "name": "procedure",
                    "type": "list<FHIR.ExplanationOfBenefit.Procedure>"
                },
                {
                    "name": "patientIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patientReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "precedence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "coverage",
                    "type": "FHIR.ExplanationOfBenefit.Coverage"
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
                    "type": "list<FHIR.ExplanationOfBenefit.Item>"
                },
                {
                    "name": "addItem",
                    "type": "list<FHIR.ExplanationOfBenefit.AddItem>"
                },
                {
                    "name": "missingTeeth",
                    "type": "list<FHIR.ExplanationOfBenefit.MissingTeeth>"
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
                    "type": "FHIR.Coding"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.ExplanationOfBenefit.Note>"
                },
                {
                    "name": "benefitBalance",
                    "type": "list<FHIR.ExplanationOfBenefit.BenefitBalance>"
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
            "name": "FHIR.ImagingManifest",
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
                    "name": "authoringTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "author",
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
                    "name": "study",
                    "type": "list<FHIR.ImagingManifest.Study>"
                }
            ]
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
            "name": "FHIR.CodeSystem",
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.CodeSystem.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
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
                    "type": "list<FHIR.CodeSystem.Filter>"
                },
                {
                    "name": "property",
                    "type": "list<FHIR.CodeSystem.Property>"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.CodeSystem.Concept>"
                }
            ]
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
                    "name": "careTeam",
                    "type": "list<FHIR.Claim.CareTeam>"
                },
                {
                    "name": "diagnosisLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "servicedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "servicedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "locationCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "locationAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "locationReference",
                    "type": "FHIR.Reference"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
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
            "name": "FHIR.ExplanationOfBenefit.Financial",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "benefitUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "benefitString",
                    "type": "FHIR.string"
                },
                {
                    "name": "benefitMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "benefitUsedUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "benefitUsedMoney",
                    "type": "FHIR.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Prosthesis",
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
                    "name": "careTeam",
                    "type": "list<FHIR.Reference>"
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
                    "type": "FHIR.AdministrativeGender"
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
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Questionnaire",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "concept",
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
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "subjectType",
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.Questionnaire.Item>"
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
                    "type": "FHIR.AdministrativeGender"
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
                    "name": "generalPractitioner",
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
            "name": "FHIR.RelatedResource",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.RelatedResourceType"
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
            "name": "FHIR.List",
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
                    "type": "list<FHIR.Annotation>"
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
            "primaryCodePath": "relationship",
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
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.CodeableConcept"
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
                    "type": "FHIR.AdministrativeGender"
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
                    "name": "onsetAge",
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
            "name": "FHIR.ImagingManifest.Series",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "baseLocation",
                    "type": "list<FHIR.ImagingManifest.BaseLocation1>"
                },
                {
                    "name": "instance",
                    "type": "list<FHIR.ImagingManifest.Instance>"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.NamingSystem.Contact>"
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
                    "type": "list<FHIR.Annotation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.Sequence.Repository",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
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
                    "name": "variantId",
                    "type": "FHIR.string"
                },
                {
                    "name": "readId",
                    "type": "FHIR.string"
                }
            ]
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
                },
                {
                    "name": "timeDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "timePeriod",
                    "type": "FHIR.Period"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "FHIR.NutritionRequest.OralDiet"
                },
                {
                    "name": "supplement",
                    "type": "list<FHIR.NutritionRequest.Supplement>"
                },
                {
                    "name": "enteralFormula",
                    "type": "FHIR.NutritionRequest.EnteralFormula"
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
                    "type": "list<FHIR.Provenance.Agent>"
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ClaimResponse.Adjudication>"
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
                    "type": "FHIR.DocumentReferenceStatus"
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
            "name": "FHIR.Contract.Agent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actor",
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
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ImagingManifest.BaseLocation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
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
                    "name": "coverageIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "coverageReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
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
            "name": "FHIR.MeasureReport.Population1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
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
            "name": "FHIR.PlanDefinition.Condition",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
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
                    "name": "group",
                    "type": "list<FHIR.ConceptMap.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CodeSystem.Contact",
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
            "name": "FHIR.ConsentStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "list<FHIR.HumanName>"
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
                    "type": "FHIR.AdministrativeGender"
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
                    "name": "role",
                    "type": "list<FHIR.Practitioner.Role>"
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
            "name": "FHIR.StructureMapInputMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.LinkageType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ClaimResponse.Payment",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "adjustment",
                    "type": "FHIR.Money"
                },
                {
                    "name": "adjustmentReason",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.LibraryStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.CoverageStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.EligibilityResponse.Financial",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "benefitUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "benefitString",
                    "type": "FHIR.string"
                },
                {
                    "name": "benefitMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "benefitUsedUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "benefitUsedMoney",
                    "type": "FHIR.Money"
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
                    "name": "status",
                    "type": "FHIR.PaymentNoticeStatus"
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
                    "name": "targetIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "targetReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "responseReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "paymentStatus",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "statusDate",
                    "type": "FHIR.date"
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
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
                    "name": "title",
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
            "name": "FHIR.MeasureReport.Group",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "population",
                    "type": "list<FHIR.MeasureReport.Population>"
                },
                {
                    "name": "measureScore",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "stratifier",
                    "type": "list<FHIR.MeasureReport.Stratifier>"
                },
                {
                    "name": "supplementalData",
                    "type": "list<FHIR.MeasureReport.SupplementalData>"
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
            "name": "FHIR.ImagingStudy.BaseLocation",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "url",
                    "type": "FHIR.uri"
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
            "name": "FHIR.ExpansionProfile.Exclude1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "designation",
                "type": "list<FHIR.ExpansionProfile.Designation2>"
            }
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
            "name": "FHIR.RelatedResourceType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AllergyIntolerance",
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
                    "type": "FHIR.AllergyIntoleranceStatus"
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
                    "name": "attestedDate",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "recorder",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reporter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "onset",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "lastOccurrence",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
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
                    "type": "FHIR.EncounterStatus"
                },
                {
                    "name": "statusHistory",
                    "type": "list<FHIR.Encounter.StatusHistory>"
                },
                {
                    "name": "class",
                    "type": "FHIR.Coding"
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
                    "name": "account",
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
            "name": "FHIR.StructureMap.Dependent",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "variable",
                    "type": "list<FHIR.string>"
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
            "name": "FHIR.PlanActionParticipantType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                },
                {
                    "name": "type",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "drg",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMap.Group",
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
                    "name": "documentation",
                    "type": "FHIR.string"
                },
                {
                    "name": "input",
                    "type": "list<FHIR.StructureMap.Input>"
                },
                {
                    "name": "rule",
                    "type": "list<FHIR.StructureMap.Rule>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CompartmentDefinition.Contact",
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
                    "name": "basedOn",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "parent",
                    "type": "list<FHIR.Reference>"
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
                    "name": "item",
                    "type": "list<FHIR.QuestionnaireResponse.Item>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Agent",
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
            "name": "FHIR.CodeSystem.Property1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueDateTime",
                    "type": "FHIR.dateTime"
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
                    "name": "availability",
                    "type": "FHIR.InstanceAvailability"
                },
                {
                    "name": "modalityList",
                    "type": "list<FHIR.Coding>"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "referrer",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "interpreter",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "baseLocation",
                    "type": "list<FHIR.ImagingStudy.BaseLocation>"
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
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
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
                    "name": "active",
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
                    "name": "coverage",
                    "type": "list<FHIR.Reference>"
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
                    "type": "FHIR.AuditEventAgentNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Consent.Actor",
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
            "name": "FHIR.PlanActionGroupingBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "value",
                    "type": "System.Any"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
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
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueAge",
                    "type": "FHIR.Age"
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
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "valueDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "valueDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
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
            "name": "FHIR.ExplanationOfBenefit.BenefitBalance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subCategory",
                    "type": "FHIR.Coding"
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
                    "type": "FHIR.Coding"
                },
                {
                    "name": "unit",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "term",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "financial",
                    "type": "list<FHIR.ExplanationOfBenefit.Financial>"
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
            "name": "FHIR.PractitionerRole",
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
                    "name": "practitioner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "code",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "location",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "healthcareService",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "telecom",
                    "type": "list<FHIR.ContactPoint>"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "availableTime",
                    "type": "list<FHIR.PractitionerRole.AvailableTime>"
                },
                {
                    "name": "notAvailable",
                    "type": "list<FHIR.PractitionerRole.NotAvailable>"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "FHIR.string"
                },
                {
                    "name": "endpoint",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.NutritionRequest.OralDiet",
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
                    "type": "list<FHIR.NutritionRequest.Nutrient>"
                },
                {
                    "name": "texture",
                    "type": "list<FHIR.NutritionRequest.Texture>"
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
                    "type": "FHIR.Quantity"
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
                    "name": "collectedDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "collectedPeriod",
                    "type": "FHIR.Period"
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
            "name": "FHIR.StructureMapTransform",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Sequence.Quality",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
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
            "name": "FHIR.Sequence.Outer",
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
            "name": "FHIR.CodeSystem.Filter",
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
                    "type": "list<FHIR.code>"
                },
                {
                    "name": "value",
                    "type": "FHIR.string"
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
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "responseReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "submitterIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "submitterReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payeeIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "payeeReference",
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
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "basedOn",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "parent",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ReferralStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.ReferralCategory"
                },
                {
                    "name": "type",
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
                    "name": "context",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "fulfillmentTime",
                    "type": "FHIR.Period"
                },
                {
                    "name": "authored",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "specialty",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
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
                    "name": "definition",
                    "type": "FHIR.Reference"
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
            "name": "FHIR.ImmunizationRecommendation.Protocol",
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
            "name": "FHIR.sequenceType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "agent",
                    "type": "list<FHIR.AuditEvent.Agent>"
                },
                {
                    "name": "source",
                    "type": "FHIR.AuditEvent.Source"
                },
                {
                    "name": "entity",
                    "type": "list<FHIR.AuditEvent.Entity>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.CareTeam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "role",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "qualification",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.Sequence.StructureVariant",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "precisionOfBoundaries",
                    "type": "FHIR.string"
                },
                {
                    "name": "reportedaCGHRatio",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "length",
                    "type": "FHIR.integer"
                },
                {
                    "name": "outer",
                    "type": "FHIR.Sequence.Outer"
                },
                {
                    "name": "inner",
                    "type": "FHIR.Sequence.Inner"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Task",
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "requisition",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "parent",
                    "type": "list<FHIR.Reference>"
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
                    "name": "stage",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "code",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "priority",
                    "type": "FHIR.TaskPriority"
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
                    "name": "created",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "lastModified",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "owner",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "performerType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "fulfillment",
                    "type": "FHIR.Task.Fulfillment"
                },
                {
                    "name": "definition",
                    "type": "FHIR.uri"
                },
                {
                    "name": "input",
                    "type": "list<FHIR.Task.Input>"
                },
                {
                    "name": "output",
                    "type": "list<FHIR.Task.Output>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EligibilityResponse.Error",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "code",
                "type": "FHIR.Coding"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.OperationDefinition.Contact>"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
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
            "name": "FHIR.Sequence.Inner",
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMapModelMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TaskStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "suppliedItemCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "suppliedItemReference",
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
            "name": "FHIR.MeasurePopulationType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMap.Source",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "required",
                    "type": "FHIR.boolean"
                },
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
                    "name": "listMode",
                    "type": "FHIR.StructureMapListMode"
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
            "name": "FHIR.ConceptMap.Group",
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
                    "type": "list<FHIR.ConceptMap.Element>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEvent.Entity",
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
            "name": "FHIR.Sequence",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "type",
                    "type": "FHIR.sequenceType"
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
                    "name": "quantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "referenceSeq",
                    "type": "FHIR.Sequence.ReferenceSeq"
                },
                {
                    "name": "variant",
                    "type": "list<FHIR.Sequence.Variant>"
                },
                {
                    "name": "observedSeq",
                    "type": "FHIR.string"
                },
                {
                    "name": "quality",
                    "type": "list<FHIR.Sequence.Quality>"
                },
                {
                    "name": "readCoverage",
                    "type": "FHIR.integer"
                },
                {
                    "name": "repository",
                    "type": "list<FHIR.Sequence.Repository>"
                },
                {
                    "name": "pointer",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "structureVariant",
                    "type": "list<FHIR.Sequence.StructureVariant>"
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
            "name": "FHIR.ImagingManifest.Instance",
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
            "name": "FHIR.CodeSystem.Property",
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
            "name": "FHIR.ParameterDefinition",
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
            "name": "FHIR.EligibilityRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.EligibilityRequestStatus"
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
                    "name": "insurerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "insurerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "priority",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "entererIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "entererReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facilityIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "facilityReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "patientIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patientReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverageIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "coverageReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
                },
                {
                    "name": "servicedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "servicedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "benefitCategory",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "benefitSubCategory",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Payment",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "adjustment",
                    "type": "FHIR.Money"
                },
                {
                    "name": "adjustmentReason",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.Parameters.Parameter",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
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
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueAge",
                    "type": "FHIR.Age"
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
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "valueDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "valueDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
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
                    "name": "valueTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "FHIR.Meta"
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
            "name": "FHIR.DecisionSupportServiceModule",
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
                    "name": "title",
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
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.string"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "publicationDate",
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
                    "name": "coverage",
                    "type": "list<FHIR.UsageContext>"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "contributor",
                    "type": "list<FHIR.Contributor>"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactDetail>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "relatedResource",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "trigger",
                    "type": "list<FHIR.TriggerDefinition>"
                },
                {
                    "name": "parameter",
                    "type": "list<FHIR.ParameterDefinition>"
                },
                {
                    "name": "dataRequirement",
                    "type": "list<FHIR.DataRequirement>"
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
                    "name": "resourceType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "partyIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "partyReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataRequirement.DateFilter",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "FHIR.string"
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
                    "name": "valueDuration",
                    "type": "FHIR.Duration"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Sequence.Variant",
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
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
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
                    "name": "dispensingOrganization",
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<FHIR.MedicationDispense.DosageInstruction>"
                },
                {
                    "name": "substitution",
                    "type": "FHIR.MedicationDispense.Substitution"
                },
                {
                    "name": "eventHistory",
                    "type": "list<FHIR.MedicationDispense.EventHistory>"
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
            "name": "FHIR.TestScript.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "param",
                    "type": "list<FHIR.TestScript.Param>"
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
            "name": "FHIR.Linkage.Item",
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
            "name": "FHIR.Questionnaire.Item",
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
                    "type": "list<FHIR.Questionnaire.EnableWhen>"
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
                    "type": "list<FHIR.Questionnaire.Option>"
                },
                {
                    "name": "initialBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "initialDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "initialInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "initialDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "initialDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "initialInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "initialTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "initialString",
                    "type": "FHIR.string"
                },
                {
                    "name": "initialUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "initialAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "initialCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "initialQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "initialReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "item",
                    "type": "list<FHIR.Questionnaire.Item>"
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
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "equivalence",
                    "type": "FHIR.ConceptMapEquivalence"
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
                    "type": "FHIR.code"
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
            "name": "FHIR.TriggerDefinition",
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
                    "name": "eventTimingTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "eventTimingReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "eventTimingDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "eventTimingDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "eventData",
                    "type": "FHIR.DataRequirement"
                }
            ]
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
                    "name": "basedOn",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "parent",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "status",
                    "type": "FHIR.CommunicationStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medium",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "subject",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.Reference>"
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
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "payload",
                    "type": "list<FHIR.Communication.Payload>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
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
                    "name": "topic",
                    "type": "list<FHIR.Reference>"
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
                    "name": "agent",
                    "type": "list<FHIR.Contract.Agent1>"
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
            "name": "FHIR.ExplanationOfBenefitStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Library",
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
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "status",
                    "type": "FHIR.LibraryStatus"
                },
                {
                    "name": "experimental",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.string"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "publicationDate",
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
                    "name": "coverage",
                    "type": "list<FHIR.UsageContext>"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "contributor",
                    "type": "list<FHIR.Contributor>"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactDetail>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "relatedResource",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "parameter",
                    "type": "list<FHIR.ParameterDefinition>"
                },
                {
                    "name": "dataRequirement",
                    "type": "list<FHIR.DataRequirement>"
                },
                {
                    "name": "content",
                    "type": "FHIR.Attachment"
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
            "name": "FHIR.ExplanationOfBenefit.Information",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "code",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "timingDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
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
            "name": "FHIR.Consent",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.ConsentStatus"
                },
                {
                    "name": "category",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "period",
                    "type": "FHIR.Period"
                },
                {
                    "name": "patient",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "consentor",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "organization",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "sourceAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "sourceIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "sourceReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "policy",
                    "type": "FHIR.uri"
                },
                {
                    "name": "recipient",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "purpose",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "except",
                    "type": "list<FHIR.Consent.Except>"
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
            "name": "FHIR.ExplanationOfBenefit.Detail1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EligibilityResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.MeasureDataUsage",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TriggerType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.Claim.Information",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "code",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "timingDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueQuantity",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ActivityDefinitionCategory",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.Conformance.Contact>"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
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
                    "name": "instantiates",
                    "type": "list<FHIR.uri>"
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
                    "type": "FHIR.DocumentReferenceStatus"
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
            "name": "FHIR.MedicationAdministration.EventHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.MedicationAdministrationStatus"
                },
                {
                    "name": "action",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
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
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.ExpansionProfile.CodeSystem",
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
                    "type": "list<FHIR.ValueSet.Concept>"
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
            "name": "FHIR.TaskPriority",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.ProcessRequestStatus",
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
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
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
            "name": "FHIR.Contributor",
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
                    "type": "list<FHIR.ContactDetail>"
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
                    "name": "status",
                    "type": "FHIR.EnrollmentResponseStatus"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.RemittanceOutcome"
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
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProviderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestProviderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestOrganizationReference",
                    "type": "FHIR.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentNoticeStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.MeasureType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ActivityDefinition.DynamicValue",
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
            "name": "FHIR.Observation.ReferenceRange",
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
                    "name": "meaning",
                    "type": "list<FHIR.CodeableConcept>"
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
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.CoverageStatus"
                },
                {
                    "name": "issuerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "issuerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "isAgreement",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "bin",
                    "type": "FHIR.string"
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
                    "name": "planholderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "planholderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "beneficiaryIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "beneficiaryReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.Coding"
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
                    "name": "subGroup",
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
                    "name": "class",
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
                    "name": "network",
                    "type": "FHIR.string"
                },
                {
                    "name": "contract",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CompartmentDefinition.Resource",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "FHIR.code"
                },
                {
                    "name": "param",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
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
                    "name": "ActivityDefinition",
                    "type": "FHIR.ActivityDefinition"
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
                    "name": "CareTeam",
                    "type": "FHIR.CareTeam"
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
                    "name": "Conformance",
                    "type": "FHIR.Conformance"
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
                    "name": "DecisionSupportServiceModule",
                    "type": "FHIR.DecisionSupportServiceModule"
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
                    "name": "DiagnosticReport",
                    "type": "FHIR.DiagnosticReport"
                },
                {
                    "name": "DiagnosticRequest",
                    "type": "FHIR.DiagnosticRequest"
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
                    "name": "NutritionRequest",
                    "type": "FHIR.NutritionRequest"
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
            "name": "FHIR.QuestionnaireItemType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PaymentReconciliationStatus",
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
            "name": "FHIR.StructureMapListMode",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Timing.Repeat",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "boundsDuration",
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
                    "name": "when",
                    "type": "FHIR.EventTiming"
                },
                {
                    "name": "offset",
                    "type": "FHIR.unsignedInt"
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
                    "name": "itemCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "itemReference",
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
            "name": "FHIR.MedicationOrder.EventHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.MedicationOrderStatus"
                },
                {
                    "name": "action",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Media",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "operator",
                    "type": "FHIR.Reference"
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
                    "name": "topic",
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
                    "name": "agent",
                    "type": "list<FHIR.Contract.Agent>"
                },
                {
                    "name": "signer",
                    "type": "list<FHIR.Contract.Signer>"
                },
                {
                    "name": "valuedItem",
                    "type": "list<FHIR.Contract.ValuedItem>"
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
            "name": "FHIR.NutritionRequest.EnteralFormula",
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
                    "type": "list<FHIR.NutritionRequest.Administration>"
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
            "name": "FHIR.ExpansionProfile.Contact",
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
            "primaryCodePath": "code",
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
                    "type": "list<FHIR.Reference>"
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
            "name": "FHIR.CompartmentDefinition",
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.CompartmentDefinition.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
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
                    "type": "list<FHIR.CompartmentDefinition.Resource>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GuidanceResponse.RelatedAction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.code"
                },
                {
                    "name": "offsetDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "offsetRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "anchor",
                    "type": "FHIR.code"
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
            "type": "SimpleTypeInfo",
            "name": "xs.base64Binary",
            "baseType": "System.Any"
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
            "name": "FHIR.PlanDefinition.DynamicValue",
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
            "name": "FHIR.Schedule",
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
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialty",
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
            "name": "FHIR.StructureMap.Structure",
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
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Task.Output",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "FHIR.base64Binary"
                },
                {
                    "name": "valueBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "valueCode",
                    "type": "FHIR.code"
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
                    "name": "valueDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "valueId",
                    "type": "FHIR.id"
                },
                {
                    "name": "valueInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueMarkdown",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "valueOid",
                    "type": "FHIR.oid"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "valueString",
                    "type": "FHIR.string"
                },
                {
                    "name": "valueTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "FHIR.unsignedInt"
                },
                {
                    "name": "valueUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "valueAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "valueAge",
                    "type": "FHIR.Age"
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
                    "name": "valueCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "valueContactPoint",
                    "type": "FHIR.ContactPoint"
                },
                {
                    "name": "valueCount",
                    "type": "FHIR.Count"
                },
                {
                    "name": "valueDistance",
                    "type": "FHIR.Distance"
                },
                {
                    "name": "valueDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "valueHumanName",
                    "type": "FHIR.HumanName"
                },
                {
                    "name": "valueIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "valueMoney",
                    "type": "FHIR.Money"
                },
                {
                    "name": "valuePeriod",
                    "type": "FHIR.Period"
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
                    "name": "medicationCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "medicationReference",
                    "type": "FHIR.Reference"
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
                    "name": "effectiveTimeDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "effectiveTimePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "performer",
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
                    "name": "device",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "dosage",
                    "type": "FHIR.MedicationAdministration.Dosage"
                },
                {
                    "name": "eventHistory",
                    "type": "list<FHIR.MedicationAdministration.EventHistory>"
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
                },
                {
                    "name": "language",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.ProcessResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "coverageIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "coverageReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "FHIR.string"
                },
                {
                    "name": "preAuthRef",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "claimResponse",
                    "type": "FHIR.Reference"
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
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "activity",
                    "type": "FHIR.Coding"
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
                    "name": "defaultValue",
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
                    "name": "outcome",
                    "type": "FHIR.CodeableConcept"
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
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExpansionProfile.Exclude",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "codeSystem",
                "type": "list<FHIR.ExpansionProfile.CodeSystem2>"
            }
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
            "element": {
                "name": "action",
                "type": "list<FHIR.TestScript.Action>"
            }
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
            "name": "FHIR.StructureMap.Rule",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "FHIR.id"
                },
                {
                    "name": "source",
                    "type": "list<FHIR.StructureMap.Source>"
                },
                {
                    "name": "target",
                    "type": "list<FHIR.StructureMap.Target>"
                },
                {
                    "name": "rule",
                    "type": "list<FHIR.StructureMap.Rule>"
                },
                {
                    "name": "dependent",
                    "type": "list<FHIR.StructureMap.Dependent>"
                },
                {
                    "name": "documentation",
                    "type": "FHIR.string"
                }
            ]
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
            "name": "FHIR.StructureMap",
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "list<FHIR.StructureMap.Contact>"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "description",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "useContext",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "requirements",
                    "type": "FHIR.markdown"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "structure",
                    "type": "list<FHIR.StructureMap.Structure>"
                },
                {
                    "name": "import",
                    "type": "list<FHIR.uri>"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.StructureMap.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Claim.Accident",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "FHIR.date"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "locationAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "locationReference",
                    "type": "FHIR.Reference"
                }
            ]
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
            "name": "FHIR.Questionnaire.EnableWhen",
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
                    "name": "answerBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "answerDecimal",
                    "type": "FHIR.decimal"
                },
                {
                    "name": "answerInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "answerDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "answerDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "answerInstant",
                    "type": "FHIR.instant"
                },
                {
                    "name": "answerTime",
                    "type": "FHIR.time"
                },
                {
                    "name": "answerString",
                    "type": "FHIR.string"
                },
                {
                    "name": "answerUri",
                    "type": "FHIR.uri"
                },
                {
                    "name": "answerAttachment",
                    "type": "FHIR.Attachment"
                },
                {
                    "name": "answerCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "answerQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "answerReference",
                    "type": "FHIR.Reference"
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
                    "name": "origin",
                    "type": "FHIR.integer"
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
                    "name": "active",
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
            "name": "FHIR.MeasureScoring",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.ExplanationOfBenefit.Payee",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "resourceType",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "partyIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "partyReference",
                    "type": "FHIR.Reference"
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
            "name": "FHIR.MeasureReport.SupplementalData",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "group",
                    "type": "list<FHIR.MeasureReport.Group2>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.AuditEventAgentNetworkType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Location",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
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
                    "name": "alias",
                    "type": "list<FHIR.string>"
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
                },
                {
                    "name": "endpoint",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CodeSystem.Concept",
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
                    "type": "list<FHIR.CodeSystem.Designation>"
                },
                {
                    "name": "property",
                    "type": "list<FHIR.CodeSystem.Property1>"
                },
                {
                    "name": "concept",
                    "type": "list<FHIR.CodeSystem.Concept>"
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
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "FHIR.Quantity"
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
                    "name": "rateRatio",
                    "type": "FHIR.Ratio"
                },
                {
                    "name": "rateRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "rateQuantity",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Measure.SupplementalData",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "usage",
                    "type": "list<FHIR.MeasureDataUsage>"
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
            "name": "FHIR.Consent.Data",
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
            "name": "FHIR.ContributorType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ReferenceVersionRules",
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
            "name": "FHIR.ExplanationOfBenefit.AddItem",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "fee",
                    "type": "FHIR.Money"
                },
                {
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.ExplanationOfBenefit.Detail1>"
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
            "name": "FHIR.MeasureReportStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "orderedItemCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "orderedItemReference",
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
            "name": "FHIR.ConditionalReadStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "status",
                    "type": "FHIR.PaymentReconciliationStatus"
                },
                {
                    "name": "requestIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "outcome",
                    "type": "FHIR.RemittanceOutcome"
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
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestProviderIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestProviderReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "requestOrganizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "requestOrganizationReference",
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
            "name": "FHIR.ExpansionProfile.Include1",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "designation",
                "type": "list<FHIR.ExpansionProfile.Designation1>"
            }
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
                    "name": "team",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "account",
                    "type": "list<FHIR.Reference>"
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
                    "name": "comment",
                    "type": "FHIR.string"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Diagnosis",
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
                },
                {
                    "name": "type",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "drg",
                    "type": "FHIR.Coding"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Organization",
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
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "name",
                    "type": "FHIR.string"
                },
                {
                    "name": "alias",
                    "type": "list<FHIR.string>"
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
                },
                {
                    "name": "endpoint",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ContactDetail",
            "baseType": "FHIR.Element",
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
            "name": "FHIR.ConceptMap.Element",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
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
            "name": "FHIR.MedicationDispense.EventHistory",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "FHIR.MedicationDispenseStatus"
                },
                {
                    "name": "action",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "dateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "actor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "reason",
                    "type": "FHIR.CodeableConcept"
                }
            ]
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
                    "type": "list<FHIR.CodeableConcept>"
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
                    "type": "FHIR.Quantity"
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
                    "name": "rateQuantity",
                    "type": "FHIR.Quantity"
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
            "name": "FHIR.PlanDefinition.RelatedAction",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "relationship",
                    "type": "FHIR.PlanActionRelationshipType"
                },
                {
                    "name": "offsetDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "offsetRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "anchor",
                    "type": "FHIR.PlanActionRelationshipAnchor"
                }
            ]
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
            "name": "FHIR.NutritionRequest.Supplement",
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
            "name": "FHIR.PlanDefinition.ActionDefinition",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "actionIdentifier",
                    "type": "FHIR.Identifier"
                },
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
                    "name": "concept",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "documentation",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "triggerDefinition",
                    "type": "list<FHIR.TriggerDefinition>"
                },
                {
                    "name": "condition",
                    "type": "FHIR.PlanDefinition.Condition"
                },
                {
                    "name": "relatedAction",
                    "type": "list<FHIR.PlanDefinition.RelatedAction>"
                },
                {
                    "name": "timingDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "timingPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "timingDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "timingRange",
                    "type": "FHIR.Range"
                },
                {
                    "name": "timingTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "participantType",
                    "type": "list<FHIR.PlanActionParticipantType>"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "groupingBehavior",
                    "type": "FHIR.PlanActionGroupingBehavior"
                },
                {
                    "name": "selectionBehavior",
                    "type": "FHIR.PlanActionSelectionBehavior"
                },
                {
                    "name": "requiredBehavior",
                    "type": "FHIR.PlanActionRequiredBehavior"
                },
                {
                    "name": "precheckBehavior",
                    "type": "FHIR.PlanActionPrecheckBehavior"
                },
                {
                    "name": "cardinalityBehavior",
                    "type": "FHIR.PlanActionCardinalityBehavior"
                },
                {
                    "name": "activityDefinition",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "transform",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "dynamicValue",
                    "type": "list<FHIR.PlanDefinition.DynamicValue>"
                },
                {
                    "name": "actionDefinition",
                    "type": "list<FHIR.PlanDefinition.ActionDefinition>"
                }
            ]
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
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "name": "assessor",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "date",
                    "type": "FHIR.dateTime"
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
                    "name": "context",
                    "type": "FHIR.Reference"
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
                    "name": "investigations",
                    "type": "list<FHIR.ClinicalImpression.Investigations>"
                },
                {
                    "name": "protocol",
                    "type": "list<FHIR.uri>"
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
                    "name": "prognosisCodeableConcept",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "prognosisReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "plan",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
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
            "name": "FHIR.ExpansionProfile.Include",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "codeSystem",
                "type": "list<FHIR.ExpansionProfile.CodeSystem1>"
            }
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
                    "name": "interpretation",
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
                    "name": "additionalInstructions",
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "doseQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "doseRange",
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
                    "name": "rateQuantity",
                    "type": "FHIR.Quantity"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "FHIR.Ratio"
                }
            ]
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
            "name": "FHIR.CodeSystemContentMode",
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
            "name": "FHIR.RiskAssessment",
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
                    "type": "FHIR.code"
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
                    "name": "occurrenceDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "occurrencePeriod",
                    "type": "FHIR.Period"
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
                    "name": "reasonCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "reasonReference",
                    "type": "FHIR.Reference"
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
                },
                {
                    "name": "note",
                    "type": "FHIR.Annotation"
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
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "status",
                    "type": "FHIR.ClaimStatus"
                },
                {
                    "name": "type",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subType",
                    "type": "list<FHIR.Coding>"
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
                    "name": "billablePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "insurerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "insurerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "organizationIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "organizationReference",
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
                    "name": "entererIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "entererReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "facilityIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "facilityReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "related",
                    "type": "list<FHIR.Claim.Related>"
                },
                {
                    "name": "prescriptionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "prescriptionReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "originalPrescriptionIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "originalPrescriptionReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "payee",
                    "type": "FHIR.Claim.Payee"
                },
                {
                    "name": "referralIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "referralReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "information",
                    "type": "list<FHIR.Claim.Information>"
                },
                {
                    "name": "diagnosis",
                    "type": "list<FHIR.Claim.Diagnosis>"
                },
                {
                    "name": "procedure",
                    "type": "list<FHIR.Claim.Procedure>"
                },
                {
                    "name": "patientIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "patientReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "coverage",
                    "type": "list<FHIR.Claim.Coverage>"
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
                    "type": "list<FHIR.Claim.Item>"
                },
                {
                    "name": "total",
                    "type": "FHIR.Money"
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
                    "type": "FHIR.BindingStrength"
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
            "name": "FHIR.PlanActionRelationshipType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.ExplanationOfBenefit.CareTeam",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "providerIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "providerReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "responsible",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "role",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "qualification",
                    "type": "FHIR.Coding"
                }
            ]
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
            "name": "FHIR.PractitionerRole.NotAvailable",
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
            "name": "FHIR.ExplanationOfBenefit.Adjudication",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "reason",
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
            "name": "FHIR.HealthcareService",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "serviceType",
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
                    "name": "providedBy",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "serviceCategory",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "serviceType",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "specialty",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "location",
                    "type": "list<FHIR.Reference>"
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
                    "name": "clinicalStatus",
                    "type": "FHIR.code"
                },
                {
                    "name": "verificationStatus",
                    "type": "FHIR.ConditionVerificationStatus"
                },
                {
                    "name": "category",
                    "type": "FHIR.CodeableConcept"
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
                    "type": "list<FHIR.CodeableConcept>"
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
                    "name": "onsetDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "onsetAge",
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
                    "name": "abatementAge",
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
                    "name": "dateRecorded",
                    "type": "FHIR.date"
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
                    "type": "list<FHIR.Condition.Evidence>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.EligibilityResponse.BenefitBalance",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "subCategory",
                    "type": "FHIR.Coding"
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
                    "type": "FHIR.Coding"
                },
                {
                    "name": "unit",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "term",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "financial",
                    "type": "list<FHIR.EligibilityResponse.Financial>"
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
            "name": "FHIR.PropertyType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "FHIR.uri"
                },
                {
                    "name": "targetProfile",
                    "type": "FHIR.uri"
                },
                {
                    "name": "aggregation",
                    "type": "list<FHIR.AggregationMode>"
                },
                {
                    "name": "versioning",
                    "type": "FHIR.ReferenceVersionRules"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Questionnaire.Option",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "valueInteger",
                    "type": "FHIR.integer"
                },
                {
                    "name": "valueDate",
                    "type": "FHIR.date"
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
                    "name": "valueCoding",
                    "type": "FHIR.Coding"
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
            "name": "FHIR.TypeDerivationRule",
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
                    "name": "targetDuration",
                    "type": "FHIR.Duration"
                },
                {
                    "name": "category",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "description",
                    "type": "FHIR.CodeableConcept"
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
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "expressedBy",
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
                    "name": "item",
                    "type": "list<FHIR.QuestionnaireResponse.Item>"
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
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "definition",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "basedOn",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "replaces",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "requisition",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "stage",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "deviceReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "deviceCodeableConcept",
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
                    "name": "occurrenceDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "occurrencePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "occurrenceTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "authored",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
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
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "supportingInfo",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "relevantHistory",
                    "type": "list<FHIR.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.GuidanceResponseStatus",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "list<FHIR.OperationDefinition.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.StructureMap.Target",
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
                    "type": "list<FHIR.StructureMapListMode>"
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
                    "type": "list<FHIR.StructureMap.Parameter>"
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
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "subDetail",
                    "type": "list<FHIR.Claim.SubDetail>"
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
                    "name": "status",
                    "type": "FHIR.MedicationStatementStatus"
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
                    "name": "patient",
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
                    "name": "informationSource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "dateAsserted",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "notTaken",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "reasonNotTaken",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonForUseCode",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "reasonForUseReference",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "category",
                    "type": "FHIR.MedicationStatementCategory"
                },
                {
                    "name": "dosage",
                    "type": "list<FHIR.MedicationStatement.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.Item",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "FHIR.positiveInt"
                },
                {
                    "name": "careTeam",
                    "type": "list<FHIR.ExplanationOfBenefit.CareTeam>"
                },
                {
                    "name": "diagnosisLinkId",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "revenue",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "category",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "service",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "modifier",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "programCode",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "servicedDate",
                    "type": "FHIR.date"
                },
                {
                    "name": "servicedPeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "locationCoding",
                    "type": "FHIR.Coding"
                },
                {
                    "name": "locationAddress",
                    "type": "FHIR.Address"
                },
                {
                    "name": "locationReference",
                    "type": "FHIR.Reference"
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
                },
                {
                    "name": "udi",
                    "type": "list<FHIR.Reference>"
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
                    "name": "noteNumber",
                    "type": "list<FHIR.positiveInt>"
                },
                {
                    "name": "adjudication",
                    "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
                },
                {
                    "name": "detail",
                    "type": "list<FHIR.ExplanationOfBenefit.Detail>"
                },
                {
                    "name": "prosthesis",
                    "type": "FHIR.ExplanationOfBenefit.Prosthesis"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.ExplanationOfBenefit.MissingTeeth",
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
            "name": "FHIR.MeasureReportType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "itemCodeableConcept",
                    "type": "FHIR.CodeableConcept"
                },
                {
                    "name": "itemReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "amount",
                    "type": "FHIR.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Specimen",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
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
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "request",
                    "type": "list<FHIR.Reference>"
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
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.FamilyMemberHistory",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "primaryCodePath": "condition.code",
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
                    "type": "FHIR.AdministrativeGender"
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
                    "name": "ageAge",
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
                    "name": "estimatedAge",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "deceasedBoolean",
                    "type": "FHIR.boolean"
                },
                {
                    "name": "deceasedAge",
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
            "name": "FHIR.ExplanationOfBenefit.Coverage",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "coverageIdentifier",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "coverageReference",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "preAuthRef",
                    "type": "list<FHIR.string>"
                }
            ]
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
            "name": "FHIR.CompartmentType",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "FHIR.PlanActionRequiredBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CodeSystem.Designation",
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
            "name": "FHIR.DiagnosticRequest",
            "baseType": "FHIR.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<FHIR.Identifier>"
                },
                {
                    "name": "definition",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "basedOn",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "replaces",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "requisition",
                    "type": "FHIR.Identifier"
                },
                {
                    "name": "status",
                    "type": "FHIR.code"
                },
                {
                    "name": "stage",
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
                    "name": "occurrenceDateTime",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "occurrencePeriod",
                    "type": "FHIR.Period"
                },
                {
                    "name": "occurrenceTiming",
                    "type": "FHIR.Timing"
                },
                {
                    "name": "authored",
                    "type": "FHIR.dateTime"
                },
                {
                    "name": "requester",
                    "type": "FHIR.Reference"
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
                    "name": "reason",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "note",
                    "type": "list<FHIR.Annotation>"
                },
                {
                    "name": "relevantHistory",
                    "type": "list<FHIR.Reference>"
                }
            ]
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
            "name": "FHIR.Consent.Except",
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
                    "type": "list<FHIR.Consent.Actor>"
                },
                {
                    "name": "action",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "securityLabel",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "purpose",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "class",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "code",
                    "type": "list<FHIR.Coding>"
                },
                {
                    "name": "data",
                    "type": "list<FHIR.Consent.Data>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.DataRequirement",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "FHIR.code"
                },
                {
                    "name": "profile",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "mustSupport",
                    "type": "list<FHIR.string>"
                },
                {
                    "name": "codeFilter",
                    "type": "list<FHIR.DataRequirement.CodeFilter>"
                },
                {
                    "name": "dateFilter",
                    "type": "list<FHIR.DataRequirement.DateFilter>"
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
                    "type": "FHIR.ConformanceResourceStatus"
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
                    "type": "FHIR.markdown"
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
            "name": "FHIR.Measure.Group",
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
                    "type": "list<FHIR.Measure.Population>"
                },
                {
                    "name": "stratifier",
                    "type": "list<FHIR.Measure.Stratifier>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PlanDefinition",
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
                    "name": "title",
                    "type": "FHIR.string"
                },
                {
                    "name": "type",
                    "type": "FHIR.CodeableConcept"
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
                    "name": "description",
                    "type": "FHIR.string"
                },
                {
                    "name": "purpose",
                    "type": "FHIR.string"
                },
                {
                    "name": "usage",
                    "type": "FHIR.string"
                },
                {
                    "name": "publicationDate",
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
                    "name": "coverage",
                    "type": "list<FHIR.UsageContext>"
                },
                {
                    "name": "topic",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "contributor",
                    "type": "list<FHIR.Contributor>"
                },
                {
                    "name": "publisher",
                    "type": "FHIR.string"
                },
                {
                    "name": "contact",
                    "type": "list<FHIR.ContactDetail>"
                },
                {
                    "name": "copyright",
                    "type": "FHIR.string"
                },
                {
                    "name": "relatedResource",
                    "type": "list<FHIR.RelatedResource>"
                },
                {
                    "name": "library",
                    "type": "list<FHIR.Reference>"
                },
                {
                    "name": "actionDefinition",
                    "type": "list<FHIR.PlanDefinition.ActionDefinition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.PlanActionCardinalityBehavior",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.CodeSystemHierarchyMeaning",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.UsageContext",
            "baseType": "FHIR.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "patientGender",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "patientAgeGroup",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "clinicalFocus",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "targetUser",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "workflowSetting",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "workflowTask",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "clinicalVenue",
                    "type": "list<FHIR.CodeableConcept>"
                },
                {
                    "name": "jurisdiction",
                    "type": "list<FHIR.CodeableConcept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.TestScript.Ruleset",
            "baseType": "FHIR.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resource",
                    "type": "FHIR.Reference"
                },
                {
                    "name": "rule",
                    "type": "list<FHIR.TestScript.Rule1>"
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
            "name": "FHIR.TestScript.Param3",
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
                },
                {
                    "name": "outcome",
                    "type": "FHIR.ResourceContainer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "FHIR.Sequence.ReferenceSeq",
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
            "name": "FHIR.TestScript.Param1",
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
            "name": "FHIR.TestScript.Param2",
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
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.uuid",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToDate",
            "fromType": "FHIR.date",
            "toType": "System.Date"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EnrollmentRequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PlanActionPrecheckBehavior",
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
            "fromType": "FHIR.EligibilityRequestStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.AddressType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationOrderCategory",
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
            "fromType": "FHIR.ConsentDataMeaning",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireResponseStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PlanActionRelationshipAnchor",
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
            "fromType": "FHIR.ClaimResponseStatus",
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
            "fromType": "FHIR.PlanActionSelectionBehavior",
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
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MedicationStatementCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToInteger",
            "fromType": "FHIR.positiveInt",
            "toType": "System.Integer"
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
            "fromType": "FHIR.NarrativeStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ReferralCategory",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.EnrollmentResponseStatus",
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
            "functionName": "FHIRHelpers.ToDateTime",
            "fromType": "FHIR.dateTime",
            "toType": "System.DateTime"
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
            "fromType": "FHIR.ClaimStatus",
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
            "fromType": "FHIR.ConsentStatus",
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
            "fromType": "FHIR.LibraryStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.CoverageStatus",
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
            "fromType": "FHIR.RelatedResourceType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PlanActionParticipantType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProcedureStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PlanActionGroupingBehavior",
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
            "fromType": "FHIR.sequenceType",
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
            "fromType": "FHIR.MeasurePopulationType",
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
            "fromType": "FHIR.ExplanationOfBenefitStatus",
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
            "fromType": "FHIR.EligibilityResponseStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MeasureDataUsage",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.TriggerType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ActivityDefinitionCategory",
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
            "fromType": "FHIR.TaskPriority",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ObservationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.ProcessRequestStatus",
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
            "fromType": "FHIR.PaymentNoticeStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.MeasureType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.QuestionnaireItemType",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.PaymentReconciliationStatus",
            "toType": "System.String"
        },
        {
            "functionName": "FHIRHelpers.ToString",
            "fromType": "FHIR.StructureMapListMode",
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
            "fromType": "FHIR.ProcessResponseStatus",
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
            "fromType": "FHIR.MeasureScoring",
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
            "fromType": "FHIR.PlanActionRelationshipType",
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
            "fromType": "FHIR.MeasureReportType",
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
            "fromType": "FHIR.PlanActionRequiredBehavior",
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
            "fromType": "FHIR.PlanActionCardinalityBehavior",
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
        }
    ]
});