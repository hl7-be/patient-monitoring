# Catheter observation for OPAT patient - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Catheter observation for OPAT patient

**status**: Final

**code**: Catheter observable (observable entity)

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

> **component****code**: Type of catheter (attribute)**value**: Midline catheter (physical object)

> **component****code**: Catheter stabilization device (physical object)**value**: Adhesive tape, device (physical object)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Observation-Katheter-7938866",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1156071007",
      "display" : "Catheter observable (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "246138005",
        "display" : "Type of catheter (attribute)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1344705000",
        "display" : "Midline catheter (physical object)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "448439004",
        "display" : "Catheter stabilization device (physical object)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "84756000",
        "display" : "Adhesive tape, device (physical object)"
      }]
    }
  }]
}

```
