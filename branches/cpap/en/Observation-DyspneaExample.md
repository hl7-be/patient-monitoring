# Observation: Dyspnea (Registered by Patient) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Dyspnea (Registered by Patient)

**status**: Final

**category**: Survey

**code**: Dyspnea

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2026-10-06 09:02:00+0200

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: Mild



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "DyspneaExample",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "267036007",
      "display" : "Dyspnea"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  },
  "effectiveDateTime" : "2026-10-06T09:02:00+02:00",
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255604002",
      "display" : "Mild"
    }]
  }
}

```
