Instance: BodyWeightExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject.reference = "Patient/D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component.code = $loinc#29463-7 "Body weight"
* component.valueQuantity = 39.3 'kg' "kg"
* device.reference = "Device/Byteflies Vital Signs"
* effectiveDateTime = "2024-11-19T06:48:20+00:00"
