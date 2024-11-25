Instance: BodyTemperatureExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body Temperature"
* subject.identifier.system = $fhir
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* component.code = $loinc#8310-5 "Body Temperature"
* component.valueQuantity = 35.29 'Cel' "C"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectiveDateTime = "2024-11-19T19:30:42+00:00"
