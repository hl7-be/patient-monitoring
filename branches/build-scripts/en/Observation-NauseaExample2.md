# Observation: Nausea (2) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Nausea (2)

**status**: Final

**code**: Level of nausea

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: 8



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NauseaExample2",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "700471003",
      "display" : "Level of nausea"
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
      "code" : "LA10140-4",
      "display" : "8"
    }]
  }
}

```
