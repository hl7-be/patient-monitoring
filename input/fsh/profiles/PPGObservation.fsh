Profile: PPGObservation
Parent: Observation
Id: ppg-observation
Title: "PPG Heart Rhythm Screening"
Description: "Profile for heart rhythm screening observations using photoplethysmography (PPG)."

* status 1..1 MS
* code 1..1 MS
* code.text = "PPG Heart Rhythm Screening"

* effectiveDateTime 1..1
* issued 1..1

* performer 0..1

* component 1..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains 
    rhythm 1..1 and
    heartrate 1..1 and
    activity 0..1 and
    symptom 0..* and
    severity 0..1

* component[rhythm].code.coding 1..*
* component[rhythm].code from PPGRhythmCodes (required)

* component[heartrate].code.coding 1..*
* component[heartrate].code from PPGHeartRateCodes (required)
* component[heartrate].valueQuantity 1..1
* component[heartrate].valueQuantity.system = "http://unitsofmeasure.org"
* component[heartrate].valueQuantity.code = #/min
* component[heartrate].valueQuantity.unit = "beats/minute"

* component[activity].code.coding 1..*
* component[activity].valueCodeableConcept from PPGActivityContext (extensible)

* component[symptom].code.coding 1..*
* component[symptom].valueCodeableConcept from PPGSymptomCodes (extensible)

* component[symptom].code.coding 1..*
* component[symptom].valueCodeableConcept from PPGSeverityCodes (required)



