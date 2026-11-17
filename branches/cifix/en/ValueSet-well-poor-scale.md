# 0-10 scale, 0.5 increments, Very well to Very poor - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: 0-10 scale, 0.5 increments, Very well to Very poor 

 
Scale going from 0 to 10 in increments of 0.5. Indicating values very well to very port (see https://loinc.org/LL3092-5) 

 **References** 

* [Appetite Observation](StructureDefinition-appetite-observation.md)
* [Nausea Observation](StructureDefinition-nausea-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "well-poor-scale",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/well-poor-scale",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.8"
  }],
  "version" : "0.1.0",
  "name" : "WellPoorScale",
  "title" : "0-10 scale, 0.5 increments, Very well to Very poor",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-19T06:47:26+00:00",
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
  "description" : "Scale going from 0 to 10 in increments of 0.5. Indicating values very well to very port (see https://loinc.org/LL3092-5)",
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
        "code" : "LA21651-7",
        "display" : "0 - Very well"
      },
      {
        "code" : "LA16632-4",
        "display" : "0.5"
      },
      {
        "code" : "LA6112-2",
        "display" : "1"
      },
      {
        "code" : "LA15765-3",
        "display" : "1.5"
      },
      {
        "code" : "LA6113-0",
        "display" : "2 or more"
      },
      {
        "code" : "LA15766-1",
        "display" : "2.5"
      },
      {
        "code" : "LA6114-8",
        "display" : "3"
      },
      {
        "code" : "LA15767-9",
        "display" : "3.5"
      },
      {
        "code" : "LA6115-5",
        "display" : "4"
      },
      {
        "code" : "LA15768-7",
        "display" : "4.5"
      },
      {
        "code" : "LA10137-0",
        "display" : "5"
      },
      {
        "code" : "LA15769-5",
        "display" : "5.5"
      },
      {
        "code" : "LA10138-8",
        "display" : "6"
      },
      {
        "code" : "LA15770-3",
        "display" : "6.5"
      },
      {
        "code" : "LA10139-6",
        "display" : "7"
      },
      {
        "code" : "LA21653-3",
        "display" : "7.5"
      },
      {
        "code" : "LA10140-4",
        "display" : "8"
      },
      {
        "code" : "LA21654-1",
        "display" : "8.5"
      },
      {
        "code" : "LA10141-2",
        "display" : "9"
      },
      {
        "code" : "LA21655-8",
        "display" : "9.5"
      },
      {
        "code" : "LA21652-5",
        "display" : "10 - Very poor"
      }]
    }]
  }
}

```
