Instance: ShoulderPainExample
InstanceOf: Observation
Usage: #example
Title: "Shoulder pain example"
Description: "Pain scale is used as answer."
* status = #final
* code = $snomed#45326000
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#24028007
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)
