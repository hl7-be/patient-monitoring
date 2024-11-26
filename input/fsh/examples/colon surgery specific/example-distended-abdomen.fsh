Instance: DistendedAbdomenExample	
InstanceOf: Observation
Usage: #example
Title: "Distended abdomen example"
Description: "Distended abdomen example description" //TODO: Needs description
* status = #final
* code = $snomed#60728008 "Swollen abdomen" 
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept.coding = $loinc#LA10138-8 //TODO: Needs correct value
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
* contained[0] = nurse
* performer = Reference(nurse)
