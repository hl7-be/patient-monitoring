Instance: ReducedAppetiteExample	
InstanceOf: Observation
Usage: #example
Title: "Reduced appetite example"
Description: "Answer options are absent / mild / moderate / severe."
* status = #final
* code = $snomed#64379006  
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#255604002
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)