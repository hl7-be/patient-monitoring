Instance: ShortnessOfBreathExample
InstanceOf: Observation
Usage: #example
Title: "Shortness of breath example"
Description: "Possible answers are yes and no"
* status = #final
* code = $snomed#267036007 
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#373066001
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)