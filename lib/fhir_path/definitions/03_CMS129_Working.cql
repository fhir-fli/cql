
using QDM version '5.0'

valueset "Cancer Staging": 'Cancer Staging'
valueset "Prostate Cancer Primary Tumor Size T1a": 'Prostate Cancer Primary Tumor Size T1a'
valueset "Prostate Cancer Primary Tumor Size T1b": 'Prostate Cancer Primary Tumor Size T1b'
valueset "Prostate Cancer Primary Tumor Size T1c": 'Prostate Cancer Primary Tumor Size T1c'
valueset "Prostate Cancer Primary Tumor Size T2a": 'Prostate Cancer Primary Tumor Size T2a'

parameter "Measurement Period" Interval<DateTime>

/*
$MostRecentPrCaCancerStaging =
  "Procedure, Performed: Cancer Staging" satisfies all:
    Most Recent: starts before start of $FirstProstateCancerTreatment
    satisfies any:
      (result: Prostate Cancer Primary Tumor Size T1a)
      (result: Prostate Cancer Primary Tumor Size T1b)
      (result: Prostate Cancer Primary Tumor Size T1c)
      (result: Prostate Cancer Primary Tumor Size T2a)
*/
