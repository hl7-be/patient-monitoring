Instance: LeakageCatheterExample	
InstanceOf: Observation
Usage: #example
Title: "Leakage catheter example"
Description: "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined."
* status = #final
* code = $loinc#72514-3 //TODO: Needs correct code
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA10138-8 //TODO: Needs correct value
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)