
using QDM version '5.0'

/*
Population Criteria
Initial Population =
  AND: Age>= 18 year(s) at: Occurrence A of $EncounterInpatientNonElective
  AND:
    OR: Intersection of:
      Occurrence A of $EncounterInpatientNonElective
      "Encounter, Performed: Non-Elective Inpatient Encounter (principal diagnosis: Ischemic Stroke)"
    OR: Intersection of:
      Occurrence A of $EncounterInpatientNonElective
      "Encounter, Performed: Non-Elective Inpatient Encounter (principal diagnosis: Hemorrhagic Stroke)"

Denominator =
  AND: Initial Population
  AND: Intersection of:
    Occurrence A of $EncounterInpatientNonElective
    "Encounter, Performed: Non-Elective Inpatient Encounter (principal diagnosis: Ischemic Stroke)"

Denominator Exclusions =
  OR: "Laboratory Test, Performed: LDL-c" satisfies all:
    (result < 70 mg/dL)
    satisfies any:
      <= 30 day(s) ends before start of Occurrence A of $EncounterInpatientNonElective
      starts during Occurrence A of $EncounterInpatientNonElective
  OR: Intersection of:
    Occurrence A of $EncounterInpatientNonElective
    "Encounter, Performed: Non-Elective Inpatient Encounter" satisfies any:
      (discharge status: Discharge To Acute Care Facility)
      (discharge status: Left Against Medical Advice)
      (discharge status: Patient Expired)
      (discharge status: Discharged to Home for Hospice Care)
      (discharge status: Discharged to Health Care Facility for Hospice Care)
  OR: $InterventionComfortMeasures starts during ("Encounter, Performed: Emergency Department Visit" <= 1 hour(s) ends before or concurrent with start of Occurrence A of $EncounterInpatientNonElective )
  OR: $InterventionComfortMeasures starts during Occurrence A of $EncounterInpatientNonElective

Numerator =
  AND: "Medication, Discharge: Statin Grouper" starts during Occurrence A of $EncounterInpatientNonElective

Numerator Exclusions =
  None

Denominator Exceptions =
  OR: "Medication, Allergy: Statin Allergen" starts before or concurrent with end of Occurrence A of $EncounterInpatientNonElective
  OR: Union of:
    "Medication, Discharge not done: Patient Refusal" for "Statin ingredient specific"
    "Medication, Discharge not done: Medical Reason" for "Statin ingredient specific"
    starts during Occurrence A of $EncounterInpatientNonElective

Stratification =
  None

Data Criteria (QDM Variables)
  $EncounterInpatientNonElective =
  "Encounter, Performed: Non-Elective Inpatient Encounter" satisfies all:
    (length of stay <= 120 day(s))
    ends during "Measurement Period"

$InterventionComfortMeasures =
  Union of:
    "Intervention, Order: Comfort Measures"
    "Intervention, Performed: Comfort Measures"

Data Criteria (QDM Data Elements)
  "Encounter, Performed: Emergency Department Visit" using "Emergency Department Visit SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.292)"
  "Encounter, Performed: Non-Elective Inpatient Encounter" using "Non-Elective Inpatient Encounter SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.424)"
  "Intervention, Order: Comfort Measures" using "Comfort Measures SNOMEDCT Value Set (1.3.6.1.4.1.33895.1.3.0.45)"
  "Intervention, Performed: Comfort Measures" using "Comfort Measures SNOMEDCT Value Set (1.3.6.1.4.1.33895.1.3.0.45)"
  "Laboratory Test, Performed: LDL-c" using "LDL-c LOINC Value Set (2.16.840.1.113883.3.117.1.7.1.215)"
  "Medication, Allergy: Statin Allergen" using "Statin Allergen RXNORM Value Set (2.16.840.1.113883.3.117.1.7.1.423)"
  "Medication, Discharge: Statin Grouper" using "Statin Grouper Grouping Value Set (2.16.840.1.113762.1.4.1110.19)"
  "Medication, Discharge: Statin ingredient specific" using "Statin ingredient specific RXNORM Value Set (2.16.840.1.113762.1.4.1021.7)"
  "Medication, Discharge not done: Patient Refusal" using "Patient Refusal SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.93)"
  "Medication, Discharge not done: Medical Reason" using "Medical Reason SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.473)"
  Attribute: "Discharge status: Patient Expired" using "Patient Expired SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.309)"
  Attribute: "Discharge status: Left Against Medical Advice" using "Left Against Medical Advice SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.308)"
  Attribute: "Discharge status: Discharged to Health Care Facility for Hospice Care" using "Discharged to Health Care Facility for Hospice Care SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.207)"
  Attribute: "Principal diagnosis: Ischemic Stroke" using "Ischemic Stroke Grouping Value Set (2.16.840.1.113883.3.117.1.7.1.247)"
  Attribute: "Discharge status: Discharge To Acute Care Facility" using "Discharge To Acute Care Facility SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.87)"
  Attribute: "Discharge status: Discharged to Home for Hospice Care" using "Discharged to Home for Hospice Care SNOMEDCT Value Set (2.16.840.1.113883.3.117.1.7.1.209)"
  Attribute: "Principal diagnosis: Hemorrhagic Stroke" using "Hemorrhagic Stroke Grouping Value Set (2.16.840.1.113883.3.117.1.7.1.212)"

Supplemental Data Elements
  "Patient Characteristic Ethnicity: Ethnicity" using "Ethnicity CDCREC Value Set (2.16.840.1.114222.4.11.837)"
  "Patient Characteristic Payer: Payer" using "Payer SOP Value Set (2.16.840.1.114222.4.11.3591)"
  "Patient Characteristic Race: Race" using "Race CDCREC Value Set (2.16.840.1.114222.4.11.836)"
  "Patient Characteristic Sex: ONC Administrative Sex" using "ONC Administrative Sex AdministrativeGender Value Set (2.16.840.1.113762.1.4.1)"

Risk Adjustment Variables
  None

*/


valueset "Emergency Department Visit": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.292'
valueset "Non-Elective Inpatient Encounter": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.424'
valueset "Comfort Measures": 'urn:oid:1.3.6.1.4.1.33895.1.3.0.45'
valueset "LDL-c": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.215'
valueset "Statin Allergen": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.423'
valueset "Statin Grouper": 'urn:oid:2.16.840.1.113762.1.4.1110.19'
valueset "Statin ingredient specific": 'urn:oid:2.16.840.1.113762.1.4.1021.7'
valueset "Medical Reason": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.473'
valueset "Patient Refusal": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.93'
valueset "Patient Expired": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.309'
valueset "Left Against Medical Advice": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.308'
valueset "Discharged to Health Care Facility for Hospice Care": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.207'
valueset "Ischemic Stroke": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.247'
valueset "Discharge To Acute Care Facility": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.87'
valueset "Discharged to Home for Hospice Care": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.209'
valueset "Hemorrhagic Stroke": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.212'
valueset "Ethnicity": 'urn:oid:2.16.840.1.114222.4.11.837'
valueset "Payer": 'urn:oid:2.16.840.1.114222.4.11.3591'
valueset "Race": 'urn:oid:2.16.840.1.114222.4.11.836'
valueset "ONC Administrative Sex": 'urn:oid:2.16.840.1.113762.1.4.1'

parameter "Measurement Period" default Interval[@2015-01-01T00:00:00, @2016-01-01T00:00:00]