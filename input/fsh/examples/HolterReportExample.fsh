Instance: example-holter-diagnosticreport
InstanceOf: HolterDiagnosticReport
Title: "Holter DiagnosticReport Example"
Description: "This diagnostic report summarizes Holter rhythm findings including AFib and a supraventricular episode."
Usage: #example
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#EC "Electrocardiac (e.g., EKG,  EEC, Holter)"
* code = http://loinc.org#18754-2 "Holter monitor study"
* effectivePeriod.start = "2025-07-15T08:00:00+02:00"
* effectivePeriod.end = "2025-07-15T12:00:00+02:00"
* subject.identifier.system = $vital_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* issued = "2025-07-15T12:00:00+02:00"
* result[+] = Reference(example-holter-afib)
* result[+] = Reference(example-holter-sv)

Instance: example-holter-afib
InstanceOf: HolterObservation
Title: "Holter AFib Episode"
Description: "Detected AFib event"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164889003 "ECG: atrial fibrillation"
* effectivePeriod.start = "2025-07-14T13:24:00+02:00"
* effectivePeriod.end = "2025-07-14T13:26:00+02:00"
* component[+].code = http://loinc.org#8867-4 "Heart rate"
* component[=].valueQuantity.value = 178
* component[=].valueQuantity.unit = "beats/minute"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #/min

Instance: example-holter-sv
InstanceOf: HolterObservation
Title: "Holter Supraventricular Event"
Description: "Supraventricular arrhythmia"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164887001 "ECG: supraventricular arrhythmia"
* effectivePeriod.start = "2025-07-14T14:42:00+02:00"
* effectivePeriod.end = "2025-07-14T14:45:00+02:00"