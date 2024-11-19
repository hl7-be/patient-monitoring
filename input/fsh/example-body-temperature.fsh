Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Instance: BodyTemperatureExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body Temperature"
* subject.reference = "Patient/EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* component.code = $loinc#8310-5 "Body Temperature"
* component.valueQuantity = 35.29 'Cel' "C"
* device.reference = "Device/Byteflies Vital Signs"
* effectiveDateTime = "2024-11-19T19:30:42+00:00"
