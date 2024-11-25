Instance: OxygenSaturationExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject.identifier.system = $fhir
* subject.identifier.value = "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
* component.code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component.valueQuantity = 98 '%' "%O2"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectiveDateTime = "2024-11-19T11:16:55+00:00"
