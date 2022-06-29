Logical:        FibricheckMeasurementModel
Id:             fibricheck-measurement-model
Title:          "Fibricheck Measurement Logical Model"
Description:    "The data structure for Fibricheck measurement events."

* patient 1..1 BackboneElement "patient data" "patient data"
  * fibricheckUserId 1..1 string "user id" "user id"
  * niss_number 1..1 string "Patient NISS Number" "Patient NISS Number"
  * userName 1..1 HumanName "user name" "user name"
  * userEmail 1..1 string "app version" "app version"
  * dateOfBirth 1..1 date "Date of Birth" "Date of Birth"
  
* status 1..1 code "Measurement status" "Measurement status"
* measurementTimeStamp 1..1 dateTime  "Measurement timestamp" "Measurement timestamp"
* heartRhythm 0..1 BackboneElement "heart rhythm" "heart rhythm"
  * hr-indicator 0..1 code "the result of the finding and review" "the result of the finding and review"
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


CodeSystem:  FCHRIndicatorCS
Id: FCHRIndicatorCS
Title: "HR Indicator Code System"
Description:  "FCHRIndicator"
* #normal "Normal"
* #warning "warning"
* #urgent "Urgent"
* #quality "Quality"


ValueSet: FCHRIndicatorVS
Id: FCHRIndicatorVS
Title: "Heart Rate Indicator Value Set"
Description: "Codes representing the"
* include codes from system FCHRIndicatorCS


CodeSystem:  FCHRFindingCS
Id: FCHRFindingCS
Title: "HR Finding Code System"
Description:  "FCHRFinding"
* #1 "sinus_arrhythmia"
* #2 "extrasystoles_trig_episode"
* #3 "undiagnosable"
* #4 "extrasystoles_isolated"
* #5 "dubious_rhythm"
* #6 "extrasystoles"
* #7 "extrasystoles_trigeminy"
* #8 "tachy_episode"
* #9 "extrasystoles_frequent"
* #10 "phone_incompatible"
* #11 "extrasystoles_big_episode"
* #12 "increased_hrv"
* #13 "sinus"
* #14 "atrial_flutter"
* #15 "brady_episode"
* #16 "tachycardia"
* #17 "extrasystoles_bigminy"
* #18 "tachy_arrhytmia"
* #19 "pacemaker_rhythm"
* #20 "bradycardia"
* #21 "brady_arrhytmia"
* #22 "quality_to_low"
* #23 "atrial_fibrillation"
* #24 "other"
* #25 "no_diagnosis"

ValueSet: FCHRFindingVS
Id: FCHRFindingVS
Title: "Heart Rate Finding Value Set"
Description: "Codes representing the"
* include codes from system FCHRFindingCS


CodeSystem:  FCContextSymptomsCS
Id: FCContextSymptomsCS
Title: "HR Context Symptoms Code System"
Description:  "Context Symptoms"
* #1 "no_symptoms"
* #2 "lightheaded"
* #3 "confused"
* #4 "fatigue"
* #5 "other"
* #6 "palpitations"
* #7 "chest_pains"
* #8 "shortness_of_breath"


ValueSet: FCContextSymptomsVS
Id: FCContextSymptomsVS
Title: "Context findings Value Set"
Description: "Codes representing the"
* include codes from system FCContextSymptomsCS



CodeSystem:  FCContextActivityCS
Id: FCContextActivityCS
Title: "HR Context Activity Code System"
Description:  "Context Activity"
* #1 "activity"
* #2  "resting"
* #3  "sleeping"
* #4  "sitting"
* #5  "walking"
* #6 "working"
* #7  "exercising"
* #8  "other"
* #9  "standing"


ValueSet: FCContextActivityVS
Id: FCContextActivityVS
Title: "Context Activity Value Set"
Description: "Codes representing the"
* include codes from system FCContextActivityCS
