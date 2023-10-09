Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Instance: tm-e678fa66-fa15-482b-a3a2-49fc5a071d31
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject.reference = "FR_FL_3304"
* effectiveDateTime = "2023-08-18T07:05:35+00:00"
* valueQuantity = 80.2 'kg' "kg"
* device.reference = "Bytelies - Vital Signs Service"


// Findings: Use of Component is not needed and is not good for interoperability