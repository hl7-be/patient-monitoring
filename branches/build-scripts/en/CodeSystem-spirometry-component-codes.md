# Spirometry Component Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## CodeSystem: Spirometry Component Codes 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "spirometry-component-codes",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.16.2"
  }],
  "version" : "0.1.0",
  "name" : "SpirometryComponentCS",
  "title" : "Spirometry Component Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-26T09:49:21+00:00",
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
  "description" : "Local codes for spirometry session quality components that have no LOINC or SNOMED CT equivalent. Used as `Observation.component.code` in the Spirometry Observation profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "fev1-grade",
    "display" : "FEV1 grade",
    "definition" : "Quality grade of the FEV1 reported for a spirometry session, according to the ATS/ERS 2019 grading system."
  },
  {
    "code" : "fvc-grade",
    "display" : "FVC grade",
    "definition" : "Quality grade of the FVC reported for a spirometry session, according to the ATS/ERS 2019 grading system."
  }]
}

```
