# ClinicalImpression: Relevant Medical History - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example ClinicalImpression: ClinicalImpression: Relevant Medical History

**status**: Completed

**description**: Relevant medical history recorded in the OPAT home hospitalization document

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-07-11 13:09:50+0200 --> (ongoing)](Encounter-CT-259690079.md)

**date**: 2025-07-11 13:09:50+0200

**summary**: TEST KWS



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "ClinicalImpression-MED-medischeVG",
  "status" : "completed",
  "description" : "Relevant medical history recorded in the OPAT home hospitalization document",
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "encounter" : {
    "reference" : "Encounter/CT-259690079"
  },
  "date" : "2025-07-11T13:09:50+02:00",
  "summary" : "TEST KWS"
}

```
