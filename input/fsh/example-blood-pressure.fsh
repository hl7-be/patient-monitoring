Instance: BloodPressureExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure"
* subject.reference = "Patient/D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 140 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 74 'mm[Hg]' "mmHg"
* device.reference = "Device/Byteflies Vital Signs"
* effectiveDateTime = "2024-11-18T09:38:52+00:00"
