# Holter Observation Component Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Holter Observation Component Codes 

 
LOINC codes for component observations in Holter events (e.g., heart rate) 

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
  "id" : "holter-event-component-codes",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/holter-event-component-codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.3"
  }],
  "version" : "0.1.0",
  "name" : "HolterEventComponentCodes",
  "title" : "Holter Observation Component Codes",
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
  "description" : "LOINC codes for component observations in Holter events (e.g., heart rate)",
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
        "code" : "8867-4",
        "display" : "Heart rate"
      }]
    }]
  }
}

```
