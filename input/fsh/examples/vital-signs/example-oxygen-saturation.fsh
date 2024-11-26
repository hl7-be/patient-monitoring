Instance: OxygenSaturationExample
InstanceOf: $vitalsigns
Usage: #example
Description: "Oxygen saturation example" //TODO: Needs description
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject.identifier.system = $fhir
* subject.identifier.value = "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
* valueQuantity.value = 98
* valueQuantity = $UCUM#% "%O2"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectiveDateTime = "2024-11-19T11:16:55+00:00"
