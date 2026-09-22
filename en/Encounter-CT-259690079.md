# Encounter: OPAT Consultation - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Encounter: Encounter: OPAT Consultation

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

**period**: 2025-07-11 13:09:50+0200 --> (ongoing)

**serviceProvider**: [Organization UZ Leuven](Organization-Organization-UZL.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "CT-259690079",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "period" : {
    "start" : "2025-07-11T13:09:50+02:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/Organization-UZL"
  }
}

```
