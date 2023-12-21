import '../../../cql.dart';

final testmodelinfo = ModelInfo.fromJson({
    "name": "Test",
    "url": "http://cqframework.org/test",
    "schemaLocation": "http://cqframework.org/Test test.xsd",
    "targetQualifier": "Test",
    "patientClassName": "Test.Patient",
    "patientClassIdentifier": "cqf-patient",
    "patientBirthDatePropertyName": "birthDate",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "Test.Composition.Event",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Patient.Link",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "other",
                    "type": "Test.Reference"
                },
                {
                    "name": "type",
                    "type": "Test.LinkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SpecialValues",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SpecialValues_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AggregationMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AggregationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrderStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NutritionOrderStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntolerance",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-allergyintolerance",
            "label": "AllergyIntolerance",
            "primaryCodePath": "substance",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "recordedDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "recorder",
                    "type": "Test.Reference"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "Test.AllergyIntoleranceStatus"
                },
                {
                    "name": "criticality",
                    "type": "Test.AllergyIntoleranceCriticality"
                },
                {
                    "name": "type",
                    "type": "Test.AllergyIntoleranceType"
                },
                {
                    "name": "category",
                    "type": "Test.AllergyIntoleranceCategory"
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
                    "type": "list<Test.AllergyIntolerance.Event>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.RestfulConformanceMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Timing",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "list<interval<System.DateTime>>"
                },
                {
                    "name": "repeat",
                    "type": "Test.Timing.Repeat"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent.Network",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "Test.SecurityEventParticipantNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Order.When",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "schedule",
                    "type": "Test.Timing"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.RemittanceOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Medication",
            "baseType": "Test.DomainResource",
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
                    "type": "Test.Reference"
                },
                {
                    "name": "kind",
                    "type": "Test.MedicationKind"
                },
                {
                    "name": "product",
                    "type": "Test.Medication.Product"
                },
                {
                    "name": "package",
                    "type": "Test.Medication.Package"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Profile.Mapping",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "Test.id"
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
            "name": "Test.MessageHeader.Source",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.ContactPoint"
                },
                {
                    "name": "endpoint",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ResourceProfileStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Reference",
            "baseType": "Test.Element",
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
            "name": "Test.AllergyIntoleranceStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ObservationRelationshipType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SupplyStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.List",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "source",
                    "type": "Test.Reference"
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
                    "type": "Test.ListMode"
                },
                {
                    "name": "entry",
                    "type": "list<Test.List.Entry>"
                },
                {
                    "name": "emptyReason",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.RiskAssessment.Prediction",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.base64Binary",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.base64Binary_primitive"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CarePlanActivityCategory_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DeviceUseRequestPriority_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImmunizationRecommendation.Protocol",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
                },
                {
                    "name": "series",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Alert",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "Test.AlertStatus"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "note",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OperationKind",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.OperationKind_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.HealthcareService.ServiceType",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.EventTiming",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.EventTiming_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.BundleEntryStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Filter",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "property",
                    "type": "Test.code"
                },
                {
                    "name": "op",
                    "type": "Test.FilterOperator"
                },
                {
                    "name": "value",
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Appointment.Participant",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "Test.Reference"
                },
                {
                    "name": "required",
                    "type": "Test.ParticipantRequired"
                },
                {
                    "name": "status",
                    "type": "Test.ParticipationStatus"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DomainResource",
            "baseType": "Test.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "Test.Narrative"
                },
                {
                    "name": "contained",
                    "type": "list<Test.ResourceContainer>"
                },
                {
                    "name": "extension",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "modifierExtension",
                    "type": "list<Test.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.QuestionnaireStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.QuestionnaireStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Specimen.Collection",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "collector",
                    "type": "Test.Reference"
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
            "name": "Test.SecurityEvent.Object",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "reference",
                    "type": "Test.Reference"
                },
                {
                    "name": "type",
                    "type": "Test.SecurityEventObjectType"
                },
                {
                    "name": "role",
                    "type": "Test.SecurityEventObjectRole"
                },
                {
                    "name": "lifecycle",
                    "type": "Test.SecurityEventObjectLifecycle"
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
                    "type": "Test.base64Binary"
                },
                {
                    "name": "detail",
                    "type": "list<Test.SecurityEvent.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Procedure.Performer",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "person",
                    "type": "Test.Reference"
                },
                {
                    "name": "role",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.IssueSeverity_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.NarrativeStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystem.UniqueId",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.NamingSystemIdentifierType"
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
            "name": "Test.RelatedPerson",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "Test.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "address",
                    "type": "Test.Address"
                },
                {
                    "name": "photo",
                    "type": "list<Test.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CommunicationRequest.MessagePart",
            "baseType": "Test.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "Test.Encounter",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-encounter",
            "label": "Encounter",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "status",
                    "type": "Test.EncounterState"
                },
                {
                    "name": "class",
                    "type": "Test.EncounterClass"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "participant",
                    "type": "list<Test.Encounter.Participant>"
                },
                {
                    "name": "fulfills",
                    "type": "Test.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "length",
                    "type": "Test.Duration"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "indication",
                    "type": "Test.Reference"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
                },
                {
                    "name": "hospitalization",
                    "type": "Test.Encounter.Hospitalization"
                },
                {
                    "name": "location",
                    "type": "list<Test.Encounter.Location>"
                },
                {
                    "name": "serviceProvider",
                    "type": "Test.Reference"
                },
                {
                    "name": "partOf",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.BindingConformance_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystem",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.NamingSystemType"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "Test.NamingSystemStatus"
                },
                {
                    "name": "country",
                    "type": "Test.code"
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
                    "type": "list<Test.NamingSystem.UniqueId>"
                },
                {
                    "name": "contact",
                    "type": "Test.NamingSystem.Contact"
                },
                {
                    "name": "replacedBy",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ExplanationOfBenefit",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "outcome",
                    "type": "Test.RemittanceOutcome"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlan.Activity",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "goal",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "status",
                    "type": "Test.CarePlanActivityStatus"
                },
                {
                    "name": "prohibited",
                    "type": "System.Boolean"
                },
                {
                    "name": "actionResulting",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "detail",
                    "type": "Test.Reference"
                },
                {
                    "name": "simple",
                    "type": "Test.CarePlan.Simple"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.QuantityComparator",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.QuantityComparator_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ObservationReliability",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ObservationReliability_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.QuestionnaireAnswers.Group",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
                },
                {
                    "name": "group",
                    "type": "list<Test.QuestionnaireAnswers.Group>"
                },
                {
                    "name": "question",
                    "type": "list<Test.QuestionnaireAnswers.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.Texture",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.GroupType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.GroupType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.FamilyHistory.Condition",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.AllergyIntoleranceSeverity_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Messaging",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Conformance.Event>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Reversal",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "response",
                    "type": "Test.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "payee",
                    "type": "Test.Reversal.Payee"
                },
                {
                    "name": "coverage",
                    "type": "Test.Reversal.Coverage"
                },
                {
                    "name": "nullify",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AdministrativeGender_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ParticipantStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DiagnosticOrderStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Observation.ReferenceRange",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Range"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceUseRequestStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DeviceUseRequestStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SlicingRules",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SlicingRules_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Subscription",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "criteria",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "reason",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "Test.SubscriptionStatus"
                },
                {
                    "name": "error",
                    "type": "System.String"
                },
                {
                    "name": "channel",
                    "type": "Test.Subscription.Channel"
                },
                {
                    "name": "end",
                    "type": "System.DateTime"
                },
                {
                    "name": "tag",
                    "type": "list<Test.Subscription.Tag>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlanStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CarePlanStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ValueSetStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImagingStudy.Instance",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "System.Integer"
                },
                {
                    "name": "uid",
                    "type": "Test.oid"
                },
                {
                    "name": "sopclass",
                    "type": "Test.oid"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Measmnt_Principle",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.Measmnt_Principle_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ContactPointSystem_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystemType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NamingSystemType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Condition.Evidence",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "detail",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SupplyDispenseStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Condition.OccurredFollowing",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ExtensionContext",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ExtensionContext_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ProcedureRequestPriority_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CarePlanStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ConditionStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.OrderOutcomeStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Practitioner",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-practitioner",
            "label": "Practitioner",
            "primaryCodePath": "specialty",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "name",
                    "type": "Test.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<Test.Address>"
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
                    "type": "list<Test.Attachment>"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "qualification",
                    "type": "list<Test.Practitioner.Qualification>"
                },
                {
                    "name": "communication",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.QuestionnaireStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent.Detail",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "Test.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProcedureRequestStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ProcedureRequestStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id"
                },
                {
                    "name": "meta",
                    "type": "Test.Resource.Meta"
                },
                {
                    "name": "implicitRules",
                    "type": "System.Uri"
                },
                {
                    "name": "language",
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Medication.Product",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "form",
                    "type": "System.Concept"
                },
                {
                    "name": "ingredient",
                    "type": "list<Test.Medication.Ingredient>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.InstanceAvailability",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.InstanceAvailability_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AllergyIntoleranceType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SearchParamType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ResourceDataElementStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Patient.Animal",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.BundleType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Procedure.RelatedItem",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.ProcedureRelationshipType"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Group",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "type",
                    "type": "Test.GroupType"
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
                    "type": "list<Test.Group.Characteristic>"
                },
                {
                    "name": "member",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Modality",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.Modality_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ContactPointSystem",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ContactPointSystem_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ParticipationStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ParticipationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Substance.Instance",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
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
            "name": "Test.ClaimResponse",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "Test.Reference"
                },
                {
                    "name": "outcome",
                    "type": "Test.RemittanceOutcome"
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
                    "type": "list<Test.ClaimResponse.Item>"
                },
                {
                    "name": "additem",
                    "type": "list<Test.ClaimResponse.Additem>"
                },
                {
                    "name": "error",
                    "type": "list<Test.ClaimResponse.Error>"
                },
                {
                    "name": "totalCost",
                    "type": "Test.Money"
                },
                {
                    "name": "unallocDeductable",
                    "type": "Test.Money"
                },
                {
                    "name": "totalBenefit",
                    "type": "Test.Money"
                },
                {
                    "name": "paymentAdjustment",
                    "type": "Test.Money"
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
                    "type": "Test.Money"
                },
                {
                    "name": "paymentRef",
                    "type": "Test.Identifier"
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
                    "type": "list<Test.ClaimResponse.Note>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Contains",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.code"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "contains",
                    "type": "list<Test.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationDispense.Dosage",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "Test.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Resource.Meta",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "versionId",
                    "type": "Test.id"
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
            "name": "Test.QuestionnaireAnswersStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.CompositionStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CompositionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SearchParameter",
            "baseType": "Test.DomainResource",
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
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "base",
                    "type": "Test.code"
                },
                {
                    "name": "type",
                    "type": "Test.SearchParamType"
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
                    "type": "list<Test.code>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.base64Binary_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.RemittanceOutcome",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.RemittanceOutcome_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImmunizationRecommendation.DateCriterion",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Condition.Location",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Provenance.Entity",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "Test.ProvenanceEntityRole"
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
                    "type": "Test.Provenance.Agent"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProcedureRequestMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ProcedureRequestMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DocumentMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReference",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "custodian",
                    "type": "Test.Reference"
                },
                {
                    "name": "policyManager",
                    "type": "System.Uri"
                },
                {
                    "name": "authenticator",
                    "type": "Test.Reference"
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
                    "type": "Test.DocumentReferenceStatus"
                },
                {
                    "name": "docStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "relatesTo",
                    "type": "list<Test.DocumentReference.RelatesTo>"
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
                    "type": "Test.code"
                },
                {
                    "name": "mimeType",
                    "type": "Test.code"
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
                    "type": "Test.base64Binary"
                },
                {
                    "name": "location",
                    "type": "System.Uri"
                },
                {
                    "name": "service",
                    "type": "Test.DocumentReference.Service"
                },
                {
                    "name": "context",
                    "type": "Test.DocumentReference.Context"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Adjudication2",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "Test.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Questionnaire.Group",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Questionnaire.Group>"
                },
                {
                    "name": "question",
                    "type": "list<Test.Questionnaire.Question>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResourceType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ResourceType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Adjudication1",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "Test.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Adjudication4",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "Test.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Adjudication3",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "Test.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Specimen.Treatment",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Composition.Attester",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "list<Test.CompositionAttestationMode>"
                },
                {
                    "name": "time",
                    "type": "System.DateTime"
                },
                {
                    "name": "party",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticReport.Image",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "link",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationDispense",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationdispense",
            "label": "MedicationDispense",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "status",
                    "type": "Test.MedicationDispenseStatus"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "dispenser",
                    "type": "Test.Reference"
                },
                {
                    "name": "authorizingPrescription",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "dispense",
                    "type": "list<Test.MedicationDispense.Dispense>"
                },
                {
                    "name": "substitution",
                    "type": "Test.MedicationDispense.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConformanceStatementStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ConformanceStatementStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ReferralRequest",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "Test.ReferralStatus"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "requester",
                    "type": "Test.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "fulfillmentTime",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AggregationMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CommunicationRequestMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Detail",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Money"
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
                    "type": "Test.Money"
                },
                {
                    "name": "udi",
                    "type": "System.Code"
                },
                {
                    "name": "subDetail",
                    "type": "list<Test.OralHealthClaim.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Contract.Term",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "text",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SystemRestfulInteraction_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.EligibilityResponse",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "outcome",
                    "type": "Test.RemittanceOutcome"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "requestProvider",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestOrganization",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SecurityEventParticipantNetworkType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResponseType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ResponseType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent.Event",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.SecurityEventAction"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "outcome",
                    "type": "Test.SecurityEventOutcome"
                },
                {
                    "name": "outcomeDesc",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MediaType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MediaType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConceptMap.Map",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "Test.code"
                },
                {
                    "name": "equivalence",
                    "type": "Test.ConceptMapEquivalence"
                },
                {
                    "name": "comments",
                    "type": "System.String"
                },
                {
                    "name": "product",
                    "type": "list<Test.ConceptMap.DependsOn>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent.Source",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Parameters",
            "baseType": "Test.Resource",
            "retrievable": false,
            "element": {
                "name": "parameter",
                "type": "list<Test.Parameters.Parameter>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Rest",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "Test.RestfulConformanceMode"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "security",
                    "type": "Test.Conformance.Security"
                },
                {
                    "name": "resource",
                    "type": "list<Test.Conformance.Resource>"
                },
                {
                    "name": "interaction",
                    "type": "list<Test.Conformance.Interaction1>"
                },
                {
                    "name": "operation",
                    "type": "list<Test.Conformance.Operation>"
                },
                {
                    "name": "documentMailbox",
                    "type": "list<System.Uri>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.LinkType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Resource",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.code"
                },
                {
                    "name": "profile",
                    "type": "Test.Reference"
                },
                {
                    "name": "interaction",
                    "type": "list<Test.Conformance.Interaction>"
                },
                {
                    "name": "versioning",
                    "type": "Test.ResourceVersionPolicy"
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
                    "type": "list<Test.Conformance.SearchParam>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticOrderStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DiagnosticOrderStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MessageSignificanceCategory_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.BundleType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.BundleType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationDispense.Substitution",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResourceContainer",
            "retrievable": false,
            "element": [
                {
                    "name": "Alert",
                    "type": "Test.Alert"
                },
                {
                    "name": "AllergyIntolerance",
                    "type": "Test.AllergyIntolerance"
                },
                {
                    "name": "Appointment",
                    "type": "Test.Appointment"
                },
                {
                    "name": "AppointmentResponse",
                    "type": "Test.AppointmentResponse"
                },
                {
                    "name": "Availability",
                    "type": "Test.Availability"
                },
                {
                    "name": "Basic",
                    "type": "Test.Basic"
                },
                {
                    "name": "Binary",
                    "type": "Test.Binary"
                },
                {
                    "name": "Bundle",
                    "type": "Test.Bundle"
                },
                {
                    "name": "CarePlan",
                    "type": "Test.CarePlan"
                },
                {
                    "name": "ClaimResponse",
                    "type": "Test.ClaimResponse"
                },
                {
                    "name": "CommunicationRequest",
                    "type": "Test.CommunicationRequest"
                },
                {
                    "name": "Composition",
                    "type": "Test.Composition"
                },
                {
                    "name": "ConceptMap",
                    "type": "Test.ConceptMap"
                },
                {
                    "name": "Condition",
                    "type": "Test.Condition"
                },
                {
                    "name": "Conformance",
                    "type": "Test.Conformance"
                },
                {
                    "name": "Contract",
                    "type": "Test.Contract"
                },
                {
                    "name": "Contraindication",
                    "type": "Test.Contraindication"
                },
                {
                    "name": "Coverage",
                    "type": "Test.Coverage"
                },
                {
                    "name": "DataElement",
                    "type": "Test.DataElement"
                },
                {
                    "name": "Device",
                    "type": "Test.Device"
                },
                {
                    "name": "DeviceComponent",
                    "type": "Test.DeviceComponent"
                },
                {
                    "name": "DeviceUseRequest",
                    "type": "Test.DeviceUseRequest"
                },
                {
                    "name": "DeviceUseStatement",
                    "type": "Test.DeviceUseStatement"
                },
                {
                    "name": "DiagnosticOrder",
                    "type": "Test.DiagnosticOrder"
                },
                {
                    "name": "DiagnosticReport",
                    "type": "Test.DiagnosticReport"
                },
                {
                    "name": "DocumentManifest",
                    "type": "Test.DocumentManifest"
                },
                {
                    "name": "DocumentReference",
                    "type": "Test.DocumentReference"
                },
                {
                    "name": "Eligibility",
                    "type": "Test.Eligibility"
                },
                {
                    "name": "EligibilityResponse",
                    "type": "Test.EligibilityResponse"
                },
                {
                    "name": "Encounter",
                    "type": "Test.Encounter"
                },
                {
                    "name": "ExplanationOfBenefit",
                    "type": "Test.ExplanationOfBenefit"
                },
                {
                    "name": "ExtensionDefinition",
                    "type": "Test.ExtensionDefinition"
                },
                {
                    "name": "FamilyHistory",
                    "type": "Test.FamilyHistory"
                },
                {
                    "name": "Group",
                    "type": "Test.Group"
                },
                {
                    "name": "HealthcareService",
                    "type": "Test.HealthcareService"
                },
                {
                    "name": "ImagingStudy",
                    "type": "Test.ImagingStudy"
                },
                {
                    "name": "Immunization",
                    "type": "Test.Immunization"
                },
                {
                    "name": "ImmunizationRecommendation",
                    "type": "Test.ImmunizationRecommendation"
                },
                {
                    "name": "List",
                    "type": "Test.List"
                },
                {
                    "name": "Location",
                    "type": "Test.Location"
                },
                {
                    "name": "Media",
                    "type": "Test.Media"
                },
                {
                    "name": "Medication",
                    "type": "Test.Medication"
                },
                {
                    "name": "MedicationAdministration",
                    "type": "Test.MedicationAdministration"
                },
                {
                    "name": "MedicationDispense",
                    "type": "Test.MedicationDispense"
                },
                {
                    "name": "MedicationPrescription",
                    "type": "Test.MedicationPrescription"
                },
                {
                    "name": "MedicationStatement",
                    "type": "Test.MedicationStatement"
                },
                {
                    "name": "MessageHeader",
                    "type": "Test.MessageHeader"
                },
                {
                    "name": "NamingSystem",
                    "type": "Test.NamingSystem"
                },
                {
                    "name": "NutritionOrder",
                    "type": "Test.NutritionOrder"
                },
                {
                    "name": "Observation",
                    "type": "Test.Observation"
                },
                {
                    "name": "OperationDefinition",
                    "type": "Test.OperationDefinition"
                },
                {
                    "name": "OperationOutcome",
                    "type": "Test.OperationOutcome"
                },
                {
                    "name": "OralHealthClaim",
                    "type": "Test.OralHealthClaim"
                },
                {
                    "name": "Order",
                    "type": "Test.Order"
                },
                {
                    "name": "OrderResponse",
                    "type": "Test.OrderResponse"
                },
                {
                    "name": "Organization",
                    "type": "Test.Organization"
                },
                {
                    "name": "Other",
                    "type": "Test.Other"
                },
                {
                    "name": "Patient",
                    "type": "Test.Patient"
                },
                {
                    "name": "Practitioner",
                    "type": "Test.Practitioner"
                },
                {
                    "name": "Procedure",
                    "type": "Test.Procedure"
                },
                {
                    "name": "ProcedureRequest",
                    "type": "Test.ProcedureRequest"
                },
                {
                    "name": "Profile",
                    "type": "Test.Profile"
                },
                {
                    "name": "Provenance",
                    "type": "Test.Provenance"
                },
                {
                    "name": "Query",
                    "type": "Test.Query"
                },
                {
                    "name": "Questionnaire",
                    "type": "Test.Questionnaire"
                },
                {
                    "name": "QuestionnaireAnswers",
                    "type": "Test.QuestionnaireAnswers"
                },
                {
                    "name": "ReferralRequest",
                    "type": "Test.ReferralRequest"
                },
                {
                    "name": "RelatedPerson",
                    "type": "Test.RelatedPerson"
                },
                {
                    "name": "Reversal",
                    "type": "Test.Reversal"
                },
                {
                    "name": "RiskAssessment",
                    "type": "Test.RiskAssessment"
                },
                {
                    "name": "SearchParameter",
                    "type": "Test.SearchParameter"
                },
                {
                    "name": "SecurityEvent",
                    "type": "Test.SecurityEvent"
                },
                {
                    "name": "Slot",
                    "type": "Test.Slot"
                },
                {
                    "name": "Specimen",
                    "type": "Test.Specimen"
                },
                {
                    "name": "Subscription",
                    "type": "Test.Subscription"
                },
                {
                    "name": "Substance",
                    "type": "Test.Substance"
                },
                {
                    "name": "Supply",
                    "type": "Test.Supply"
                },
                {
                    "name": "SupportingDocumentation",
                    "type": "Test.SupportingDocumentation"
                },
                {
                    "name": "ValueSet",
                    "type": "Test.ValueSet"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ConformanceEventMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Immunization.Reaction",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "detail",
                    "type": "Test.Reference"
                },
                {
                    "name": "reported",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Patient.Contact",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "name",
                    "type": "Test.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "Test.Address"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.BackboneElement",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "modifierExtension",
                "type": "list<Test.Extension>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Reversal.Payee",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "person",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DiagnosticOrderPriority_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Immunization",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-immunization",
            "label": "Immunization",
            "primaryCodePath": "vaccineType",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "requester",
                    "type": "Test.Reference"
                },
                {
                    "name": "manufacturer",
                    "type": "Test.Reference"
                },
                {
                    "name": "location",
                    "type": "Test.Reference"
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
                    "type": "Test.Immunization.Explanation"
                },
                {
                    "name": "reaction",
                    "type": "list<Test.Immunization.Reaction>"
                },
                {
                    "name": "vaccinationProtocol",
                    "type": "list<Test.Immunization.VaccinationProtocol>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlanActivityCategory",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CarePlanActivityCategory_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.EventTiming_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Other",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentManifest",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "masterIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "recipient",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "author",
                    "type": "list<Test.Reference>"
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
                    "type": "Test.DocumentReferenceStatus"
                },
                {
                    "name": "supercedes",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.code_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Provenance.Agent",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.SecurityEventObjectRole_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Subscription.Tag",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Appointment",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "priority",
                    "type": "System.Integer"
                },
                {
                    "name": "status",
                    "type": "Test.code"
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
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "location",
                    "type": "Test.Reference"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "order",
                    "type": "Test.Reference"
                },
                {
                    "name": "participant",
                    "type": "list<Test.Appointment.Participant>"
                },
                {
                    "name": "lastModifiedBy",
                    "type": "Test.Reference"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Substance",
            "baseType": "Test.DomainResource",
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
                    "type": "Test.Substance.Instance"
                },
                {
                    "name": "ingredient",
                    "type": "list<Test.Substance.Ingredient>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationPrescription.Substitution",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.NamingSystemIdentifierType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CarePlanGoalStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DataAbsentReason",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DataAbsentReason_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Immunization.VaccinationProtocol",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
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
            "name": "Test.SupportingDocumentation.Detail",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.CommunicationRequest",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-communicationrequest",
            "label": "CommunicationRequest",
            "primaryCodePath": "category",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "sender",
                    "type": "Test.Reference"
                },
                {
                    "name": "recipient",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "messagePart",
                    "type": "list<Test.CommunicationRequest.MessagePart>"
                },
                {
                    "name": "medium",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "requester",
                    "type": "Test.Reference"
                },
                {
                    "name": "status",
                    "type": "Test.CommunicationRequestStatus"
                },
                {
                    "name": "mode",
                    "type": "Test.CommunicationRequestMode"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.HumanName",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "Test.NameUse"
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
            "name": "Test.HealthcareService",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "location",
                    "type": "Test.Reference"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "serviceType",
                    "type": "list<Test.HealthcareService.ServiceType>"
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
                    "type": "list<Test.HealthcareService.AvailableTime>"
                },
                {
                    "name": "notAvailableTime",
                    "type": "list<Test.HealthcareService.NotAvailableTime>"
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
                    "type": "list<Test.ContactPoint>"
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
            "name": "Test.ConceptMap.Element",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "System.Uri"
                },
                {
                    "name": "code",
                    "type": "Test.code"
                },
                {
                    "name": "dependsOn",
                    "type": "list<Test.ConceptMap.DependsOn>"
                },
                {
                    "name": "map",
                    "type": "list<Test.ConceptMap.Map>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AddressUse_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MedicationPrescriptionStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntoleranceSeverity",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Basic",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Organization.Contact",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "purpose",
                    "type": "System.Concept"
                },
                {
                    "name": "name",
                    "type": "Test.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "Test.Address"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.AlertStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AlertStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.UnitsOfTime",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.UnitsOfTime_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.OperationOutcome.Issue",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "severity",
                    "type": "Test.IssueSeverity"
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
            "name": "Test.OperationDefinition",
            "baseType": "Test.DomainResource",
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
                    "type": "list<Test.ContactPoint>"
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
                    "type": "Test.ResourceProfileStatus"
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
                    "type": "Test.OperationKind"
                },
                {
                    "name": "name",
                    "type": "Test.code"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "base",
                    "type": "Test.Reference"
                },
                {
                    "name": "system",
                    "type": "System.Boolean"
                },
                {
                    "name": "type",
                    "type": "list<Test.code>"
                },
                {
                    "name": "instance",
                    "type": "System.Boolean"
                },
                {
                    "name": "parameter",
                    "type": "list<Test.OperationDefinition.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Questionnaire.Question",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.AnswerFormat"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "group",
                    "type": "list<Test.Questionnaire.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Composition",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
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
                    "type": "Test.CompositionStatus"
                },
                {
                    "name": "confidentiality",
                    "type": "System.Code"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "attester",
                    "type": "list<Test.Composition.Attester>"
                },
                {
                    "name": "custodian",
                    "type": "Test.Reference"
                },
                {
                    "name": "event",
                    "type": "list<Test.Composition.Event>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "section",
                    "type": "list<Test.Composition.Section>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ExtensionDefinition.Mapping",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "Test.id"
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
            "name": "Test.SampledDataDataType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SampledDataDataType_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Provenance",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "target",
                    "type": "list<Test.Reference>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "policy",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "agent",
                    "type": "list<Test.Provenance.Agent>"
                },
                {
                    "name": "entity",
                    "type": "list<Test.Provenance.Entity>"
                },
                {
                    "name": "integritySignature",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.code",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.code_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Attachment",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "Test.code"
                },
                {
                    "name": "language",
                    "type": "Test.code"
                },
                {
                    "name": "data",
                    "type": "Test.base64Binary"
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
                    "type": "Test.base64Binary"
                },
                {
                    "name": "title",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.id_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.QuestionnaireAnswers",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "questionnaire",
                    "type": "Test.Reference"
                },
                {
                    "name": "status",
                    "type": "Test.QuestionnaireAnswersStatus"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "authored",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "Test.Reference"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "group",
                    "type": "Test.QuestionnaireAnswers.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Medication.Package",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "container",
                    "type": "System.Concept"
                },
                {
                    "name": "content",
                    "type": "list<Test.Medication.Content>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MessageHeader.Destination",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                },
                {
                    "name": "endpoint",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Order",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "source",
                    "type": "Test.Reference"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                },
                {
                    "name": "authority",
                    "type": "Test.Reference"
                },
                {
                    "name": "when",
                    "type": "Test.Order.When"
                },
                {
                    "name": "detail",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Encounter.Location",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "location",
                    "type": "Test.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Identifier",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "Test.IdentifierUse"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.UnitsOfTime_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NameUse",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NameUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Detail",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "adjudication",
                    "type": "list<Test.ClaimResponse.Adjudication1>"
                },
                {
                    "name": "subdetail",
                    "type": "list<Test.ClaimResponse.Subdetail>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SlotStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImagingModality",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ImagingModality_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.OperationKind_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Slot",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "availability",
                    "type": "Test.Reference"
                },
                {
                    "name": "freeBusyType",
                    "type": "Test.SlotStatus"
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
            "name": "Test.MedicationKind_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AnswerFormat_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ObservationReliability_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.PropertyRepresentation",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.PropertyRepresentation_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.Use_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Device",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "location",
                    "type": "Test.Reference"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "url",
                    "type": "System.Uri"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEventParticipantNetworkType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventParticipantNetworkType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AdministrativeGender",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AdministrativeGender_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntolerance.Event",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "certainty",
                    "type": "Test.AllergyIntoleranceCertainty"
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
                    "type": "Test.Duration"
                },
                {
                    "name": "severity",
                    "type": "Test.AllergyIntoleranceSeverity"
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
            "name": "Test.Substance.Ingredient",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "quantity",
                    "type": "Test.Ratio"
                },
                {
                    "name": "substance",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Procedure",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-procedure",
            "label": "Procedure",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Procedure.Performer>"
                },
                {
                    "name": "date",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "outcome",
                    "type": "System.String"
                },
                {
                    "name": "report",
                    "type": "list<Test.Reference>"
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
                    "type": "list<Test.Procedure.RelatedItem>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProcedureRequestPriority",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ProcedureRequestPriority_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImagingStudy",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "started",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "uid",
                    "type": "Test.oid"
                },
                {
                    "name": "accession",
                    "type": "Test.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "order",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "modalityList",
                    "type": "list<Test.ImagingModality>"
                },
                {
                    "name": "referrer",
                    "type": "Test.Reference"
                },
                {
                    "name": "availability",
                    "type": "Test.InstanceAvailability"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "series",
                    "type": "list<Test.ImagingStudy.Series>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationDispenseStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MedicationDispenseStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Observation",
            "baseType": "Test.DomainResource",
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
                    "type": "Test.DataAbsentReason"
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
                    "type": "Test.ObservationStatus"
                },
                {
                    "name": "reliability",
                    "type": "Test.ObservationReliability"
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
                    "type": "Test.Identifier"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "specimen",
                    "type": "Test.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "referenceRange",
                    "type": "list<Test.Observation.ReferenceRange>"
                },
                {
                    "name": "related",
                    "type": "list<Test.Observation.Related>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEventOutcome",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventOutcome_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ReferralStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticOrder",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-diagnosticorder",
            "label": "DiagnosticOrder",
            "primaryCodePath": "item[].code",
            "element": [
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "orderer",
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "clinicalNotes",
                    "type": "System.String"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "specimen",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "status",
                    "type": "Test.DiagnosticOrderStatus"
                },
                {
                    "name": "priority",
                    "type": "Test.DiagnosticOrderPriority"
                },
                {
                    "name": "event",
                    "type": "list<Test.DiagnosticOrder.Event>"
                },
                {
                    "name": "item",
                    "type": "list<Test.DiagnosticOrder.Item>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Duration",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
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
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CompositionAttestationMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ObservationRelationshipType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ObservationRelationshipType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.oid_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Software",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.QuestionnaireAnswersStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.QuestionnaireAnswersStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SupplyDispenseStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SupplyDispenseStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition.Constraint",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "key",
                    "type": "Test.id"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "severity",
                    "type": "Test.ConstraintSeverity"
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
            "name": "Test.oid",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.oid_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.CompositionAttestationMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CompositionAttestationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AddressUse",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AddressUse_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ConformanceStatementStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReferenceStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DocumentReferenceStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImmunizationRecommendation",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-immunization-recommendation",
            "label": "ImmunizationRecommendation",
            "primaryCodePath": "recommendation[].vaccineType",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "recommendation",
                    "type": "list<Test.ImmunizationRecommendation.Recommendation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MessageEvent",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MessageEvent_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Period",
            "baseType": "Test.Element",
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
            "name": "Test.ResponseType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Expansion",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "timestamp",
                    "type": "System.DateTime"
                },
                {
                    "name": "contains",
                    "type": "list<Test.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlan.Simple",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "category",
                    "type": "Test.CarePlanActivityCategory"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "location",
                    "type": "Test.Reference"
                },
                {
                    "name": "performer",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "product",
                    "type": "Test.Reference"
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
            "name": "Test.CarePlan.Goal",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "Test.CarePlanGoalStatus"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "concern",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ExtensionDefinition",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "list<Test.ContactPoint>"
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
                    "type": "Test.ResourceProfileStatus"
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
                    "type": "list<Test.ExtensionDefinition.Mapping>"
                },
                {
                    "name": "contextType",
                    "type": "Test.ExtensionContext"
                },
                {
                    "name": "context",
                    "type": "list<System.String>"
                },
                {
                    "name": "element",
                    "type": "list<Test.ElementDefinition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.NarrativeStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NarrativeStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AllergyIntoleranceStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Condition.DueTo",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.GroupType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ContactPoint",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "Test.ContactPointSystem"
                },
                {
                    "name": "value",
                    "type": "System.String"
                },
                {
                    "name": "use",
                    "type": "Test.ContactPointUse"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.NamingSystemStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystem.Contact",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "Test.HumanName"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ProvenanceEntityRole_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Diagnosis",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.ClaimResponse.Note",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Measmnt_Principle_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Document",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "Test.DocumentMode"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Timing.Repeat",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "frequency",
                    "type": "System.Integer"
                },
                {
                    "name": "when",
                    "type": "Test.EventTiming"
                },
                {
                    "name": "duration",
                    "type": "System.Decimal"
                },
                {
                    "name": "units",
                    "type": "Test.UnitsOfTime"
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
            "name": "Test.ClaimResponse.Subdetail",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sequenceLinkId",
                    "type": "System.Integer"
                },
                {
                    "name": "adjudication",
                    "type": "list<Test.ClaimResponse.Adjudication2>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "path",
                    "type": "System.String"
                },
                {
                    "name": "representation",
                    "type": "list<Test.PropertyRepresentation>"
                },
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "slicing",
                    "type": "Test.ElementDefinition.Slicing"
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
                    "type": "list<Test.ElementDefinition.Type>"
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
                    "type": "list<Test.id>"
                },
                {
                    "name": "constraint",
                    "type": "list<Test.ElementDefinition.Constraint>"
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
                    "type": "Test.ElementDefinition.Binding"
                },
                {
                    "name": "mapping",
                    "type": "list<Test.ElementDefinition.Mapping>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SupportingDocumentation",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "requestIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "responseIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "response",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "detail",
                    "type": "list<Test.SupportingDocumentation.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Concept",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.code"
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
                    "type": "list<Test.ValueSet.Designation>"
                },
                {
                    "name": "concept",
                    "type": "list<Test.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AllergyIntoleranceCertainty_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.FilterOperator",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.FilterOperator_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.IssueSeverity",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.IssueSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SlotStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SlotStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MaritalStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MaritalStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DataElement.Mapping",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.DocumentMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.OperationParameterUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.RiskAssessment",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "condition",
                    "type": "Test.Reference"
                },
                {
                    "name": "performer",
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "basis",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "prediction",
                    "type": "list<Test.RiskAssessment.Prediction>"
                },
                {
                    "name": "mitigation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DataElement.Binding",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "isExtensible",
                    "type": "System.Boolean"
                },
                {
                    "name": "conformance",
                    "type": "Test.BindingConformance"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "valueSet",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DiagnosticReportStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "use",
                    "type": "Test.Use"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "facility",
                    "type": "Test.Reference"
                },
                {
                    "name": "payee",
                    "type": "Test.OralHealthClaim.Payee"
                },
                {
                    "name": "referral",
                    "type": "Test.Reference"
                },
                {
                    "name": "diagnosis",
                    "type": "list<Test.OralHealthClaim.Diagnosis>"
                },
                {
                    "name": "condition",
                    "type": "list<System.Code>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "coverage",
                    "type": "list<Test.OralHealthClaim.Coverage>"
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
                    "type": "list<Test.OralHealthClaim.Missingteeth>"
                },
                {
                    "name": "orthoPlan",
                    "type": "Test.OralHealthClaim.OrthoPlan"
                },
                {
                    "name": "item",
                    "type": "list<Test.OralHealthClaim.Item>"
                },
                {
                    "name": "additionalMaterials",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Availability",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "Test.Reference"
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
            "name": "Test.NutritionOrderStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationPrescriptionStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MedicationPrescriptionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImmunizationRecommendation.Recommendation",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.ImmunizationRecommendation.DateCriterion>"
                },
                {
                    "name": "protocol",
                    "type": "Test.ImmunizationRecommendation.Protocol"
                },
                {
                    "name": "supportingImmunization",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "supportingPatientInformation",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ProcedureRequestMode_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SecurityEventObjectLifecycle_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.EncounterClass_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConceptMapEquivalence",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ConceptMapEquivalence_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Distance",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
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
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SubscriptionChannelType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DeviceUseRequestStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SampledDataDataType_primitive"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CompositionStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Condition",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-condition",
            "label": "Condition",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "asserter",
                    "type": "Test.Reference"
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
                    "type": "Test.ConditionStatus"
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
                    "type": "Test.Condition.Stage"
                },
                {
                    "name": "evidence",
                    "type": "list<Test.Condition.Evidence>"
                },
                {
                    "name": "location",
                    "type": "list<Test.Condition.Location>"
                },
                {
                    "name": "dueTo",
                    "type": "list<Test.Condition.DueTo>"
                },
                {
                    "name": "occurredFollowing",
                    "type": "list<Test.Condition.OccurredFollowing>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Contract",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "subject",
                    "type": "list<Test.Reference>"
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
                    "type": "Test.Money"
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
                    "type": "Test.Money"
                },
                {
                    "name": "author",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "grantor",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "grantee",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "witness",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "executor",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "notary",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "signer",
                    "type": "list<Test.Contract.Signer>"
                },
                {
                    "name": "term",
                    "type": "list<Test.Contract.Term>"
                },
                {
                    "name": "friendly",
                    "type": "Test.Attachment"
                },
                {
                    "name": "legal",
                    "type": "Test.Attachment"
                },
                {
                    "name": "rule",
                    "type": "Test.Attachment"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ConstraintSeverity_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.RestfulConformanceMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.RestfulConformanceMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SearchParamType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SearchParamType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.IdentifierUse_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ParticipantRequired_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Condition.Stage",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "summary",
                    "type": "System.Concept"
                },
                {
                    "name": "assessment",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SupplyStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SupplyStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.IdentifierUse",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.IdentifierUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Extension",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "url",
                "type": "System.Uri"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.QueryOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Specimen.Source",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "relationship",
                    "type": "Test.HierarchicalRelationshipType"
                },
                {
                    "name": "target",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Questionnaire",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "Test.QuestionnaireStatus"
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
                    "type": "Test.Questionnaire.Group"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Composition.Section",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Composition.Section>"
                },
                {
                    "name": "content",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ImagingStudy.Series",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "number",
                    "type": "System.Integer"
                },
                {
                    "name": "modality",
                    "type": "Test.Modality"
                },
                {
                    "name": "uid",
                    "type": "Test.oid"
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
                    "type": "Test.InstanceAvailability"
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
                    "type": "list<Test.ImagingStudy.Instance>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Practitioner.Qualification",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OperationParameterUse",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.OperationParameterUse_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntoleranceCategory",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceCategory_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Encounter.Participant",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "individual",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationStatement",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationstatement",
            "label": "MedicationStatement",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "device",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<Test.MedicationStatement.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition.Slicing",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "discriminator",
                    "type": "list<Test.id>"
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
                    "type": "Test.SlicingRules"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceComponent",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "lastSystemChange",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "Test.Reference"
                },
                {
                    "name": "parent",
                    "type": "Test.Reference"
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
                    "type": "Test.Measmnt_Principle"
                },
                {
                    "name": "productionSpecification",
                    "type": "list<Test.DeviceComponent.ProductionSpecification>"
                },
                {
                    "name": "languageCode",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystemStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NamingSystemStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlanGoalStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CarePlanGoalStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReference.Service",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.DocumentReference.Parameter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Use",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.Use_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.BindingConformance",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.BindingConformance_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Adjudication",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "amount",
                    "type": "Test.Money"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticOrder.Event",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "Test.DiagnosticOrderStatus"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Contraindication",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "Test.code"
                },
                {
                    "name": "implicated",
                    "type": "list<Test.Reference>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "reference",
                    "type": "System.Uri"
                },
                {
                    "name": "mitigation",
                    "type": "list<Test.Contraindication.Mitigation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Ratio",
            "baseType": "Test.Element",
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
            "name": "Test.QuestionnaireAnswers.Question",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.QuestionnaireAnswers.Answer>"
                },
                {
                    "name": "group",
                    "type": "list<Test.QuestionnaireAnswers.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConstraintSeverity",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ConstraintSeverity_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Reversal.Coverage",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
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
            "name": "Test.Observation.Related",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.ObservationRelationshipType"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SecurityEventAction_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.time",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.time_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEventAction",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventAction_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AllergyIntoleranceCriticality_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Interaction",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.TypeRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.OralDiet",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "nutrients",
                    "type": "list<Test.NutritionOrder.Nutrients>"
                },
                {
                    "name": "texture",
                    "type": "list<Test.NutritionOrder.Texture>"
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
            "name": "Test.OralHealthClaim.Payee",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                },
                {
                    "name": "person",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DataType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Prosthesis",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Bundle",
            "baseType": "Test.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.BundleType"
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
                    "type": "list<Test.Bundle.Link>"
                },
                {
                    "name": "entry",
                    "type": "list<Test.Bundle.Entry>"
                },
                {
                    "name": "signature",
                    "type": "Test.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConceptMap.DependsOn",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.ConformanceEventMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ConformanceEventMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Error",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.LinkType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.LinkType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Contraindication.Mitigation",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.NamingSystemIdentifierType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.NamingSystemIdentifierType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent.Participant",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "reference",
                    "type": "Test.Reference"
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
                    "type": "Test.SecurityEvent.Network"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Include",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.ValueSet.Concept1>"
                },
                {
                    "name": "filter",
                    "type": "list<Test.ValueSet.Filter>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Bundle.Entry",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "base",
                    "type": "System.Uri"
                },
                {
                    "name": "status",
                    "type": "Test.BundleEntryStatus"
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
                    "name": "resource",
                    "type": "Test.ResourceContainer"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.FamilyHistory",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-familyhistory",
            "label": "FamilyHistory",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
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
                    "type": "list<Test.FamilyHistory.Relation>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ListMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ListMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Specimen",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "source",
                    "type": "list<Test.Specimen.Source>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "accessionIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "receivedTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "collection",
                    "type": "Test.Specimen.Collection"
                },
                {
                    "name": "treatment",
                    "type": "list<Test.Specimen.Treatment>"
                },
                {
                    "name": "container",
                    "type": "list<Test.Specimen.Container>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Narrative",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "status",
                "type": "Test.NarrativeStatus"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationKind",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MedicationKind_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.FHIRDefinedType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.FHIRDefinedType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Profile.Snapshot",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<Test.ElementDefinition>"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.HierarchicalRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Subscription.Channel",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.SubscriptionChannelType"
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
            "name": "Test.Age",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
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
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.AlertStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Query.Response",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "outcome",
                    "type": "Test.QueryOutcome"
                },
                {
                    "name": "total",
                    "type": "System.Integer"
                },
                {
                    "name": "parameter",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "first",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "previous",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "next",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "last",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "reference",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ResourceVersionPolicy_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEventObjectType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventObjectType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Concept1",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.code"
                },
                {
                    "name": "display",
                    "type": "System.String"
                },
                {
                    "name": "designation",
                    "type": "list<Test.ValueSet.Designation>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MediaType_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MaritalStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MedicationAdministrationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Item",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.ClaimResponse.Adjudication>"
                },
                {
                    "name": "detail",
                    "type": "list<Test.ClaimResponse.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResourceProfileStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ResourceProfileStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationStatement.Dosage",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "schedule",
                    "type": "Test.Timing"
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
                    "type": "Test.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "Test.Ratio"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ResourceType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.Supplement",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.TypeRestfulInteraction_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ProcedureRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Security",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.Conformance.Certificate>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSetStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ValueSetStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationAdministration",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationadministration",
            "label": "MedicationAdministration",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "status",
                    "type": "Test.MedicationAdministrationStatus"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "practitioner",
                    "type": "Test.Reference"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "prescription",
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "device",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<Test.MedicationAdministration.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.OrthoPlan",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "start",
                    "type": "System.DateTime"
                },
                {
                    "name": "examFee",
                    "type": "Test.Money"
                },
                {
                    "name": "diagnosticFee",
                    "type": "Test.Money"
                },
                {
                    "name": "initialPayment",
                    "type": "Test.Money"
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
                    "type": "Test.Money"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Eligibility",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "provider",
                    "type": "Test.Reference"
                },
                {
                    "name": "organization",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Supply",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "kind",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "status",
                    "type": "Test.SupplyStatus"
                },
                {
                    "name": "orderedItem",
                    "type": "Test.Reference"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "dispense",
                    "type": "list<Test.Supply.Dispense>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceUseRequest",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "bodySite",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "status",
                    "type": "Test.DeviceUseRequestStatus"
                },
                {
                    "name": "mode",
                    "type": "Test.DeviceUseRequestMode"
                },
                {
                    "name": "device",
                    "type": "Test.Reference"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "priority",
                    "type": "Test.DeviceUseRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.SubDetail",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Money"
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
                    "type": "Test.Money"
                },
                {
                    "name": "udi",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OrderResponse",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "who",
                    "type": "Test.Reference"
                },
                {
                    "name": "code",
                    "type": "Test.OrderOutcomeStatus"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "fulfillment",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceUseRequestPriority",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DeviceUseRequestPriority_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SampledData",
            "baseType": "Test.Element",
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
                    "type": "Test.SampledDataDataType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition.Binding",
            "baseType": "Test.Element",
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
                    "type": "Test.BindingConformance"
                },
                {
                    "name": "description",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Encounter.Hospitalization",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "preAdmissionIdentifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "origin",
                    "type": "Test.Reference"
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
                    "type": "list<Test.Encounter.Accomodation>"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "System.Concept"
                },
                {
                    "name": "dischargeDiagnosis",
                    "type": "Test.Reference"
                },
                {
                    "name": "reAdmission",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SlicingRules_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticOrderPriority",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DiagnosticOrderPriority_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEvent",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "Test.SecurityEvent.Event"
                },
                {
                    "name": "participant",
                    "type": "list<Test.SecurityEvent.Participant>"
                },
                {
                    "name": "source",
                    "type": "Test.SecurityEvent.Source"
                },
                {
                    "name": "object",
                    "type": "list<Test.SecurityEvent.Object>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlanActivityStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CarePlanActivityStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Compose",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "import",
                    "type": "list<System.Uri>"
                },
                {
                    "name": "include",
                    "type": "list<Test.ValueSet.Include>"
                },
                {
                    "name": "exclude",
                    "type": "list<Test.ValueSet.Include>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationDispense.Dispense",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "status",
                    "type": "Test.MedicationDispenseStatus"
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
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "receiver",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "dosage",
                    "type": "list<Test.MedicationDispense.Dosage>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.LocationMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.LocationMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.OperationDefinition.Parameter",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "Test.code"
                },
                {
                    "name": "use",
                    "type": "Test.OperationParameterUse"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.QueryOutcome",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.QueryOutcome_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntoleranceCriticality",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceCriticality_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Media",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.MediaType"
                },
                {
                    "name": "subtype",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "operator",
                    "type": "Test.Reference"
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
                    "type": "Test.Attachment"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DocumentReferenceStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.CommunicationRequestStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CommunicationRequestStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.FamilyHistory.Relation",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.FamilyHistory.Condition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResourceDataElementStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ResourceDataElementStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Organization",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "list<Test.Address>"
                },
                {
                    "name": "partOf",
                    "type": "Test.Reference"
                },
                {
                    "name": "contact",
                    "type": "list<Test.Organization.Contact>"
                },
                {
                    "name": "location",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntoleranceType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ImagingModality_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Contract.Signer",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Medication.Ingredient",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "Test.Reference"
                },
                {
                    "name": "amount",
                    "type": "Test.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet.Designation",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "language",
                    "type": "Test.code"
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
            "name": "Test.DocumentRelationshipType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DocumentRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.SubscriptionChannelType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SubscriptionChannelType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.TypeRestfulInteraction",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.TypeRestfulInteraction_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Location.Position",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.ParticipationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Parameters.Parameter",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "resource",
                    "type": "Test.ResourceContainer"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.PropertyRepresentation_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.AppointmentResponse",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "appointment",
                    "type": "Test.Reference"
                },
                {
                    "name": "participantType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "individual",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "participantStatus",
                    "type": "Test.ParticipantStatus"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.uuid",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.uuid_primitive"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReference.Parameter",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.AllergyIntoleranceCategory_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Additem",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Money"
                },
                {
                    "name": "noteNumberLinkId",
                    "type": "list<System.Integer>"
                },
                {
                    "name": "adjudication",
                    "type": "list<Test.ClaimResponse.Adjudication3>"
                },
                {
                    "name": "detail",
                    "type": "list<Test.ClaimResponse.Detail1>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ContactPointUse",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ContactPointUse_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.LocationMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationAdministrationStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MedicationAdministrationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Immunization.Explanation",
            "baseType": "Test.BackboneElement",
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
            "type": "SimpleTypeInfo",
            "name": "Test.ProcedureRequestStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DataElement",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
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
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "status",
                    "type": "Test.ResourceDataElementStatus"
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
                    "type": "Test.code"
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
                    "type": "Test.DataElement.Binding"
                },
                {
                    "name": "mapping",
                    "type": "list<Test.DataElement.Mapping>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.FilterOperator_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.EnteralFormula",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.ExtensionContext_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceComponent.ProductionSpecification",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "specType",
                    "type": "System.Concept"
                },
                {
                    "name": "componentId",
                    "type": "Test.Identifier"
                },
                {
                    "name": "productionSpec",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticReportStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DiagnosticReportStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CommunicationRequestStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.SearchParam",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.SearchParamType"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                },
                {
                    "name": "target",
                    "type": "list<Test.code>"
                },
                {
                    "name": "chain",
                    "type": "list<System.String>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Profile",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.Uri"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "list<Test.ContactPoint>"
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
                    "type": "Test.ResourceProfileStatus"
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
                    "type": "Test.id"
                },
                {
                    "name": "mapping",
                    "type": "list<Test.Profile.Mapping>"
                },
                {
                    "name": "type",
                    "type": "Test.code"
                },
                {
                    "name": "base",
                    "type": "System.Uri"
                },
                {
                    "name": "snapshot",
                    "type": "Test.Profile.Snapshot"
                },
                {
                    "name": "differential",
                    "type": "Test.Profile.Snapshot"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationPrescription.DosageInstruction",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "Test.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Item",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
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
                    "type": "Test.Money"
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
                    "type": "Test.Money"
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
                    "type": "list<Test.OralHealthClaim.Detail>"
                },
                {
                    "name": "prosthesis",
                    "type": "Test.OralHealthClaim.Prosthesis"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Group.Characteristic",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.OrderOutcomeStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.OrderOutcomeStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.HierarchicalRelationshipType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.HierarchicalRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.BundleEntryStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.BundleEntryStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ParticipantStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ParticipantStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProcedureRequest",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-procedurerequest",
            "label": "ProcedureRequest",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "performer",
                    "type": "Test.Reference"
                },
                {
                    "name": "status",
                    "type": "Test.ProcedureRequestStatus"
                },
                {
                    "name": "mode",
                    "type": "Test.ProcedureRequestMode"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "priority",
                    "type": "Test.ProcedureRequestPriority"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.InstanceAvailability_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.MessageEvent_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.NamingSystemType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.EncounterClass",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.EncounterClass_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.Nutrients",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "modifier",
                "type": "System.Concept"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.DataType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DataType_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.CarePlanActivityStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Event",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Code"
                },
                {
                    "name": "category",
                    "type": "Test.MessageSignificanceCategory"
                },
                {
                    "name": "mode",
                    "type": "Test.ConformanceEventMode"
                },
                {
                    "name": "protocol",
                    "type": "list<System.Code>"
                },
                {
                    "name": "focus",
                    "type": "Test.code"
                },
                {
                    "name": "request",
                    "type": "Test.Reference"
                },
                {
                    "name": "response",
                    "type": "Test.Reference"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Coverage",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Bundle.Link",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.LocationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Implementation",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.List.Entry",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Range",
            "baseType": "Test.Element",
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
            "name": "Test.EncounterState",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.EncounterState_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProcedureRelationshipType",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ProcedureRelationshipType_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.QuestionnaireAnswers.Answer",
            "baseType": "Test.BackboneElement",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Certificate",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "Test.code"
                },
                {
                    "name": "blob",
                    "type": "Test.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.LocationStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.LocationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.HealthcareService.AvailableTime",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Medication.Content",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "Test.Reference"
                },
                {
                    "name": "amount",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ObservationStatus_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Address",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "use",
                    "type": "Test.AddressUse"
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
            "name": "Test.SecurityEventOutcome_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceUseStatement",
            "baseType": "Test.DomainResource",
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
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Count",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
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
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Query",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.Uri"
                },
                {
                    "name": "parameter",
                    "type": "list<Test.Extension>"
                },
                {
                    "name": "response",
                    "type": "Test.Query.Response"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MessageSignificanceCategory",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.MessageSignificanceCategory_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.QuantityComparator_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Operation",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "definition",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Binary",
            "baseType": "Test.Resource",
            "retrievable": false,
            "element": [
                {
                    "name": "contentType",
                    "type": "Test.code"
                },
                {
                    "name": "content",
                    "type": "Test.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlan",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-careplan",
            "label": "CarePlan",
            "primaryCodePath": "concern.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "status",
                    "type": "Test.CarePlanStatus"
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
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "participant",
                    "type": "list<Test.CarePlan.Participant>"
                },
                {
                    "name": "goal",
                    "type": "list<Test.CarePlan.Goal>"
                },
                {
                    "name": "activity",
                    "type": "list<Test.CarePlan.Activity>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReference.RelatesTo",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.DocumentRelationshipType"
                },
                {
                    "name": "target",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SubscriptionStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.Modality_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.SystemRestfulInteraction",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SystemRestfulInteraction_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AnswerFormat",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AnswerFormat_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ValueSet",
            "baseType": "Test.DomainResource",
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
                    "type": "list<Test.ContactPoint>"
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
                    "type": "Test.ValueSetStatus"
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
                    "type": "Test.ValueSet.Define"
                },
                {
                    "name": "compose",
                    "type": "Test.ValueSet.Compose"
                },
                {
                    "name": "expansion",
                    "type": "Test.ValueSet.Expansion"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance.Interaction1",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.SystemRestfulInteraction"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition.Type",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Test.code"
                },
                {
                    "name": "profile",
                    "type": "System.Uri"
                },
                {
                    "name": "aggregation",
                    "type": "list<Test.AggregationMode>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Conformance",
            "baseType": "Test.DomainResource",
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
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "Test.ConformanceStatementStatus"
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
                    "type": "Test.Conformance.Software"
                },
                {
                    "name": "implementation",
                    "type": "Test.Conformance.Implementation"
                },
                {
                    "name": "fhirVersion",
                    "type": "Test.id"
                },
                {
                    "name": "acceptUnknown",
                    "type": "System.Boolean"
                },
                {
                    "name": "format",
                    "type": "list<Test.code>"
                },
                {
                    "name": "profile",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "rest",
                    "type": "list<Test.Conformance.Rest>"
                },
                {
                    "name": "messaging",
                    "type": "list<Test.Conformance.Messaging>"
                },
                {
                    "name": "document",
                    "type": "list<Test.Conformance.Document>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConceptMap",
            "baseType": "Test.DomainResource",
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
                    "type": "list<Test.ContactPoint>"
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
                    "type": "Test.ValueSetStatus"
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
                    "type": "list<Test.ConceptMap.Element>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DataAbsentReason_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.FHIRDefinedType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-nutritionorder",
            "label": "NutritionOrder",
            "primaryCodePath": "item[].oralDiet.type|item[].supplement.type|item[].enteralFormula.baseFormulaType|item[].enteralFormula.additiveType",
            "element": [
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "orderer",
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "allergyIntolerance",
                    "type": "list<Test.Reference>"
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
                    "type": "list<Test.NutritionOrder.Item>"
                },
                {
                    "name": "status",
                    "type": "Test.NutritionOrderStatus"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SpecialValues_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Money",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
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
                    "type": "Test.code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationAdministration.Dosage",
            "baseType": "Test.BackboneElement",
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
                    "type": "Test.Ratio"
                },
                {
                    "name": "maxDosePerPeriod",
                    "type": "Test.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Patient",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-patient",
            "label": "Patient",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "name",
                    "type": "list<Test.HumanName>"
                },
                {
                    "name": "telecom",
                    "type": "list<Test.ContactPoint>"
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
                    "type": "list<Test.Address>"
                },
                {
                    "name": "maritalStatus",
                    "type": "System.Concept"
                },
                {
                    "name": "photo",
                    "type": "list<Test.Attachment>"
                },
                {
                    "name": "contact",
                    "type": "list<Test.Patient.Contact>"
                },
                {
                    "name": "animal",
                    "type": "Test.Patient.Animal"
                },
                {
                    "name": "communication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "careProvider",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "managingOrganization",
                    "type": "Test.Reference"
                },
                {
                    "name": "link",
                    "type": "list<Test.Patient.Link>"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ClaimResponse.Detail1",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "service",
                    "type": "System.Code"
                },
                {
                    "name": "fee",
                    "type": "Test.Money"
                },
                {
                    "name": "adjudication",
                    "type": "list<Test.ClaimResponse.Adjudication4>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationPrescription",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-medicationprescription",
            "label": "MedicationPrescription",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
                },
                {
                    "name": "dateWritten",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "Test.MedicationPrescriptionStatus"
                },
                {
                    "name": "patient",
                    "type": "Test.Reference"
                },
                {
                    "name": "prescriber",
                    "type": "Test.Reference"
                },
                {
                    "name": "encounter",
                    "type": "Test.Reference"
                },
                {
                    "name": "medication",
                    "type": "Test.Reference"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<Test.MedicationPrescription.DosageInstruction>"
                },
                {
                    "name": "dispense",
                    "type": "Test.MedicationPrescription.Dispense"
                },
                {
                    "name": "substitution",
                    "type": "Test.MedicationPrescription.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ElementDefinition.Mapping",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "Test.id"
                },
                {
                    "name": "map",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Specimen.Container",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
            "name": "Test.ValueSet.Define",
            "baseType": "Test.BackboneElement",
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
                    "type": "list<Test.ValueSet.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ObservationStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ObservationStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.AllergyIntoleranceCertainty",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.AllergyIntoleranceCertainty_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MessageHeader",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.id"
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
                    "type": "Test.MessageHeader.Response"
                },
                {
                    "name": "source",
                    "type": "Test.MessageHeader.Source"
                },
                {
                    "name": "destination",
                    "type": "list<Test.MessageHeader.Destination>"
                },
                {
                    "name": "enterer",
                    "type": "Test.Reference"
                },
                {
                    "name": "author",
                    "type": "Test.Reference"
                },
                {
                    "name": "receiver",
                    "type": "Test.Reference"
                },
                {
                    "name": "responsible",
                    "type": "Test.Reference"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "data",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OperationOutcome",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": {
                "name": "issue",
                "type": "list<Test.OperationOutcome.Issue>"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.NameUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.ConditionStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ConditionStatus_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.MedicationPrescription.Dispense",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "medication",
                    "type": "Test.Reference"
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
                    "type": "Test.Duration"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ResourceVersionPolicy",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ResourceVersionPolicy_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.ReferralStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ReferralStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ConceptMapEquivalence_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "Test.id_primitive"
                },
                {
                    "name": "extension",
                    "type": "list<Test.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ParticipantRequired",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ParticipantRequired_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.NutritionOrder.Item",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "isInEffect",
                    "type": "System.Boolean"
                },
                {
                    "name": "oralDiet",
                    "type": "Test.NutritionOrder.OralDiet"
                },
                {
                    "name": "supplement",
                    "type": "Test.NutritionOrder.Supplement"
                },
                {
                    "name": "enteralFormula",
                    "type": "Test.NutritionOrder.EnteralFormula"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.id",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.id_primitive"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.time_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DocumentReference.Context",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.MedicationDispenseStatus_list"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ContactPointUse_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticOrder.Item",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "specimen",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "bodySite",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "Test.DiagnosticOrderStatus"
                },
                {
                    "name": "event",
                    "type": "list<Test.DiagnosticOrder.Event>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.EncounterState_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DeviceUseRequestMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.DeviceUseRequestMode_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.HealthcareService.NotAvailableTime",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.Supply.Dispense",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "status",
                    "type": "Test.SupplyDispenseStatus"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "supplier",
                    "type": "Test.Reference"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "receiver",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.Coverage",
            "baseType": "Test.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "issuer",
                    "type": "Test.Reference"
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
                    "type": "Test.Identifier"
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
                    "type": "Test.Reference"
                },
                {
                    "name": "network",
                    "type": "Test.Identifier"
                },
                {
                    "name": "contract",
                    "type": "list<Test.Reference>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.MessageHeader.Response",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "Test.id"
                },
                {
                    "name": "code",
                    "type": "Test.ResponseType"
                },
                {
                    "name": "details",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.OralHealthClaim.Missingteeth",
            "baseType": "Test.BackboneElement",
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
            "name": "Test.SecurityEventObjectRole",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventObjectRole_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.uuid_primitive"
        },
        {
            "type": "ClassInfo",
            "name": "Test.DiagnosticReport",
            "baseType": "Test.DomainResource",
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
                    "type": "Test.DiagnosticReportStatus"
                },
                {
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "Test.Reference"
                },
                {
                    "name": "performer",
                    "type": "Test.Reference"
                },
                {
                    "name": "identifier",
                    "type": "Test.Identifier"
                },
                {
                    "name": "requestDetail",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "specimen",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "result",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "imagingStudy",
                    "type": "list<Test.Reference>"
                },
                {
                    "name": "image",
                    "type": "list<Test.DiagnosticReport.Image>"
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
                    "type": "list<Test.Attachment>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.SubscriptionStatus",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SubscriptionStatus_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DeviceUseRequestMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.SecurityEventObjectLifecycle",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.SecurityEventObjectLifecycle_list"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Test.Encounter.Accomodation",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "bed",
                    "type": "Test.Reference"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.ListMode_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.CarePlan.Participant",
            "baseType": "Test.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "System.Concept"
                },
                {
                    "name": "member",
                    "type": "Test.Reference"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.CommunicationRequestMode",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.CommunicationRequestMode_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.DocumentRelationshipType_list"
        },
        {
            "type": "ClassInfo",
            "name": "Test.Location",
            "baseType": "Test.DomainResource",
            "retrievable": true,
            "identifier": "cqf-location",
            "label": "Location",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<Test.Identifier>"
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
                    "type": "list<Test.ContactPoint>"
                },
                {
                    "name": "address",
                    "type": "Test.Address"
                },
                {
                    "name": "physicalType",
                    "type": "System.Concept"
                },
                {
                    "name": "position",
                    "type": "Test.Location.Position"
                },
                {
                    "name": "managingOrganization",
                    "type": "Test.Reference"
                },
                {
                    "name": "status",
                    "type": "Test.LocationStatus"
                },
                {
                    "name": "partOf",
                    "type": "Test.Reference"
                },
                {
                    "name": "mode",
                    "type": "Test.LocationMode"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Test.ProvenanceEntityRole",
            "baseType": "Test.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "Test.ProvenanceEntityRole_list"
            }
        },
        {
            "type": "SimpleTypeInfo",
            "name": "Test.SecurityEventObjectType_list"
        }
    ]
});