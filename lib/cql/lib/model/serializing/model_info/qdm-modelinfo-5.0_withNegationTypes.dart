import '../../../cql.dart';

final qdmmodelinfo50_withNegationTypes = ModelInfo.fromJson({
    "name": "QDM",
    "url": "urn:healthit-gov:qdm:v5_0_draft",
    "targetQualifier": "qdm",
    "patientClassName": "QDM.Patient",
    "patientClassIdentifier": "Patient",
    "patientBirthDatePropertyName": "birthDateTime",
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
            "name": "QDM.PhysicalExamNotRecommended",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": true,
            "identifier": "Physical Exam, Not Recommended",
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicSex",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Patient Characteristic: Sex"
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CareGoal",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Care Goal",
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "relatedTo",
                    "type": "Code"
                },
                {
                    "name": "targetOutcome",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceNotRecommended",
            "baseType": "QDM.DeviceBase",
            "retrievable": true,
            "identifier": "Device, Not Recommended",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "String",
            "baseType": "Any",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationAdministered",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Administered",
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationNotAdministered",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Not Administered",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceNotApplied",
            "baseType": "QDM.DeviceBase",
            "retrievable": true,
            "identifier": "Device, Not Applied",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DateTime",
            "baseType": "Any",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.String"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Decimal",
            "baseType": "Any",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Decimal"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationNotDispensed",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Not Dispensed",
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Diagnosis",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Diagnosis",
            "element": [
                {
                    "name": "prevalencePeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "Code"
                },
                {
                    "name": "severity",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureNotPerformed",
            "baseType": "QDM.ProcedureBase",
            "retrievable": true,
            "identifier": "Procedure, Not Performed",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentPerformed",
            "baseType": "QDM.AssessmentBase",
            "retrievable": true,
            "identifier": "Assessment, Performed",
            "element": [
                {
                    "name": "result",
                    "type": "System.Any"
                },
                {
                    "name": "component",
                    "type": "QDM.Component"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionNotOrdered",
            "baseType": "QDM.InterventionBase",
            "retrievable": true,
            "identifier": "Intervention, Not Ordered",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Boolean",
            "baseType": "Any",
            "retrievable": false,
            "element": {
                "name": "value",
                "type": "System.Boolean"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicClinicalTrialParticipant",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Patient Characteristic: Clinical Trial Participant",
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionOrder",
            "baseType": "QDM.InterventionBase",
            "retrievable": true,
            "identifier": "Intervention, Order"
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceOrder",
            "baseType": "QDM.DeviceBase",
            "retrievable": true,
            "identifier": "Device, Order"
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Component",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "Code"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Code",
            "baseType": "Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "String"
                },
                {
                    "name": "display",
                    "type": "String"
                },
                {
                    "name": "system",
                    "type": "String"
                },
                {
                    "name": "version",
                    "type": "String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterNotOrdered",
            "baseType": "QDM.EncounterBase",
            "retrievable": true,
            "identifier": "Encounter, Not Ordered",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationActive",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Active",
            "element": {
                "name": "relevantPeriod",
                "type": "DateTimeInterval"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                },
                {
                    "name": "method",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicExpired",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Patient Characteristic, Expired",
            "element": [
                {
                    "name": "expiredDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "cause",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyNotPerformed",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": true,
            "identifier": "Diagnostic Study, Not Performed",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentRecommended",
            "baseType": "QDM.AssessmentBase",
            "retrievable": true,
            "identifier": "Assessment, Recommended"
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterNotRecommended",
            "baseType": "QDM.EncounterBase",
            "retrievable": true,
            "identifier": "Encounter, Not Recommended",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceAdministered",
            "baseType": "QDM.SubstanceBase",
            "retrievable": true,
            "identifier": "Substance, Administered",
            "element": {
                "name": "relevantPeriod",
                "type": "DateTimeInterval"
            }
        },
        {
            "type": "ClassInfo",
            "name": "Interval",
            "baseType": "Any",
            "retrievable": false,
            "element": [
                {
                    "name": "lowClosed",
                    "type": "Boolean"
                },
                {
                    "name": "highClosed",
                    "type": "Boolean"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedurePerformed",
            "baseType": "QDM.ProcedureBase",
            "retrievable": true,
            "identifier": "Procedure, Performed",
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "Code"
                },
                {
                    "name": "radiationDuration",
                    "type": "Code"
                },
                {
                    "name": "radiationDosage",
                    "type": "Code"
                },
                {
                    "name": "incisionDatetime",
                    "type": "DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureNotRecommended",
            "baseType": "QDM.ProcedureBase",
            "retrievable": true,
            "identifier": "Procedure, Not Recommended",
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicBirthdate",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Patient Characteristic: Birthdate",
            "element": {
                "name": "birthDatetime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.QDMBaseType",
            "baseType": "System.Any",
            "retrievable": false,
            "element": {
                "name": "code",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionPerformed",
            "baseType": "QDM.InterventionBase",
            "retrievable": true,
            "identifier": "Intervention, Performed",
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestRecommended",
            "baseType": "QDM.LaboratoryTestBase",
            "retrievable": true,
            "identifier": "Laboratory Test, Recommended"
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionNotPerformed",
            "baseType": "QDM.InterventionBase",
            "retrievable": true,
            "identifier": "Intervention, Not Performed",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationNotOrdered",
            "baseType": "QDM.ImmunizationBase",
            "retrievable": true,
            "identifier": "Immunization, Not Ordered",
            "element": [
                {
                    "name": "activeDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterNotPerformed",
            "baseType": "QDM.EncounterBase",
            "retrievable": true,
            "identifier": "Encounter, Not Performed",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationNotOrdered",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Not Ordered",
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyRecommended",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": true,
            "identifier": "Diagnostic Study, Recommended",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationOrder",
            "baseType": "QDM.ImmunizationBase",
            "retrievable": true,
            "identifier": "Immunization, Order",
            "element": [
                {
                    "name": "activeDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProviderCareExperience",
            "baseType": "QDM.QDMBaseType",
            "retrievable": true,
            "identifier": "Provider Care Experience",
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceNotOrdered",
            "baseType": "QDM.DeviceBase",
            "retrievable": true,
            "identifier": "Device, Not Ordered",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentNotPerformed",
            "baseType": "QDM.AssessmentBase",
            "retrievable": true,
            "identifier": "Assessment, Not Performed",
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationOrder",
            "baseType": "QDM.MedicationBase",
            "retrievable": true,
            "identifier": "Medication, Order",
            "element": [
                {
                    "name": "activeDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "dose",
                    "type": "Quantity"
                },
                {
                    "name": "frequency",
                    "type": "Code"
                },
                {
                    "name": "route",
                    "type": "Code"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureNotOrdered",
            "baseType": "QDM.ProcedureBase",
            "retrievable": true,
            "identifier": "Procedure, Not Ordered",
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamOrder",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionNotRecommended",
            "baseType": "QDM.InterventionBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterActive",
            "baseType": "QDM.EncounterBase",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "locationPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "lengthOfStay",
                    "type": "Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristic",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromProviderToProviderNotPerformed",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicEthnicity",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicRace",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "anatomicalApproachSite",
                    "type": "Code"
                },
                {
                    "name": "anatomicalLocationSite",
                    "type": "Code"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "ordinality",
                    "type": "Code"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestPerformed",
            "baseType": "QDM.LaboratoryTestBase",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "status",
                    "type": "Code"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                },
                {
                    "name": "referenceRangeHigh",
                    "type": "Code"
                },
                {
                    "name": "referenceRangeLow",
                    "type": "Code"
                },
                {
                    "name": "component",
                    "type": "QDM.Component"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Symptom",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "prevalencePeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "severity",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "reason",
                    "type": "Code"
                },
                {
                    "name": "radiationDosage",
                    "type": "Code"
                },
                {
                    "name": "radiationDuration",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureRecommended",
            "baseType": "QDM.ProcedureBase",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterPerformed",
            "baseType": "QDM.EncounterBase",
            "retrievable": false,
            "element": [
                {
                    "name": "admissionSource",
                    "type": "Code"
                },
                {
                    "name": "admissionDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "dischargeDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "dischargeStatus",
                    "type": "Code"
                },
                {
                    "name": "locationPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "diagnosis",
                    "type": "QDM.Diagnosis"
                },
                {
                    "name": "principalDiagnosis",
                    "type": "QDM.Diagnosis"
                },
                {
                    "name": "lengthOfStay",
                    "type": "Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyNotRecommended",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromProviderToPatient",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentNotRecommended",
            "baseType": "QDM.AssessmentBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyPerformed",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                },
                {
                    "name": "status",
                    "type": "Code"
                },
                {
                    "name": "facilityLocation",
                    "type": "Code"
                },
                {
                    "name": "component",
                    "type": "QDM.Component"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromProviderToPatientNotPerformed",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.FamilyHistory",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "recordedDatetime",
                    "type": "DateTime"
                },
                {
                    "name": "relationship",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "dosage",
                    "type": "Quantity"
                },
                {
                    "name": "supply",
                    "type": "Quantity"
                },
                {
                    "name": "frequency",
                    "type": "Code"
                },
                {
                    "name": "route",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromProviderToProvider",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestOrder",
            "baseType": "QDM.LaboratoryTestBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyOrder",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceOrder",
            "baseType": "QDM.SubstanceBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "refills",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCharacteristicPayer",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "cause",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceNotRecommended",
            "baseType": "QDM.SubstanceBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                },
                {
                    "name": "route",
                    "type": "Code"
                },
                {
                    "name": "dose",
                    "type": "Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationAdministered",
            "baseType": "QDM.ImmunizationBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterOrder",
            "baseType": "QDM.EncounterBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.EncounterRecommended",
            "baseType": "QDM.EncounterBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.Allergy",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "prevalencePeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "substance",
                    "type": "Code"
                },
                {
                    "name": "reaction",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProviderCharacteristic",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamRecommended",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AdverseEventIntolerance",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "prevalencePeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "substance",
                    "type": "Code"
                },
                {
                    "name": "reaction",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromPatientToProviderNotPerformed",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamNotOrdered",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Any",
            "baseType": "System.Any",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.CommunicationFromPatientToProvider",
            "baseType": "QDM.CommunicationBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceRecommended",
            "baseType": "QDM.DeviceBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceApplied",
            "baseType": "QDM.DeviceBase",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "anatomialLocationSite",
                    "type": "Code"
                },
                {
                    "name": "anatomicalApproachSite",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationDischarge",
            "baseType": "QDM.MedicationBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationNotDischarged",
            "baseType": "QDM.MedicationBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.AssessmentBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                },
                {
                    "name": "method",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.MedicationDispensed",
            "baseType": "QDM.MedicationBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "refills",
                    "type": "System.Integer"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DiagnosticStudyNotOrdered",
            "baseType": "QDM.DiagnosticStudyBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.DeviceBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestNotRecommended",
            "baseType": "QDM.LaboratoryTestBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PatientCareExperience",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": {
                "name": "authorTime",
                "type": "DateTime"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.LaboratoryTestNotPerformed",
            "baseType": "QDM.LaboratoryTestBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "DateTimeInterval",
            "baseType": "Interval",
            "retrievable": false,
            "element": [
                {
                    "name": "low",
                    "type": "DateTime"
                },
                {
                    "name": "high",
                    "type": "DateTime"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "Quantity",
            "baseType": "Any",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "Decimal"
                },
                {
                    "name": "unit",
                    "type": "String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ProcedureOrder",
            "baseType": "QDM.ProcedureBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "radiationDuration",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamBase",
            "baseType": "QDM.QDMBaseType",
            "retrievable": false,
            "element": [
                {
                    "name": "anatomicalLocationSite",
                    "type": "Code"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "reason",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.ImmunizationNotAdministered",
            "baseType": "QDM.ImmunizationBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceNotAdministered",
            "baseType": "QDM.SubstanceBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceRecommended",
            "baseType": "QDM.SubstanceBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "method",
                    "type": "Code"
                },
                {
                    "name": "refills",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.SubstanceNotOrdered",
            "baseType": "QDM.SubstanceBase",
            "retrievable": false,
            "element": [
                {
                    "name": "authorTime",
                    "type": "DateTime"
                },
                {
                    "name": "negationRationale",
                    "type": "Code"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.InterventionRecommended",
            "baseType": "QDM.InterventionBase",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamPerformed",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": false,
            "element": [
                {
                    "name": "relevantPeriod",
                    "type": "DateTimeInterval"
                },
                {
                    "name": "result",
                    "type": "System.Any"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "QDM.PhysicalExamNotPerformed",
            "baseType": "QDM.PhysicalExamBase",
            "retrievable": false,
            "element": {
                "name": "negationRationale",
                "type": "Code"
            }
        }
    ]
});