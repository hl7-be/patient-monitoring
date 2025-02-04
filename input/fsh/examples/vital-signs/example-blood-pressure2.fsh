Instance: BloodPressureExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #example
Description: "Blood Pressure example without device" 
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 140 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 74 'mm[Hg]' "mmHg"
* effectiveDateTime = "2024-11-18T09:38:52+00:00"
* contained[0] = nurse
* performer = Reference(nurse)