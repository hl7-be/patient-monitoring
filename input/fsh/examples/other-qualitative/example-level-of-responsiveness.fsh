Instance: LevelOfResponsivenessExample
InstanceOf: Observation
Usage: #example
Title: "Level of responsiveness example"
Description: "Level of responsiveness (ACVPU scale)"
* status = #final
* code = $loinc#67775-7 
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA17108-4
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)