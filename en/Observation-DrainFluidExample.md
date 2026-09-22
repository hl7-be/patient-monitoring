# Observation: Drain Fluid Output - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Drain Fluid Output

**status**: Final

**code**: Fluid output from drain

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/D358D4B4-6007-4C3E-A33B-056773F45DC9

**effective**: 2025-10-08 10:00:00+0000

**value**: 35.29 mL/d (Details: UCUM codemL/d = 'mL/d')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "DrainFluidExample",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "251843005",
      "display" : "Fluid output from drain"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2025-10-08T10:00:00Z",
  "valueQuantity" : {
    "value" : 35.29,
    "unit" : "mL/d",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL/d"
  }
}

```
