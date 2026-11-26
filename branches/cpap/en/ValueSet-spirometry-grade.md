# Spirometry Grade (ATS/ERS 2019) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Spirometry Grade (ATS/ERS 2019) 

 **References** 

* [Spirometry Observation](StructureDefinition-spirometry-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "spirometry-grade",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/spirometry-grade",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.21"
  }],
  "version" : "0.1.0",
  "name" : "SpirometryGradeVS",
  "title" : "Spirometry Grade (ATS/ERS 2019)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-26T09:35:57+00:00",
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
  "description" : "ATS/ERS 2019 session quality grades (A-F, U) for FEV1 and FVC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-grade"
    }]
  }
}

```
