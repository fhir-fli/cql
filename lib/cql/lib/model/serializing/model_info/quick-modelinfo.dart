import '../../../cql.dart';

final quickmodelinfo = ModelInfo.fromJson({
    "name": "QUICK",
    "url": "http://hl7.org/fhir",
    "schemaLocation": "http://org.hl7.fhir quick.xsd",
    "targetQualifier": "quick",
    "patientClassName": "QUICK.Patient",
    "patientClassIdentifier": "patient-qicore-qicore-patient",
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
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AggregationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrderStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntolerance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "allergyintolerance-qicore-qicore-allergyintolerance",
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
                    "type": "System.Any"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "reporter",
                    "type": "System.Any"
                },
                {
                    "name": "substance",
                    "type": "System.Concept"
                },
                {
                    "name": "status",
                    "type": "System.String"
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
            "type": "ClassInfo",
            "name": "QUICK.Timing",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "list<System.DateTime>"
                },
                {
                    "name": "repeat",
                    "type": "QUICK.Timing.Repeat"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
            "type": "ClassInfo",
            "name": "QUICK.EpisodeOfCare",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "status",
                    "type": "QUICK.EpisodeOfCareStatus"
                },
                {
                    "name": "statusHistory",
                    "type": "list<QUICK.EpisodeOfCare.StatusHistory>"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "managingOrganization",
                    "type": "System.Any"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "condition",
                    "type": "list<System.Any>"
                },
                {
                    "name": "referralRequest",
                    "type": "list<System.Any>"
                },
                {
                    "name": "careManager",
                    "type": "System.Any"
                },
                {
                    "name": "careTeam",
                    "type": "list<QUICK.EpisodeOfCare.CareTeam>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetricCalibrationType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "medication-qicore-qicore-medication",
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
                    "type": "System.Any"
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
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HealthcareService.NotAvailable",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "during",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRequest.BodySite",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "siteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "siteReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyMemberHistory.Condition",
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
                    "name": "onsetAge",
                    "type": "QUICK.Age"
                },
                {
                    "name": "onsetRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "onsetString",
                    "type": "System.String"
                },
                {
                    "name": "note",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EnrollmentResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "System.Any"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Batch",
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
            "name": "QUICK.IdentityAssuranceLevel",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "title",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "source",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.ListStatus"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "orderedBy",
                    "type": "System.Concept"
                },
                {
                    "name": "mode",
                    "type": "QUICK.ListMode"
                },
                {
                    "name": "note",
                    "type": "System.String"
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
                    "name": "probabilityDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "probabilityRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "probabilityCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "relativeRisk",
                    "type": "System.Decimal"
                },
                {
                    "name": "whenPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "whenRange",
                    "type": "interval<System.Quantity>"
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
                "type": "xs.base64Binary"
            }
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
                    "type": "System.Any"
                },
                {
                    "name": "series",
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
                "type": "System.String"
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
            "name": "QUICK.DataElementSpecificity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EventTiming",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Filter",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "property",
                    "type": "System.String"
                },
                {
                    "name": "op",
                    "type": "QUICK.FilterOperator"
                },
                {
                    "name": "value",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.Actor",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "System.Any"
                },
                {
                    "name": "role",
                    "type": "list<System.Concept>"
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
                    "type": "System.Any"
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
                "type": "System.String"
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
                    "type": "System.Any"
                },
                {
                    "name": "comment",
                    "type": "list<System.String>"
                },
                {
                    "name": "collectedDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "collectedPeriod",
                    "type": "interval<System.DateTime>"
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
                    "name": "bodySiteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "role",
                    "type": "System.Concept"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetricCategory",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetricColor",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConformanceUseContext",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "retrievable": true,
            "identifier": "relatedperson-qicore-qicore-relatedperson",
            "primaryCodePath": "relationship",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
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
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "encounter-qicore-qicore-encounter",
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
                    "name": "statusHistory",
                    "type": "list<QUICK.Encounter.StatusHistory>"
                },
                {
                    "name": "class",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "episodeOfCare",
                    "type": "System.Any"
                },
                {
                    "name": "incomingReferralRequest",
                    "type": "list<System.Any>"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.Encounter.Participant>"
                },
                {
                    "name": "fulfills",
                    "type": "System.Any"
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
                    "type": "list<System.Concept>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
                },
                {
                    "name": "partOf",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Network",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "type",
                    "type": "QUICK.AuditEventParticipantNetworkType"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense.DosageInstruction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "additionalInstructions",
                    "type": "System.Concept"
                },
                {
                    "name": "scheduleDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "schedulePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "scheduleTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
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
                    "name": "doseRange",
                    "type": "interval<System.Quantity>"
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
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
                },
                {
                    "name": "country",
                    "type": "System.String"
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
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.NamingSystem.Contact>"
                },
                {
                    "name": "replacedBy",
                    "type": "System.Any"
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
                    "type": "System.Any"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
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
                    "name": "actionResulting",
                    "type": "list<System.Any>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "reference",
                    "type": "System.Any"
                },
                {
                    "name": "detail",
                    "type": "QUICK.CarePlan.Detail"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuantityComparator",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationReliability",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.Actor1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entity",
                    "type": "System.Any"
                },
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Messaging",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "endpoint",
                    "type": "System.String"
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
            "name": "QUICK.MedicationStatementStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "interval<System.Quantity>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SlicingRules",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReference.Related",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "ref",
                    "type": "System.Any"
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
                "type": "System.String"
            }
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
                    "type": "System.String"
                },
                {
                    "name": "sopclass",
                    "type": "System.String"
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
                    "name": "content",
                    "type": "list<QUICK.Attachment>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NamingSystemType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Nutrient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "modifier",
                    "type": "System.Concept"
                },
                {
                    "name": "amount",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.OccurredFollowing",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Parameters.Part",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "valueInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueUri",
                    "type": "System.String"
                },
                {
                    "name": "valueDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueCode",
                    "type": "System.String"
                },
                {
                    "name": "valueOid",
                    "type": "System.String"
                },
                {
                    "name": "valueUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "valueId",
                    "type": "System.String"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueCoding",
                    "type": "System.Code"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "valuePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "valueRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "valueReference",
                    "type": "System.Any"
                },
                {
                    "name": "valueSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "valueSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "valueHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "valueAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "valueContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "valueTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "resource",
                    "type": "QUICK.ResourceContainer"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FlagStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.GoalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Practitioner",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "practitioner-qicore-qicore-practitioner",
            "primaryCodePath": "practitionerRole.role",
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
                    "name": "practitionerRole",
                    "type": "list<QUICK.Practitioner.PractitionerRole>"
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
            "type": "ClassInfo",
            "name": "QUICK.Resource",
            "baseType": "System.Any",
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
                },
                {
                    "name": "batch",
                    "type": "list<QUICK.Medication.Batch>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Communication.Payload",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentString",
                    "type": "System.String"
                },
                {
                    "name": "contentAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OrderStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
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
                    "type": "list<System.Any>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ContactPointSystem",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.ValuedItem1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entityCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "entityReference",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "effectiveTime",
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ParticipationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.Any"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
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
                    "name": "addItem",
                    "type": "list<QUICK.ClaimResponse.AddItem>"
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
                },
                {
                    "name": "coverage",
                    "type": "list<QUICK.ClaimResponse.Coverage>"
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
                    "type": "System.String"
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
                    "type": "System.String"
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
            "name": "QUICK.ClinicalImpressionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.StructureDefinition.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventOutcome",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CompositionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "contact",
                    "type": "list<QUICK.SearchParameter.Contact>"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "name": "base",
                    "type": "System.String"
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
                    "type": "list<System.String>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.Coverage",
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
                    "type": "System.Any"
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
                    "name": "preAuthRef",
                    "type": "list<System.String>"
                },
                {
                    "name": "claimResponse",
                    "type": "System.Any"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RemittanceOutcome",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Diagnosis",
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
                    "name": "siteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "siteReference",
                    "type": "System.Any"
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
                    "type": "System.String"
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
            "name": "QUICK.EligibilityRequest",
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.Any"
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
                    "name": "format",
                    "type": "list<System.String>"
                },
                {
                    "name": "author",
                    "type": "list<System.Any>"
                },
                {
                    "name": "custodian",
                    "type": "System.Any"
                },
                {
                    "name": "authenticator",
                    "type": "System.Any"
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
                    "name": "content",
                    "type": "list<QUICK.Attachment>"
                },
                {
                    "name": "context",
                    "type": "QUICK.DocumentReference.Context"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EncounterLocationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "name": "QUICK.StructureDefinition.Mapping",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "System.String"
                },
                {
                    "name": "uri",
                    "type": "System.String"
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
            "name": "QUICK.ResourceType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EnrollmentRequest",
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "coverage",
                    "type": "System.Any"
                },
                {
                    "name": "relationship",
                    "type": "System.Code"
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
                    "type": "System.Any"
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
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationDispense",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "medicationdispense-qicore-qicore-medicationdispense",
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
                    "type": "System.Any"
                },
                {
                    "name": "dispenser",
                    "type": "System.Any"
                },
                {
                    "name": "authorizingPrescription",
                    "type": "list<System.Any>"
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
                    "name": "daysSupply",
                    "type": "System.Quantity"
                },
                {
                    "name": "medication",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "receiver",
                    "type": "list<System.Any>"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "dosageInstruction",
                    "type": "list<QUICK.MedicationDispense.DosageInstruction>"
                },
                {
                    "name": "substitution",
                    "type": "QUICK.MedicationDispense.Substitution"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ReferralRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "referralrequest-qicore-qicore-referralrequest",
            "primaryCodePath": "type",
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
                    "type": "System.Any"
                },
                {
                    "name": "requester",
                    "type": "System.Any"
                },
                {
                    "name": "recipient",
                    "type": "list<System.Any>"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "fulfillmentTime",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClinicalBaseGender",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure.BodySite",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "siteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "siteReference",
                    "type": "System.Any"
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
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "applies",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "subType",
                    "type": "System.Concept"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "action",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actionReason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "list<QUICK.Contract.Actor1>"
                },
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "valuedItem",
                    "type": "list<QUICK.Contract.ValuedItem1>"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.Contract.Term>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.StructureDefinition",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.String"
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
                    "name": "useContext",
                    "type": "list<System.Concept>"
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
                    "name": "contact",
                    "type": "list<QUICK.StructureDefinition.Contact>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "name": "fhirVersion",
                    "type": "System.String"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.StructureDefinition.Mapping>"
                },
                {
                    "name": "type",
                    "type": "QUICK.StructureDefinitionType"
                },
                {
                    "name": "abstract",
                    "type": "System.Boolean"
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
                    "name": "base",
                    "type": "System.String"
                },
                {
                    "name": "snapshot",
                    "type": "QUICK.StructureDefinition.Snapshot"
                },
                {
                    "name": "differential",
                    "type": "QUICK.StructureDefinition.Differential"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.VisionPrescription",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
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
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "prescriber",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "System.Any"
                },
                {
                    "name": "dispense",
                    "type": "list<QUICK.VisionPrescription.Dispense>"
                }
            ]
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
                    "type": "System.Any"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResponseType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.ValuedItem",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "entityCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "entityReference",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "effectiveTime",
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Practitioner.PractitionerRole",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "managingOrganization",
                    "type": "System.Any"
                },
                {
                    "name": "role",
                    "type": "System.Concept"
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "healthcareService",
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap.Map",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "codeSystem",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
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
                    "type": "list<System.String>"
                },
                {
                    "name": "compartment",
                    "type": "list<System.String>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Resource",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "System.Any"
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
                    "name": "conditionalCreate",
                    "type": "System.Boolean"
                },
                {
                    "name": "conditionalUpdate",
                    "type": "System.Boolean"
                },
                {
                    "name": "conditionalDelete",
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
            "name": "QUICK.VisionBase",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SearchParameter.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BundleType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ListStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ResourceContainer",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
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
                    "name": "AuditEvent",
                    "type": "QUICK.AuditEvent"
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
                    "name": "BodySite",
                    "type": "QUICK.BodySite"
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
                    "name": "Claim",
                    "type": "QUICK.Claim"
                },
                {
                    "name": "ClaimResponse",
                    "type": "QUICK.ClaimResponse"
                },
                {
                    "name": "ClinicalImpression",
                    "type": "QUICK.ClinicalImpression"
                },
                {
                    "name": "Communication",
                    "type": "QUICK.Communication"
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
                    "name": "DeviceMetric",
                    "type": "QUICK.DeviceMetric"
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
                    "name": "EligibilityRequest",
                    "type": "QUICK.EligibilityRequest"
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
                    "name": "EnrollmentRequest",
                    "type": "QUICK.EnrollmentRequest"
                },
                {
                    "name": "EnrollmentResponse",
                    "type": "QUICK.EnrollmentResponse"
                },
                {
                    "name": "EpisodeOfCare",
                    "type": "QUICK.EpisodeOfCare"
                },
                {
                    "name": "ExplanationOfBenefit",
                    "type": "QUICK.ExplanationOfBenefit"
                },
                {
                    "name": "FamilyMemberHistory",
                    "type": "QUICK.FamilyMemberHistory"
                },
                {
                    "name": "Flag",
                    "type": "QUICK.Flag"
                },
                {
                    "name": "Goal",
                    "type": "QUICK.Goal"
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
                    "name": "ImagingObjectSelection",
                    "type": "QUICK.ImagingObjectSelection"
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
                    "name": "Patient",
                    "type": "QUICK.Patient"
                },
                {
                    "name": "PaymentNotice",
                    "type": "QUICK.PaymentNotice"
                },
                {
                    "name": "PaymentReconciliation",
                    "type": "QUICK.PaymentReconciliation"
                },
                {
                    "name": "Person",
                    "type": "QUICK.Person"
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
                    "name": "ProcessRequest",
                    "type": "QUICK.ProcessRequest"
                },
                {
                    "name": "ProcessResponse",
                    "type": "QUICK.ProcessResponse"
                },
                {
                    "name": "Provenance",
                    "type": "QUICK.Provenance"
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
                    "name": "RiskAssessment",
                    "type": "QUICK.RiskAssessment"
                },
                {
                    "name": "Schedule",
                    "type": "QUICK.Schedule"
                },
                {
                    "name": "SearchParameter",
                    "type": "QUICK.SearchParameter"
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
                    "name": "StructureDefinition",
                    "type": "QUICK.StructureDefinition"
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
                    "name": "ValueSet",
                    "type": "QUICK.ValueSet"
                },
                {
                    "name": "VisionPrescription",
                    "type": "QUICK.VisionPrescription"
                },
                {
                    "name": "Parameters",
                    "type": "QUICK.Parameters"
                }
            ]
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
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Person.Link",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "assurance",
                    "type": "QUICK.IdentityAssuranceLevel"
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
            "name": "QUICK.CommunicationRequest.Payload",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentString",
                    "type": "System.String"
                },
                {
                    "name": "contentAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Immunization",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "immunization-qicore-qicore-immunization",
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
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "wasNotGiven",
                    "type": "System.Boolean"
                },
                {
                    "name": "reported",
                    "type": "System.Boolean"
                },
                {
                    "name": "performer",
                    "type": "System.Any"
                },
                {
                    "name": "requester",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "manufacturer",
                    "type": "System.Any"
                },
                {
                    "name": "location",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BindingStrength",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
                },
                {
                    "name": "recipient",
                    "type": "list<System.Any>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "author",
                    "type": "list<System.Any>"
                },
                {
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.DocumentReferenceStatus"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "content",
                    "type": "list<QUICK.DocumentManifest.Content>"
                },
                {
                    "name": "related",
                    "type": "list<QUICK.DocumentManifest.Related>"
                }
            ]
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
                    "name": "referenceUri",
                    "type": "System.String"
                },
                {
                    "name": "referenceReference",
                    "type": "System.Any"
                },
                {
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CommunicationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SearchEntryMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "status",
                    "type": "QUICK.AppointmentStatus"
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
                    "name": "priority",
                    "type": "System.Integer"
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                },
                {
                    "name": "order",
                    "type": "System.Any"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.Appointment.Participant>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Substance",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "substance-qicore-qicore-substance",
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
            "type": "ClassInfo",
            "name": "QUICK.PaymentReconciliation",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "System.Any"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.PaymentReconciliation.Detail>"
                },
                {
                    "name": "form",
                    "type": "System.Code"
                },
                {
                    "name": "total",
                    "type": "QUICK.Money"
                },
                {
                    "name": "note",
                    "type": "list<QUICK.PaymentReconciliation.Note>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataAbsentReason",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.Any"
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
            "name": "QUICK.CommunicationRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "communicationrequest-qicore-qicore-communicationrequest",
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
                    "type": "System.Any"
                },
                {
                    "name": "recipient",
                    "type": "list<System.Any>"
                },
                {
                    "name": "payload",
                    "type": "list<QUICK.CommunicationRequest.Payload>"
                },
                {
                    "name": "medium",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "requester",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "System.Code"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "scheduledTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "reason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "orderedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
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
                    "name": "providedBy",
                    "type": "System.Any"
                },
                {
                    "name": "location",
                    "type": "System.Any"
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
                    "name": "photo",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "coverageArea",
                    "type": "list<System.Any>"
                },
                {
                    "name": "serviceProvisionCode",
                    "type": "list<System.Concept>"
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
                    "name": "programName",
                    "type": "list<System.String>"
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
                    "name": "publicKey",
                    "type": "System.String"
                },
                {
                    "name": "appointmentRequired",
                    "type": "System.Boolean"
                },
                {
                    "name": "availableTime",
                    "type": "list<QUICK.HealthcareService.AvailableTime>"
                },
                {
                    "name": "notAvailable",
                    "type": "list<QUICK.HealthcareService.NotAvailable>"
                },
                {
                    "name": "availabilityExceptions",
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
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
            "type": "ClassInfo",
            "name": "QUICK.Communication",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "communication-qicore-qicore-communication",
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
                    "type": "System.Any"
                },
                {
                    "name": "recipient",
                    "type": "list<System.Any>"
                },
                {
                    "name": "payload",
                    "type": "list<QUICK.Communication.Payload>"
                },
                {
                    "name": "medium",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "status",
                    "type": "QUICK.CommunicationStatus"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
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
                    "name": "reason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.TransactionResponse",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "location",
                    "type": "System.String"
                },
                {
                    "name": "etag",
                    "type": "System.String"
                },
                {
                    "name": "lastModified",
                    "type": "System.DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceSeverity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.Any"
                },
                {
                    "name": "author",
                    "type": "System.Any"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.UnitsOfTime",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "code",
                    "type": "System.Concept"
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
            "name": "QUICK.OperationDefinition.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "name": "url",
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
                    "name": "contact",
                    "type": "list<QUICK.OperationDefinition.Contact>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "name": "idempotent",
                    "type": "System.Boolean"
                },
                {
                    "name": "code",
                    "type": "System.String"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "base",
                    "type": "System.Any"
                },
                {
                    "name": "system",
                    "type": "System.Boolean"
                },
                {
                    "name": "type",
                    "type": "list<System.String>"
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
                    "type": "System.Any"
                },
                {
                    "name": "group",
                    "type": "list<QUICK.Questionnaire.Group>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingObjectSelection.Instance",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "sopClass",
                    "type": "System.String"
                },
                {
                    "name": "uid",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "frames",
                    "type": "list<QUICK.ImagingObjectSelection.Frames>"
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
                    "type": "System.String"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "author",
                    "type": "list<System.Any>"
                },
                {
                    "name": "attester",
                    "type": "list<QUICK.Composition.Attester>"
                },
                {
                    "name": "custodian",
                    "type": "System.Any"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.Composition.Event>"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "section",
                    "type": "list<QUICK.Composition.Section>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.OperationDefinition.Part",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Provenance",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "target",
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
                },
                {
                    "name": "policy",
                    "type": "list<System.String>"
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
                    "name": "signature",
                    "type": "list<QUICK.Signature>"
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
                    "type": "QUICK.base64Binary"
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
                    "type": "QUICK.base64Binary"
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
            "name": "QUICK.ImagingObjectSelection",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "System.String"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "title",
                    "type": "System.Concept"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "author",
                    "type": "System.Any"
                },
                {
                    "name": "authoringTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "study",
                    "type": "list<QUICK.ImagingObjectSelection.Study>"
                }
            ]
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
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.QuestionnaireAnswersStatus"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "author",
                    "type": "System.Any"
                },
                {
                    "name": "authored",
                    "type": "System.DateTime"
                },
                {
                    "name": "source",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "endpoint",
                    "type": "System.String"
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
                    "type": "System.Any"
                },
                {
                    "name": "source",
                    "type": "System.Any"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "System.Any"
                },
                {
                    "name": "authority",
                    "type": "System.Any"
                },
                {
                    "name": "when",
                    "type": "QUICK.Order.When"
                },
                {
                    "name": "detail",
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.EncounterLocationStatus"
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
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "assigner",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NameUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "subDetail",
                    "type": "list<QUICK.ClaimResponse.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingModality",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "schedule",
                    "type": "System.Any"
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
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PropertyRepresentation",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventObjectType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Device",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "identifier": "device-qicore-qicore-device",
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
                    "name": "status",
                    "type": "QUICK.DeviceStatus"
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
                    "name": "manufactureDate",
                    "type": "System.DateTime"
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
                    "type": "System.Any"
                },
                {
                    "name": "location",
                    "type": "System.Any"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.ContactPoint>"
                },
                {
                    "name": "url",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PaymentReconciliation.Detail",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "request",
                    "type": "System.Any"
                },
                {
                    "name": "responce",
                    "type": "System.Any"
                },
                {
                    "name": "submitter",
                    "type": "System.Any"
                },
                {
                    "name": "payee",
                    "type": "System.Any"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "amount",
                    "type": "QUICK.Money"
                }
            ]
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
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient.Communication",
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
            "name": "QUICK.Procedure",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "procedure-qicore-qicore-procedure",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.ProcedureStatus"
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
                    "name": "bodySite",
                    "type": "list<QUICK.Procedure.BodySite>"
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
                    "name": "performedDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "performedPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "location",
                    "type": "System.Any"
                },
                {
                    "name": "outcome",
                    "type": "System.Concept"
                },
                {
                    "name": "report",
                    "type": "list<System.Any>"
                },
                {
                    "name": "complication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "followUp",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "relatedItem",
                    "type": "list<QUICK.Procedure.RelatedItem>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "device",
                    "type": "list<QUICK.Procedure.Device>"
                },
                {
                    "name": "used",
                    "type": "list<System.Any>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingStudy",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "imagingstudy-qicore-qicore-imagingstudy",
            "primaryCodePath": "procedure",
            "element": [
                {
                    "name": "started",
                    "type": "System.DateTime"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "uid",
                    "type": "System.String"
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "modalityList",
                    "type": "list<QUICK.ImagingModality>"
                },
                {
                    "name": "referrer",
                    "type": "System.Any"
                },
                {
                    "name": "availability",
                    "type": "QUICK.InstanceAvailability"
                },
                {
                    "name": "url",
                    "type": "System.String"
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Observation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "observation-qicore-qicore-observation",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "valueRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "valueSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "valueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valuePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "dataAbsentReason",
                    "type": "System.Concept"
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
                    "name": "appliesDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "appliesPeriod",
                    "type": "interval<System.DateTime>"
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
                    "name": "bodySiteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "System.Any"
                },
                {
                    "name": "method",
                    "type": "System.Concept"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "specimen",
                    "type": "System.Any"
                },
                {
                    "name": "performer",
                    "type": "list<System.Any>"
                },
                {
                    "name": "device",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
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
            "name": "QUICK.DiagnosticOrder",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "diagnosticorder-qicore-qicore-diagnosticorder",
            "primaryCodePath": "item.code",
            "element": [
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "orderer",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "clinicalNotes",
                    "type": "System.String"
                },
                {
                    "name": "supportingInformation",
                    "type": "list<System.Any>"
                },
                {
                    "name": "specimen",
                    "type": "list<System.Any>"
                },
                {
                    "name": "status",
                    "type": "System.String"
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
            "name": "QUICK.Contract.Legal",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "System.Any"
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
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "QUICK.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ObservationRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SupplyDispenseStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "profile",
                    "type": "list<System.String>"
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
            "type": "ClassInfo",
            "name": "QUICK.ElementDefinition.Constraint",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "key",
                    "type": "System.String"
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
            "name": "QUICK.CompositionAttestationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AddressUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentReferenceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImmunizationRecommendation",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "immunizationrecommendation-qicore-qicore-immunizationrec",
            "primaryCodePath": "recommendation.vaccineType",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Expansion",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "System.String"
                },
                {
                    "name": "timestamp",
                    "type": "System.DateTime"
                },
                {
                    "name": "parameter",
                    "type": "list<QUICK.ValueSet.Parameter>"
                },
                {
                    "name": "contains",
                    "type": "list<QUICK.ValueSet.Contains>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventAction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NarrativeStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Condition.DueTo",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "target",
                    "type": "System.Any"
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
            "type": "ClassInfo",
            "name": "QUICK.NamingSystem.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Encounter.StatusHistory",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "QUICK.EncounterState"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.StructureDefinitionType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
            "type": "ClassInfo",
            "name": "QUICK.Timing.Repeat",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "bounds",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "count",
                    "type": "System.Integer"
                },
                {
                    "name": "duration",
                    "type": "System.Decimal"
                },
                {
                    "name": "durationUnits",
                    "type": "QUICK.UnitsOfTime"
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
                    "name": "periodUnits",
                    "type": "QUICK.UnitsOfTime"
                },
                {
                    "name": "when",
                    "type": "QUICK.EventTiming"
                }
            ]
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
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.SubDetail",
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
                    "name": "label",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "list<System.Code>"
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
                    "name": "alias",
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
                    "name": "defaultValueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "defaultValueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "defaultValueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "defaultValueBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "defaultValueInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "defaultValueString",
                    "type": "System.String"
                },
                {
                    "name": "defaultValueUri",
                    "type": "System.String"
                },
                {
                    "name": "defaultValueDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "defaultValueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "defaultValueTime",
                    "type": "System.Time"
                },
                {
                    "name": "defaultValueCode",
                    "type": "System.String"
                },
                {
                    "name": "defaultValueOid",
                    "type": "System.String"
                },
                {
                    "name": "defaultValueUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "defaultValueId",
                    "type": "System.String"
                },
                {
                    "name": "defaultValueUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "defaultValuePositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "defaultValueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "defaultValueIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "defaultValueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "defaultValueCoding",
                    "type": "System.Code"
                },
                {
                    "name": "defaultValueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "defaultValueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "defaultValuePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "defaultValueRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "defaultValueReference",
                    "type": "System.Any"
                },
                {
                    "name": "defaultValueSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "defaultValueSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "defaultValueHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "defaultValueAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "defaultValueContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "defaultValueTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "defaultValueMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "meaningWhenMissing",
                    "type": "System.String"
                },
                {
                    "name": "fixedBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "fixedInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "fixedDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "fixedBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "fixedInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "fixedString",
                    "type": "System.String"
                },
                {
                    "name": "fixedUri",
                    "type": "System.String"
                },
                {
                    "name": "fixedDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "fixedDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "fixedTime",
                    "type": "System.Time"
                },
                {
                    "name": "fixedCode",
                    "type": "System.String"
                },
                {
                    "name": "fixedOid",
                    "type": "System.String"
                },
                {
                    "name": "fixedUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "fixedId",
                    "type": "System.String"
                },
                {
                    "name": "fixedUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "fixedPositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "fixedAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "fixedIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "fixedCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "fixedCoding",
                    "type": "System.Code"
                },
                {
                    "name": "fixedQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "fixedRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "fixedPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "fixedRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "fixedReference",
                    "type": "System.Any"
                },
                {
                    "name": "fixedSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "fixedSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "fixedHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "fixedAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "fixedContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "fixedTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "fixedMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "patternBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "patternInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "patternDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "patternBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "patternInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "patternString",
                    "type": "System.String"
                },
                {
                    "name": "patternUri",
                    "type": "System.String"
                },
                {
                    "name": "patternDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "patternDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "patternTime",
                    "type": "System.Time"
                },
                {
                    "name": "patternCode",
                    "type": "System.String"
                },
                {
                    "name": "patternOid",
                    "type": "System.String"
                },
                {
                    "name": "patternUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "patternId",
                    "type": "System.String"
                },
                {
                    "name": "patternUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "patternPositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "patternAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "patternIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "patternCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "patternCoding",
                    "type": "System.Code"
                },
                {
                    "name": "patternQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "patternRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "patternPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "patternRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "patternReference",
                    "type": "System.Any"
                },
                {
                    "name": "patternSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "patternSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "patternHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "patternAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "patternContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "patternTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "patternMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "exampleBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "exampleInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "exampleDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "exampleBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "exampleInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "exampleString",
                    "type": "System.String"
                },
                {
                    "name": "exampleUri",
                    "type": "System.String"
                },
                {
                    "name": "exampleDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "exampleDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "exampleTime",
                    "type": "System.Time"
                },
                {
                    "name": "exampleCode",
                    "type": "System.String"
                },
                {
                    "name": "exampleOid",
                    "type": "System.String"
                },
                {
                    "name": "exampleUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "exampleId",
                    "type": "System.String"
                },
                {
                    "name": "exampleUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "examplePositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "exampleAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "exampleIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "exampleCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "exampleCoding",
                    "type": "System.Code"
                },
                {
                    "name": "exampleQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "exampleRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "examplePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "exampleRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "exampleReference",
                    "type": "System.Any"
                },
                {
                    "name": "exampleSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "exampleSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "exampleHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "exampleAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "exampleContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "exampleTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "exampleMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "maxLength",
                    "type": "System.Integer"
                },
                {
                    "name": "condition",
                    "type": "list<System.String>"
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
            "name": "QUICK.ValueSet.Concept",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.String"
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
            "type": "ClassInfo",
            "name": "QUICK.ClinicalImpression.Investigations",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "item",
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FilterOperator",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IssueSeverity",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SlotStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MaritalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataElement.Mapping",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identity",
                    "type": "System.String"
                },
                {
                    "name": "uri",
                    "type": "System.String"
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
            "name": "QUICK.AppointmentStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.HTTPVerb",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Detail",
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
                    "type": "list<QUICK.Claim.SubDetail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RiskAssessment",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "element": [
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "condition",
                    "type": "System.Any"
                },
                {
                    "name": "performer",
                    "type": "System.Any"
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
                    "type": "list<System.Any>"
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
            "name": "QUICK.ProcessRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "type": "QUICK.ActionList"
                },
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "request",
                    "type": "System.Any"
                },
                {
                    "name": "response",
                    "type": "System.Any"
                },
                {
                    "name": "nullify",
                    "type": "System.Boolean"
                },
                {
                    "name": "reference",
                    "type": "System.String"
                },
                {
                    "name": "item",
                    "type": "list<QUICK.ProcessRequest.Item>"
                },
                {
                    "name": "include",
                    "type": "list<System.String>"
                },
                {
                    "name": "exclude",
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
            "name": "QUICK.ActionList",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescriptionStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "supportingPatientInformation",
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DaysOfWeek",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingObjectSelection.Study",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "series",
                    "type": "list<QUICK.ImagingObjectSelection.Series>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMapEquivalence",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "QUICK.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcessResponse.Notes",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
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
            "type": "ClassInfo",
            "name": "QUICK.Condition",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "condition-qicore-qicore-condition",
            "primaryCodePath": "code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "asserter",
                    "type": "System.Any"
                },
                {
                    "name": "dateAsserted",
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
                    "name": "clinicalStatus",
                    "type": "System.String"
                },
                {
                    "name": "severity",
                    "type": "System.Concept"
                },
                {
                    "name": "onsetDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "onsetAge",
                    "type": "QUICK.Age"
                },
                {
                    "name": "onsetPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "onsetRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "onsetString",
                    "type": "System.String"
                },
                {
                    "name": "abatementDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "abatementAge",
                    "type": "QUICK.Age"
                },
                {
                    "name": "abatementBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "abatementPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "abatementRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "abatementString",
                    "type": "System.String"
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
                    "name": "issued",
                    "type": "System.DateTime"
                },
                {
                    "name": "applies",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "subject",
                    "type": "list<System.Any>"
                },
                {
                    "name": "authority",
                    "type": "list<System.Any>"
                },
                {
                    "name": "domain",
                    "type": "list<System.Any>"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "subType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "action",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actionReason",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "list<QUICK.Contract.Actor>"
                },
                {
                    "name": "valuedItem",
                    "type": "list<QUICK.Contract.ValuedItem>"
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
                    "name": "bindingAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "bindingReference",
                    "type": "System.Any"
                },
                {
                    "name": "friendly",
                    "type": "list<QUICK.Contract.Friendly>"
                },
                {
                    "name": "legal",
                    "type": "list<QUICK.Contract.Legal>"
                },
                {
                    "name": "rule",
                    "type": "list<QUICK.Contract.Rule>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Person",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
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
                    "name": "photo",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "managingOrganization",
                    "type": "System.Any"
                },
                {
                    "name": "active",
                    "type": "System.Boolean"
                },
                {
                    "name": "link",
                    "type": "list<QUICK.Person.Link>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Object",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "reference",
                    "type": "System.Any"
                },
                {
                    "name": "type",
                    "type": "QUICK.AuditEventObjectType"
                },
                {
                    "name": "role",
                    "type": "QUICK.AuditEventObjectRole"
                },
                {
                    "name": "lifecycle",
                    "type": "QUICK.AuditEventObjectLifecycle"
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
                    "type": "list<QUICK.AuditEvent.Detail>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.RestfulConformanceMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SearchParamType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FamilyMemberHistory",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "familymemberhistory-qicore-qicore-familymemberhistory",
            "primaryCodePath": "relationship",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
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
                    "name": "relationship",
                    "type": "System.Concept"
                },
                {
                    "name": "gender",
                    "type": "System.String"
                },
                {
                    "name": "bornPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "bornDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "bornString",
                    "type": "System.String"
                },
                {
                    "name": "ageAge",
                    "type": "QUICK.Age"
                },
                {
                    "name": "ageRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "ageString",
                    "type": "System.String"
                },
                {
                    "name": "deceasedBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "deceasedAge",
                    "type": "QUICK.Age"
                },
                {
                    "name": "deceasedRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "deceasedDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "deceasedString",
                    "type": "System.String"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "condition",
                    "type": "list<QUICK.FamilyMemberHistory.Condition>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.IdentifierUse",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Extension",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "valueInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueUri",
                    "type": "System.String"
                },
                {
                    "name": "valueDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueCode",
                    "type": "System.String"
                },
                {
                    "name": "valueOid",
                    "type": "System.String"
                },
                {
                    "name": "valueUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "valueId",
                    "type": "System.String"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueCoding",
                    "type": "System.Code"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "valuePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "valueRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "valueReference",
                    "type": "System.Any"
                },
                {
                    "name": "valueSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "valueSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "valueHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "valueAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "valueContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "valueTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "QUICK.Meta"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Event",
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
                    "type": "QUICK.AuditEventAction"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "outcome",
                    "type": "QUICK.AuditEventOutcome"
                },
                {
                    "name": "outcomeDesc",
                    "type": "System.String"
                },
                {
                    "name": "purposeOfEvent",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.StructureDefinition.Snapshot",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<QUICK.ElementDefinition>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Signature",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "list<System.Code>"
                },
                {
                    "name": "when",
                    "type": "System.DateTime"
                },
                {
                    "name": "whoBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "whoInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "whoDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "whoBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "whoInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "whoString",
                    "type": "System.String"
                },
                {
                    "name": "whoUri",
                    "type": "System.String"
                },
                {
                    "name": "whoDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "whoDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "whoTime",
                    "type": "System.Time"
                },
                {
                    "name": "whoCode",
                    "type": "System.String"
                },
                {
                    "name": "whoOid",
                    "type": "System.String"
                },
                {
                    "name": "whoUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "whoId",
                    "type": "System.String"
                },
                {
                    "name": "whoUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "whoPositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "whoAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "whoIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "whoCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "whoCoding",
                    "type": "System.Code"
                },
                {
                    "name": "whoQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "whoRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "whoPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "whoRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "whoReference",
                    "type": "System.Any"
                },
                {
                    "name": "whoSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "whoSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "whoHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "whoAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "whoContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "whoTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "whoMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "blob",
                    "type": "QUICK.base64Binary"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Coverage",
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
                    "type": "System.Any"
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
                    "name": "preAuthRef",
                    "type": "list<System.String>"
                },
                {
                    "name": "claimResponse",
                    "type": "System.Any"
                },
                {
                    "name": "originalRuleset",
                    "type": "System.Code"
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
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "name": "content",
                    "type": "System.Any"
                },
                {
                    "name": "section",
                    "type": "list<QUICK.Composition.Section>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetric.Calibration",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.DeviceMetricCalibrationType"
                },
                {
                    "name": "state",
                    "type": "QUICK.DeviceMetricCalibrationState"
                },
                {
                    "name": "time",
                    "type": "System.DateTime"
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
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "bodySite",
                    "type": "System.Code"
                },
                {
                    "name": "laterality",
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCategory",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "individual",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.Search",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "mode",
                    "type": "QUICK.SearchEntryMode"
                },
                {
                    "name": "score",
                    "type": "System.Decimal"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "medicationstatement-qicore-qicore-medicationstatement",
            "primaryCodePath": "medication.code",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "informationSource",
                    "type": "System.Any"
                },
                {
                    "name": "dateAsserted",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "System.String"
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
                    "name": "reasonForUseCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonForUseReference",
                    "type": "System.Any"
                },
                {
                    "name": "effectiveDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "effectivePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "medication",
                    "type": "System.Any"
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
                    "type": "list<System.String>"
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
                    "type": "System.Any"
                },
                {
                    "name": "parent",
                    "type": "System.Any"
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
            "name": "QUICK.PaymentReconciliation.Note",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
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
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Detail",
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
            "name": "QUICK.ProcedureStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.StructureDefinition.Differential",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "element",
                "type": "list<QUICK.ElementDefinition>"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Prosthesis",
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
            "name": "QUICK.Use",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.String"
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
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcessRequest.Item",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": {
                "name": "sequenceLinkId",
                "type": "System.Integer"
            }
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
            "name": "QUICK.Contraindication",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "category",
                    "type": "System.Concept"
                },
                {
                    "name": "severity",
                    "type": "System.String"
                },
                {
                    "name": "implicated",
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "reference",
                    "type": "System.String"
                },
                {
                    "name": "mitigation",
                    "type": "list<QUICK.Contraindication.Mitigation>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetricOperationalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
                }
            ]
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
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "scheduled",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "nutrient",
                    "type": "list<QUICK.NutritionOrder.Nutrient>"
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
                    "name": "instruction",
                    "type": "System.String"
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
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "codeSystem",
                    "type": "System.String"
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
                "type": "System.String"
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
            "name": "QUICK.ConditionClinicalStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.LinkType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.BodySite",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "identifier": "bodysite-qicore-qicore-bodysite",
            "element": [
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
                },
                {
                    "name": "modifier",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "image",
                    "type": "list<QUICK.Attachment>"
                }
            ]
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Include",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "link",
                    "type": "list<QUICK.Bundle.Link>"
                },
                {
                    "name": "resource",
                    "type": "QUICK.ResourceContainer"
                },
                {
                    "name": "search",
                    "type": "QUICK.Bundle.Search"
                },
                {
                    "name": "transaction",
                    "type": "QUICK.Bundle.Transaction"
                },
                {
                    "name": "transactionResponse",
                    "type": "QUICK.Bundle.TransactionResponse"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Specimen",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "identifier": "specimen-qicore-qicore-specimen",
            "primaryCodePath": "type",
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
                    "name": "parent",
                    "type": "list<System.Any>"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.FHIRDefinedType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Age",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "QUICK.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
                }
            ]
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
                    "name": "endpoint",
                    "type": "System.String"
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
            "name": "QUICK.Goal",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "goal-qicore-qicore-goal",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "targetDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.GoalStatus"
                },
                {
                    "name": "statusDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "author",
                    "type": "System.Any"
                },
                {
                    "name": "priority",
                    "type": "System.Concept"
                },
                {
                    "name": "concern",
                    "type": "list<System.Any>"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                },
                {
                    "name": "outcome",
                    "type": "list<QUICK.Goal.Outcome>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Concept1",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.String"
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
            "type": "ClassInfo",
            "name": "QUICK.ClinicalImpression.Finding",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "System.Concept"
                },
                {
                    "name": "cause",
                    "type": "System.String"
                }
            ]
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
            "name": "QUICK.MedicationStatement.Dosage",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "text",
                    "type": "System.String"
                },
                {
                    "name": "schedule",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
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
            "name": "QUICK.Claim",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "QUICK.ClaimType"
                },
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "facility",
                    "type": "System.Any"
                },
                {
                    "name": "prescription",
                    "type": "System.Any"
                },
                {
                    "name": "originalPrescription",
                    "type": "System.Any"
                },
                {
                    "name": "payee",
                    "type": "QUICK.Claim.Payee"
                },
                {
                    "name": "referral",
                    "type": "System.Any"
                },
                {
                    "name": "diagnosis",
                    "type": "list<QUICK.Claim.Diagnosis>"
                },
                {
                    "name": "condition",
                    "type": "list<System.Code>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "coverage",
                    "type": "list<QUICK.Claim.Coverage>"
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
                    "name": "item",
                    "type": "list<QUICK.Claim.Item>"
                },
                {
                    "name": "additionalMaterials",
                    "type": "list<System.Code>"
                },
                {
                    "name": "missingTeeth",
                    "type": "list<QUICK.Claim.MissingTeeth>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.Supplement",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "productName",
                    "type": "System.String"
                },
                {
                    "name": "scheduled",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "instruction",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetric",
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
                    "name": "unit",
                    "type": "System.Concept"
                },
                {
                    "name": "source",
                    "type": "System.Any"
                },
                {
                    "name": "parent",
                    "type": "System.Any"
                },
                {
                    "name": "operationalStatus",
                    "type": "QUICK.DeviceMetricOperationalStatus"
                },
                {
                    "name": "color",
                    "type": "QUICK.DeviceMetricColor"
                },
                {
                    "name": "category",
                    "type": "QUICK.DeviceMetricCategory"
                },
                {
                    "name": "measurementPeriod",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "calibration",
                    "type": "list<QUICK.DeviceMetric.Calibration>"
                }
            ]
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
            "name": "QUICK.MedicationAdministration",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "medicationadministration-qicore-qicore-medicationadministration",
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
                    "type": "System.Any"
                },
                {
                    "name": "practitioner",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "prescription",
                    "type": "System.Any"
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
                    "name": "reasonGiven",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "effectiveTimeDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "effectiveTimePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "medication",
                    "type": "System.Any"
                },
                {
                    "name": "device",
                    "type": "list<System.Any>"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "dosage",
                    "type": "QUICK.MedicationAdministration.Dosage"
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
                    "type": "System.Any"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
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
            "retrievable": true,
            "identifier": "deviceuserequest-qicore-qicore-deviceuserequest",
            "primaryCodePath": "device.type",
            "element": [
                {
                    "name": "bodySiteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.DeviceUseRequestStatus"
                },
                {
                    "name": "device",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "timingTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "timingPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "timingDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "priority",
                    "type": "QUICK.DeviceUseRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlan.Detail",
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
                    "name": "reasonCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "System.Any"
                },
                {
                    "name": "goal",
                    "type": "list<System.Any>"
                },
                {
                    "name": "status",
                    "type": "QUICK.CarePlanActivityStatus"
                },
                {
                    "name": "statusReason",
                    "type": "System.Concept"
                },
                {
                    "name": "prohibited",
                    "type": "System.Boolean"
                },
                {
                    "name": "scheduledTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "scheduledPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "scheduledString",
                    "type": "System.String"
                },
                {
                    "name": "location",
                    "type": "System.Any"
                },
                {
                    "name": "performer",
                    "type": "list<System.Any>"
                },
                {
                    "name": "product",
                    "type": "System.Any"
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
                    "name": "note",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EpisodeOfCareStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "who",
                    "type": "System.Any"
                },
                {
                    "name": "authorityCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "authorityReference",
                    "type": "System.Any"
                },
                {
                    "name": "orderStatus",
                    "type": "QUICK.OrderStatus"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "fulfillment",
                    "type": "list<System.Any>"
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
                "type": "System.String"
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
                    "name": "strength",
                    "type": "QUICK.BindingStrength"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "valueSetBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueSetInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueSetDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueSetBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "valueSetInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueSetString",
                    "type": "System.String"
                },
                {
                    "name": "valueSetUri",
                    "type": "System.String"
                },
                {
                    "name": "valueSetDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueSetDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueSetTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueSetCode",
                    "type": "System.String"
                },
                {
                    "name": "valueSetOid",
                    "type": "System.String"
                },
                {
                    "name": "valueSetUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "valueSetId",
                    "type": "System.String"
                },
                {
                    "name": "valueSetUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valueSetPositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valueSetAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueSetIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "valueSetCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueSetCoding",
                    "type": "System.Code"
                },
                {
                    "name": "valueSetQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueSetRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "valueSetPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "valueSetRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "valueSetReference",
                    "type": "System.Any"
                },
                {
                    "name": "valueSetSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "valueSetSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "valueSetHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "valueSetAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "valueSetContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "valueSetTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "valueSetMeta",
                    "type": "QUICK.Meta"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventObjectRole",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
                },
                {
                    "name": "admitSource",
                    "type": "System.Concept"
                },
                {
                    "name": "dietPreference",
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
                    "type": "System.Any"
                },
                {
                    "name": "dischargeDisposition",
                    "type": "System.Concept"
                },
                {
                    "name": "dischargeDiagnosis",
                    "type": "System.Any"
                },
                {
                    "name": "reAdmission",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticOrderPriority",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.CarePlanActivityStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<System.String>"
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
            "name": "QUICK.LocationMode",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.String"
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
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "System.Any"
                },
                {
                    "name": "part",
                    "type": "list<QUICK.OperationDefinition.Part>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCriticality",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "QUICK.DigitalMediaType"
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
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "operator",
                    "type": "System.Any"
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
            "type": "ClassInfo",
            "name": "QUICK.CommunicationRequestStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Organization",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "organization-qicore-qicore-organization",
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
                    "type": "System.Any"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.Organization.Contact>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "name": "party",
                    "type": "System.Any"
                },
                {
                    "name": "signature",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Medication.Ingredient",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "System.Any"
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
                    "type": "System.String"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Goal.Outcome",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "resultCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "resultReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.SubscriptionChannelType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.TypeRestfulInteraction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DeviceMetricCalibrationState",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueBase64Binary",
                    "type": "QUICK.base64Binary"
                },
                {
                    "name": "valueInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueUri",
                    "type": "System.String"
                },
                {
                    "name": "valueDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueCode",
                    "type": "System.String"
                },
                {
                    "name": "valueOid",
                    "type": "System.String"
                },
                {
                    "name": "valueUuid",
                    "type": "QUICK.uuid"
                },
                {
                    "name": "valueId",
                    "type": "System.String"
                },
                {
                    "name": "valueUnsignedInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valuePositiveInt",
                    "type": "System.Integer"
                },
                {
                    "name": "valueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueIdentifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "valueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueCoding",
                    "type": "System.Code"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "valuePeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "valueRatio",
                    "type": "QUICK.Ratio"
                },
                {
                    "name": "valueReference",
                    "type": "System.Any"
                },
                {
                    "name": "valueSampledData",
                    "type": "QUICK.SampledData"
                },
                {
                    "name": "valueSignature",
                    "type": "QUICK.Signature"
                },
                {
                    "name": "valueHumanName",
                    "type": "QUICK.HumanName"
                },
                {
                    "name": "valueAddress",
                    "type": "QUICK.Address"
                },
                {
                    "name": "valueContactPoint",
                    "type": "QUICK.ContactPoint"
                },
                {
                    "name": "valueTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "valueMeta",
                    "type": "QUICK.Meta"
                },
                {
                    "name": "resource",
                    "type": "QUICK.ResourceContainer"
                },
                {
                    "name": "part",
                    "type": "list<QUICK.Parameters.Part>"
                }
            ]
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
                    "type": "System.Any"
                },
                {
                    "name": "participantType",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClinicalImpression.RuledOut",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "System.Concept"
                },
                {
                    "name": "reason",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Flag",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "flag-qicore-qicore-flag",
            "primaryCodePath": "code",
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
                    "type": "QUICK.FlagStatus"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "author",
                    "type": "System.Any"
                },
                {
                    "name": "code",
                    "type": "System.Concept"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.MedicationAdministrationStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.MissingTeeth",
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
                    "name": "extractionDate",
                    "type": "System.DateTime"
                }
            ]
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
                    "name": "reasonNotGiven",
                    "type": "list<System.Concept>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingObjectSelection.Frames",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "frameNumbers",
                    "type": "list<System.Integer>"
                },
                {
                    "name": "url",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.AddItem",
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
            "name": "QUICK.DataElement",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
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
                    "name": "useContext",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "experimental",
                    "type": "System.Boolean"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.DataElement.Contact>"
                },
                {
                    "name": "specificity",
                    "type": "QUICK.DataElementSpecificity"
                },
                {
                    "name": "mapping",
                    "type": "list<QUICK.DataElement.Mapping>"
                },
                {
                    "name": "element",
                    "type": "list<QUICK.ElementDefinition>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Bundle.Transaction",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "method",
                    "type": "QUICK.HTTPVerb"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "ifNoneMatch",
                    "type": "System.String"
                },
                {
                    "name": "ifMatch",
                    "type": "System.String"
                },
                {
                    "name": "ifModifiedSince",
                    "type": "System.DateTime"
                },
                {
                    "name": "ifNoneExist",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder.EnteralFormula",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "administrationInstructions",
                    "type": "System.String"
                },
                {
                    "name": "baseFormulaType",
                    "type": "System.Concept"
                },
                {
                    "name": "baseFormulaProductName",
                    "type": "System.String"
                },
                {
                    "name": "scheduled",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "additiveType",
                    "type": "System.Concept"
                },
                {
                    "name": "additiveProductName",
                    "type": "System.String"
                },
                {
                    "name": "caloricDensity",
                    "type": "System.Quantity"
                },
                {
                    "name": "routeofAdministration",
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
                    "name": "rateAdjustment",
                    "type": "System.Quantity"
                },
                {
                    "name": "maxVolumeToDeliver",
                    "type": "System.Quantity"
                }
            ]
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
                }
            ]
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
                    "type": "System.String"
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
                    "type": "list<System.String>"
                },
                {
                    "name": "chain",
                    "type": "list<System.String>"
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
                    "name": "scheduledDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "scheduledPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "scheduledTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
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
                    "name": "doseRange",
                    "type": "interval<System.Quantity>"
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
            "name": "QUICK.Contract.Friendly",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "System.Any"
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
                    "name": "valueCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueRange",
                    "type": "interval<System.Quantity>"
                },
                {
                    "name": "exclude",
                    "type": "System.Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ParticipantStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRequest",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "procedurerequest-qicore-qicore-procedurerequest",
            "primaryCodePath": "type",
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "subject",
                    "type": "System.Any"
                },
                {
                    "name": "type",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySite",
                    "type": "list<QUICK.ProcedureRequest.BodySite>"
                },
                {
                    "name": "indication",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "timingDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "timingPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "timingTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "performer",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "notes",
                    "type": "list<System.String>"
                },
                {
                    "name": "asNeededBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "asNeededCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "orderedOn",
                    "type": "System.DateTime"
                },
                {
                    "name": "orderer",
                    "type": "System.Any"
                },
                {
                    "name": "priority",
                    "type": "QUICK.ProcedureRequestPriority"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClaimResponse.SubDetail",
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
                    "type": "System.String"
                },
                {
                    "name": "request",
                    "type": "System.Any"
                },
                {
                    "name": "response",
                    "type": "System.Any"
                },
                {
                    "name": "documentation",
                    "type": "System.String"
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
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Payee",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.Code"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "person",
                    "type": "System.Any"
                }
            ]
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
                    "type": "System.String"
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
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ProcedureRelationshipType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.QuestionnaireAnswers.Answer",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueDate",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueInstant",
                    "type": "System.DateTime"
                },
                {
                    "name": "valueTime",
                    "type": "System.Time"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueUri",
                    "type": "System.String"
                },
                {
                    "name": "valueAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "valueCoding",
                    "type": "System.Code"
                },
                {
                    "name": "valueQuantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "valueReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Conformance.Certificate",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "type",
                    "type": "System.String"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NoteType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "list<QUICK.DaysOfWeek>"
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
            "name": "QUICK.Medication.Content",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "item",
                    "type": "System.Any"
                },
                {
                    "name": "amount",
                    "type": "System.Quantity"
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
            "type": "ClassInfo",
            "name": "QUICK.DeviceUseStatement",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "deviceusestatement-qicore-qicore-deviceusestatement",
            "primaryCodePath": "device.type",
            "element": [
                {
                    "name": "bodySiteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "System.Any"
                },
                {
                    "name": "whenUsed",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "device",
                    "type": "System.Any"
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
                    "type": "System.Any"
                },
                {
                    "name": "timingTiming",
                    "type": "QUICK.Timing"
                },
                {
                    "name": "timingPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "timingDateTime",
                    "type": "System.DateTime"
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
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "QUICK.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
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
                "type": "System.String"
            }
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
                    "type": "System.Any"
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
                    "type": "System.String"
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
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "patient",
                    "type": "System.Any"
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
                    "name": "author",
                    "type": "list<System.Any>"
                },
                {
                    "name": "modified",
                    "type": "System.DateTime"
                },
                {
                    "name": "category",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "concern",
                    "type": "list<System.Any>"
                },
                {
                    "name": "support",
                    "type": "list<System.Any>"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.CarePlan.Participant>"
                },
                {
                    "name": "goal",
                    "type": "list<System.Any>"
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
            "name": "QUICK.AuditEvent",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "event",
                    "type": "QUICK.AuditEvent.Event"
                },
                {
                    "name": "participant",
                    "type": "list<QUICK.AuditEvent.Participant>"
                },
                {
                    "name": "source",
                    "type": "QUICK.AuditEvent.Source"
                },
                {
                    "name": "object",
                    "type": "list<QUICK.AuditEvent.Object>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DataElement.Contact",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "telecom",
                    "type": "list<QUICK.ContactPoint>"
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
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ImagingObjectSelection.Series",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "uid",
                    "type": "System.String"
                },
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "instance",
                    "type": "list<QUICK.ImagingObjectSelection.Instance>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Contract.Rule",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "contentAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "contentReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Source",
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
            "name": "QUICK.SystemRestfulInteraction",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AnswerFormat",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
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
                    "name": "useContext",
                    "type": "list<System.Concept>"
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
                    "name": "contact",
                    "type": "list<QUICK.ValueSet.Contact>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "name": "lockedDate",
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
                    "type": "System.String"
                },
                {
                    "name": "profile",
                    "type": "System.String"
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
                    "name": "url",
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
                    "name": "contact",
                    "type": "list<QUICK.Conformance.Contact>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "type": "System.String"
                },
                {
                    "name": "acceptUnknown",
                    "type": "System.Boolean"
                },
                {
                    "name": "format",
                    "type": "list<System.String>"
                },
                {
                    "name": "profile",
                    "type": "list<System.Any>"
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
            "name": "QUICK.ConformanceResourceStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ConceptMap",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "url",
                    "type": "System.String"
                },
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
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
                    "name": "useContext",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "publisher",
                    "type": "System.String"
                },
                {
                    "name": "contact",
                    "type": "list<QUICK.ConceptMap.Contact>"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "requirements",
                    "type": "System.String"
                },
                {
                    "name": "copyright",
                    "type": "System.String"
                },
                {
                    "name": "status",
                    "type": "QUICK.ConformanceResourceStatus"
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
                    "name": "sourceUri",
                    "type": "System.String"
                },
                {
                    "name": "sourceReference",
                    "type": "System.Any"
                },
                {
                    "name": "targetUri",
                    "type": "System.String"
                },
                {
                    "name": "targetReference",
                    "type": "System.Any"
                },
                {
                    "name": "element",
                    "type": "list<QUICK.ConceptMap.Element>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Procedure.Device",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "action",
                    "type": "System.Concept"
                },
                {
                    "name": "manipulated",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.NutritionOrder",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "orderer",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "dateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "status",
                    "type": "QUICK.NutritionOrderStatus"
                },
                {
                    "name": "allergyIntolerance",
                    "type": "list<System.Any>"
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
                    "name": "oralDiet",
                    "type": "QUICK.NutritionOrder.OralDiet"
                },
                {
                    "name": "supplement",
                    "type": "list<QUICK.NutritionOrder.Supplement>"
                },
                {
                    "name": "enteralFormula",
                    "type": "QUICK.NutritionOrder.EnteralFormula"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Money",
            "baseType": "System.Quantity",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "comparator",
                    "type": "QUICK.QuantityComparator"
                },
                {
                    "name": "units",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "System.String"
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
                    "name": "quantity",
                    "type": "System.Quantity"
                },
                {
                    "name": "rate",
                    "type": "QUICK.Ratio"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Patient",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "patient-qicore-qicore-patient",
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
                    "name": "deceasedBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "deceasedDateTime",
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
                    "name": "multipleBirthBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "multipleBirthInteger",
                    "type": "System.Integer"
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
                    "type": "list<QUICK.Patient.Communication>"
                },
                {
                    "name": "careProvider",
                    "type": "list<System.Any>"
                },
                {
                    "name": "managingOrganization",
                    "type": "System.Any"
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
            "identifier": "medicationprescription-qicore-qicore-medicationprescription",
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
                    "type": "System.Any"
                },
                {
                    "name": "prescriber",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "reasonCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "reasonReference",
                    "type": "System.Any"
                },
                {
                    "name": "note",
                    "type": "System.String"
                },
                {
                    "name": "medication",
                    "type": "System.Any"
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
            "name": "QUICK.ProcessResponse",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "request",
                    "type": "System.Any"
                },
                {
                    "name": "outcome",
                    "type": "System.Code"
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "requestProvider",
                    "type": "System.Any"
                },
                {
                    "name": "requestOrganization",
                    "type": "System.Any"
                },
                {
                    "name": "form",
                    "type": "System.Code"
                },
                {
                    "name": "notes",
                    "type": "list<QUICK.ProcessResponse.Notes>"
                },
                {
                    "name": "error",
                    "type": "list<System.Code>"
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
                    "type": "System.String"
                },
                {
                    "name": "language",
                    "type": "System.String"
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
                },
                {
                    "name": "additiveCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "additiveReference",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Claim.Item",
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
                    "type": "System.Any"
                },
                {
                    "name": "diagnosisLinkId",
                    "type": "list<System.Integer>"
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
                    "name": "subSite",
                    "type": "list<System.Code>"
                },
                {
                    "name": "modifier",
                    "type": "list<System.Code>"
                },
                {
                    "name": "detail",
                    "type": "list<QUICK.Claim.Detail>"
                },
                {
                    "name": "prosthesis",
                    "type": "QUICK.Claim.Prosthesis"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventParticipantNetworkType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Define",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "system",
                    "type": "System.String"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AllergyIntoleranceCertainty",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
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
                    "type": "System.String"
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
                    "type": "System.Any"
                },
                {
                    "name": "author",
                    "type": "System.Any"
                },
                {
                    "name": "receiver",
                    "type": "System.Any"
                },
                {
                    "name": "responsible",
                    "type": "System.Any"
                },
                {
                    "name": "reason",
                    "type": "System.Concept"
                },
                {
                    "name": "data",
                    "type": "list<System.Any>"
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
            "type": "ClassInfo",
            "name": "QUICK.MedicationPrescription.Dispense",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "medication",
                    "type": "System.Any"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ReferralStatus",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ValueSet.Parameter",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "name",
                    "type": "System.String"
                },
                {
                    "name": "valueString",
                    "type": "System.String"
                },
                {
                    "name": "valueBoolean",
                    "type": "System.Boolean"
                },
                {
                    "name": "valueInteger",
                    "type": "System.Integer"
                },
                {
                    "name": "valueDecimal",
                    "type": "System.Decimal"
                },
                {
                    "name": "valueUri",
                    "type": "System.String"
                },
                {
                    "name": "valueCode",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Element",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "extension",
                    "type": "list<QUICK.Extension>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEventObjectLifecycle",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.PaymentNotice",
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
                    "name": "created",
                    "type": "System.DateTime"
                },
                {
                    "name": "target",
                    "type": "System.Any"
                },
                {
                    "name": "provider",
                    "type": "System.Any"
                },
                {
                    "name": "organization",
                    "type": "System.Any"
                },
                {
                    "name": "request",
                    "type": "System.Any"
                },
                {
                    "name": "response",
                    "type": "System.Any"
                },
                {
                    "name": "paymentStatus",
                    "type": "System.Code"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentManifest.Related",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "identifier",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "ref",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.ClinicalImpression",
            "baseType": "QUICK.DomainResource",
            "retrievable": false,
            "element": [
                {
                    "name": "patient",
                    "type": "System.Any"
                },
                {
                    "name": "assessor",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.ClinicalImpressionStatus"
                },
                {
                    "name": "date",
                    "type": "System.DateTime"
                },
                {
                    "name": "description",
                    "type": "System.String"
                },
                {
                    "name": "previous",
                    "type": "System.Any"
                },
                {
                    "name": "problem",
                    "type": "list<System.Any>"
                },
                {
                    "name": "triggerCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "triggerReference",
                    "type": "System.Any"
                },
                {
                    "name": "investigations",
                    "type": "list<QUICK.ClinicalImpression.Investigations>"
                },
                {
                    "name": "protocol",
                    "type": "System.String"
                },
                {
                    "name": "summary",
                    "type": "System.String"
                },
                {
                    "name": "finding",
                    "type": "list<QUICK.ClinicalImpression.Finding>"
                },
                {
                    "name": "resolved",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "ruledOut",
                    "type": "list<QUICK.ClinicalImpression.RuledOut>"
                },
                {
                    "name": "prognosis",
                    "type": "System.String"
                },
                {
                    "name": "plan",
                    "type": "list<System.Any>"
                },
                {
                    "name": "action",
                    "type": "list<System.Any>"
                }
            ]
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
                },
                {
                    "name": "practiceSetting",
                    "type": "System.Concept"
                },
                {
                    "name": "sourcePatientInfo",
                    "type": "System.Any"
                },
                {
                    "name": "related",
                    "type": "list<QUICK.DocumentReference.Related>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.VisionEyes",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.VisionPrescription.Dispense",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "product",
                    "type": "System.Code"
                },
                {
                    "name": "eye",
                    "type": "QUICK.VisionEyes"
                },
                {
                    "name": "sphere",
                    "type": "System.Decimal"
                },
                {
                    "name": "cylinder",
                    "type": "System.Decimal"
                },
                {
                    "name": "axis",
                    "type": "System.Integer"
                },
                {
                    "name": "prism",
                    "type": "System.Decimal"
                },
                {
                    "name": "base",
                    "type": "QUICK.VisionBase"
                },
                {
                    "name": "add",
                    "type": "System.Decimal"
                },
                {
                    "name": "power",
                    "type": "System.Decimal"
                },
                {
                    "name": "backCurve",
                    "type": "System.Decimal"
                },
                {
                    "name": "diameter",
                    "type": "System.Decimal"
                },
                {
                    "name": "duration",
                    "type": "System.Quantity"
                },
                {
                    "name": "color",
                    "type": "System.String"
                },
                {
                    "name": "brand",
                    "type": "System.String"
                },
                {
                    "name": "notes",
                    "type": "System.String"
                }
            ]
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
                    "type": "list<System.Any>"
                },
                {
                    "name": "bodySiteCodeableConcept",
                    "type": "System.Concept"
                },
                {
                    "name": "bodySiteReference",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "System.String"
                },
                {
                    "name": "event",
                    "type": "list<QUICK.DiagnosticOrder.Event>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DigitalMediaType",
            "baseType": "QUICK.Element",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
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
                    "type": "System.Any"
                },
                {
                    "name": "supplier",
                    "type": "System.Any"
                },
                {
                    "name": "whenPrepared",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "whenHandedOver",
                    "type": "System.DateTime"
                },
                {
                    "name": "destination",
                    "type": "System.Any"
                },
                {
                    "name": "receiver",
                    "type": "list<System.Any>"
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
                    "type": "System.Any"
                },
                {
                    "name": "bin",
                    "type": "QUICK.Identifier"
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
                    "name": "subscriberId",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
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
                    "name": "subPlan",
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
                    "type": "System.Any"
                },
                {
                    "name": "network",
                    "type": "QUICK.Identifier"
                },
                {
                    "name": "contract",
                    "type": "list<System.Any>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.AuditEvent.Participant",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "reference",
                    "type": "System.Any"
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
                    "name": "location",
                    "type": "System.Any"
                },
                {
                    "name": "policy",
                    "type": "list<System.String>"
                },
                {
                    "name": "media",
                    "type": "System.Code"
                },
                {
                    "name": "network",
                    "type": "QUICK.AuditEvent.Network"
                },
                {
                    "name": "purposeOfUse",
                    "type": "list<System.Code>"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DocumentManifest.Content",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "pAttachment",
                    "type": "QUICK.Attachment"
                },
                {
                    "name": "pReference",
                    "type": "System.Any"
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
                    "type": "System.String"
                },
                {
                    "name": "code",
                    "type": "QUICK.ResponseType"
                },
                {
                    "name": "details",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.DiagnosticReport",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "diagnosticreport-qicore-qicore-diagnosticreport",
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
                    "type": "System.Any"
                },
                {
                    "name": "performer",
                    "type": "System.Any"
                },
                {
                    "name": "encounter",
                    "type": "System.Any"
                },
                {
                    "name": "identifier",
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "requestDetail",
                    "type": "list<System.Any>"
                },
                {
                    "name": "serviceCategory",
                    "type": "System.Concept"
                },
                {
                    "name": "diagnosticDateTime",
                    "type": "System.DateTime"
                },
                {
                    "name": "diagnosticPeriod",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "specimen",
                    "type": "list<System.Any>"
                },
                {
                    "name": "result",
                    "type": "list<System.Any>"
                },
                {
                    "name": "imagingStudy",
                    "type": "list<System.Any>"
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
            "name": "QUICK.EpisodeOfCare.StatusHistory",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "status",
                    "type": "QUICK.EpisodeOfCareStatus"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
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
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.EpisodeOfCare.CareTeam",
            "baseType": "QUICK.BackboneElement",
            "retrievable": false,
            "element": [
                {
                    "name": "member",
                    "type": "System.Any"
                },
                {
                    "name": "role",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "period",
                    "type": "interval<System.DateTime>"
                }
            ]
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
                    "type": "System.Any"
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
                    "type": "list<QUICK.Identifier>"
                },
                {
                    "name": "type",
                    "type": "list<System.Concept>"
                },
                {
                    "name": "actor",
                    "type": "System.Any"
                },
                {
                    "name": "planningHorizon",
                    "type": "interval<System.DateTime>"
                },
                {
                    "name": "comment",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QUICK.Location",
            "baseType": "QUICK.DomainResource",
            "retrievable": true,
            "identifier": "location-qicore-qicore-location",
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
                    "name": "mode",
                    "type": "QUICK.LocationMode"
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
                    "type": "System.Any"
                },
                {
                    "name": "partOf",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "QUICK.LocationStatus"
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
                "type": "System.String"
            }
        }
    ]
});