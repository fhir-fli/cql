
/*
  Based on CMS9v4
  Exclusive Breast Milk Feeding

  Episode-of-Care-Based Proportion Measure with multiple populations

  NOTE: This example is purposefully based on version 4 of the measure to allow
  for exploration of the expression of the "intention to breastfeed" concept.

  This example is a work in progress and should not be considered a final specification
  or recommendation for guidance. This example will help guide and direct the process
  of finding conventions and usage patterns that meet the needs of the various stakeholders
  in the measure development community.

*/

using QDM version '5.0'

valueset "Feeding Intention-Breast": 'urn:oid:2.16.840.1.113762.1.4.1045.29'
valueset "Galactosemia": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.35'
valueset "Single Live Birth": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.25)'
valueset "Single Live Born Newborn Born in Hospital": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.26'
valueset "Encounter Inpatient": 'urn:oid:2.16.840.1.113883.3.666.5.307'
valueset "Estimated Gestational Age at Birth": 'urn:oid:2.16.840.1.113762.1.4.1045.47'
valueset "Parenteral Nutrition": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.38'
valueset "Breast Milk": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.30'
valueset "Dietary Intake Other than Breast Milk": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.27'
valueset "Neonatal Intensive Care Unit (NICU)": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.75'
valueset "Patient Expired": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.309'
valueset "Discharge To Acute Care Facility": 'urn:oid:2.16.840.1.113883.3.117.1.7.1.87'

valueset "Ethnicity": 'urn:oid:2.16.840.1.114222.4.11.837'
valueset "Payer": 'urn:oid:2.16.840.1.114222.4.11.3591'
valueset "Race": 'urn:oid:2.16.840.1.114222.4.11.836'
valueset "ONC Administrative Sex": 'urn:oid:2.16.840.1.113762.1.4.1'

code "Normative No": 'No' from "SNOMED-CT"

parameter "Measurement Period" Interval<DateTime>
