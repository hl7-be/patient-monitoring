Instance: PainExample
InstanceOf: Observation
Usage: #example
Title: "Pain example"
Description: "Pain scale is used as answer"
* status = #final
* code = $snomed#21522001 
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA10138-8
* effectivePeriod.start = "2025-07-15T15:49:00+00:00"
* effectivePeriod.end = "2025-07-15T15:50:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)
