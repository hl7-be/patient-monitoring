# Bladder Continence - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Bladder Continence

**status**: Final

**code**: Bladder continence [Minimum Data Set]

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: USUALLY CONTINENT-BLADDER, incontinent episodes once a week or less; BOWEL, less than weekly



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BladderContinenceExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "45619-4",
      "display" : "Bladder continence [Minimum Data Set]"
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
      "code" : "LA127-3",
      "display" : "USUALLY CONTINENT-BLADDER, incontinent episodes once a week or less; BOWEL, less than weekly"
    }]
  }
}

```
