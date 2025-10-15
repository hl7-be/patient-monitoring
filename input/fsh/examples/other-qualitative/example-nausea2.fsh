Instance: NauseaExample2
InstanceOf: Observation
Usage: #example
Title: "Nausea example"
Description: "Answers 0-10 scale, 0.5 increments, Very well to Very poor"
* status = #final
* code = $snomed#700471003 "Level of nausea"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA10140-4 "8"
* effectiveDateTime = "2025-10-08T10:00:00Z"