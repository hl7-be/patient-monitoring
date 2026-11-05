# incontinence assessment using the wexner/CCIS score - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: incontinence assessment using the wexner/CCIS score

**status**: Final

**code**: Wexner Continence Score

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: 5



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IncontinenceScoreExample",
  "status" : "final",
  "code" : {
    "text" : "Wexner Continence Score"
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueInteger" : 5
}

```
