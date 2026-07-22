# Medication Administration Decision - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Medication Administration Decision 

 
Codes for the nurse’s decision after contraindication assessment — whether to administer, withhold, or take another action following consultation with the hospital care team. 

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
  "id" : "decision",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/decision",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.20"
  }],
  "version" : "0.1.0",
  "name" : "DecisionVS",
  "title" : "Medication Administration Decision",
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
  "description" : "Codes for the nurse's decision after contraindication assessment — whether to administer, withhold, or take another action following consultation with the hospital care team.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/decision-cs"
    }]
  }
}

```
