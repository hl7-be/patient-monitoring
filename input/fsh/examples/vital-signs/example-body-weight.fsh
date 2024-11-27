Instance: BodyWeightExample
InstanceOf: $vitalsigns
Usage: #example
Description: "Body Weight example" //TODO: Needs description
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueQuantity.value = 89.3
* valueQuantity = $UCUM#kg "kg"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectiveDateTime = "2024-11-19T06:48:20+00:00"