
/*
This example is based on CMS52v7 - HIV/AIDS: Pneumocystis Jiroveci Pneumonia (PCP) Prophylaxis.
The example illustrates comparing pairs of events.
*/

using QDM version '5.3'

valueset "Office Visit": 'urn:oid:2.16.840.1.113883.3.464.1003.101.12.1001'
valueset "Outpatient Consultation": 'urn:oid:2.16.840.1.113883.3.464.1003.101.12.1008'

parameter "Measurement Period" Interval<DateTime>
