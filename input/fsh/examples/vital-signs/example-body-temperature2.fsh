Instance: BodyTemperatureExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #example
Description: "Temperature example without device" 
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body Temperature"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 35.29
* valueQuantity = $UCUM#Cel "C"
* effectiveDateTime = "2024-11-19T19:30:42+00:00"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
