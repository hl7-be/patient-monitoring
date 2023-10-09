Instance: tm-e678fa66-fa15-482b-a3a2-49fc5a071d33
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* subject.reference = "FR_FL_3304"
* effectiveDateTime = "2023-08-18T07:05:19+00:00"
* code = $loinc#85354-9
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 128 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 71 'mm[Hg]' "mmHg"
* device.reference = "Bytelies - Vital Signs Service"

// Findings: Added main code