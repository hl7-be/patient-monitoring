# ONCO Symptom Grade Scale (CTCAE 0–3) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: ONCO Symptom Grade Scale (CTCAE 0–3) 

 
SNOMED CT codes representing the Common Terminology Criteria for Adverse Events (CTCAE) grade scale 0 to 3, used to score symptom severity in ONCO home-hospitalization questionnaires. 

 **References** 

* [Azacitidine](Questionnaire-homehosp-azacitidine.md)
* [Bortezomib](Questionnaire-homehosp-bortezomib.md)
* [Daratumumab](Questionnaire-homehosp-daratumumab.md)
* [Fulvestrant](Questionnaire-homehosp-fulvestrant.md)
* [Questionnaire[http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-q-onco-definitions|0.1.0]](Questionnaire-homehosp-q-onco-definitions.md)
* [Trastuzumab](Questionnaire-homehosp-trastuzumab.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "onco-symptom-grade",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.12"
  }],
  "version" : "0.1.0",
  "name" : "ONCOSymptomGradeVS",
  "title" : "ONCO Symptom Grade Scale (CTCAE 0–3)",
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
  "description" : "SNOMED CT codes representing the Common Terminology Criteria for Adverse Events (CTCAE) grade scale 0 to 3, used to score symptom severity in ONCO home-hospitalization questionnaires.",
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
        "code" : "444431007",
        "display" : "Grade 0 on a scale of 0 to 3"
      },
      {
        "code" : "444456001",
        "display" : "Grade 1 on a scale of 0 to 3"
      },
      {
        "code" : "444457005",
        "display" : "Grade 2 on a scale of 0 to 3"
      },
      {
        "code" : "444447009",
        "display" : "Grade 3 on a scale of 0 to 3"
      }]
    }]
  }
}

```
