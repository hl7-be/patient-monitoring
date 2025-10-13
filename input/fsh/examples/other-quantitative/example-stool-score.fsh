Instance: StoolScoreExample
InstanceOf: Observation
Usage: #example
Title: "Stool assessment using the bristol stool form score"
Description: "Score from 1 to 7"
* status = #final
* code.coding[0].system = $snomed
* code.coding[0].code = #443172007
* code.coding[0].display = "Bristol stool form score"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueInteger = 2
* effectiveDateTime = "2025-10-08T10:00:00Z"