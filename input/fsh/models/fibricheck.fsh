Logical:        FibricheckMeasurementModel
Id:             FibricheckMeasurementModel
Title:          "Fibricheck Measurement Logical Model"
Description:    "The data structure for Fibricheck measurement events."

* patient 1..1 BackboneElement "patient data" "patient data"
  * fibricheckUserId 1..1 string "user id" "user id"
  * nissNumber 1..1 string "Patient NISS Number" "Patient NISS Number"
  * userName 1..1 HumanName "user name" "user name"
  * userEmail 1..1 string "app version" "app version"
  * dateOfBirth 1..1 date "Date of Birth" "Date of Birth"
  
* status 1..1 code "Measurement status" "Measurement status"
* measurementTimeStamp 1..1 dateTime  "Measurement timestamp" "Measurement timestamp"
* heartRhythm 0..1 BackboneElement "heart rhythm" "heart rhythm"
  * hrindicator 0..1 code "the result of the finding and review" "the result of the finding and review"
    * ^binding.valueSet = Canonical (FCHRIndicatorVS)
    * ^binding.strength = #required
  * hrReviewFinding 0..1 code "the finding after review"
    * ^binding.valueSet = Canonical (FCHRFindingVS)
    * ^binding.strength = #required
  * rmssd 0..1 decimal "rmssd value" "root mean square of successive differences between normal heartbeats"
* context 0..1 BackboneElement "context during a finding" "context during a finding"
  * symptoms 0..* code "symptoms" "symptoms"
    * ^binding.valueSet = Canonical (FCContextSymptomsVS)
    * ^binding.strength = #required
  * activityStatus 0..1 code "activity status" "activity status"
    * ^binding.valueSet = Canonical (FCContextActivityVS)
    * ^binding.strength = #required
  * chadsvasc 0..* code "previous chadsvasc questions and score" "previous chadsvasc questions and score"
* reports 0..1 BackboneElement "reports" "reports"
  * eventReport 0..1 Attachment "event report" "event report"
  * aggregatedReport 0..1 Attachment "Aggregated report" "Aggregated report"
* capture 0..1 BackboneElement "capture data" "capture data"
  * measurementAttempts 1..1 integer  "Measurement attempts" "Measurement attempts"
  * appVersion 1..1 string  "app version" "app version"


