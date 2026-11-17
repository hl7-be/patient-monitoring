# Observation: Blood Pressure (Without Device) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Blood Pressure (Without Device)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BloodPressureExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bp"]
  },
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
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
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
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "368209003",
      "display" : "Right arm"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 140,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4",
        "display" : "Diastolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 74,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
