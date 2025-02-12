Instance: OxygenSaturationExample
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #example
Description: "Oxygen saturation example" //TODO: Needs description
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0].system = $loinc
* code.coding[0].code = #2708-6
* code.coding[0].display = "Oxygen saturation in Arterial blood"
* code.coding[+].system = $loinc
* code.coding[=].code = #59408-5
* code.coding[=].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* subject.identifier.system = $vital_patientId
* subject.identifier.value = "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
* valueQuantity.value = 98
* valueQuantity = $UCUM#% "%O2"
* contained[0] = vital-signs-box
* contained[+] = byteflies
* device = Reference(vital-signs-box)
* performer = Reference(byteflies)
* effectiveDateTime = "2024-11-19T11:16:55+00:00"
