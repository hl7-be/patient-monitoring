Instance: PainKillerExample
InstanceOf: Observation
Usage: #example
Title: "Usage of pain killers"
Description: "Did the patient take any painkillers (Yes/No)"
* status = #final
* code = $snomed#52685006 "Administration of analgesic (painkillers)"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $snomed#373066001 "Yes"
* effectiveDateTime = "2025-10-08T10:00:00Z"