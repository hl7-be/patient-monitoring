# OPAT Short-Duration IV Nursing Questionnaire - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: OPAT Short-Duration IV Nursing Questionnaire 

 
Profile on Questionnaire for the OPAT short-duration IV administration nursing observation form. Captures medication storage, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up (no infusor weight fields). See logical model: [OPATShortIVQuestionnaire](StructureDefinition-opat-short-iv-questionnaire.md) 

**Usages:**

* Examples for this Profile: [HomehospOpatShortIVQuestionnaireDefinition](Questionnaire-homehosp-opat-short-iv.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-homehosp-opat-short-iv.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-opat-short-iv.csv), [Excel](../StructureDefinition-homehosp-opat-short-iv.xlsx), [Schematron](../StructureDefinition-homehosp-opat-short-iv.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-opat-short-iv",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-short-iv",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.29"
  }],
  "version" : "0.1.0",
  "name" : "HomehospOpatShortIVQuestionnaire",
  "title" : "OPAT Short-Duration IV Nursing Questionnaire",
  "status" : "draft",
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
  "description" : "Profile on Questionnaire for the OPAT short-duration IV administration nursing observation form. Captures medication storage, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up (no infusor weight fields). See logical model: [OPATShortIVQuestionnaire](StructureDefinition-opat-short-iv-questionnaire.html)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-base",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    }]
  }
}

```
