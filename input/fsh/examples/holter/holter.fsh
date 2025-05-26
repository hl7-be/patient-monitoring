Instance: holter-report
InstanceOf: DiagnosticReport
Title: "Holter Diagnostic Report"
Description: "A DiagnosticReport for ambulatory cardiac rhythm monitoring (Holter)"
Usage: #example
* status = #final
* issued = "2025-03-03T10:34:00+01:00"
* code = http://loinc.org#18754-2 "Ambulatory cardiac rhythm monitor (Holter)"
* effectivePeriod.start = "2024-08-14T00:00:00+02:00"
* effectivePeriod.end = "2024-08-15T00:00:00+02:00"
* conclusion = "Structured raw annotations for Holter monitoring"
* result[0] = Reference(afib-group)
* result[1] = Reference(pause-brady-group)
* result[2] = Reference(vt-group)
* result[3] = Reference(obs-heartrate)
* result[4] = Reference(sve-group)
* result[5] = Reference(ve-group)
