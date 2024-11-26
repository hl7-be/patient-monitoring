Instance: PainMedicationTakenExample
InstanceOf: Observation
Usage: #example
Title: "INCOMPLETE: Pain medication taken example"
Description: "NEEDS ATTENTION: No LOINC or SNOMEDCT code currently exists for Pain medication taken.  Change answer options or request new LOINC codes."
* status = #final
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" //TODO: Needs correct code
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept.coding = $loinc#LA10138-8 //TODO: Find out which valueset to use
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* performer.identifier.system = $fhir
* performer.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
