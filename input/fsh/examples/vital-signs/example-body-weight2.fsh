Instance: BodyWeightExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Usage: #example
Description: "Body Weight example registered by patient" //TODO: Needs description
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 89.3
* valueQuantity = $UCUM#kg "kg"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2024-11-18T09:38:52+00:00"
* effectivePeriod.end = "2024-11-18T09:38:52+00:00"