# Catheter Lumen Color - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Catheter Lumen Color 

 
SNOMED CT codes for the color label of a catheter lumen, used in OPAT home-hospitalization questionnaires to distinguish multi-lumen catheters. 

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
  "id" : "lumen-color",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/lumen-color",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.19"
  }],
  "version" : "0.1.0",
  "name" : "LumenColorVS",
  "title" : "Catheter Lumen Color",
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
  "description" : "SNOMED CT codes for the color label of a catheter lumen, used in OPAT home-hospitalization questionnaires to distinguish multi-lumen catheters.",
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
        "code" : "371253002",
        "display" : "Gray color (qualifier value)"
      },
      {
        "code" : "371251000",
        "display" : "White color (qualifier value)"
      },
      {
        "code" : "371240000",
        "display" : "Red color (qualifier value)"
      },
      {
        "code" : "371250004",
        "display" : "Purple color (qualifier value)"
      }]
    }]
  }
}

```
