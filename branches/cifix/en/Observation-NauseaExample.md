# Nausea example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Nausea example



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NauseaExample",
  "contained" : [{
    "resourceType" : "PractitionerRole",
    "id" : "nurse",
    "meta" : {
      "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
    },
    "code" : [{
      "coding" : [{
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
        "code" : "persnurse",
        "display" : "Nurse"
      }]
    }]
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "60728008"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-15T09:56:00+00:00",
    "end" : "2024-11-15T09:57:00+00:00"
  },
  "performer" : [{
    "reference" : "#nurse"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6752-5"
    }]
  }
}

```
