# CareTeam: OPAT - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example CareTeam: CareTeam: OPAT

**status**: Active

**name**: OPAT team

**telecom**: [opat@uzleuven.be](mailto:opat@uzleuven.be), ph: 016/34 32 74



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "CareTeam-OPAT",
  "status" : "active",
  "name" : "OPAT team",
  "telecom" : [{
    "system" : "email",
    "value" : "opat@uzleuven.be",
    "rank" : 1
  },
  {
    "system" : "phone",
    "value" : "016/34 32 74",
    "rank" : 1
  }]
}

```
