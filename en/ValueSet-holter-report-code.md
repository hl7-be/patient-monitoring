# Holter Report Code - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Holter Report Code 

 
Ambulatory cardiac rhythm monitor report (Holter) 

 **References** 

* [Holter Diagnostic Report](StructureDefinition-holter-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "holter-report-code",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/holter-report-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.4"
  }],
  "version" : "0.1.0",
  "name" : "HolterReportCode",
  "title" : "Holter Report Code",
  "status" : "draft",
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
  "description" : "Ambulatory cardiac rhythm monitor report (Holter)",
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
        "code" : "18754-2"
      }]
    }]
  }
}

```
