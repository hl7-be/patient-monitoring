# Observation: Body Weight - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Body Weight



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BodyWeightExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodyweight"]
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
      "code" : "29463-7",
      "display" : "Body Weight"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://vitalsigns.byteflies.net/FHIR/patient",
      "value" : "D358D4B4-6007-4C3E-A33B-056773F45DC9"
    }
  },
  "effectiveDateTime" : "2024-11-19T06:48:20+00:00",
  "performer" : [{
    "reference" : "#byteflies"
  }],
  "valueQuantity" : {
    "value" : 89.3,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "device" : {
    "reference" : "#vital-signs-box"
  }
}

```
