# True / False Value Set - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: True / False Value Set 

 
SNOMED CT codes for a simple true or false answer. 

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
  "id" : "true-false",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/true-false",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.16"
  }],
  "version" : "0.1.0",
  "name" : "TrueFalseVS",
  "title" : "True / False Value Set",
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
  "description" : "SNOMED CT codes for a simple true or false answer.",
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
        "code" : "31874001",
        "display" : "True"
      },
      {
        "code" : "64100000",
        "display" : "False"
      }]
    }]
  }
}

```
