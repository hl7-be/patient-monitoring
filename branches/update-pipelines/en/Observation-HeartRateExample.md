# HeartRateExample - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: HeartRateExample



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HeartRateExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/heartrate"]
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
      "code" : "8867-4",
      "display" : "Heart rate"
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
  "valueQuantity" : {
    "value" : 78,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "device" : {
    "reference" : "#vital-signs-box"
  }
}

```
