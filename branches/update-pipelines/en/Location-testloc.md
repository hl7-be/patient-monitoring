# UZL consultation location example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Location: UZL consultation location example

**status**: Active

**name**: UZ Leuven - Raadpleging

**mode**: Instance

**type**: Hospital



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "testloc",
  "status" : "active",
  "name" : "UZ Leuven - Raadpleging",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }]
  }]
}

```
