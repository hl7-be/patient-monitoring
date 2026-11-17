# Location: UZL Consultation - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Location: Location: UZL Consultation

**status**: Active

**name**: UZ Leuven - Consultation

**mode**: Instance

**type**: Hospital



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "testloc",
  "status" : "active",
  "name" : "UZ Leuven - Consultation",
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
