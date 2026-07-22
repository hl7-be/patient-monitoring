# ONCO Bortezomib Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: ONCO Bortezomib Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Bortezomib. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes neuropathy-focused contraindications (severe sensory and motor neuropathy) and symptom burden items for peripheral neuropathy. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/onco-bortezomib-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-onco-bortezomib-questionnaire.csv), [Excel](../StructureDefinition-onco-bortezomib-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onco-bortezomib-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-bortezomib-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.16"
  }],
  "version" : "0.1.0",
  "name" : "ONCOBortezomibQuestionnaire",
  "title" : "ONCO Bortezomib Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Bortezomib. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes neuropathy-focused contraindications (severe sensory and motor neuropathy) and symptom burden items for peripheral neuropathy.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCOBortezomibQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ONCOBortezomibQuestionnaire",
      "path" : "ONCOBortezomibQuestionnaire",
      "short" : "ONCO Bortezomib Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Bortezomib. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes neuropathy-focused contraindications (severe sensory and motor neuropathy) and symptom burden items for peripheral neuropathy."
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters",
      "short" : "Observation Parameters",
      "definition" : "Observation Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.pulse",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bloodPressureSystolic",
      "short" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.observationParameters.bloodPressureDiastolic",
      "short" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications",
      "short" : "Contraindications",
      "definition" : "Contraindications",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.anyContraindication",
      "short" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.feverChillsUnwell",
      "short" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "definition" : "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.lowBloodPressure",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.lowBloodPressure",
      "short" : "Repeated blood pressure lower than 100/60 mmHg (SNOMED 12763006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Repeated blood pressure lower than 100/60 mmHg (SNOMED 12763006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.elevatedHeartRate",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.elevatedHeartRate",
      "short" : "Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known (SNOMED 361137007) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known (SNOMED 361137007) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.severeSensoryNeuropathy",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.severeSensoryNeuropathy",
      "short" : "Severe sensory neuropathy (e.g. numbness, tingling, burning or cold sensation in hands/feet with pain and/or impact on daily activities) (SNOMED 95662005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Severe sensory neuropathy (e.g. numbness, tingling, burning or cold sensation in hands/feet with pain and/or impact on daily activities) (SNOMED 95662005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.severeMotorNeuropathy",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.severeMotorNeuropathy",
      "short" : "Severe motor neuropathy (e.g. severe muscle weakness, general weakness or tremor impacting activities such as walking or writing) (SNOMED 299737009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Severe motor neuropathy (e.g. severe muscle weakness, general weakness or tremor impacting activities such as walking or writing) (SNOMED 299737009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.decisionAfterConsultation",
      "short" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "definition" : "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.contraindications.decisionOtherSpecification",
      "short" : "Specify if decision = Other (SNOMED 438833006)",
      "definition" : "Specify if decision = Other (SNOMED 438833006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden",
      "short" : "Symptom Burden",
      "definition" : "Symptom Burden",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges",
      "short" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.fatigue",
      "short" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.pain",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.pain",
      "short" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe redness or peeling)",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe redness or peeling)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.psychosocialBurden",
      "short" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (significant distress) | 444447009 Grade 3 (severe distress)",
      "definition" : "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (mild distress) | 444457005 Grade 2 (significant distress) | 444447009 Grade 3 (severe distress)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.shortnessOfBreath",
      "short" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "definition" : "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.tinglingOrNumbness",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.tinglingOrNumbness",
      "short" : "Tingling or numbness in fingers or toes (SNOMED 91019004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (present, no functional impact) | 444457005 Grade 2 (some activities more difficult) | 444447009 Grade 3 (activities no longer possible)",
      "definition" : "Tingling or numbness in fingers or toes (SNOMED 91019004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (present, no functional impact) | 444457005 Grade 2 (some activities more difficult) | 444447009 Grade 3 (activities no longer possible)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.motorNeuropathy",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.motorNeuropathy",
      "short" : "Motor neuropathy (SNOMED 95663000) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (weakness/tremor without functional impact) | 444457005 Grade 2 (impacts functioning) | 444447009 Grade 3 (impacts ADL)",
      "definition" : "Motor neuropathy (SNOMED 95663000) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (weakness/tremor without functional impact) | 444457005 Grade 2 (impacts functioning) | 444447009 Grade 3 (impacts ADL)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.cough",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.symptomBurden.cough",
      "short" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "definition" : "Cough (SNOMED 49727002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.otherRelevantObservations",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.otherRelevantObservations",
      "short" : "Other Relevant Observations",
      "definition" : "Other Relevant Observations",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.otherRelevantObservations.otherObservations",
      "short" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "definition" : "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.task",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.task",
      "short" : "Task",
      "definition" : "Task",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.task.medicationAdministeredPerProcedure",
      "short" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ONCOBortezomibQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "ONCOBortezomibQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
