Profile: NauseaObservation
Parent: Observation
Id: nausea-observation
Title: "Nausea Observation"
Description: "An observation of how well or poor the nausea of a patient is."
* code = $snomed#700471003 "Level of nausea"
* value[x] only CodeableConcept
* valueCodeableConcept from WellPoorScale (required)