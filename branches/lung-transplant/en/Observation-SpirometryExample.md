# Observation: Spirometry (Home Session) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Spirometry (Home Session)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "SpirometryExample",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation"]
  },
  "contained" : [{
    "resourceType" : "Device",
    "id" : "home-spirometer",
    "manufacturer" : "Example Medical",
    "serialNumber" : "HSX200-0042871",
    "deviceName" : [{
      "name" : "Home Spirometer X",
      "type" : "model-name"
    }],
    "modelNumber" : "HSX-200",
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "303501006",
        "display" : "Spirometer"
      }]
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure",
      "display" : "Procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81459-0",
      "display" : "Spirometry panel"
    }],
    "text" : "Home spirometry session"
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  },
  "effectivePeriod" : {
    "start" : "2026-10-05T09:14:00+02:00",
    "end" : "2026-10-05T09:19:40+02:00"
  },
  "issued" : "2026-10-05T09:19:52+02:00",
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  }],
  "method" : {
    "text" : "Home spirometry, graded against the ATS/ERS 2019 standard; predicted values according to GLI-2012"
  },
  "device" : {
    "reference" : "#home-spirometer"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "20150-9",
        "display" : "FEV1"
      }],
      "text" : "FEV1"
    },
    "valueQuantity" : {
      "value" : 2.48,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19870-5",
        "display" : "Forced vital capacity [Volume] Respiratory system"
      }],
      "text" : "FVC"
    },
    "valueQuantity" : {
      "value" : 3.2,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19926-5",
        "display" : "FEV1/FVC"
      }],
      "text" : "FEV1/FVC"
    },
    "valueQuantity" : {
      "value" : 78,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "33452-4",
        "display" : "Maximum expiratory gas flow Respiratory system airway"
      }],
      "text" : "PEF"
    },
    "valueQuantity" : {
      "value" : 7.02,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19927-3",
        "display" : "Gas flow FEV 25%-75%"
      }],
      "text" : "FEF25-75"
    },
    "valueQuantity" : {
      "value" : 2.21,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "20152-5",
        "display" : "FEV1 measured/predicted"
      }],
      "text" : "FEV1 %pred"
    },
    "valueQuantity" : {
      "value" : 74,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19872-1",
        "display" : "FVC measured/predicted"
      }],
      "text" : "FVC %pred"
    },
    "valueQuantity" : {
      "value" : 81,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes",
        "code" : "fev1-grade",
        "display" : "FEV1 grade"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-grade",
        "code" : "A",
        "display" : "Grade A"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes",
        "code" : "fvc-grade",
        "display" : "FVC grade"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-grade",
        "code" : "B",
        "display" : "Grade B"
      }]
    }
  }]
}

```
