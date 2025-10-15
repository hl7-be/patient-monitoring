Profile: AppetiteObservation
Parent: Observation
Id: appetite-observation
Title: "Appetite Observation"
Description: "An observation of how well or poor the appetite of a patient is."
* code = $snomed#709263008 "Assessment of appetite"
* value[x] only CodeableConcept
* valueCodeableConcept from WellPoorScale (required)