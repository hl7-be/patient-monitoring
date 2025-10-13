Instance: IncontinenceScoreExample
InstanceOf: Observation
Usage: #example
Title: "incontinence assessment using the wexner/CCIS score"
Description: "Score from 0 to 20"
* status = #final
* code.coding[0].system = $snomed
* code.coding[0].code = #??
* code.coding[0].display = "Wexner Continence Score"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueInteger = 5
* effectiveDateTime = "2025-10-08T10:00:00Z"