# Medication Administration Decision Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## CodeSystem: Medication Administration Decision Codes 

 
Local codes for the nurse’s decision following contraindication assessment in ONCO home-hospitalization questionnaires. 

This Code system is referenced in the definition of the following value sets:

* [DecisionVS](ValueSet-decision.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "decision-cs",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/decision-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.16.1"
  }],
  "version" : "0.1.0",
  "name" : "DecisionCS",
  "title" : "Medication Administration Decision Codes",
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
  "description" : "Local codes for the nurse's decision following contraindication assessment in ONCO home-hospitalization questionnaires.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "administration",
    "display" : "Medication administered",
    "definition" : "Medication could be administered according to the procedure."
  },
  {
    "code" : "no-administration",
    "display" : "Medication NOT administered",
    "definition" : "Medication was not administered due to contraindications."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "A different outcome was agreed upon after consultation with the hospital care team."
  }]
}

```
