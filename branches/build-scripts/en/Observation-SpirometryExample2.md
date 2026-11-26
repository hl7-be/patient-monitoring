# Observation: Spirometry (FEV1-only Device, Grade U) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Spirometry (FEV1-only Device, Grade U)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "SpirometryExample2",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation"]
  },
  "contained" : [{
    "resourceType" : "Device",
    "id" : "home-peakflow-fev1-meter",
    "manufacturer" : "Example Medical",
    "deviceName" : [{
      "name" : "Pocket FEV1 Meter",
      "type" : "model-name"
    }],
    "modelNumber" : "PF-10",
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
    "start" : "2026-10-06T08:52:00+02:00",
    "end" : "2026-10-06T08:55:10+02:00"
  },
  "issued" : "2026-10-06T08:55:15+02:00",
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  }],
  "note" : [{
    "text" : "Patient reported coughing during the manoeuvres."
  }],
  "device" : {
    "reference" : "#home-peakflow-fev1-meter"
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
      "value" : 2.11,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
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
      "value" : 6.1,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
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
        "code" : "U",
        "display" : "Grade U"
      }]
    }
  }]
}

```
