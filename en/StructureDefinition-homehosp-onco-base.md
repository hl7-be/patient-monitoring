# ONCO Home Hospitalization Base Questionnaire - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: ONCO Home Hospitalization Base Questionnaire 

 
Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, Assignment, QualityMonitoring) and sub-groups common across all ONCO medications: MedicationStorage, ObservationParameters, Contraindications, and MedicationAdministration. Medication-specific sub-groups and questions are added by child profiles. 

**Usages:**

* Derived from this Profile: [ONCO Azacitidine Nursing Questionnaire](StructureDefinition-homehosp-onco-azacitidine.md), [ONCO Bortezomib Nursing Questionnaire](StructureDefinition-homehosp-onco-bortezomib.md), [ONCO Daratumumab Nursing Questionnaire](StructureDefinition-homehosp-onco-daratumumab.md), [ONCO Fulvestrant Nursing Questionnaire](StructureDefinition-homehosp-onco-fulvestrant.md) and [ONCO Trastuzumab Nursing Questionnaire](StructureDefinition-homehosp-onco-trastuzumab.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-homehosp-onco-base.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-onco-base.csv), [Excel](../StructureDefinition-homehosp-onco-base.xlsx), [Schematron](../StructureDefinition-homehosp-onco-base.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-onco-base",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-base",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.33"
  }],
  "version" : "0.1.0",
  "name" : "HomehospOncoBaseQuestionnaire",
  "title" : "ONCO Home Hospitalization Base Questionnaire",
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
  "description" : "Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, Assignment, QualityMonitoring) and sub-groups common across all ONCO medications: MedicationStorage, ObservationParameters, Contraindications, and MedicationAdministration. Medication-specific sub-groups and questions are added by child profiles.",
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
      "id" : "Questionnaire.url",
      "path" : "Questionnaire.url",
      "min" : 1,
      "mustSupport" : true
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
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item:nursingAssessment",
      "path" : "Questionnaire.item",
      "sliceName" : "nursingAssessment",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item:nursingAssessment.linkId",
      "path" : "Questionnaire.item.linkId",
      "patternString" : "NursingAssessment"
    },
    {
      "id" : "Questionnaire.item:nursingAssessment.type",
      "path" : "Questionnaire.item.type",
      "patternCode" : "group"
    },
    {
      "id" : "Questionnaire.item:assignment",
      "path" : "Questionnaire.item",
      "sliceName" : "assignment",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item:assignment.linkId",
      "path" : "Questionnaire.item.linkId",
      "patternString" : "Assignment"
    },
    {
      "id" : "Questionnaire.item:assignment.type",
      "path" : "Questionnaire.item.type",
      "patternCode" : "group"
    },
    {
      "id" : "Questionnaire.item:qualityMonitoring",
      "path" : "Questionnaire.item",
      "sliceName" : "qualityMonitoring",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item:qualityMonitoring.linkId",
      "path" : "Questionnaire.item.linkId",
      "patternString" : "QualityMonitoring"
    },
    {
      "id" : "Questionnaire.item:qualityMonitoring.type",
      "path" : "Questionnaire.item.type",
      "patternCode" : "group"
    }]
  }
}

```
