Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Instance: OxygenSaturationExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#59408-5 "Oxygen saturation"
* subject.reference = "Patient/BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
* component.code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component.valueQuantity = 98 '%' "%O2"
* device.reference = "Device/Byteflies Vital Signs"
* effectiveDateTime = "2024-11-19T11:16:55+00:00"
