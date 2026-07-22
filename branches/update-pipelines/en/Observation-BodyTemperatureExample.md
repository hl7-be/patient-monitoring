# BodyTemperatureExample - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: BodyTemperatureExample



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BodyTemperatureExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodytemp"]
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
      "code" : "8310-5",
      "display" : "Body Temperature"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://vitalsigns.byteflies.net/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  },
  "effectiveDateTime" : "2024-11-19T19:30:42+00:00",
  "performer" : [{
    "reference" : "#byteflies"
  }],
  "valueQuantity" : {
    "value" : 35.29,
    "unit" : "C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "device" : {
    "reference" : "#vital-signs-box"
  }
}

```
