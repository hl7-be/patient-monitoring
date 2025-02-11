Instance: HeartRateExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #example
Description: "Heart Rate example registered by patient without device"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 78
* valueQuantity = $UCUM#/min "/min"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriodStart = "2024-11-18T09:38:52+00:00"
* effectivePeriodEnd = "2024-11-18T09:38:52+00:00"
