# Holter AFib Episode - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Holter AFib Episode

Profile: [Holter Observation](StructureDefinition-holter-observation.md)

**status**: Final

**code**: ECG: atrial fibrillation

**effective**: 2025-07-14 13:24:00+0200 --> 2025-07-14 13:26:00+0200

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Heart rate | 178 beats/minute (Details: UCUM code/min = '/min') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-holter-afib",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "164889003",
      "display" : "ECG: atrial fibrillation"
    }]
  },
  "effectivePeriod" : {
    "start" : "2025-07-14T13:24:00+02:00",
    "end" : "2025-07-14T13:26:00+02:00"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8867-4",
        "display" : "Heart rate"
      }]
    },
    "valueQuantity" : {
      "value" : 178,
      "unit" : "beats/minute",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    }
  }]
}

```
