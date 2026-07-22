# ONCO Azacitidine Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: ONCO Azacitidine Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Azacitidine. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes oxygen saturation (conditional, only when cough or shortness of breath), contraindications focused on GI symptoms and general deterioration, and a medication dissolution check. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/onco-azacitidine-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-onco-azacitidine-questionnaire.csv), [Excel](../StructureDefinition-onco-azacitidine-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onco-azacitidine-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-azacitidine-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.15"
  }],
  "version" : "0.1.0",
  "name" : "ONCOAzacitidineQuestionnaire",
  "title" : "ONCO Azacitidine Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Azacitidine. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes oxygen saturation (conditional, only when cough or shortness of breath), contraindications focused on GI symptoms and general deterioration, and a medication dissolution check.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCOAzacitidineQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ONCOAzacitidineQuestionnaire",
      "path" : "ONCOAzacitidineQuestionnaire",
      "short" : "ONCO Azacitidine Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Azacitidine. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes oxygen saturation (conditional, only when cough or shortness of breath), contraindications focused on GI symptoms and general deterioration, and a medication dissolution check."
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters",
      "short" : "Observation Parameters",
      "definition" : "Observation Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.pulse",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "short" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "short" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.oxygenSaturation",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.observationParameters.oxygenSaturation",
      "short" : "Oxygen saturation (%) (LOINC 2708-6) — Only measure if cough or shortness of breath is present",
      "definition" : "Oxygen saturation (%) (LOINC 2708-6) — Only measure if cough or shortness of breath is present",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications",
      "short" : "Contraindications",
      "definition" : "Contraindications",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "short" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "short" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "definition" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.noOralIntake",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.noOralIntake",
      "short" : "No oral intake due to reduced appetite or taste changes (SNOMED 247318005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "No oral intake due to reduced appetite or taste changes (SNOMED 247318005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.severeNausea",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.severeNausea",
      "short" : "Severe nausea (nausea with insufficient oral intake) (SNOMED 73335002) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Severe nausea (nausea with insufficient oral intake) (SNOMED 73335002) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.increasedDyspnea",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.increasedDyspnea",
      "short" : "Increased or severe shortness of breath (at rest or impacting daily activities) (SNOMED 297216006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Increased or severe shortness of breath (at rest or impacting daily activities) (SNOMED 297216006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.newOrIncreasedCough",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.newOrIncreasedCough",
      "short" : "New or increased productive/dry cough, with or without dyspnea (SNOMED 11833005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "New or increased productive/dry cough, with or without dyspnea (SNOMED 11833005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.generalDeterioration",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.generalDeterioration",
      "short" : "General deterioration (SNOMED 154091000119106) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "General deterioration (SNOMED 154091000119106) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "short" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "definition" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "short" : "Specify if decision = Other (SNOMED 438833006)",
      "definition" : "Specify if decision = Other (SNOMED 438833006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden",
      "short" : "Symptom Burden",
      "definition" : "Symptom Burden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "short" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "short" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.pain",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.pain",
      "short" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe/extensive redness or peeling)",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe/extensive redness or peeling)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "short" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "definition" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion affecting daily activities) | 444447009 Grade 3 (at rest affecting daily activities)",
      "definition" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion affecting daily activities) | 444447009 Grade 3 (at rest affecting daily activities)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.cough",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.symptomBurden.cough",
      "short" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.otherRelevantObservations",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.otherRelevantObservations",
      "short" : "Other Relevant Observations",
      "definition" : "Other Relevant Observations",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "short" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "definition" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task",
      "short" : "Task",
      "definition" : "Task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task.medicationDissolvedClear",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task.medicationDissolvedClear",
      "short" : "Medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "short" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOAzacitidineQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "ONCOAzacitidineQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
