# DiagnosticReport: Holter - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example DiagnosticReport: DiagnosticReport: Holter

Profile: [Holter Diagnostic Report](StructureDefinition-holter-diagnostic-report.md)

## Holter monitor study (Electrocardiac (e.g., EKG, EEC, Holter)) 

| | |
| :--- | :--- |
| Subject | Unable to get Patient Details |
| Relevant Time | 2025-07-15 08:00:00+0200 --> 2025-07-15 12:00:00+0200 |
| Reported | 2025-07-15 12:00:00+0200 |

**Report Details**

* **Code**: [ECG: atrial fibrillation](Observation-example-holter-afib.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2025-07-14 13:24:00+0200 --> 2025-07-14 13:26:00+0200
* **Code**: [ECG: supraventricular arrhythmia](Observation-example-holter-sv.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2025-07-14 14:42:00+0200 --> 2025-07-14 14:45:00+0200



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "example-holter-diagnosticreport",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-diagnostic-report"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "EC",
      "display" : "Electrocardiac (e.g., EKG,  EEC, Holter)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18754-2",
      "display" : "Holter monitor study"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectivePeriod" : {
    "start" : "2025-07-15T08:00:00+02:00",
    "end" : "2025-07-15T12:00:00+02:00"
  },
  "issued" : "2025-07-15T12:00:00+02:00",
  "result" : [{
    "reference" : "Observation/example-holter-afib"
  },
  {
    "reference" : "Observation/example-holter-sv"
  }]
}

```
