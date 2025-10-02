Profile: HolterDiagnosticReport
Parent: DiagnosticReport
Id: holter-diagnostic-report
Title: "Holter Diagnostic Report"
Description: "A profile for ambulatory cardiac rhythm monitoring reports (Holter)"
* status 1..1 MS
* code from HolterReportCode
* effective[x] only Period
* effectivePeriod 1..1 MS
* result 0..* MS
* result only Reference(HolterObservation)
* conclusion 0..1 MS