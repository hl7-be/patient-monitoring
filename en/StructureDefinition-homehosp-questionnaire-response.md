# Home Hospitalization Careset Questionnaire Response - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: Home Hospitalization Careset Questionnaire Response 

 
Profile on QuestionnaireResponse for OPAT and ONCO home hospitalization caresets. Links the filled-in nursing observation to the originating Encounter and the canonical Questionnaire. See logical model: [CarestQuestionnaireResponse](StructureDefinition-homehosp-questionnaire-response-lm.md) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-homehosp-questionnaire-response.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-questionnaire-response.csv), [Excel](../StructureDefinition-homehosp-questionnaire-response.xlsx), [Schematron](../StructureDefinition-homehosp-questionnaire-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-questionnaire-response",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-questionnaire-response",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.14"
  }],
  "version" : "0.1.0",
  "name" : "HomehospQuestionnaireResponse",
  "title" : "Home Hospitalization Careset Questionnaire Response",
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
  "description" : "Profile on QuestionnaireResponse for OPAT and ONCO home hospitalization caresets. Links the filled-in nursing observation to the originating Encounter and the canonical Questionnaire. See logical model: [CarestQuestionnaireResponse](StructureDefinition-homehosp-questionnaire-response-lm.html)",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
