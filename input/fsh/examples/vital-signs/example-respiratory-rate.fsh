Instance: RespiratoryRateExample
InstanceOf: $vitalsigns
Usage: #example
Description: "Respiration example" //TODO: Needs description
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject.identifier.system = $fhir
* subject.identifier.value = "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
* valueQuantity.value = 17.35
* valueQuantity = $UCUM#/min "breaths/minute"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"
