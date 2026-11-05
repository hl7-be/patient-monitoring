# Orthopneu example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Orthopneu example



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OrthopneuExample",
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
      "code" : "62744007"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-18T09:38:52+00:00",
    "end" : "2024-11-18T09:38:52+00:00"
  },
  "performer" : [{
    "reference" : "#nurse"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255604002"
    }]
  }
}

```
