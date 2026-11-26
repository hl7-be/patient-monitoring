# Lung Transplant Symptom Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Lung Transplant Symptom Codes 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "lung-transplant-symptoms",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/lung-transplant-symptoms",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.22"
  }],
  "version" : "0.1.0",
  "name" : "LungTransplantSymptoms",
  "title" : "Lung Transplant Symptom Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-26T09:35:54+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "http://example.com/committees"
    },
    {
      "system" : "email",
      "value" : "my-group@example.com"
    }]
  },
  {
    "name" : "Bob Smith",
    "telecom" : [{
      "system" : "email",
      "value" : "bobsmith@example.com",
      "use" : "work"
    }]
  }],
  "description" : "SNOMED CT codes representing patient-reported symptoms monitored after lung transplantation: respiratory symptoms that may indicate rejection or infection, and common side effects of the immunosuppressive treatment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "SNOMED CT is copyright (C) 2002+ International Health Terminology Standards Development Organisation (SNOMED International). Use of SNOMED CT requires the appropriate licence.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "267036007",
        "display" : "Dyspnea"
      },
      {
        "code" : "49727002",
        "display" : "Cough"
      },
      {
        "code" : "28743005",
        "display" : "Productive cough"
      },
      {
        "code" : "66857006",
        "display" : "Hemoptysis"
      },
      {
        "code" : "56018004",
        "display" : "Wheezing"
      },
      {
        "code" : "29857009",
        "display" : "Chest pain"
      },
      {
        "code" : "267044007",
        "display" : "Impaired exercise tolerance"
      },
      {
        "code" : "84229001",
        "display" : "Fatigue"
      },
      {
        "code" : "62315008",
        "display" : "Diarrhea"
      },
      {
        "code" : "422587007",
        "display" : "Nausea"
      },
      {
        "code" : "422400008",
        "display" : "Vomiting"
      },
      {
        "code" : "64379006",
        "display" : "Decrease in appetite"
      },
      {
        "code" : "26079004",
        "display" : "Tremor"
      }]
    }]
  }
}

```
