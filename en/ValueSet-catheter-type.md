# Catheter Type - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Catheter Type 

 
SNOMED CT codes identifying the type of vascular catheter in place, used in OPAT home-hospitalization questionnaires. 

 **References** 

* [OPAT - continu infuus](Questionnaire-homehosp-opat-continuous-infusion.md)
* [OPAT - kort IV](Questionnaire-homehosp-opat-short-iv.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "catheter-type",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/catheter-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.18"
  }],
  "version" : "0.1.0",
  "name" : "CatheterTypeVS",
  "title" : "Catheter Type",
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
  "description" : "SNOMED CT codes identifying the type of vascular catheter in place, used in OPAT home-hospitalization questionnaires.",
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
        "code" : "52124006",
        "display" : "Central venous catheter, device (physical object)"
      },
      {
        "code" : "1396546006",
        "display" : "1-lumen tunneled catheter"
      },
      {
        "code" : "1396570005",
        "display" : "2-lumen tunneled catheter"
      },
      {
        "code" : "1396538005",
        "display" : "3-lumen tunneled catheter"
      },
      {
        "code" : "1396531004",
        "display" : "Single lumen midline catheter"
      },
      {
        "code" : "1396527005",
        "display" : "Double lumen midline catheter"
      },
      {
        "code" : "1396526001",
        "display" : "Single lumen PICC"
      },
      {
        "code" : "1396489007",
        "display" : "Double lumen PICC"
      },
      {
        "code" : "423954007",
        "display" : "Peripheral catheter"
      }]
    }]
  }
}

```
