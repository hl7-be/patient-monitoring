Instance: LevelOfResponsivenessExample
InstanceOf: Observation
Usage: #example
Title: "Level of responsiveness example"
Description: "Level of responsiveness (AVPU scale)"
* status = #final
* code = $loinc#67775-7 "Level of responsiveness"
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA17108-4
* effectiveDateTime = "2024-11-19T06:48:20+00:00"
* contained[0] = nurse
* performer = Reference(nurse)