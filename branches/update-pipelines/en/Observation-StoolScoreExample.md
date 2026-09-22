# Stool assessment using the bristol stool form score - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Stool assessment using the bristol stool form score

**status**: Final

**code**: Bristol stool form score

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: 2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "StoolScoreExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "443172007",
      "display" : "Bristol stool form score"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueInteger" : 2
}

```
