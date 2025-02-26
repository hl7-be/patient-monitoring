Instance: NationalEarlyWarningScoreExample
InstanceOf: Observation
Usage: #example
Title: "National Early Warning Score example"
Description: "National Early Warning Score (NEWS)"
* status = #final
* code = $snomed#1287358002 
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueQuantity.value = 6
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)