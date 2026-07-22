# Home hospitalization encounter for subcutaneous injection - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Encounter: Home hospitalization encounter for subcutaneous injection

**status**: finished

**class**: [ActCode: HH](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-HH) (home health)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | primary performer | John Doe rizivnr |

**period**: 2025-11-19 11:07:52+0000 --> (ongoing)

**reasonCode**: subcutane inspuiting

**serviceProvider**: Wit-Gele Kruis Vlaams-Brabant



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Encounter-3441",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "HH",
    "display" : "home health"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PPRF",
        "display" : "primary performer"
      }]
    }],
    "individual" : {
      "display" : "John Doe rizivnr"
    }
  }],
  "period" : {
    "start" : "2025-11-19T11:07:52+00:00"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "18629005",
      "display" : "Administration of drug or medicament (procedure)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "276844002",
      "display" : "Injection to subcutaneous drug delivery port (procedure)"
    }],
    "text" : "subcutane inspuiting"
  }],
  "serviceProvider" : {
    "display" : "Wit-Gele Kruis Vlaams-Brabant"
  }
}

```
