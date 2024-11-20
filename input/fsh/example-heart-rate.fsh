Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Instance: HeartRateExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject.reference = "Patient/D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component.code = $loinc#8867-4 "Heart rate"
* component.valueQuantity = 78 '/min' "beats/min"
* device.reference = "Device/Byteflies Vital Signs"
* effectiveDateTime = "2024-11-18T09:38:52+00:00"
