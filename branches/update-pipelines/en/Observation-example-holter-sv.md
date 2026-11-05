# Holter Supraventricular Event - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Holter Supraventricular Event

Profile: [Holter Observation](StructureDefinition-holter-observation.md)

**status**: Final

**code**: ECG: supraventricular arrhythmia

**effective**: 2025-07-14 14:42:00+0200 --> 2025-07-14 14:45:00+0200



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-holter-sv",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "164887001",
      "display" : "ECG: supraventricular arrhythmia"
    }]
  },
  "effectivePeriod" : {
    "start" : "2025-07-14T14:42:00+02:00",
    "end" : "2025-07-14T14:45:00+02:00"
  }
}

```
