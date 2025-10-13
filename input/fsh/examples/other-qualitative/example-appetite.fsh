Instance: AppetiteExample
InstanceOf: Observation
Usage: #example
Title: "Appetite example"
Description: "Answer scaled 0 to 10 with steps of 0.5. 0 being being very poor, 10 being very well."
* status = #final
* code.coding[0].system = $snomed
* code.coding[0].code = #709263008
* code.coding[0].display = "Appetite assessment"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept.coding[0].system = $loinc
* valueCodeableConcept.coding[0].code = #LA10137-0
* valueCodeableConcept.coding[0].display = "5"
* effectiveDateTime = "2025-10-08T10:00:00Z"