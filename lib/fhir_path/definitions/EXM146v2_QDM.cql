
/*
This example is a work in progress and should not be considered a final specification
or recommendation for guidance. This example will help guide and direct the process
of finding conventions and usage patterns that meet the needs of the various stakeholders
in the measure development community.
*/

/*
 * This take differs from the original in that it uses a function for the
 * repeated timing logic between the encounter and pharyngitis.
 */

using QDM

valueset "Acute Pharyngitis": '2.16.840.1.113883.3.464.1003.102.12.1011'
valueset "Acute Tonsillitis": '2.16.840.1.113883.3.464.1003.102.12.1012'
valueset "Ambulatory/ED Visit": '2.16.840.1.113883.3.464.1003.101.12.1061'
valueset "Antibiotic Medications": '2.16.840.1.113883.3.464.1003.196.12.1001'
valueset "Group A Streptococcus Test": '2.16.840.1.113883.3.464.1003.198.12.1012'

parameter MeasurementPeriod Interval<DateTime>
