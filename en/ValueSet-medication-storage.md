# Medication Storage Status - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Medication Storage Status 

 
SNOMED CT codes representing whether the home medication storage of a patient is appropriate or has issues, used in OPAT and ONCO home-hospitalization questionnaires. 

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
  "id" : "medication-storage",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/medication-storage",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.17"
  }],
  "version" : "0.1.0",
  "name" : "MedicationStorageVS",
  "title" : "Medication Storage Status",
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
  "description" : "SNOMED CT codes representing whether the home medication storage of a patient is appropriate or has issues, used in OPAT and ONCO home-hospitalization questionnaires.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "SNOMED CT is copyright (C) 2002+ International Health Terminology Standards Development Organisation (SNOMED International). Use of SNOMED CT requires the appropriate licence.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "710977001",
        "display" : "Safe storage and management of medication"
      },
      {
        "code" : "424363005",
        "display" : "Improper storage of medication"
      }]
    }]
  }
}

```
