Instance: BodyWeightExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject.identifier.system = $fhir
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component.code = $loinc#29463-7 "Body weight"
* component.valueQuantity = 89.3 'kg' "kg"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* effectiveDateTime = "2024-11-19T06:48:20+00:00"
* performer = Reference(byteflies)

Instance: vital-signs-box
InstanceOf: Device
Usage: #inline
* identifier.value = "240822yti3tgeyay"
* deviceName.name = "VS-4"
* deviceName.type = #other
* manufacturer = "Byteflies"
* meta.tag = https://api-vitalsigns.byteflies.net/version#20241028-1511 "API Version 20241028-1511"

Instance: byteflies
InstanceOf: Organization
Usage: #inline
* name = "Byteflies"