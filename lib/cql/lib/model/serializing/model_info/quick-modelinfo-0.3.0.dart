import '../../../cql.dart';

final quickmodelinfo030 = ModelInfo.fromJson({
    "name": "QUICK",
    "url": "http://hl7.org/fhir",
    "schemaLocation": "http://org.hl7.fhir quick.xsd",
    "targetQualifier": "quick",
    "patientClassName": "QUICK.Patient",
    "patientClassIdentifier": "cqf-patient",
    "patientBirthDatePropertyName": "birthDate",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "QUICK.Composition.Event",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient.Link",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "other",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "type": "QUICK.LinkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SpecialValues",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SpecialValues_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AggregationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AggregationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrderStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NutritionOrderStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntolerance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-allergyintolerance",
            "label": "AllergyIntolerance",
            "primaryCodePath": "substance",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "recordedDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "QUICK.AllergyIntoleranceStatus"
                },
                {
                    "name": "criticality",
                    "type": "QUICK.AllergyIntoleranceCriticality"
                },
                {
                    "name": "type",
                    "type": "QUICK.AllergyIntoleranceType"
                },
                {
                    "name": "category",
                    "type": "QUICK.AllergyIntoleranceCategory"
                },
                {
                    "name": "lastOccurence",
                    "type": "System.DateTime"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.AllergyIntolerance.Event>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.RestfulConformanceMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Timing",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "list<interval<System.DateTime>>"
                },
                {
                    "name": "repeat",
                    "type": "QUICK.Timing.Repeat"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Network",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "QUICK.SecurityEventParticipantNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Order.When",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "schedule",
                    "type": "QUICK.Timing"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.RemittanceOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medication",
            "label": "Medication",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "isBrand",
                    "type": "System.Boolean"
                },
                {
                    "name": "manufacturer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "kind",
                    "type": "QUICK.MedicationKind"
                },
                {
                    "name": "product",
                    "type": "QUICK.Medication.Product"
                },
                {
                    "name": "package",
                    "type": "QUICK.Medication.Package"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Profile.Mapping",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "QUICK.id"
                },
                {
                    "name": "uri",
                    "type": "System.Uri"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageHeader.Source",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "software",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "endpoint",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ResourceProfileStatus_list"
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
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ObservationRelationshipType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SupplyStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.List",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "source",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "ordered",
                    "type": "System.Boolean"
                },
                {
                    "name": "mode",
                    "type": "QUICK.ListMode"
                },
                {
                    "name": "entry",
                    "type": "list<QUICK.List.Entry>"
                },
                {
                    "name": "emptyReason",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RiskAssessment.Prediction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "outcome",
                    "type": "System.Concept"
                },
                {
                    "name": "relativeRisk",
                    "type": "System.Decimal"
                },
                {
                    "name": "rationale",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.base64Binary",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.base64Binary_primitive"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CarePlanActivityCategory_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DeviceUseRequestPriority_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImmunizationRecommendation.Protocol",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseSequence",
                    "type": "System.Integer"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "authority",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "series",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Alert",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "QUICK.AlertStatus"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "note",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationKind",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.OperationKind_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService.ServiceType",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "specialty",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EventTiming",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.EventTiming_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.BundleEntryStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Filter",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "property",
                    "type": "QUICK.code"
                },
                {
                    "name": "op",
                    "type": "QUICK.FilterOperator"
                },
                {
                    "name": "value",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Appointment.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "required",
                    "type": "QUICK.ParticipantRequired"
                },
                {
                    "name": "status",
                    "type": "QUICK.ParticipationStatus"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DomainResource",
            "baseType": "QUICK.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "QUICK.Narrative"
                },
                {
                    "name": "contained",
                    "type": "list<QUICK.ResourceContainer>"
                },
                {
                    "name": "extension",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "modifierExtension",
                    "type": "list<QUICK.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.QuestionnaireStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen.Collection",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "collector",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "comment",
                    "type": "list<System.String>"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "sourceSite",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Object",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "reference",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "type": "QUICK.SecurityEventObjectType"
                },
                {
                    "name": "role",
                    "type": "QUICK.SecurityEventObjectRole"
                },
                {
                    "name": "lifecycle",
                    "type": "QUICK.SecurityEventObjectLifecycle"
                },
                {
                    "name": "sensitivity",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "query",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.SecurityEvent.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure.Performer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "person",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "role",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.IssueSeverity_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NarrativeStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystem.UniqueId",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.NamingSystemIdentifierType"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "preferred",
                    "type": "System.Boolean"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RelatedPerson",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
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
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "photo",
                    "type": "list<QUICK.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequest.MessagePart",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-encounter",
            "label": "Encounter",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "status",
                    "type": "QUICK.EncounterState"
                },
                {
                    "name": "class",
                    "type": "QUICK.EncounterClass"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.Encounter.Participant>"
                },
                {
                    "name": "fulfills",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "length",
                    "type": "QUICK.Duration"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "indication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
                },
                {
                    "name": "hospitalization",
                    "type": "QUICK.Encounter.Hospitalization"
                },
                {
                    "name": "location",
                    "type": "list<QUICK.Encounter.Location>"
                },
                {
                    "name": "serviceProvider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.BindingConformance_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystem",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.NamingSystemType"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.NamingSystemStatus"
                },
                {
                    "name": "country",
                    "type": "QUICK.code"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "responsible",
                    "type": "System.String"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "usage",
                    "type": "System.String"
                },
                {
                    "name": "uniqueId",
                    "type": "list<QUICK.NamingSystem.UniqueId>"
                },
                {
                    "name": "contact",
                    "type": "QUICK.NamingSystem.Contact"
                },
                {
                    "name": "replacedBy",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ExplanationOfBenefit",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.RemittanceOutcome"
                },
                {
                    "name": "disposition",
                    "type": "System.String"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan.Activity",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "goal",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "status",
                    "type": "QUICK.CarePlanActivityStatus"
                },
                {
                    "name": "prohibited",
                    "type": "System.Boolean"
                },
                {
                    "name": "actionResulting",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "detail",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "simple",
                    "type": "QUICK.CarePlan.Simple"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.QuantityComparator",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.QuantityComparator_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationReliability",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ObservationReliability_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireAnswers.Group",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "System.String"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.QuestionnaireAnswers.Group>"
                },
                {
                    "name": "question",
                    "type": "list<QUICK.QuestionnaireAnswers.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Texture",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "modifier",
                    "type": "System.Concept"
                },
                {
                    "name": "foodType",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GroupType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.GroupType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyHistory.Condition",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "outcome",
                    "type": "System.Concept"
                },
                {
                    "name": "note",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceSeverity_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Messaging",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "endpoint",
                    "type": "System.Uri"
                },
                {
                    "name": "reliableCache",
                    "type": "System.Integer"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.Conformance.Event>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Reversal",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "response",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "payee",
                    "type": "QUICK.Reversal.Payee"
                },
                {
                    "name": "coverage",
                    "type": "QUICK.Reversal.Coverage"
                },
                {
                    "name": "nullify",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AdministrativeGender_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ParticipantStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DiagnosticOrderStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Observation.ReferenceRange",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "System.Quantity"
                },
                {
                    "name": "high",
                    "type": "System.Quantity"
                },
                {
                    "name": "meaning",
                    "type": "System.Concept"
                },
                {
                    "name": "age",
                    "type": "QUICK.Range"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseRequestStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DeviceUseRequestStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SlicingRules",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SlicingRules_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Subscription",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "criteria",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "reason",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.SubscriptionStatus"
                },
                {
                    "name": "error",
                    "type": "System.String"
                },
                {
                    "name": "channel",
                    "type": "QUICK.Subscription.Channel"
                },
                {
                    "name": "end",
                    "type": "System.DateTime"
                },
                {
                    "name": "tag",
                    "type": "list<QUICK.Subscription.Tag>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlanStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CarePlanStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ValueSetStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingStudy.Instance",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "System.Integer"
                },
                {
                    "name": "uid",
                    "type": "QUICK.oid"
                },
                {
                    "name": "sopclass",
                    "type": "QUICK.oid"
                },
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "attachment",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Measmnt_Principle",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.Measmnt_Principle_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ContactPointSystem_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystemType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NamingSystemType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.Evidence",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SupplyDispenseStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.OccurredFollowing",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ExtensionContext",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ExtensionContext_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ProcedureRequestPriority_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CarePlanStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ConditionStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.OrderOutcomeStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Practitioner",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-practitioner",
            "label": "Practitioner",
            "primaryCodePath": "specialty",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<QUICK.Address>"
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
                    "name": "photo",
                    "type": "list<QUICK.Attachment>"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "specialty",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "location",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "qualification",
                    "type": "list<QUICK.Practitioner.Qualification>"
                },
                {
                    "name": "communication",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.QuestionnaireStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "QUICK.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id"
                },
                {
                    "name": "meta",
                    "type": "QUICK.Resource.Meta"
                },
                {
                    "name": "implicitRules",
                    "type": "System.Uri"
                },
                {
                    "name": "language",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Product",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "form",
                    "type": "System.Concept"
                },
                {
                    "name": "ingredient",
                    "type": "list<QUICK.Medication.Ingredient>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.InstanceAvailability",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.InstanceAvailability_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SearchParamType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ResourceDataElementStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient.Animal",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "species",
                    "type": "System.Concept"
                },
                {
                    "name": "breed",
                    "type": "System.Concept"
                },
                {
                    "name": "genderStatus",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.BundleType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure.RelatedItem",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.ProcedureRelationshipType"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Group",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "type",
                    "type": "QUICK.GroupType"
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
                    "name": "characteristic",
                    "type": "list<QUICK.Group.Characteristic>"
                },
                {
                    "name": "member",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Modality",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.Modality_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ContactPointSystem",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ContactPointSystem_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ParticipationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ParticipationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Substance.Instance",
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
            "name": "QUICK.ClaimResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.RemittanceOutcome"
                },
                {
                    "name": "disposition",
                    "type": "System.String"
                },
                {
                    "name": "payeeType",
                    "type": "System.Code"
                },
                {
                    "name": "item",
                    "type": "list<QUICK.ClaimResponse.Item>"
                },
                {
                    "name": "additem",
                    "type": "list<QUICK.ClaimResponse.Additem>"
                },
                {
                    "name": "error",
                    "type": "list<QUICK.ClaimResponse.Error>"
                },
                {
                    "name": "totalCost",
                    "type": "QUICK.Money"
                },
                {
                    "name": "unallocDeductable",
                    "type": "QUICK.Money"
                },
                {
                    "name": "totalBenefit",
                    "type": "QUICK.Money"
                },
                {
                    "name": "paymentAdjustment",
                    "type": "QUICK.Money"
                },
                {
                    "name": "paymentAdjustmentReason",
                    "type": "System.Code"
                },
                {
                    "name": "paymentDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "paymentAmount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "paymentRef",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "reserved",
                    "type": "System.Code"
                },
                {
                    "name": "form",
                    "type": "System.Code"
                },
                {
                    "name": "note",
                    "type": "list<QUICK.ClaimResponse.Note>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Contains",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "abstract",
                    "type": "System.Boolean"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "contains",
                    "type": "list<QUICK.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense.Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "additionalInstructions",
                    "type": "System.Concept"
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
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Resource.Meta",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "versionId",
                    "type": "QUICK.id"
                },
                {
                    "name": "lastUpdated",
                    "type": "System.DateTime"
                },
                {
                    "name": "profile",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "security",
                    "type": "list<System.Code>"
                },
                {
                    "name": "tag",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.QuestionnaireAnswersStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CompositionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CompositionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SearchParameter",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "base",
                    "type": "QUICK.code"
                },
                {
                    "name": "type",
                    "type": "QUICK.SearchParamType"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "xpath",
                    "type": "System.String"
                },
                {
                    "name": "target",
                    "type": "list<QUICK.code>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.base64Binary_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RemittanceOutcome",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.RemittanceOutcome_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImmunizationRecommendation.DateCriterion",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "value",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.Location",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "detail",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Provenance.Entity",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "QUICK.ProvenanceEntityRole"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "reference",
                    "type": "System.Uri"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "agent",
                    "type": "QUICK.Provenance.Agent"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRequestMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ProcedureRequestMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DocumentMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "class",
                    "type": "System.Concept"
                },
                {
                    "name": "author",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "custodian",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "policyManager",
                    "type": "System.Uri"
                },
                {
                    "name": "authenticator",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "indexed",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "QUICK.DocumentReferenceStatus"
                },
                {
                    "name": "docStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "relatesTo",
                    "type": "list<QUICK.DocumentReference.RelatesTo>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "confidentiality",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "primaryLanguage",
                    "type": "QUICK.code"
                },
                {
                    "name": "mimeType",
                    "type": "QUICK.code"
                },
                {
                    "name": "format",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "size",
                    "type": "System.Integer"
                },
                {
                    "name": "hash",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "location",
                    "type": "System.Uri"
                },
                {
                    "name": "service",
                    "type": "QUICK.DocumentReference.Service"
                },
                {
                    "name": "context",
                    "type": "QUICK.DocumentReference.Context"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Adjudication2",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Questionnaire.Group",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "System.String"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "concept",
                    "type": "list<System.Code>"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "required",
                    "type": "System.Boolean"
                },
                {
                    "name": "repeats",
                    "type": "System.Boolean"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.Questionnaire.Group>"
                },
                {
                    "name": "question",
                    "type": "list<QUICK.Questionnaire.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ResourceType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Adjudication1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Adjudication4",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Adjudication3",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen.Treatment",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "procedure",
                    "type": "System.Concept"
                },
                {
                    "name": "additive",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Composition.Attester",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "list<QUICK.CompositionAttestationMode>"
                },
                {
                    "name": "time",
                    "type": "System.DateTime"
                },
                {
                    "name": "party",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticReport.Image",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "link",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationdispense",
            "label": "MedicationDispense",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "QUICK.MedicationDispenseStatus"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dispenser",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "authorizingPrescription",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "dispense",
                    "type": "list<QUICK.MedicationDispense.Dispense>"
                },
                {
                    "name": "substitution",
                    "type": "QUICK.MedicationDispense.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConformanceStatementStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ConformanceStatementStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ReferralRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "QUICK.ReferralStatus"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
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
                    "name": "priority",
                    "type": "System.Concept"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requester",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dateSent",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "serviceRequested",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "fulfillmentTime",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AggregationMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CommunicationRequestMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "QUICK.Money"
                },
                {
                    "name": "factor",
                    "type": "System.Decimal"
                },
                {
                    "name": "points",
                    "type": "System.Decimal"
                },
                {
                    "name": "net",
                    "type": "QUICK.Money"
                },
                {
                    "name": "udi",
                    "type": "System.Code"
                },
                {
                    "name": "subDetail",
                    "type": "list<QUICK.OralHealthClaim.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.Term",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "subtype",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SystemRestfulInteraction_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EligibilityResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.RemittanceOutcome"
                },
                {
                    "name": "disposition",
                    "type": "System.String"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventParticipantNetworkType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResponseType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ResponseType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Event",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "subtype",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "action",
                    "type": "QUICK.SecurityEventAction"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.SecurityEventOutcome"
                },
                {
                    "name": "outcomeDesc",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MediaType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MediaType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap.Map",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "equivalence",
                    "type": "QUICK.ConceptMapEquivalence"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "product",
                    "type": "list<QUICK.ConceptMap.DependsOn>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Source",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "site",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Parameters",
            "baseType": "QUICK.Resource",
            "retrievable": false,
            "element": {
                "name": "parameter",
                "type": "list<QUICK.Parameters.Parameter>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Rest",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "QUICK.RestfulConformanceMode"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "security",
                    "type": "QUICK.Conformance.Security"
                },
                {
                    "name": "resource",
                    "type": "list<QUICK.Conformance.Resource>"
                },
                {
                    "name": "interaction",
                    "type": "list<QUICK.Conformance.Interaction1>"
                },
                {
                    "name": "operation",
                    "type": "list<QUICK.Conformance.Operation>"
                },
                {
                    "name": "documentMailbox",
                    "type": "list<System.Uri>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.LinkType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Resource",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.code"
                },
                {
                    "name": "profile",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "interaction",
                    "type": "list<QUICK.Conformance.Interaction>"
                },
                {
                    "name": "versioning",
                    "type": "QUICK.ResourceVersionPolicy"
                },
                {
                    "name": "readHistory",
                    "type": "System.Boolean"
                },
                {
                    "name": "updateCreate",
                    "type": "System.Boolean"
                },
                {
                    "name": "searchInclude",
                    "type": "list<System.String>"
                },
                {
                    "name": "searchParam",
                    "type": "list<QUICK.Conformance.SearchParam>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.Deleted",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.code"
                },
                {
                    "name": "id",
                    "type": "QUICK.id"
                },
                {
                    "name": "versionId",
                    "type": "QUICK.id"
                },
                {
                    "name": "instant",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrderStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DiagnosticOrderStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MessageSignificanceCategory_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BundleType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.BundleType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense.Substitution",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "reason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "responsibleParty",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceContainer",
            "retrievable": false,
            "element": [
                {
                    "name": "Alert",
                    "type": "QUICK.Alert"
                },
                {
                    "name": "AllergyIntolerance",
                    "type": "QUICK.AllergyIntolerance"
                },
                {
                    "name": "Appointment",
                    "type": "QUICK.Appointment"
                },
                {
                    "name": "AppointmentResponse",
                    "type": "QUICK.AppointmentResponse"
                },
                {
                    "name": "Availability",
                    "type": "QUICK.Availability"
                },
                {
                    "name": "Basic",
                    "type": "QUICK.Basic"
                },
                {
                    "name": "Binary",
                    "type": "QUICK.Binary"
                },
                {
                    "name": "Bundle",
                    "type": "QUICK.Bundle"
                },
                {
                    "name": "CarePlan",
                    "type": "QUICK.CarePlan"
                },
                {
                    "name": "ClaimResponse",
                    "type": "QUICK.ClaimResponse"
                },
                {
                    "name": "CommunicationRequest",
                    "type": "QUICK.CommunicationRequest"
                },
                {
                    "name": "Composition",
                    "type": "QUICK.Composition"
                },
                {
                    "name": "ConceptMap",
                    "type": "QUICK.ConceptMap"
                },
                {
                    "name": "Condition",
                    "type": "QUICK.Condition"
                },
                {
                    "name": "Conformance",
                    "type": "QUICK.Conformance"
                },
                {
                    "name": "Contract",
                    "type": "QUICK.Contract"
                },
                {
                    "name": "Contraindication",
                    "type": "QUICK.Contraindication"
                },
                {
                    "name": "Coverage",
                    "type": "QUICK.Coverage"
                },
                {
                    "name": "DataElement",
                    "type": "QUICK.DataElement"
                },
                {
                    "name": "Device",
                    "type": "QUICK.Device"
                },
                {
                    "name": "DeviceComponent",
                    "type": "QUICK.DeviceComponent"
                },
                {
                    "name": "DeviceUseRequest",
                    "type": "QUICK.DeviceUseRequest"
                },
                {
                    "name": "DeviceUseStatement",
                    "type": "QUICK.DeviceUseStatement"
                },
                {
                    "name": "DiagnosticOrder",
                    "type": "QUICK.DiagnosticOrder"
                },
                {
                    "name": "DiagnosticReport",
                    "type": "QUICK.DiagnosticReport"
                },
                {
                    "name": "DocumentManifest",
                    "type": "QUICK.DocumentManifest"
                },
                {
                    "name": "DocumentReference",
                    "type": "QUICK.DocumentReference"
                },
                {
                    "name": "Eligibility",
                    "type": "QUICK.Eligibility"
                },
                {
                    "name": "EligibilityResponse",
                    "type": "QUICK.EligibilityResponse"
                },
                {
                    "name": "Encounter",
                    "type": "QUICK.Encounter"
                },
                {
                    "name": "ExplanationOfBenefit",
                    "type": "QUICK.ExplanationOfBenefit"
                },
                {
                    "name": "ExtensionDefinition",
                    "type": "QUICK.ExtensionDefinition"
                },
                {
                    "name": "FamilyHistory",
                    "type": "QUICK.FamilyHistory"
                },
                {
                    "name": "Group",
                    "type": "QUICK.Group"
                },
                {
                    "name": "HealthcareService",
                    "type": "QUICK.HealthcareService"
                },
                {
                    "name": "ImagingStudy",
                    "type": "QUICK.ImagingStudy"
                },
                {
                    "name": "Immunization",
                    "type": "QUICK.Immunization"
                },
                {
                    "name": "ImmunizationRecommendation",
                    "type": "QUICK.ImmunizationRecommendation"
                },
                {
                    "name": "List",
                    "type": "QUICK.List"
                },
                {
                    "name": "Location",
                    "type": "QUICK.Location"
                },
                {
                    "name": "Media",
                    "type": "QUICK.Media"
                },
                {
                    "name": "Medication",
                    "type": "QUICK.Medication"
                },
                {
                    "name": "MedicationAdministration",
                    "type": "QUICK.MedicationAdministration"
                },
                {
                    "name": "MedicationDispense",
                    "type": "QUICK.MedicationDispense"
                },
                {
                    "name": "MedicationPrescription",
                    "type": "QUICK.MedicationPrescription"
                },
                {
                    "name": "MedicationStatement",
                    "type": "QUICK.MedicationStatement"
                },
                {
                    "name": "MessageHeader",
                    "type": "QUICK.MessageHeader"
                },
                {
                    "name": "NamingSystem",
                    "type": "QUICK.NamingSystem"
                },
                {
                    "name": "NutritionOrder",
                    "type": "QUICK.NutritionOrder"
                },
                {
                    "name": "Observation",
                    "type": "QUICK.Observation"
                },
                {
                    "name": "OperationDefinition",
                    "type": "QUICK.OperationDefinition"
                },
                {
                    "name": "OperationOutcome",
                    "type": "QUICK.OperationOutcome"
                },
                {
                    "name": "OralHealthClaim",
                    "type": "QUICK.OralHealthClaim"
                },
                {
                    "name": "Order",
                    "type": "QUICK.Order"
                },
                {
                    "name": "OrderResponse",
                    "type": "QUICK.OrderResponse"
                },
                {
                    "name": "Organization",
                    "type": "QUICK.Organization"
                },
                {
                    "name": "Other",
                    "type": "QUICK.Other"
                },
                {
                    "name": "Patient",
                    "type": "QUICK.Patient"
                },
                {
                    "name": "Practitioner",
                    "type": "QUICK.Practitioner"
                },
                {
                    "name": "Procedure",
                    "type": "QUICK.Procedure"
                },
                {
                    "name": "ProcedureRequest",
                    "type": "QUICK.ProcedureRequest"
                },
                {
                    "name": "Profile",
                    "type": "QUICK.Profile"
                },
                {
                    "name": "Provenance",
                    "type": "QUICK.Provenance"
                },
                {
                    "name": "Query",
                    "type": "QUICK.Query"
                },
                {
                    "name": "Questionnaire",
                    "type": "QUICK.Questionnaire"
                },
                {
                    "name": "QuestionnaireAnswers",
                    "type": "QUICK.QuestionnaireAnswers"
                },
                {
                    "name": "ReferralRequest",
                    "type": "QUICK.ReferralRequest"
                },
                {
                    "name": "RelatedPerson",
                    "type": "QUICK.RelatedPerson"
                },
                {
                    "name": "Reversal",
                    "type": "QUICK.Reversal"
                },
                {
                    "name": "RiskAssessment",
                    "type": "QUICK.RiskAssessment"
                },
                {
                    "name": "SearchParameter",
                    "type": "QUICK.SearchParameter"
                },
                {
                    "name": "SecurityEvent",
                    "type": "QUICK.SecurityEvent"
                },
                {
                    "name": "Slot",
                    "type": "QUICK.Slot"
                },
                {
                    "name": "Specimen",
                    "type": "QUICK.Specimen"
                },
                {
                    "name": "Subscription",
                    "type": "QUICK.Subscription"
                },
                {
                    "name": "Substance",
                    "type": "QUICK.Substance"
                },
                {
                    "name": "Supply",
                    "type": "QUICK.Supply"
                },
                {
                    "name": "SupportingDocumentation",
                    "type": "QUICK.SupportingDocumentation"
                },
                {
                    "name": "ValueSet",
                    "type": "QUICK.ValueSet"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ConformanceEventMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization.Reaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "detail",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "reported",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BackboneElement",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "modifierExtension",
                "type": "list<QUICK.Extension>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Reversal.Payee",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "person",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DiagnosticOrderPriority_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-immunization",
            "label": "Immunization",
            "primaryCodePath": "vaccineType",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "vaccineType",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "refusedIndicator",
                    "type": "System.Boolean"
                },
                {
                    "name": "reported",
                    "type": "System.Boolean"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requester",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "manufacturer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "lotNumber",
                    "type": "System.String"
                },
                {
                    "name": "expirationDate",
                    "type": "System.DateTime"
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
                    "name": "doseQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "explanation",
                    "type": "QUICK.Immunization.Explanation"
                },
                {
                    "name": "reaction",
                    "type": "list<QUICK.Immunization.Reaction>"
                },
                {
                    "name": "vaccinationProtocol",
                    "type": "list<QUICK.Immunization.VaccinationProtocol>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlanActivityCategory",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CarePlanActivityCategory_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.EventTiming_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Other",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentManifest",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "recipient",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "author",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "System.Uri"
                },
                {
                    "name": "status",
                    "type": "QUICK.DocumentReferenceStatus"
                },
                {
                    "name": "supercedes",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "confidentiality",
                    "type": "System.Concept"
                },
                {
                    "name": "content",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.code_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Provenance.Agent",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "System.Code"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "reference",
                    "type": "System.Uri"
                },
                {
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventObjectRole_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Subscription.Tag",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "term",
                    "type": "System.Uri"
                },
                {
                    "name": "scheme",
                    "type": "System.Uri"
                },
                {
                    "name": "description",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Appointment",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "priority",
                    "type": "System.Integer"
                },
                {
                    "name": "status",
                    "type": "QUICK.code"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
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
                    "name": "slot",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "order",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.Appointment.Participant>"
                },
                {
                    "name": "lastModifiedBy",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Substance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-substance",
            "label": "Substance",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "instance",
                    "type": "QUICK.Substance.Instance"
                },
                {
                    "name": "ingredient",
                    "type": "list<QUICK.Substance.Ingredient>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescription.Substitution",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NamingSystemIdentifierType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CarePlanGoalStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataAbsentReason",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DataAbsentReason_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization.VaccinationProtocol",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "doseSequence",
                    "type": "System.Integer"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "authority",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "series",
                    "type": "System.String"
                },
                {
                    "name": "seriesDoses",
                    "type": "System.Integer"
                },
                {
                    "name": "doseTarget",
                    "type": "System.Concept"
                },
                {
                    "name": "doseStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "doseStatusReason",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SupportingDocumentation.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "System.Integer"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-communicationrequest",
            "label": "CommunicationRequest",
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "sender",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "messagePart",
                    "type": "list<QUICK.CommunicationRequest.MessagePart>"
                },
                {
                    "name": "medium",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "requester",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "type": "QUICK.CommunicationRequestStatus"
                },
                {
                    "name": "mode",
                    "type": "QUICK.CommunicationRequestMode"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "scheduledTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "orderedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
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
                    "type": "QUICK.NameUse"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "family",
                    "type": "list<System.String>"
                },
                {
                    "name": "given",
                    "type": "list<System.String>"
                },
                {
                    "name": "prefix",
                    "type": "list<System.String>"
                },
                {
                    "name": "suffix",
                    "type": "list<System.String>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "list<QUICK.HealthcareService.ServiceType>"
                },
                {
                    "name": "serviceName",
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
                    "name": "freeProvisionCode",
                    "type": "System.Concept"
                },
                {
                    "name": "eligibility",
                    "type": "System.Concept"
                },
                {
                    "name": "eligibilityNote",
                    "type": "System.String"
                },
                {
                    "name": "appointmentRequired",
                    "type": "System.Concept"
                },
                {
                    "name": "imageURI",
                    "type": "System.Uri"
                },
                {
                    "name": "availableTime",
                    "type": "list<QUICK.HealthcareService.AvailableTime>"
                },
                {
                    "name": "notAvailableTime",
                    "type": "list<QUICK.HealthcareService.NotAvailableTime>"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "System.String"
                },
                {
                    "name": "publicKey",
                    "type": "System.String"
                },
                {
                    "name": "programName",
                    "type": "list<System.String>"
                },
                {
                    "name": "contactPoint",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "characteristic",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "referralMethod",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "setting",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "targetGroup",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "coverageArea",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "catchmentArea",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "serviceCode",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap.Element",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "dependsOn",
                    "type": "list<QUICK.ConceptMap.DependsOn>"
                },
                {
                    "name": "map",
                    "type": "list<QUICK.ConceptMap.Map>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AddressUse_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MedicationPrescriptionStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceSeverity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Basic",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Organization.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "purpose",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "QUICK.Address"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AlertStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AlertStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.UnitsOfTime",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.UnitsOfTime_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationOutcome.Issue",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "severity",
                    "type": "QUICK.IssueSeverity"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "details",
                    "type": "System.String"
                },
                {
                    "name": "location",
                    "type": "list<System.String>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationDefinition",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
                },
                {
                    "name": "status",
                    "type": "QUICK.ResourceProfileStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "kind",
                    "type": "QUICK.OperationKind"
                },
                {
                    "name": "name",
                    "type": "QUICK.code"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "base",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "system",
                    "type": "System.Boolean"
                },
                {
                    "name": "type",
                    "type": "list<QUICK.code>"
                },
                {
                    "name": "instance",
                    "type": "System.Boolean"
                },
                {
                    "name": "parameter",
                    "type": "list<QUICK.OperationDefinition.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Questionnaire.Question",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "System.String"
                },
                {
                    "name": "concept",
                    "type": "list<System.Code>"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "QUICK.AnswerFormat"
                },
                {
                    "name": "required",
                    "type": "System.Boolean"
                },
                {
                    "name": "repeats",
                    "type": "System.Boolean"
                },
                {
                    "name": "options",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.Questionnaire.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Composition",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "class",
                    "type": "System.Concept"
                },
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.CompositionStatus"
                },
                {
                    "name": "confidentiality",
                    "type": "System.Code"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "attester",
                    "type": "list<QUICK.Composition.Attester>"
                },
                {
                    "name": "custodian",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.Composition.Event>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "section",
                    "type": "list<QUICK.Composition.Section>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ExtensionDefinition.Mapping",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "QUICK.id"
                },
                {
                    "name": "uri",
                    "type": "System.Uri"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SampledDataDataType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SampledDataDataType_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Provenance",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "target",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "recorded",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "policy",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "agent",
                    "type": "list<QUICK.Provenance.Agent>"
                },
                {
                    "name": "entity",
                    "type": "list<QUICK.Provenance.Entity>"
                },
                {
                    "name": "integritySignature",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.code",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.code_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Attachment",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "QUICK.code"
                },
                {
                    "name": "language",
                    "type": "QUICK.code"
                },
                {
                    "name": "data",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "size",
                    "type": "System.Integer"
                },
                {
                    "name": "hash",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "title",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.id_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireAnswers",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "questionnaire",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "type": "QUICK.QuestionnaireAnswersStatus"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "authored",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "group",
                    "type": "QUICK.QuestionnaireAnswers.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Package",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "container",
                    "type": "System.Concept"
                },
                {
                    "name": "content",
                    "type": "list<QUICK.Medication.Content>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageHeader.Destination",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "endpoint",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Order",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "source",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "authority",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "when",
                    "type": "QUICK.Order.When"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter.Location",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
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
                    "type": "QUICK.IdentifierUse"
                },
                {
                    "name": "label",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "assigner",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.UnitsOfTime_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NameUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NameUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "adjudication",
                    "type": "list<QUICK.ClaimResponse.Adjudication1>"
                },
                {
                    "name": "subdetail",
                    "type": "list<QUICK.ClaimResponse.Subdetail>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SlotStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingModality",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ImagingModality_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.OperationKind_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Slot",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "availability",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "freeBusyType",
                    "type": "QUICK.SlotStatus"
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
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MedicationKind_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AnswerFormat_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ObservationReliability_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PropertyRepresentation",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.PropertyRepresentation_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.Use_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Device",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "manufacturer",
                    "type": "System.String"
                },
                {
                    "name": "model",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "expiry",
                    "type": "System.DateTime"
                },
                {
                    "name": "udi",
                    "type": "System.String"
                },
                {
                    "name": "lotNumber",
                    "type": "System.String"
                },
                {
                    "name": "owner",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventParticipantNetworkType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventParticipantNetworkType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AdministrativeGender",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AdministrativeGender_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntolerance.Event",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "certainty",
                    "type": "QUICK.AllergyIntoleranceCertainty"
                },
                {
                    "name": "manifestation",
                    "type": "list<System.Concept>"
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
                    "name": "duration",
                    "type": "QUICK.Duration"
                },
                {
                    "name": "severity",
                    "type": "QUICK.AllergyIntoleranceSeverity"
                },
                {
                    "name": "exposureRoute",
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
            "name": "QUICK.Substance.Ingredient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "substance",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-procedure",
            "label": "Procedure",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "performer",
                    "type": "list<QUICK.Procedure.Performer>"
                },
                {
                    "name": "date",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "outcome",
                    "type": "System.String"
                },
                {
                    "name": "report",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "complication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "followUp",
                    "type": "System.String"
                },
                {
                    "name": "relatedItem",
                    "type": "list<QUICK.Procedure.RelatedItem>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRequestPriority",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ProcedureRequestPriority_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingStudy",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "started",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "uid",
                    "type": "QUICK.oid"
                },
                {
                    "name": "accession",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "order",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "modalityList",
                    "type": "list<QUICK.ImagingModality>"
                },
                {
                    "name": "referrer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "availability",
                    "type": "QUICK.InstanceAvailability"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "numberOfSeries",
                    "type": "System.Integer"
                },
                {
                    "name": "numberOfInstances",
                    "type": "System.Integer"
                },
                {
                    "name": "clinicalInformation",
                    "type": "System.String"
                },
                {
                    "name": "procedure",
                    "type": "list<System.Code>"
                },
                {
                    "name": "interpreter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "series",
                    "type": "list<QUICK.ImagingStudy.Series>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispenseStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MedicationDispenseStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Observation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-observation",
            "label": "Observation",
            "primaryCodePath": "name",
            "element": [
                {
                    "name": "name",
                    "type": "System.Concept"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "dataAbsentReason",
                    "type": "QUICK.DataAbsentReason"
                },
                {
                    "name": "interpretation",
                    "type": "System.Concept"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "QUICK.ObservationStatus"
                },
                {
                    "name": "reliability",
                    "type": "QUICK.ObservationReliability"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "specimen",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "referenceRange",
                    "type": "list<QUICK.Observation.ReferenceRange>"
                },
                {
                    "name": "related",
                    "type": "list<QUICK.Observation.Related>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventOutcome",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventOutcome_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ReferralStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrder",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-diagnosticorder",
            "label": "DiagnosticOrder",
            "primaryCodePath": "item[].code",
            "element": [
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "orderer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "clinicalNotes",
                    "type": "System.String"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "specimen",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "status",
                    "type": "QUICK.DiagnosticOrderStatus"
                },
                {
                    "name": "priority",
                    "type": "QUICK.DiagnosticOrderPriority"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.DiagnosticOrder.Event>"
                },
                {
                    "name": "item",
                    "type": "list<QUICK.DiagnosticOrder.Item>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Duration",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "System.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CompositionAttestationMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ObservationRelationshipType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.oid_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Software",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "releaseDate",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireAnswersStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.QuestionnaireAnswersStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SupplyDispenseStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SupplyDispenseStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Constraint",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "key",
                    "type": "QUICK.id"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "severity",
                    "type": "QUICK.ConstraintSeverity"
                },
                {
                    "name": "human",
                    "type": "System.String"
                },
                {
                    "name": "xpath",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.oid",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.oid_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CompositionAttestationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CompositionAttestationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AddressUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AddressUse_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ConformanceStatementStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReferenceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DocumentReferenceStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImmunizationRecommendation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-immunization-recommendation",
            "label": "ImmunizationRecommendation",
            "primaryCodePath": "recommendation[].vaccineType",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "recommendation",
                    "type": "list<QUICK.ImmunizationRecommendation.Recommendation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageEvent",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MessageEvent_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Period",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "start",
                    "type": "System.DateTime"
                },
                {
                    "name": "end",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ResponseType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Expansion",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "timestamp",
                    "type": "System.DateTime"
                },
                {
                    "name": "contains",
                    "type": "list<QUICK.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan.Simple",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "QUICK.CarePlanActivityCategory"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "location",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "product",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dailyAmount",
                    "type": "System.Quantity"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "details",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan.Goal",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.CarePlanGoalStatus"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "concern",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ExtensionDefinition",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
                },
                {
                    "name": "status",
                    "type": "QUICK.ResourceProfileStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.ExtensionDefinition.Mapping>"
                },
                {
                    "name": "contextType",
                    "type": "QUICK.ExtensionContext"
                },
                {
                    "name": "context",
                    "type": "list<System.String>"
                },
                {
                    "name": "element",
                    "type": "list<QUICK.ElementDefinition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NarrativeStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NarrativeStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.DueTo",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.GroupType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ContactPoint",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "QUICK.ContactPointSystem"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "use",
                    "type": "QUICK.ContactPointUse"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NamingSystemStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystem.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ProvenanceEntityRole_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Diagnosis",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "diagnosis",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Note",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "System.Integer"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.Measmnt_Principle_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Document",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "QUICK.DocumentMode"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Timing.Repeat",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "frequency",
                    "type": "System.Integer"
                },
                {
                    "name": "when",
                    "type": "QUICK.EventTiming"
                },
                {
                    "name": "duration",
                    "type": "System.Decimal"
                },
                {
                    "name": "units",
                    "type": "QUICK.UnitsOfTime"
                },
                {
                    "name": "count",
                    "type": "System.Integer"
                },
                {
                    "name": "end",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Subdetail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "adjudication",
                    "type": "list<QUICK.ClaimResponse.Adjudication2>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "System.String"
                },
                {
                    "name": "representation",
                    "type": "list<QUICK.PropertyRepresentation>"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "slicing",
                    "type": "QUICK.ElementDefinition.Slicing"
                },
                {
                    "name": "short",
                    "type": "System.String"
                },
                {
                    "name": "formal",
                    "type": "System.String"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "synonym",
                    "type": "list<System.String>"
                },
                {
                    "name": "min",
                    "type": "System.Integer"
                },
                {
                    "name": "max",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "list<QUICK.ElementDefinition.Type>"
                },
                {
                    "name": "nameReference",
                    "type": "System.String"
                },
                {
                    "name": "meaningWhenMissing",
                    "type": "System.String"
                },
                {
                    "name": "maxLength",
                    "type": "System.Integer"
                },
                {
                    "name": "condition",
                    "type": "list<QUICK.id>"
                },
                {
                    "name": "constraint",
                    "type": "list<QUICK.ElementDefinition.Constraint>"
                },
                {
                    "name": "mustSupport",
                    "type": "System.Boolean"
                },
                {
                    "name": "isModifier",
                    "type": "System.Boolean"
                },
                {
                    "name": "isSummary",
                    "type": "System.Boolean"
                },
                {
                    "name": "binding",
                    "type": "QUICK.ElementDefinition.Binding"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.ElementDefinition.Mapping>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SupportingDocumentation",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "response",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.SupportingDocumentation.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Concept",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "abstract",
                    "type": "System.Boolean"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "definition",
                    "type": "System.String"
                },
                {
                    "name": "designation",
                    "type": "list<QUICK.ValueSet.Designation>"
                },
                {
                    "name": "concept",
                    "type": "list<QUICK.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceCertainty_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FilterOperator",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.FilterOperator_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IssueSeverity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.IssueSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SlotStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SlotStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MaritalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MaritalStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataElement.Mapping",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uri",
                    "type": "System.Uri"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "map",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DocumentMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.OperationParameterUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RiskAssessment",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "condition",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "basis",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "prediction",
                    "type": "list<QUICK.RiskAssessment.Prediction>"
                },
                {
                    "name": "mitigation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataElement.Binding",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "isExtensible",
                    "type": "System.Boolean"
                },
                {
                    "name": "conformance",
                    "type": "QUICK.BindingConformance"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "valueSet",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DiagnosticReportStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "use",
                    "type": "QUICK.Use"
                },
                {
                    "name": "priority",
                    "type": "System.Code"
                },
                {
                    "name": "fundsReserve",
                    "type": "System.Code"
                },
                {
                    "name": "enterer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "facility",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "payee",
                    "type": "QUICK.OralHealthClaim.Payee"
                },
                {
                    "name": "referral",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "diagnosis",
                    "type": "list<QUICK.OralHealthClaim.Diagnosis>"
                },
                {
                    "name": "condition",
                    "type": "list<System.Code>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "coverage",
                    "type": "list<QUICK.OralHealthClaim.Coverage>"
                },
                {
                    "name": "exception",
                    "type": "list<System.Code>"
                },
                {
                    "name": "school",
                    "type": "System.String"
                },
                {
                    "name": "accident",
                    "type": "System.DateTime"
                },
                {
                    "name": "accidentType",
                    "type": "System.Code"
                },
                {
                    "name": "interventionException",
                    "type": "list<System.Code>"
                },
                {
                    "name": "missingteeth",
                    "type": "list<QUICK.OralHealthClaim.Missingteeth>"
                },
                {
                    "name": "orthoPlan",
                    "type": "QUICK.OralHealthClaim.OrthoPlan"
                },
                {
                    "name": "item",
                    "type": "list<QUICK.OralHealthClaim.Item>"
                },
                {
                    "name": "additionalMaterials",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Availability",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "planningHorizon",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NutritionOrderStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescriptionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MedicationPrescriptionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImmunizationRecommendation.Recommendation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "vaccineType",
                    "type": "System.Concept"
                },
                {
                    "name": "doseNumber",
                    "type": "System.Integer"
                },
                {
                    "name": "forecastStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "dateCriterion",
                    "type": "list<QUICK.ImmunizationRecommendation.DateCriterion>"
                },
                {
                    "name": "protocol",
                    "type": "QUICK.ImmunizationRecommendation.Protocol"
                },
                {
                    "name": "supportingImmunization",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "supportingPatientInformation",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ProcedureRequestMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventObjectLifecycle_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.EncounterClass_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMapEquivalence",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ConceptMapEquivalence_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Distance",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "System.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SubscriptionChannelType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DeviceUseRequestStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SampledDataDataType_primitive"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CompositionStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-condition",
            "label": "Condition",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "asserter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dateAsserted",
                    "type": "System.DateTime"
                },
                {
                    "name": "onsetDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "abatementDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConditionStatus"
                },
                {
                    "name": "certainty",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "System.Concept"
                },
                {
                    "name": "stage",
                    "type": "QUICK.Condition.Stage"
                },
                {
                    "name": "evidence",
                    "type": "list<QUICK.Condition.Evidence>"
                },
                {
                    "name": "location",
                    "type": "list<QUICK.Condition.Location>"
                },
                {
                    "name": "dueTo",
                    "type": "list<QUICK.Condition.DueTo>"
                },
                {
                    "name": "occurredFollowing",
                    "type": "list<QUICK.Condition.OccurredFollowing>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "subject",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "subtype",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "applies",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "QUICK.Money"
                },
                {
                    "name": "factor",
                    "type": "System.Decimal"
                },
                {
                    "name": "points",
                    "type": "System.Decimal"
                },
                {
                    "name": "net",
                    "type": "QUICK.Money"
                },
                {
                    "name": "author",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "grantor",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "grantee",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "witness",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "executor",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "notary",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "signer",
                    "type": "list<QUICK.Contract.Signer>"
                },
                {
                    "name": "term",
                    "type": "list<QUICK.Contract.Term>"
                },
                {
                    "name": "friendly",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "legal",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "rule",
                    "type": "QUICK.Attachment"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ConstraintSeverity_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RestfulConformanceMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.RestfulConformanceMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SearchParamType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SearchParamType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.IdentifierUse_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ParticipantRequired_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.Stage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "summary",
                    "type": "System.Concept"
                },
                {
                    "name": "assessment",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SupplyStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SupplyStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IdentifierUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.IdentifierUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Extension",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "url",
                "type": "System.Uri"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.QueryOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen.Source",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "QUICK.HierarchicalRelationshipType"
                },
                {
                    "name": "target",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Questionnaire",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.QuestionnaireStatus"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "group",
                    "type": "QUICK.Questionnaire.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Composition.Section",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "section",
                    "type": "list<QUICK.Composition.Section>"
                },
                {
                    "name": "content",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingStudy.Series",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "System.Integer"
                },
                {
                    "name": "modality",
                    "type": "QUICK.Modality"
                },
                {
                    "name": "uid",
                    "type": "QUICK.oid"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "numberOfInstances",
                    "type": "System.Integer"
                },
                {
                    "name": "availability",
                    "type": "QUICK.InstanceAvailability"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "bodySite",
                    "type": "System.Code"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "instance",
                    "type": "list<QUICK.ImagingStudy.Instance>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Practitioner.Qualification",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "issuer",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationParameterUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.OperationParameterUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCategory",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceCategory_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "individual",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationstatement",
            "label": "MedicationStatement",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "wasNotGiven",
                    "type": "System.Boolean"
                },
                {
                    "name": "reasonNotGiven",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "whenGiven",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<QUICK.MedicationStatement.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Slicing",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "discriminator",
                    "type": "list<QUICK.id>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "ordered",
                    "type": "System.Boolean"
                },
                {
                    "name": "rules",
                    "type": "QUICK.SlicingRules"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceComponent",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "lastSystemChange",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "parent",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "operationalStatus",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "parameterGroup",
                    "type": "System.Concept"
                },
                {
                    "name": "measurementPrinciple",
                    "type": "QUICK.Measmnt_Principle"
                },
                {
                    "name": "productionSpecification",
                    "type": "list<QUICK.DeviceComponent.ProductionSpecification>"
                },
                {
                    "name": "languageCode",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystemStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NamingSystemStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlanGoalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CarePlanGoalStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference.Service",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "address",
                    "type": "System.String"
                },
                {
                    "name": "parameter",
                    "type": "list<QUICK.DocumentReference.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Use",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.Use_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BindingConformance",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.BindingConformance_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Adjudication",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrder.Event",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "QUICK.DiagnosticOrderStatus"
                },
                {
                    "name": "description",
                    "type": "System.Concept"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "actor",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contraindication",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "QUICK.code"
                },
                {
                    "name": "implicated",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "detail",
                    "type": "System.String"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "reference",
                    "type": "System.Uri"
                },
                {
                    "name": "mitigation",
                    "type": "list<QUICK.Contraindication.Mitigation>"
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
            "name": "QUICK.QuestionnaireAnswers.Question",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "linkId",
                    "type": "System.String"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "answer",
                    "type": "list<QUICK.QuestionnaireAnswers.Answer>"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.QuestionnaireAnswers.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConstraintSeverity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ConstraintSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Reversal.Coverage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "focal",
                    "type": "System.Boolean"
                },
                {
                    "name": "coverage",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "System.String"
                },
                {
                    "name": "relationship",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Observation.Related",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.ObservationRelationshipType"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventAction_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.time",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.time_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventAction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventAction_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceCriticality_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Interaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.TypeRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.OralDiet",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "nutrients",
                    "type": "list<QUICK.NutritionOrder.Nutrients>"
                },
                {
                    "name": "texture",
                    "type": "list<QUICK.NutritionOrder.Texture>"
                },
                {
                    "name": "fluidConsistencyType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Payee",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "person",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DataType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Prosthesis",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "initial",
                    "type": "System.Boolean"
                },
                {
                    "name": "priorDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "priorMaterial",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle",
            "baseType": "QUICK.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.BundleType"
                },
                {
                    "name": "base",
                    "type": "System.Uri"
                },
                {
                    "name": "total",
                    "type": "System.Integer"
                },
                {
                    "name": "link",
                    "type": "list<QUICK.Bundle.Link>"
                },
                {
                    "name": "entry",
                    "type": "list<QUICK.Bundle.Entry>"
                },
                {
                    "name": "signature",
                    "type": "QUICK.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap.DependsOn",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "element",
                    "type": "System.Uri"
                },
                {
                    "name": "codeSystem",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConformanceEventMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ConformanceEventMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Error",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "detailSequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "subdetailSequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "code",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.LinkType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.LinkType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contraindication.Mitigation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "type": "System.Concept"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystemIdentifierType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.NamingSystemIdentifierType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "reference",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "userId",
                    "type": "System.String"
                },
                {
                    "name": "altId",
                    "type": "System.String"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "requestor",
                    "type": "System.Boolean"
                },
                {
                    "name": "media",
                    "type": "System.Code"
                },
                {
                    "name": "network",
                    "type": "QUICK.SecurityEvent.Network"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Include",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "concept",
                    "type": "list<QUICK.ValueSet.Concept1>"
                },
                {
                    "name": "filter",
                    "type": "list<QUICK.ValueSet.Filter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.Entry",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "base",
                    "type": "System.Uri"
                },
                {
                    "name": "status",
                    "type": "QUICK.BundleEntryStatus"
                },
                {
                    "name": "search",
                    "type": "System.Uri"
                },
                {
                    "name": "score",
                    "type": "System.Decimal"
                },
                {
                    "name": "deleted",
                    "type": "QUICK.Bundle.Deleted"
                },
                {
                    "name": "resource",
                    "type": "QUICK.ResourceContainer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyHistory",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-familyhistory",
            "label": "FamilyHistory",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "relation",
                    "type": "list<QUICK.FamilyHistory.Relation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ListMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ListMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "source",
                    "type": "list<QUICK.Specimen.Source>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "accessionIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "receivedTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "collection",
                    "type": "QUICK.Specimen.Collection"
                },
                {
                    "name": "treatment",
                    "type": "list<QUICK.Specimen.Treatment>"
                },
                {
                    "name": "container",
                    "type": "list<QUICK.Specimen.Container>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Narrative",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "status",
                "type": "QUICK.NarrativeStatus"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationKind",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MedicationKind_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FHIRDefinedType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.FHIRDefinedType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Profile.Snapshot",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<QUICK.ElementDefinition>"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.HierarchicalRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Subscription.Channel",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.SubscriptionChannelType"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "payload",
                    "type": "System.String"
                },
                {
                    "name": "header",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Age",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "System.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AlertStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Query.Response",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.QueryOutcome"
                },
                {
                    "name": "total",
                    "type": "System.Integer"
                },
                {
                    "name": "parameter",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "first",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "previous",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "next",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "last",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "reference",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ResourceVersionPolicy_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventObjectType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventObjectType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Concept1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "designation",
                    "type": "list<QUICK.ValueSet.Designation>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MediaType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MaritalStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MedicationAdministrationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "noteNumber",
                    "type": "list<System.Integer>"
                },
                {
                    "name": "adjudication",
                    "type": "list<QUICK.ClaimResponse.Adjudication>"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.ClaimResponse.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceProfileStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ResourceProfileStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationStatement.Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "schedule",
                    "type": "QUICK.Timing"
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
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ResourceType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Supplement",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "name",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.TypeRestfulInteraction_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ProcedureRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Security",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "cors",
                    "type": "System.Boolean"
                },
                {
                    "name": "service",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "certificate",
                    "type": "list<QUICK.Conformance.Certificate>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSetStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ValueSetStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationAdministration",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationadministration",
            "label": "MedicationAdministration",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "status",
                    "type": "QUICK.MedicationAdministrationStatus"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "practitioner",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "prescription",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "wasNotGiven",
                    "type": "System.Boolean"
                },
                {
                    "name": "reasonNotGiven",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "device",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<QUICK.MedicationAdministration.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.OrthoPlan",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "start",
                    "type": "System.DateTime"
                },
                {
                    "name": "examFee",
                    "type": "QUICK.Money"
                },
                {
                    "name": "diagnosticFee",
                    "type": "QUICK.Money"
                },
                {
                    "name": "initialPayment",
                    "type": "QUICK.Money"
                },
                {
                    "name": "durationMonths",
                    "type": "System.Integer"
                },
                {
                    "name": "paymentCount",
                    "type": "System.Integer"
                },
                {
                    "name": "periodicPayment",
                    "type": "QUICK.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Eligibility",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "ruleset",
                    "type": "System.Code"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "organization",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Supply",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "kind",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "QUICK.SupplyStatus"
                },
                {
                    "name": "orderedItem",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dispense",
                    "type": "list<QUICK.Supply.Dispense>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "bodySite",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "status",
                    "type": "QUICK.DeviceUseRequestStatus"
                },
                {
                    "name": "mode",
                    "type": "QUICK.DeviceUseRequestMode"
                },
                {
                    "name": "device",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "notes",
                    "type": "list<System.String>"
                },
                {
                    "name": "prnReason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "orderedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "recordedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "priority",
                    "type": "QUICK.DeviceUseRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.SubDetail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "QUICK.Money"
                },
                {
                    "name": "factor",
                    "type": "System.Decimal"
                },
                {
                    "name": "points",
                    "type": "System.Decimal"
                },
                {
                    "name": "net",
                    "type": "QUICK.Money"
                },
                {
                    "name": "udi",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OrderResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "who",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "code",
                    "type": "QUICK.OrderOutcomeStatus"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "fulfillment",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseRequestPriority",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DeviceUseRequestPriority_list"
            }
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
                    "type": "QUICK.SampledDataDataType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Binding",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "isExtensible",
                    "type": "System.Boolean"
                },
                {
                    "name": "conformance",
                    "type": "QUICK.BindingConformance"
                },
                {
                    "name": "description",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter.Hospitalization",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "preAdmissionIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "origin",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "admitSource",
                    "type": "System.Concept"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "accomodation",
                    "type": "list<QUICK.Encounter.Accomodation>"
                },
                {
                    "name": "diet",
                    "type": "System.Concept"
                },
                {
                    "name": "specialCourtesy",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "specialArrangement",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "destination",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "System.Concept"
                },
                {
                    "name": "dischargeDiagnosis",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "reAdmission",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SlicingRules_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrderPriority",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DiagnosticOrderPriority_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEvent",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "QUICK.SecurityEvent.Event"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.SecurityEvent.Participant>"
                },
                {
                    "name": "source",
                    "type": "QUICK.SecurityEvent.Source"
                },
                {
                    "name": "object",
                    "type": "list<QUICK.SecurityEvent.Object>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlanActivityStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CarePlanActivityStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Compose",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "import",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "include",
                    "type": "list<QUICK.ValueSet.Include>"
                },
                {
                    "name": "exclude",
                    "type": "list<QUICK.ValueSet.Include>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense.Dispense",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "QUICK.MedicationDispenseStatus"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "whenPrepared",
                    "type": "System.DateTime"
                },
                {
                    "name": "whenHandedOver",
                    "type": "System.DateTime"
                },
                {
                    "name": "destination",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "receiver",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<QUICK.MedicationDispense.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.LocationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.LocationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationDefinition.Parameter",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "QUICK.code"
                },
                {
                    "name": "use",
                    "type": "QUICK.OperationParameterUse"
                },
                {
                    "name": "min",
                    "type": "System.Integer"
                },
                {
                    "name": "max",
                    "type": "System.String"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "profile",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QueryOutcome",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.QueryOutcome_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCriticality",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceCriticality_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Media",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.MediaType"
                },
                {
                    "name": "subtype",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "operator",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "view",
                    "type": "System.Concept"
                },
                {
                    "name": "deviceName",
                    "type": "System.String"
                },
                {
                    "name": "height",
                    "type": "System.Integer"
                },
                {
                    "name": "width",
                    "type": "System.Integer"
                },
                {
                    "name": "frames",
                    "type": "System.Integer"
                },
                {
                    "name": "duration",
                    "type": "System.Integer"
                },
                {
                    "name": "content",
                    "type": "QUICK.Attachment"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DocumentReferenceStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequestStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CommunicationRequestStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyHistory.Relation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "condition",
                    "type": "list<QUICK.FamilyHistory.Condition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceDataElementStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ResourceDataElementStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Organization",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<QUICK.Address>"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.Organization.Contact>"
                },
                {
                    "name": "location",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ImagingModality_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.Signer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "singnature",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Ingredient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Designation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "QUICK.code"
                },
                {
                    "name": "use",
                    "type": "System.Code"
                },
                {
                    "name": "value",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DocumentRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SubscriptionChannelType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SubscriptionChannelType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.TypeRestfulInteraction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.TypeRestfulInteraction_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Location.Position",
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
            "type": "SimpleTypeInfo",
            "name": "QUICK.ParticipationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Parameters.Parameter",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "resource",
                    "type": "QUICK.ResourceContainer"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.PropertyRepresentation_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AppointmentResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "appointment",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "participantType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "individual",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "participantStatus",
                    "type": "QUICK.ParticipantStatus"
                },
                {
                    "name": "comment",
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
                    "name": "lastModifiedBy",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.uuid",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.uuid_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference.Parameter",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.AllergyIntoleranceCategory_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Additem",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "list<System.Integer>"
                },
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "fee",
                    "type": "QUICK.Money"
                },
                {
                    "name": "noteNumberLinkId",
                    "type": "list<System.Integer>"
                },
                {
                    "name": "adjudication",
                    "type": "list<QUICK.ClaimResponse.Adjudication3>"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.ClaimResponse.Detail1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ContactPointUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ContactPointUse_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.LocationMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationAdministrationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MedicationAdministrationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization.Explanation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "reason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "refusalReason",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataElement",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "status",
                    "type": "QUICK.ResourceDataElementStatus"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "category",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
                },
                {
                    "name": "question",
                    "type": "System.String"
                },
                {
                    "name": "definition",
                    "type": "System.String"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "synonym",
                    "type": "list<System.String>"
                },
                {
                    "name": "type",
                    "type": "QUICK.code"
                },
                {
                    "name": "maxLength",
                    "type": "System.Integer"
                },
                {
                    "name": "units",
                    "type": "System.Concept"
                },
                {
                    "name": "binding",
                    "type": "QUICK.DataElement.Binding"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.DataElement.Mapping>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.FilterOperator_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.EnteralFormula",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "baseFormulaType",
                    "type": "System.Concept"
                },
                {
                    "name": "additiveType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "caloricDensity",
                    "type": "list<System.Quantity>"
                },
                {
                    "name": "routeofAdministration",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "rate",
                    "type": "list<System.Quantity>"
                },
                {
                    "name": "baseFormulaName",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ExtensionContext_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceComponent.ProductionSpecification",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "specType",
                    "type": "System.Concept"
                },
                {
                    "name": "componentId",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "productionSpec",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticReportStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DiagnosticReportStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CommunicationRequestStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.SearchParam",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "definition",
                    "type": "System.Uri"
                },
                {
                    "name": "type",
                    "type": "QUICK.SearchParamType"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "target",
                    "type": "list<QUICK.code>"
                },
                {
                    "name": "chain",
                    "type": "list<System.String>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Profile",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
                },
                {
                    "name": "status",
                    "type": "QUICK.ResourceProfileStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "fhirVersion",
                    "type": "QUICK.id"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.Profile.Mapping>"
                },
                {
                    "name": "type",
                    "type": "QUICK.code"
                },
                {
                    "name": "base",
                    "type": "System.Uri"
                },
                {
                    "name": "snapshot",
                    "type": "QUICK.Profile.Snapshot"
                },
                {
                    "name": "differential",
                    "type": "QUICK.Profile.Snapshot"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescription.DosageInstruction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "additionalInstructions",
                    "type": "System.Concept"
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
                    "name": "doseQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "serviceDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "unitPrice",
                    "type": "QUICK.Money"
                },
                {
                    "name": "factor",
                    "type": "System.Decimal"
                },
                {
                    "name": "points",
                    "type": "System.Decimal"
                },
                {
                    "name": "net",
                    "type": "QUICK.Money"
                },
                {
                    "name": "udi",
                    "type": "System.Code"
                },
                {
                    "name": "bodySite",
                    "type": "System.Code"
                },
                {
                    "name": "subsite",
                    "type": "list<System.Code>"
                },
                {
                    "name": "modifier",
                    "type": "list<System.Code>"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.OralHealthClaim.Detail>"
                },
                {
                    "name": "prosthesis",
                    "type": "QUICK.OralHealthClaim.Prosthesis"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Group.Characteristic",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "exclude",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OrderOutcomeStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.OrderOutcomeStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HierarchicalRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.HierarchicalRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BundleEntryStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.BundleEntryStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ParticipantStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ParticipantStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-procedurerequest",
            "label": "ProcedureRequest",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "mode",
                    "type": "QUICK.ProcedureRequestMode"
                },
                {
                    "name": "notes",
                    "type": "list<System.String>"
                },
                {
                    "name": "orderedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "orderer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "priority",
                    "type": "QUICK.ProcedureRequestPriority"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.InstanceAvailability_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MessageEvent_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NamingSystemType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EncounterClass",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.EncounterClass_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Nutrients",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "modifier",
                "type": "System.Concept"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DataType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.CarePlanActivityStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Event",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "category",
                    "type": "QUICK.MessageSignificanceCategory"
                },
                {
                    "name": "mode",
                    "type": "QUICK.ConformanceEventMode"
                },
                {
                    "name": "protocol",
                    "type": "list<System.Code>"
                },
                {
                    "name": "focus",
                    "type": "QUICK.code"
                },
                {
                    "name": "request",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "response",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Coverage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "focal",
                    "type": "System.Boolean"
                },
                {
                    "name": "coverage",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "businessArrangement",
                    "type": "System.String"
                },
                {
                    "name": "relationship",
                    "type": "System.Code"
                },
                {
                    "name": "preauthref",
                    "type": "list<System.String>"
                },
                {
                    "name": "claimResponse",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.Link",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relation",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.LocationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Implementation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.List.Entry",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "flag",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "deleted",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "item",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Range",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "System.Quantity"
                },
                {
                    "name": "high",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EncounterState",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.EncounterState_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ProcedureRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireAnswers.Answer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Certificate",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.code"
                },
                {
                    "name": "blob",
                    "type": "QUICK.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.LocationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.LocationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService.AvailableTime",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "daysOfWeek",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "allDay",
                    "type": "System.Boolean"
                },
                {
                    "name": "availableStartTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "availableEndTime",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Content",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "amount",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ObservationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Address",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "QUICK.AddressUse"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "line",
                    "type": "list<System.String>"
                },
                {
                    "name": "city",
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
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "bodySite",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "whenUsed",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "device",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "notes",
                    "type": "list<System.String>"
                },
                {
                    "name": "recordedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Count",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "System.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Query",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "parameter",
                    "type": "list<QUICK.Extension>"
                },
                {
                    "name": "response",
                    "type": "QUICK.Query.Response"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageSignificanceCategory",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.MessageSignificanceCategory_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.QuantityComparator_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Operation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "definition",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Binary",
            "baseType": "QUICK.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "QUICK.code"
                },
                {
                    "name": "content",
                    "type": "QUICK.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-careplan",
            "label": "CarePlan",
            "primaryCodePath": "concern.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "type": "QUICK.CarePlanStatus"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "modified",
                    "type": "System.DateTime"
                },
                {
                    "name": "concern",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.CarePlan.Participant>"
                },
                {
                    "name": "goal",
                    "type": "list<QUICK.CarePlan.Goal>"
                },
                {
                    "name": "activity",
                    "type": "list<QUICK.CarePlan.Activity>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference.RelatesTo",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.DocumentRelationshipType"
                },
                {
                    "name": "target",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SubscriptionStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.Modality_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SystemRestfulInteraction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SystemRestfulInteraction_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AnswerFormat",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AnswerFormat_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "purpose",
                    "type": "System.String"
                },
                {
                    "name": "immutable",
                    "type": "System.Boolean"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ValueSetStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "extensible",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "stableDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "define",
                    "type": "QUICK.ValueSet.Define"
                },
                {
                    "name": "compose",
                    "type": "QUICK.ValueSet.Compose"
                },
                {
                    "name": "expansion",
                    "type": "QUICK.ValueSet.Expansion"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Interaction1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.SystemRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Type",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "QUICK.code"
                },
                {
                    "name": "profile",
                    "type": "System.Uri"
                },
                {
                    "name": "aggregation",
                    "type": "list<QUICK.AggregationMode>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceStatementStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "software",
                    "type": "QUICK.Conformance.Software"
                },
                {
                    "name": "implementation",
                    "type": "QUICK.Conformance.Implementation"
                },
                {
                    "name": "fhirVersion",
                    "type": "QUICK.id"
                },
                {
                    "name": "acceptUnknown",
                    "type": "System.Boolean"
                },
                {
                    "name": "format",
                    "type": "list<QUICK.code>"
                },
                {
                    "name": "profile",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "rest",
                    "type": "list<QUICK.Conformance.Rest>"
                },
                {
                    "name": "messaging",
                    "type": "list<QUICK.Conformance.Messaging>"
                },
                {
                    "name": "document",
                    "type": "list<QUICK.Conformance.Document>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ValueSetStatus"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "element",
                    "type": "list<QUICK.ConceptMap.Element>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DataAbsentReason_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.FHIRDefinedType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-nutritionorder",
            "label": "NutritionOrder",
            "primaryCodePath": "item[].oralDiet.type|item[].supplement.type|item[].enteralFormula.baseFormulaType|item[].enteralFormula.additiveType",
            "element": [
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "orderer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "allergyIntolerance",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "foodPreferenceModifier",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "excludeFoodModifier",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "item",
                    "type": "list<QUICK.NutritionOrder.Item>"
                },
                {
                    "name": "status",
                    "type": "QUICK.NutritionOrderStatus"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SpecialValues_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Money",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "System.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "QUICK.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationAdministration.Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
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
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-patient",
            "label": "Patient",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "name",
                    "type": "list<QUICK.HumanName>"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "type": "list<QUICK.Address>"
                },
                {
                    "name": "maritalStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "photo",
                    "type": "list<QUICK.Attachment>"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.Patient.Contact>"
                },
                {
                    "name": "animal",
                    "type": "QUICK.Patient.Animal"
                },
                {
                    "name": "communication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "careProvider",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "managingOrganization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "link",
                    "type": "list<QUICK.Patient.Link>"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Detail1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "fee",
                    "type": "QUICK.Money"
                },
                {
                    "name": "adjudication",
                    "type": "list<QUICK.ClaimResponse.Adjudication4>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescription",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationprescription",
            "label": "MedicationPrescription",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "dateWritten",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "QUICK.MedicationPrescriptionStatus"
                },
                {
                    "name": "patient",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "prescriber",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "encounter",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "medication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<QUICK.MedicationPrescription.DosageInstruction>"
                },
                {
                    "name": "dispense",
                    "type": "QUICK.MedicationPrescription.Dispense"
                },
                {
                    "name": "substitution",
                    "type": "QUICK.MedicationPrescription.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Mapping",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "QUICK.id"
                },
                {
                    "name": "map",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen.Container",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "capacity",
                    "type": "System.Quantity"
                },
                {
                    "name": "specimenQuantity",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Uri"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Define",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.Uri"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "caseSensitive",
                    "type": "System.Boolean"
                },
                {
                    "name": "concept",
                    "type": "list<QUICK.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ObservationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCertainty",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.AllergyIntoleranceCertainty_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageHeader",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.id"
                },
                {
                    "name": "timestamp",
                    "type": "System.DateTime"
                },
                {
                    "name": "event",
                    "type": "System.Code"
                },
                {
                    "name": "response",
                    "type": "QUICK.MessageHeader.Response"
                },
                {
                    "name": "source",
                    "type": "QUICK.MessageHeader.Source"
                },
                {
                    "name": "destination",
                    "type": "list<QUICK.MessageHeader.Destination>"
                },
                {
                    "name": "enterer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "author",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "receiver",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "responsible",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "data",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationOutcome",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": {
                "name": "issue",
                "type": "list<QUICK.OperationOutcome.Issue>"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.NameUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConditionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ConditionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescription.Dispense",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "medication",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "validityPeriod",
                    "type": "interval<System.DateTime>"
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
                    "type": "QUICK.Duration"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceVersionPolicy",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ResourceVersionPolicy_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ReferralStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ReferralStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ConceptMapEquivalence_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "QUICK.id_primitive"
                },
                {
                    "name": "extension",
                    "type": "list<QUICK.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ParticipantRequired",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ParticipantRequired_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "isInEffect",
                    "type": "System.Boolean"
                },
                {
                    "name": "oralDiet",
                    "type": "QUICK.NutritionOrder.OralDiet"
                },
                {
                    "name": "supplement",
                    "type": "QUICK.NutritionOrder.Supplement"
                },
                {
                    "name": "enteralFormula",
                    "type": "QUICK.NutritionOrder.EnteralFormula"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.id",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.id_primitive"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.time_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference.Context",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "facilityType",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.MedicationDispenseStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ContactPointUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrder.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "specimen",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "QUICK.DiagnosticOrderStatus"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.DiagnosticOrder.Event>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.EncounterState_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseRequestMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.DeviceUseRequestMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService.NotAvailableTime",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "startDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "endDate",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Supply.Dispense",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "status",
                    "type": "QUICK.SupplyDispenseStatus"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "suppliedItem",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "supplier",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "whenPrepared",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "whenHandedOver",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "destination",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "receiver",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Coverage",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "issuer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "group",
                    "type": "System.String"
                },
                {
                    "name": "plan",
                    "type": "System.String"
                },
                {
                    "name": "subplan",
                    "type": "System.String"
                },
                {
                    "name": "dependent",
                    "type": "System.Integer"
                },
                {
                    "name": "sequence",
                    "type": "System.Integer"
                },
                {
                    "name": "subscriber",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "network",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "contract",
                    "type": "list<QUICK.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MessageHeader.Response",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.id"
                },
                {
                    "name": "code",
                    "type": "QUICK.ResponseType"
                },
                {
                    "name": "details",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OralHealthClaim.Missingteeth",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "tooth",
                    "type": "System.Code"
                },
                {
                    "name": "reason",
                    "type": "System.Code"
                },
                {
                    "name": "extractiondate",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventObjectRole",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventObjectRole_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.uuid_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticReport",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-diagnosticreport",
            "label": "DiagnosticReport",
            "primaryCodePath": "name",
            "element": [
                {
                    "name": "name",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "QUICK.DiagnosticReportStatus"
                },
                {
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "performer",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "requestDetail",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "specimen",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "result",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "imagingStudy",
                    "type": "list<QUICK.Reference>"
                },
                {
                    "name": "image",
                    "type": "list<QUICK.DiagnosticReport.Image>"
                },
                {
                    "name": "conclusion",
                    "type": "System.String"
                },
                {
                    "name": "codedDiagnosis",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "presentedForm",
                    "type": "list<QUICK.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SubscriptionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SubscriptionStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DeviceUseRequestMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SecurityEventObjectLifecycle",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.SecurityEventObjectLifecycle_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter.Accomodation",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "bed",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.ListMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "System.Concept"
                },
                {
                    "name": "member",
                    "type": "QUICK.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequestMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.CommunicationRequestMode_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.DocumentRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Location",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "cqf-location",
            "label": "Location",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "type": "QUICK.Location.Position"
                },
                {
                    "name": "managingOrganization",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "status",
                    "type": "QUICK.LocationStatus"
                },
                {
                    "name": "partOf",
                    "type": "QUICK.Reference"
                },
                {
                    "name": "mode",
                    "type": "QUICK.LocationMode"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProvenanceEntityRole",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "QUICK.ProvenanceEntityRole_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "QUICK.SecurityEventObjectType_list"
        }
    ]
});