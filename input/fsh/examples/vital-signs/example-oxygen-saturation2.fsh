Instance: OxygenSaturationExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #example
Description: "Oxygen saturation example registered by patient"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0].system = $loinc
* code.coding[0].code = #2708-6
* code.coding[0].display = "Oxygen saturation in Arterial blood"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 98
* valueQuantity = $UCUM#% "%O2"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2024-11-18T09:38:52+00:00"
* effectivePeriod.end = "2024-11-18T09:38:52+00:00"