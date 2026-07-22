# Holter Event Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Holter Event Codes 

 
Codes used to classify Holter-detected rhythm events 

 **References** 

* [Holter Observation](StructureDefinition-holter-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "holter-event-codes",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/holter-event-codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.1"
  }],
  "version" : "0.1.0",
  "name" : "HolterEventCodes",
  "title" : "Holter Event Codes",
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
  "description" : "Codes used to classify Holter-detected rhythm events",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "301120008"
      }]
    }]
  }
}

```
