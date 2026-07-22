# Observation: Pain During Urination - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Pain During Urination

**status**: Final

**code**: Dysuria

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2024-11-15 09:56:00+0000 --> 2024-11-15 09:57:00+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**value**: Yes (qualifier value)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PainDuringUrinationExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "49650001"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-15T09:56:00+00:00",
    "end" : "2024-11-15T09:57:00+00:00"
  },
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373066001"
    }]
  }
}

```
