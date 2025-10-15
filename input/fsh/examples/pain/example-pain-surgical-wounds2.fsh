Instance: PainSurgicalWoundsExample2
InstanceOf: Observation
Usage: #example
Title: "Pain surgical wounds example"
Description: "Pain score related to the surgical wound"
* status = #final
* code = $loinc#72514-3 "Pain severity - 0-10"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA10138-8 "6"
* effectiveDateTime = "2025-10-08T10:00:00Z"
* contained[0] = surgicalWound
* focus = Reference(surgicalWound)