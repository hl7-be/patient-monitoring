# Home Hospitalization QuestionnaireResponse Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: Home Hospitalization QuestionnaireResponse Logical Model 

 
Logical model representing the FHIR QuestionnaireResponse resource as used in the OPAT and ONCO home hospitalization caresets. Each home nurse visit produces exactly one QuestionnaireResponse if the visit was not cancelled, which corresponds to a single Encounter. The QuestionnaireResponse references the canonical Questionnaire URL and contains the nurse’s answers. It can be used as-is for clinical review or as input to an SDC Definition-based extraction pipeline that generates discrete FHIR Observations. 

**Usages:**

* Refer to this Logical Model: [Home Hospitalization Encounter Logical Model](StructureDefinition-homehosp-encounter-lm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-homehosp-questionnaire-response-lm.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-questionnaire-response-lm.csv), [Excel](../StructureDefinition-homehosp-questionnaire-response-lm.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-questionnaire-response-lm",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-questionnaire-response-lm",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.30"
  }],
  "version" : "0.1.0",
  "name" : "HomeHospQuestionnaireResponse",
  "title" : "Home Hospitalization QuestionnaireResponse Logical Model",
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
  "description" : "Logical model representing the FHIR QuestionnaireResponse resource as used in the OPAT and ONCO home hospitalization caresets. Each home nurse visit produces exactly one QuestionnaireResponse if the visit was not cancelled, which corresponds to a single Encounter. The QuestionnaireResponse references the canonical Questionnaire URL and contains the nurse's answers. It can be used as-is for clinical review or as input to an SDC Definition-based extraction pipeline that generates discrete FHIR Observations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/HomeHospQuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HomeHospQuestionnaireResponse",
      "path" : "HomeHospQuestionnaireResponse",
      "short" : "Home Hospitalization QuestionnaireResponse Logical Model",
      "definition" : "Logical model representing the FHIR QuestionnaireResponse resource as used in the OPAT and ONCO home hospitalization caresets. Each home nurse visit produces exactly one QuestionnaireResponse if the visit was not cancelled, which corresponds to a single Encounter. The QuestionnaireResponse references the canonical Questionnaire URL and contains the nurse's answers. It can be used as-is for clinical review or as input to an SDC Definition-based extraction pipeline that generates discrete FHIR Observations."
    },
    {
      "id" : "HomeHospQuestionnaireResponse.questionnaire",
      "path" : "HomeHospQuestionnaireResponse.questionnaire",
      "short" : "Canonical URL of the Questionnaire this response is based on (e.g. http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/OPATContinuInfuusV1)",
      "definition" : "Canonical URL of the Questionnaire this response is based on (e.g. http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/OPATContinuInfuusV1)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "canonical"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.status",
      "path" : "HomeHospQuestionnaireResponse.status",
      "short" : "Status of the questionnaire response | Answers: completed | entered-in-error",
      "definition" : "Status of the questionnaire response | Answers: completed | entered-in-error",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.subject",
      "path" : "HomeHospQuestionnaireResponse.subject",
      "short" : "Reference to the Patient this response is about",
      "definition" : "Reference to the Patient this response is about",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/BeModelPatient"]
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.encounter",
      "path" : "HomeHospQuestionnaireResponse.encounter",
      "short" : "Reference to the Encounter during which this response was captured - !!! in testphase this was not required but it makes sence to reference the encounter",
      "definition" : "Reference to the Encounter during which this response was captured - !!! in testphase this was not required but it makes sence to reference the encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-encounter-lm"]
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.authored",
      "path" : "HomeHospQuestionnaireResponse.authored",
      "short" : "Date/time when the response was completed",
      "definition" : "Date/time when the response was completed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.author",
      "path" : "HomeHospQuestionnaireResponse.author",
      "short" : "Reference to the home nurse who authored the response (Practitioner)",
      "definition" : "Reference to the home nurse who authored the response (Practitioner)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.source",
      "path" : "HomeHospQuestionnaireResponse.source",
      "short" : "Reference to the person who provided the answers (if different from author)",
      "definition" : "Reference to the person who provided the answers (if different from author)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/BeModelPatient"]
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item",
      "path" : "HomeHospQuestionnaireResponse.item",
      "short" : "Answer items corresponding to questionnaire groups and questions. Structure mirrors the Questionnaire item hierarchy (groups and leaf questions). Each leaf item contains a linkId, optional text, and one or more answer values.",
      "definition" : "Answer items corresponding to questionnaire groups and questions. Structure mirrors the Questionnaire item hierarchy (groups and leaf questions). Each leaf item contains a linkId, optional text, and one or more answer values.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.linkId",
      "path" : "HomeHospQuestionnaireResponse.item.linkId",
      "short" : "Unique linkId matching the corresponding Questionnaire item",
      "definition" : "Unique linkId matching the corresponding Questionnaire item",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.text",
      "path" : "HomeHospQuestionnaireResponse.item.text",
      "short" : "Display text of the question (copied from the Questionnaire for readability)",
      "definition" : "Display text of the question (copied from the Questionnaire for readability)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.answer",
      "path" : "HomeHospQuestionnaireResponse.item.answer",
      "short" : "Answer(s) provided for this item",
      "definition" : "Answer(s) provided for this item",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.answer.valueCoding",
      "path" : "HomeHospQuestionnaireResponse.item.answer.valueCoding",
      "short" : "Coded answer (for choice-type questions using SNOMED CT codes)",
      "definition" : "Coded answer (for choice-type questions using SNOMED CT codes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.answer.valueDecimal",
      "path" : "HomeHospQuestionnaireResponse.item.answer.valueDecimal",
      "short" : "Numeric answer with unit implicit from the Questionnaire (for vital parameters and infusor weights)",
      "definition" : "Numeric answer with unit implicit from the Questionnaire (for vital parameters and infusor weights)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.answer.valueString",
      "path" : "HomeHospQuestionnaireResponse.item.answer.valueString",
      "short" : "Free-text answer (for open text questions)",
      "definition" : "Free-text answer (for open text questions)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.answer.valueBoolean",
      "path" : "HomeHospQuestionnaireResponse.item.answer.valueBoolean",
      "short" : "Boolean answer (reserved for future use; prefer valueCoding with SNOMED yes/no)",
      "definition" : "Boolean answer (reserved for future use; prefer valueCoding with SNOMED yes/no)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item",
      "path" : "HomeHospQuestionnaireResponse.item.item",
      "short" : "Nested answer items for sub-questions within a group (same structure as item)",
      "definition" : "Nested answer items for sub-questions within a group (same structure as item)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.linkId",
      "path" : "HomeHospQuestionnaireResponse.item.item.linkId",
      "short" : "Unique linkId matching the corresponding nested Questionnaire item",
      "definition" : "Unique linkId matching the corresponding nested Questionnaire item",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.text",
      "path" : "HomeHospQuestionnaireResponse.item.item.text",
      "short" : "Display text of the nested question",
      "definition" : "Display text of the nested question",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.answer",
      "path" : "HomeHospQuestionnaireResponse.item.item.answer",
      "short" : "Answer(s) for the nested item",
      "definition" : "Answer(s) for the nested item",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.answer.valueCoding",
      "path" : "HomeHospQuestionnaireResponse.item.item.answer.valueCoding",
      "short" : "Coded answer for the nested item",
      "definition" : "Coded answer for the nested item",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.answer.valueDecimal",
      "path" : "HomeHospQuestionnaireResponse.item.item.answer.valueDecimal",
      "short" : "Numeric answer for the nested item",
      "definition" : "Numeric answer for the nested item",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "HomeHospQuestionnaireResponse.item.item.answer.valueString",
      "path" : "HomeHospQuestionnaireResponse.item.item.answer.valueString",
      "short" : "Free-text answer for the nested item",
      "definition" : "Free-text answer for the nested item",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
