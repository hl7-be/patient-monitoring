# CareTeam: Home Hospitalization - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example CareTeam: CareTeam: Home Hospitalization

**status**: Active

**category**: Episode of care-focused care team

**name**: Home hospitalization care team

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

> **participant****member**: [CareTeam OPAT team](CareTeam-CareTeam-OPAT.md)

> **participant****member**: [CareTeam Catheter team](CareTeam-CareTeam-Katheter.md)

> **participant****member**: [CareTeam Emergency reception](CareTeam-CareTeam-Spoed.md)

**managingOrganization**: [Organization UZ Leuven](Organization-Organization-UZL.md)



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "CareTeam-F-7766077",
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA27977-0",
      "display" : "Episode of care-focused care team"
    }]
  }],
  "name" : "Home hospitalization care team",
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "participant" : [{
    "member" : {
      "reference" : "CareTeam/CareTeam-OPAT"
    }
  },
  {
    "member" : {
      "reference" : "CareTeam/CareTeam-Katheter"
    }
  },
  {
    "member" : {
      "reference" : "CareTeam/CareTeam-Spoed"
    }
  }],
  "managingOrganization" : [{
    "reference" : "Organization/Organization-UZL"
  }]
}

```
