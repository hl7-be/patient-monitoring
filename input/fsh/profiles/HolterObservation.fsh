Profile: HolterObservation
Parent: Observation
Id: holter-observation
Title: "Holter Observation"
Description: "An observation for rhythm events detected in Holter recordings"
* status 1..1 MS
* code 1..1 MS
* code from HolterEventCodes (required)
* value[x] only CodeableConcept
* valueCodeableConcept from HolterEventCodes (required)
* effective[x] only Period
* effectivePeriod 1..1 MS

// Optional component for average heart rate
* component 0..* MS
* component.code from HolterEventComponentCodes (required)
* component.valueQuantity MS
* component.valueQuantity.system = "http://unitsofmeasure.org"
* component.valueQuantity.code = #/min
* component.valueQuantity.unit = "beats/minute"