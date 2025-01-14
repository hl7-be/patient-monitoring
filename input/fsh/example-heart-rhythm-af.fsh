Instance: HeartRhythmExample
InstanceOf: $vitalsigns
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#LL3818-3 "Cardiac rhythm"
* subject.reference = "Patient/D358D4B4-6007-4C3E-A33B-056773F45DC9"
* component.code = $loinc#LL3818-3 "Cardiac rhythm"
* component.valueQuantity = $loinc#LA17084-7 "Atrial fibrillation"
* device.reference = "Device/FibriCheck Mobile Application"
* effectiveDateTime = "2025-01-14T19:38:52+00:00"
