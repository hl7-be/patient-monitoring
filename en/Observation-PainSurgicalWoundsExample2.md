# Observation: Pain at Surgical Wounds (2) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Pain at Surgical Wounds (2)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PainSurgicalWoundsExample2",
  "contained" : [{
    "resourceType" : "Condition",
    "id" : "surgicalWound",
    "clinicalStatus" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "112633009",
        "display" : "Surgical wound"
      }]
    },
    "subject" : {
      "identifier" : {
        "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
        "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
      }
    }
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72514-3",
      "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "focus" : [{
    "reference" : "#surgicalWound"
  }],
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA10138-8",
      "display" : "6"
    }]
  }
}

```
