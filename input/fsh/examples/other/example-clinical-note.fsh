Instance: ClinicalNoteExample
InstanceOf: Observation
Usage: #example
Title: "Clinical note"
Description: "Free text clinical note"
* status = #final
* code.coding[0].system = $loinc
* code.coding[0].code = #107903-7
* code.coding[0].display = "Clinical note"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueString = "Example clinical note"
* effectiveDateTime = "2025-10-08T10:00:00Z"