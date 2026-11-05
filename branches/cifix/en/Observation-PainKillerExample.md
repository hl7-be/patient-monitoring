# Usage of pain killers - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Usage of pain killers

**status**: Final

**code**: Administration of analgesic

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: Yes



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PainKillerExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52685006",
      "display" : "Administration of analgesic"
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
      "system" : "http://snomed.info/sct",
      "code" : "373066001",
      "display" : "Yes"
    }]
  }
}

```
