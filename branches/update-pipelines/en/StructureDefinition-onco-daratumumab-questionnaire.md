# ONCO Daratumumab Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: ONCO Daratumumab Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Daratumumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes pre-medication intake verification (dexamethasone, H1-antihistamine, paracetamol) and aftercare reaction monitoring. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/onco-daratumumab-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-onco-daratumumab-questionnaire.csv), [Excel](../StructureDefinition-onco-daratumumab-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onco-daratumumab-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-daratumumab-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.17"
  }],
  "version" : "0.1.0",
  "name" : "ONCODaratumumabQuestionnaire",
  "title" : "ONCO Daratumumab Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Daratumumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes pre-medication intake verification (dexamethasone, H1-antihistamine, paracetamol) and aftercare reaction monitoring.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCODaratumumabQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ONCODaratumumabQuestionnaire",
      "path" : "ONCODaratumumabQuestionnaire",
      "short" : "ONCO Daratumumab Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Daratumumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes pre-medication intake verification (dexamethasone, H1-antihistamine, paracetamol) and aftercare reaction monitoring."
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters",
      "short" : "Observation Parameters",
      "definition" : "Observation Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.pulse",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "short" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "short" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.preMedicationIntake",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.preMedicationIntake",
      "short" : "Pre-Medication Intake",
      "definition" : "Pre-Medication Intake",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.preMedicationIntake.preMedicationTakenCorrectly",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.preMedicationIntake.preMedicationTakenCorrectly",
      "short" : "Was pre-medication taken correctly (dexamethasone, H1 antihistamine, paracetamol before administration)? (SNOMED 182833002) | Answers: 31874001 True (yes) | 64100000 False (no)",
      "definition" : "Was pre-medication taken correctly (dexamethasone, H1 antihistamine, paracetamol before administration)? (SNOMED 182833002) | Answers: 31874001 True (yes) | 64100000 False (no)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications",
      "short" : "Contraindications",
      "definition" : "Contraindications",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "short" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "short" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "definition" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.preMedicationNotTaken",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.preMedicationNotTaken",
      "short" : "Pre-medication not taken (SNOMED 371900001) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Pre-medication not taken (SNOMED 371900001) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "short" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "definition" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "short" : "Specify if decision = Other (SNOMED 438833006)",
      "definition" : "Specify if decision = Other (SNOMED 438833006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden",
      "short" : "Symptom Burden",
      "definition" : "Symptom Burden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "short" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "short" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.pain",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.pain",
      "short" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild redness) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe/extensive peeling)",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild redness) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe/extensive peeling)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "short" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "definition" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (moderate impact) | 444447009 Grade 3 (severe impact)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "definition" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.cough",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.cough",
      "short" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.muscleAndJointPain",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.symptomBurden.muscleAndJointPain",
      "short" : "Muscle and joint pain (SNOMED 57676002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Muscle and joint pain (SNOMED 57676002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.otherRelevantObservations",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.otherRelevantObservations",
      "short" : "Other Relevant Observations",
      "definition" : "Other Relevant Observations",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "short" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "definition" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.task",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.task",
      "short" : "Task",
      "definition" : "Task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.task.medicationPreparedPerProcedure",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.task.medicationPreparedPerProcedure",
      "short" : "Could the medication be prepared according to the procedure? (SNOMED 385796006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be prepared according to the procedure? (SNOMED 385796006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "short" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCODaratumumabQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "ONCODaratumumabQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
