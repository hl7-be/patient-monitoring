# Clinical note - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Clinical note

**status**: Final

**code**: Clinical note

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: Example clinical note



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ClinicalNoteExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "107903-7",
      "display" : "Clinical note"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueString" : "Example clinical note"
}

```
