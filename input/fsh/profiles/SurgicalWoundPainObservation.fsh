Profile: SurgicalWoundPainObservation
Parent: Observation
Id: surgical-wound-pain-observation
Title: "Surgical wound pain observation"
Description: "An observation of the pain reported by the patient in a surgical wound."
* code = $loinc#72514-3 "Pain severity - 0-10"
* value[x] only CodeableConcept
* valueCodeableConcept from PainScale (required)