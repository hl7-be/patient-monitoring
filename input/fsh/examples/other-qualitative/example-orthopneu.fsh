Instance: OrthopneuExample
InstanceOf: Observation
Usage: #example
Title: "Orthopneu example"
Description: "Possible answers are absent, mild, moderate, severe"
* status = #final
* code = $snomed#62744007
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#255604002
* effectivePeriod.start = "2024-11-18T09:38:52+00:00"
* effectivePeriod.end = "2024-11-18T09:38:52+00:00"
* contained[0] = nurse
* performer = Reference(nurse)