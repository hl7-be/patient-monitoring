# ONCO Fulvestrant Nursing Questionnaire - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: ONCO Fulvestrant Nursing Questionnaire 

 
Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.md) 

**Usages:**

* Examples for this Profile: [FulvestrantV1](Questionnaire-FulvestrantV1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/homehosp-onco-fulvestrant)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-onco-fulvestrant.csv), [Excel](../StructureDefinition-homehosp-onco-fulvestrant.xlsx), [Schematron](../StructureDefinition-homehosp-onco-fulvestrant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-onco-fulvestrant",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-fulvestrant",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.26"
  }],
  "version" : "0.1.0",
  "name" : "HomehospOncoFulvestrantQuestionnaire",
  "title" : "ONCO Fulvestrant Nursing Questionnaire",
  "status" : "draft",
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
  "description" : "Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.html)",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.status",
      "path" : "Questionnaire.status",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.subjectType",
      "path" : "Questionnaire.subjectType",
      "min" : 1,
      "max" : "1",
      "patternCode" : "Patient",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
