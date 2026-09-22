# Heart Failure Symptom Codes - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Heart Failure Symptom Codes 

 
SNOMED CT codes representing common patient-reported symptoms in heart failure 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "heart-failure-symptoms",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/heart-failure-symptoms",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.5"
  }],
  "version" : "0.1.0",
  "name" : "HeartFailureSymptoms",
  "title" : "Heart Failure Symptom Codes",
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
  "description" : "SNOMED CT codes representing common patient-reported symptoms in heart failure",
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
        "code" : "80313002",
        "display" : "Palpitations"
      },
      {
        "code" : "64379006",
        "display" : "Reduced appetite"
      },
      {
        "code" : "267036007",
        "display" : "Shortness of breath"
      },
      {
        "code" : "14760008",
        "display" : "Constipation"
      },
      {
        "code" : "62315008",
        "display" : "Diarrhea"
      },
      {
        "code" : "248548009",
        "display" : "Nocturnal dyspnea"
      },
      {
        "code" : "26677001",
        "display" : "Disturbed sleep pattern"
      },
      {
        "code" : "422650009",
        "display" : "Social isolation"
      },
      {
        "code" : "267038008",
        "display" : "Oedema"
      },
      {
        "code" : "84229001",
        "display" : "Fatigue"
      },
      {
        "code" : "29857009",
        "display" : "Chest pain"
      },
      {
        "code" : "404640003",
        "display" : "Dizziness"
      },
      {
        "code" : "40917007",
        "display" : "Confusion"
      },
      {
        "code" : "297142003",
        "display" : "Foot swelling"
      }]
    },
    {
      "system" : "http://snomed.info/sct/11000172109",
      "concept" : [{
        "code" : "901000172101",
        "display" : "Tickly cough"
      }]
    }]
  }
}

```
