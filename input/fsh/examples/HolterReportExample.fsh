Instance: example-holter-diagnosticreport
InstanceOf: HolterDiagnosticReport
Title: "Holter DiagnosticReport Example"
Description: "This diagnostic report summarizes Holter rhythm findings including AFib and a supraventricular episode."
Usage: #example
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#EC "Holter Monitor"
* code = http://loinc.org#18754-2 "Holter rhythm report"
* effectivePeriod.start = "2025-07-15T08:00:00+02:00"
* effectivePeriod.end = "2025-07-15T12:00:00+02:00"
* issued = "2025-07-15T12:00:00+02:00"
* result[+] = Reference(example-holter-afib)
* result[+] = Reference(example-holter-sv)

Instance: example-holter-afib
InstanceOf: HolterObservation
Title: "AFib Episode"
Description: "Detected AFib event"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164889003 "Atrial fibrillation"
* effectivePeriod.start = "2025-07-14T13:24:00+02:00"
* effectivePeriod.end = "2025-07-14T13:26:00+02:00"
* component[+].code = http://hl7belgium.org/fhir/CodeSystem/holter-event-component-codes#heartrate
* component[=].valueQuantity.value = 178
* component[=].valueQuantity.unit = "beats/minute"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #/min

Instance: example-holter-sv
InstanceOf: HolterObservation
Title: "Supraventricular Event"
Description: "Supraventricular arrhythmia"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164887001 "Supraventricular arrhythmia"
* effectivePeriod.start = "2025-07-14T14:42:00+02:00"
* effectivePeriod.end = "2025-07-14T14:45:00+02:00"