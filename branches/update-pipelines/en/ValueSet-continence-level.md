# Continence level - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Continence level 

 
LOINC codes to represent the level of continence reported 

 **References** 

* [Bladder continence Observation](StructureDefinition-bladder-continence-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "continence-level",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/continence-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.7"
  }],
  "version" : "0.1.0",
  "name" : "ContinenceLevel",
  "title" : "Continence level",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-18T09:41:30+00:00",
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
  "description" : "LOINC codes to represent the level of continence reported",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA126-5",
        "display" : "CONTINENT"
      },
      {
        "code" : "LA127-3",
        "display" : "USUALLY CONTINENT"
      },
      {
        "code" : "LA128-1",
        "display" : "OCCASIONALLY INCONTINENT"
      },
      {
        "code" : "LA129-9",
        "display" : "FREQUENTLY INCONTINENT"
      },
      {
        "code" : "LA130-7",
        "display" : "INCONTINENT"
      }]
    }]
  }
}

```
