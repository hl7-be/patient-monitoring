# ONCO Trastuzumab Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: ONCO Trastuzumab Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Trastuzumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes body weight, aftercare/reaction monitoring, and cardiac-focused contraindication checklist. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/onco-trastuzumab-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-onco-trastuzumab-questionnaire.csv), [Excel](../StructureDefinition-onco-trastuzumab-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onco-trastuzumab-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-trastuzumab-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.19"
  }],
  "version" : "0.1.0",
  "name" : "ONCOTrastuzumabQuestionnaire",
  "title" : "ONCO Trastuzumab Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Trastuzumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes body weight, aftercare/reaction monitoring, and cardiac-focused contraindication checklist.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCOTrastuzumabQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ONCOTrastuzumabQuestionnaire",
      "path" : "ONCOTrastuzumabQuestionnaire",
      "short" : "ONCO Trastuzumab Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Trastuzumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes body weight, aftercare/reaction monitoring, and cardiac-focused contraindication checklist."
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters",
      "short" : "Observation Parameters",
      "definition" : "Observation Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.pulse",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "short" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "short" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bodyWeight",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.observationParameters.bodyWeight",
      "short" : "Body weight (kg) (LOINC 29463-7)",
      "definition" : "Body weight (kg) (LOINC 29463-7)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications",
      "short" : "Contraindications",
      "definition" : "Contraindications",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "short" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "short" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "definition" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.lowBloodPressure",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.lowBloodPressure",
      "short" : "Repeated blood pressure lower than 100/60 mmHg (SNOMED 12763006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Repeated blood pressure lower than 100/60 mmHg (SNOMED 12763006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.elevatedHeartRate",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.elevatedHeartRate",
      "short" : "Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known (SNOMED 361137007) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known (SNOMED 361137007) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.rapidWeightIncrease",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.rapidWeightIncrease",
      "short" : "Increase in body weight of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema (SNOMED 262286000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Increase in body weight of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema (SNOMED 262286000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.increasedEdemaHandsFeet",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.increasedEdemaHandsFeet",
      "short" : "Increased edema in hands and/or feet (SNOMED 267038008) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Increased edema in hands and/or feet (SNOMED 267038008) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.increasedDyspnea",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.increasedDyspnea",
      "short" : "Increased or severe shortness of breath (at rest or impacting daily activities) (SNOMED 297216006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Increased or severe shortness of breath (at rest or impacting daily activities) (SNOMED 297216006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "short" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "definition" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "short" : "Specify if decision = Other (SNOMED 438833006)",
      "definition" : "Specify if decision = Other (SNOMED 438833006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden",
      "short" : "Symptom Burden",
      "definition" : "Symptom Burden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "short" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "short" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.pain",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.pain",
      "short" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe redness or peeling)",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe redness or peeling)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "short" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (slight distress) | 444457005 Grade 2 (significant distress) | 444447009 Grade 3 (severe distress)",
      "definition" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (slight distress) | 444457005 Grade 2 (significant distress) | 444447009 Grade 3 (severe distress)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "definition" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.edema",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.symptomBurden.edema",
      "short" : "Edema (SNOMED 79654002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Edema (SNOMED 79654002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.otherRelevantObservations",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.otherRelevantObservations",
      "short" : "Other Relevant Observations",
      "definition" : "Other Relevant Observations",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "short" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "definition" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task",
      "short" : "Task",
      "definition" : "Task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task.medicationPreparedPerProcedure",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task.medicationPreparedPerProcedure",
      "short" : "Could the medication be prepared according to the procedure? (SNOMED 385796006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be prepared according to the procedure? (SNOMED 385796006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "short" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare",
      "short" : "Aftercare",
      "definition" : "Aftercare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.reactionDuringObservation",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.reactionDuringObservation",
      "short" : "Was there a reaction during the home observation period? (SNOMED 281647001) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Was there a reaction during the home observation period? (SNOMED 281647001) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.fever",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.fever",
      "short" : "Fever (SNOMED 386661006) | Answers: 373066001 Yes | 373067005 No (conditional: if reactionDuringObservation = Yes)",
      "definition" : "Fever (SNOMED 386661006) | Answers: 373066001 Yes | 373067005 No (conditional: if reactionDuringObservation = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.nausea",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.shortnessOfBreath",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 255365009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Shortness of breath (SNOMED 255365009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.chills",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.chills",
      "short" : "Chills (SNOMED 43724002) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Chills (SNOMED 43724002) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.fluLikeSymptoms",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.aftercare.fluLikeSymptoms",
      "short" : "Flu-like symptoms (SNOMED 95891005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Flu-like symptoms (SNOMED 95891005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "ONCOTrastuzumabQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
