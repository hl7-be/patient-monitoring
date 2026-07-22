# RespiratoryRateExample - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: RespiratoryRateExample



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RespiratoryRateExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/resprate"]
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://vitalsigns.byteflies.net/FHIR/patient",
      "value" : "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-15T09:56:00+00:00",
    "end" : "2024-11-15T09:57:00+00:00"
  },
  "performer" : [{
    "reference" : "#byteflies"
  }],
  "valueQuantity" : {
    "value" : 17.35,
    "unit" : "breaths/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "device" : {
    "reference" : "#vital-signs-box"
  }
}

```
