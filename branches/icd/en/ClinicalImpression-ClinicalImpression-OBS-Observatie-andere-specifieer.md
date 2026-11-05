# ClinicalImpression: Symptom - Other (Specify) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example ClinicalImpression: ClinicalImpression: Symptom - Other (Specify)

**status**: Completed

**description**: Side effect assessment during OPAT home hospitalization: other observation (free text)

**subject**: [NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))](Patient-Patient-123.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-07-11 13:09:50+0200 --> (ongoing)](Encounter-CT-259690079.md)

**date**: 2025-07-11 13:09:50+0200



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "ClinicalImpression-OBS-Observatie-andere-specifieer",
  "status" : "completed",
  "description" : "Side effect assessment during OPAT home hospitalization: other observation (free text)",
  "subject" : {
    "reference" : "Patient/Patient-123"
  },
  "encounter" : {
    "reference" : "Encounter/CT-259690079"
  },
  "date" : "2025-07-11T13:09:50+02:00"
}

```
