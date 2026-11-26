# Temperature observation for OPAT patient - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Temperature observation for OPAT patient

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

**effective**: 2025-11-21 11:49:11+0100

**value**: 36.1 °C (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Observation-Temperatuur",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8310-5",
      "display" : "Body temperature"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "effectiveDateTime" : "2025-11-21T11:49:11+01:00",
  "valueQuantity" : {
    "value" : 36.1,
    "unit" : "°C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
