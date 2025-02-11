Instance: RespiratoryRateExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #example
Description: "Respiration example registered by patient"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 17.35
* valueQuantity = $UCUM#/min "breaths/minute"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2024-11-15T09:56:00+00:00"
* effectivePeriod.end = "2024-11-15T09:57:00+00:00"