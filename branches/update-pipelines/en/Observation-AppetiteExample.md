# Appetite example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Appetite example

**status**: Final

**code**: Assessment of appetite

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: 5



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AppetiteExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "709263008",
      "display" : "Assessment of appetite"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA10137-0",
      "display" : "5"
    }]
  }
}

```
