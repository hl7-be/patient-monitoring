# Pain severity - 0-10 verbal numeric rating - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Pain severity - 0-10 verbal numeric rating 

 
Pain severity scale, where 0 is no pain and 10 is the worst pain imaginable. See https://loinc.org/72514-3 

 **References** 

* [Surgical wound pain observation](StructureDefinition-surgical-wound-pain-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pain-scale",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/pain-scale",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.9"
  }],
  "version" : "0.1.0",
  "name" : "PainScale",
  "title" : "Pain severity - 0-10 verbal numeric rating",
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
  "description" : "Pain severity scale, where 0 is no pain and 10 is the worst pain imaginable. See https://loinc.org/72514-3",
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
        "code" : "LA6111-4",
        "display" : "0"
      },
      {
        "code" : "LA6112-2",
        "display" : "1"
      },
      {
        "code" : "LA6113-0",
        "display" : "2 or more"
      },
      {
        "code" : "LA6114-8",
        "display" : "3"
      },
      {
        "code" : "LA6115-5",
        "display" : "4"
      },
      {
        "code" : "LA10137-0",
        "display" : "5"
      },
      {
        "code" : "LA10138-8",
        "display" : "6"
      },
      {
        "code" : "LA10139-6",
        "display" : "7"
      },
      {
        "code" : "LA10140-4",
        "display" : "8"
      },
      {
        "code" : "LA10141-2",
        "display" : "9"
      },
      {
        "code" : "LA13942-0",
        "display" : "10"
      }]
    }]
  }
}

```
