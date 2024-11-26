Instance: ShortnessOfBreathExample
InstanceOf: Observation
Usage: #example
Title: "Shortness of breath example"
Description: "Possible answers are yes and no"
* status = #final
* code = $snomed#267036007 "Shortness of breath"
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#373066001
* effectiveDateTime = "2024-11-19T06:48:20+00:00"
* contained[0] = nurse
* performer = Reference(nurse)