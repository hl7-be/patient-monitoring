# Normal / Abnormal Finding - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Normal / Abnormal Finding 

 
SNOMED CT codes to represent a binary normal vs. abnormal clinical finding, used for dressing, insertion-site, and catheter observation items in OPAT home-hospitalization questionnaires. 

 **References** 

* [OPAT - continu infuus](Questionnaire-homehosp-opat-continuous-infusion.md)
* [OPAT - kort IV](Questionnaire-homehosp-opat-short-iv.md)
* [Questionnaire[http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-q-opat-definitions|0.1.0]](Questionnaire-homehosp-q-opat-definitions.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "normal-abnormal",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/normal-abnormal",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.15"
  }],
  "version" : "0.1.0",
  "name" : "NormalAbnormalVS",
  "title" : "Normal / Abnormal Finding",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-22T07:37:58+00:00",
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
  "description" : "SNOMED CT codes to represent a binary normal vs. abnormal clinical finding, used for dressing, insertion-site, and catheter observation items in OPAT home-hospitalization questionnaires.",
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
        "code" : "17621005",
        "display" : "Normal"
      },
      {
        "code" : "263654008",
        "display" : "Abnormal"
      }]
    }]
  }
}

```
