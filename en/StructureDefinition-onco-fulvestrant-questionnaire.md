# ONCO Fulvestrant Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: ONCO Fulvestrant Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Fulvestrant. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: simplified contraindications checklist (fever/chills/unwell only), and includes muscle/joint pain in side effects. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-onco-fulvestrant-questionnaire.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-onco-fulvestrant-questionnaire.csv), [Excel](../StructureDefinition-onco-fulvestrant-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onco-fulvestrant-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-fulvestrant-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.18"
  }],
  "version" : "0.1.0",
  "name" : "ONCOFulvestrantQuestionnaire",
  "title" : "ONCO Fulvestrant Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Fulvestrant. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: simplified contraindications checklist (fever/chills/unwell only), and includes muscle/joint pain in side effects.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCOFulvestrantQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ONCOFulvestrantQuestionnaire",
      "path" : "ONCOFulvestrantQuestionnaire",
      "short" : "ONCO Fulvestrant Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Fulvestrant. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: simplified contraindications checklist (fever/chills/unwell only), and includes muscle/joint pain in side effects."
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters",
      "short" : "Observation Parameters",
      "definition" : "Observation Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.pulse",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "short" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "short" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications",
      "short" : "Contraindications",
      "definition" : "Contraindications",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "short" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "short" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "definition" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "short" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "definition" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "short" : "Specify if decision = Other (SNOMED 438833006)",
      "definition" : "Specify if decision = Other (SNOMED 438833006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects",
      "short" : "Side Effects",
      "definition" : "Side Effects",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.nausea",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.reducedAppetiteOrTasteChanges",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.reducedAppetiteOrTasteChanges",
      "short" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.constipation",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "short" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.pain",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.pain",
      "short" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild, does not disturb activities) | 444457005 Grade 2 (moderate, activities more difficult) | 444447009 Grade 3 (severe, activities hardly possible)",
      "definition" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild, does not disturb activities) | 444457005 Grade 2 (moderate, activities more difficult) | 444447009 Grade 3 (severe, activities hardly possible)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe/extensive redness or peeling)",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe/extensive redness or peeling)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.psychosocialBurden",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.psychosocialBurden",
      "short" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "definition" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.shortnessOfBreath",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion affecting daily life) | 444447009 Grade 3 (at rest affecting daily activities)",
      "definition" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion affecting daily life) | 444447009 Grade 3 (at rest affecting daily activities)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.muscleAndJointPain",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.sideEffects.muscleAndJointPain",
      "short" : "Muscle and joint pain (SNOMED 57676002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild, does not disturb daily life) | 444457005 Grade 2 (moderate, daily activities more difficult) | 444447009 Grade 3 (severe, daily activities hardly possible)",
      "definition" : "Muscle and joint pain (SNOMED 57676002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild, does not disturb daily life) | 444457005 Grade 2 (moderate, daily activities more difficult) | 444447009 Grade 3 (severe, daily activities hardly possible)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.otherRelevantObservations",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.otherRelevantObservations",
      "short" : "Other Relevant Observations",
      "definition" : "Other Relevant Observations",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "short" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital for clinical concerns. (SNOMED 365275006)",
      "definition" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital for clinical concerns. (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.task",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.task",
      "short" : "Task",
      "definition" : "Task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "short" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOFulvestrantQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "ONCOFulvestrantQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "short" : "Remarks or concerns about patient registration, data sharing, hospital communication, material availability, or other transmural collaboration aspects (SNOMED 276238005)",
      "definition" : "Remarks or concerns about patient registration, data sharing, hospital communication, material availability, or other transmural collaboration aspects (SNOMED 276238005)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
