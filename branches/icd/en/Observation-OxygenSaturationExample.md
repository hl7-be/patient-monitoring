# Observation: Oxygen Saturation - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Oxygen Saturation



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OxygenSaturationExample",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/oxygensat"]
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
      "code" : "2708-6",
      "display" : "Oxygen saturation in Arterial blood"
    },
    {
      "system" : "http://loinc.org",
      "code" : "59408-5",
      "display" : "Oxygen saturation in Arterial blood by Pulse oximetry"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://vitalsigns.byteflies.net/FHIR/patient",
      "value" : "BE84DC42-2B5D-464C-AFFD-57DB87BD7D48"
    }
  },
  "effectiveDateTime" : "2024-11-19T11:16:55+00:00",
  "performer" : [{
    "reference" : "#byteflies"
  }],
  "valueQuantity" : {
    "value" : 98,
    "unit" : "%O2",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "#vital-signs-box"
  }
}

```
