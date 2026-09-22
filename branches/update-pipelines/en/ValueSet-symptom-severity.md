# Symptom Severity Scale - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Symptom Severity Scale 

 
SNOMED CT codes to represent severity of patient-reported symptoms 

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
  "id" : "symptom-severity",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/symptom-severity",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.6"
  }],
  "version" : "0.1.0",
  "name" : "SymptomSeverity",
  "title" : "Symptom Severity Scale",
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
  "description" : "SNOMED CT codes to represent severity of patient-reported symptoms",
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
      "concept" : [{
        "code" : "2667000",
        "display" : "Absent"
      },
      {
        "code" : "255604002",
        "display" : "Mild"
      },
      {
        "code" : "1255665007",
        "display" : "Moderate"
      },
      {
        "code" : "24484000",
        "display" : "Severe"
      }]
    }]
  }
}

```
