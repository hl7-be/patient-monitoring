Instance: NauseaExample	
InstanceOf: Observation
Usage: #example
Title: "Nausea example"
Description: "Answer options are none, mild, moderate, severe."
* status = #final
* code = $snomed#60728008 
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA6752-5
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)