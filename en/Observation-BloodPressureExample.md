# Observation: Blood Pressure - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Blood Pressure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BloodPressureExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bp"]
  },
  "contained" : [{
    "resourceType" : "Device",
    "id" : "vital-signs-box",
    "meta" : {
      "tag" : [{
        "system" : "https://api-vitalsigns.byteflies.net/version",
        "code" : "20241028-1511",
        "display" : "API Version 20241028-1511"
      }]
    },
    "identifier" : [{
      "value" : "240822yti3tgeyay"
    }],
    "manufacturer" : "Byteflies",
    "deviceName" : [{
      "name" : "VS-4",
      "type" : "other"
    }]
  },
  {
    "resourceType" : "Organization",
    "id" : "byteflies",
    "name" : "Byteflies"
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
      "system" : "https://vitalsigns.byteflies.net/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2024-11-18T09:38:52+00:00",
  "performer" : [{
    "reference" : "#byteflies"
  }],
  "device" : {
    "reference" : "#vital-signs-box"
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
