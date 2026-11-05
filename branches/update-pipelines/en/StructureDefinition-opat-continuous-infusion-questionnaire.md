# OPAT Continuous Infusion Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: OPAT Continuous Infusion Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving continuous infusion. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/opat-continuous-infusion-questionnaire)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-opat-continuous-infusion-questionnaire.csv), [Excel](../StructureDefinition-opat-continuous-infusion-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "opat-continuous-infusion-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/opat-continuous-infusion-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.20"
  }],
  "version" : "0.1.0",
  "name" : "OPATContinuousInfusionQuestionnaire",
  "title" : "OPAT Continuous Infusion Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving continuous infusion. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/OPATContinuousInfusionQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OPATContinuousInfusionQuestionnaire",
      "path" : "OPATContinuousInfusionQuestionnaire",
      "short" : "OPAT Continuous Infusion Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving continuous infusion. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital."
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation",
      "short" : "Preparation of Medication Administration",
      "definition" : "Preparation of Medication Administration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.medicationDissolvedClear",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.medicationDissolvedClear",
      "short" : "The medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "The medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.weightEmptyInfusor",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.weightEmptyInfusor",
      "short" : "Weight when disconnecting empty infusor (g) (SNOMED 1381260006)",
      "definition" : "Weight when disconnecting empty infusor (g) (SNOMED 1381260006)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.weightFullInfusorBeforeAdministration",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.weightFullInfusorBeforeAdministration",
      "short" : "Weight of full infusor just before new administration (g) (SNOMED 1381257004)",
      "definition" : "Weight of full infusor just before new administration (g) (SNOMED 1381257004)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.additionalObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.preparation.additionalObservation",
      "short" : "Additional observation during preparation, if applicable (SNOMED 396078004)",
      "definition" : "Additional observation during preparation, if applicable (SNOMED 396078004)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration",
      "short" : "Medication Administration",
      "definition" : "Medication Administration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration.administeredPerProcedure",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration.administeredPerProcedure",
      "short" : "Was the medication administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Was the medication administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration.deviationSpecification",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.medicationAdministration.deviationSpecification",
      "short" : "Specify deviation (conditional: if administeredPerProcedure = No)",
      "definition" : "Specify deviation (conditional: if administeredPerProcedure = No)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters",
      "short" : "Vital Parameters",
      "definition" : "Vital Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bodyTemperature",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.pulse",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bloodPressureSystolic",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bloodPressureSystolic",
      "short" : "Blood pressure - systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure - systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bloodPressureDiastolic",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.vitalParameters.bloodPressureDiastolic",
      "short" : "Blood pressure - diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure - diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation",
      "short" : "Dressing Observation at Insertion Site",
      "definition" : "Dressing Observation at Insertion Site",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.dressingObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.dressingObservation",
      "short" : "Dressing observation at insertion site (SNOMED 364554009) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Dressing observation at insertion site (SNOMED 364554009) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.bloody",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.bloody",
      "short" : "Bloody (SNOMED 297968009) | Answers: 373066001 Yes | 373067005 No (conditional: if dressingObservation = Abnormal)",
      "definition" : "Bloody (SNOMED 297968009) | Answers: 373066001 Yes | 373067005 No (conditional: if dressingObservation = Abnormal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.purulent",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.purulent",
      "short" : "Purulent (SNOMED 225550006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Purulent (SNOMED 225550006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.loose",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.loose",
      "short" : "Loose (SNOMED 78799005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Loose (SNOMED 78799005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.serous",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.serous",
      "short" : "Serous (SNOMED 447112000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Serous (SNOMED 447112000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.moist",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.moist",
      "short" : "Moist (SNOMED 17461003) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Moist (SNOMED 17461003) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.other",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.dressingObservation.other",
      "short" : "Other dressing observation problem, if applicable (SNOMED 1481000124102)",
      "definition" : "Other dressing observation problem, if applicable (SNOMED 1481000124102)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation",
      "short" : "Insertion Site Observation",
      "definition" : "Insertion Site Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.insertionSiteObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.insertionSiteObservation",
      "short" : "Insertion site observation (SNOMED 386141001) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Insertion site observation (SNOMED 386141001) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.blistering",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.blistering",
      "short" : "Blistering (SNOMED 339008) | Answers: 373066001 Yes | 373067005 No (conditional: if insertionSiteObservation = Abnormal)",
      "definition" : "Blistering (SNOMED 339008) | Answers: 373066001 Yes | 373067005 No (conditional: if insertionSiteObservation = Abnormal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.redness",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.redness",
      "short" : "Redness (SNOMED 371240000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Redness (SNOMED 371240000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.hematoma",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.hematoma",
      "short" : "Hematoma (SNOMED 35566002) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Hematoma (SNOMED 35566002) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.pus",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.pus",
      "short" : "Pus (SNOMED 367646009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Pus (SNOMED 367646009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.crusting",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.crusting",
      "short" : "Crusting / crust formation (SNOMED 69640009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Crusting / crust formation (SNOMED 69640009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.swelling",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.swelling",
      "short" : "Swelling (SNOMED 65124004) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Swelling (SNOMED 65124004) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.extravasation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.extravasation",
      "short" : "Extravasation/infiltration (SNOMED 76676007) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Extravasation/infiltration (SNOMED 76676007) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.other",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.insertionSiteObservation.other",
      "short" : "Other insertion site observation, if applicable (SNOMED 364554009)",
      "definition" : "Other insertion site observation, if applicable (SNOMED 364554009)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation",
      "short" : "Catheter Observation",
      "definition" : "Catheter Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.catheterType",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.catheterType",
      "short" : "Type of catheter (SNOMED 246138005) | Answers: 52124006 Port catheter | 1396546006 1-lumen tunneled | 1396570005 2-lumen tunneled | 1396538005 3-lumen tunneled | 1396531004 Single lumen midline | 1396527005 Double lumen midline | 1396526001 Single lumen PICC | 1396489007 Double lumen PICC | 423954007 Peripheral catheter",
      "definition" : "Type of catheter (SNOMED 246138005) | Answers: 52124006 Port catheter | 1396546006 1-lumen tunneled | 1396570005 2-lumen tunneled | 1396538005 3-lumen tunneled | 1396531004 Single lumen midline | 1396527005 Double lumen midline | 1396526001 Single lumen PICC | 1396489007 Double lumen PICC | 423954007 Peripheral catheter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.catheterObservation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.catheterObservation",
      "short" : "Catheter observation (SNOMED 1156071007) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Catheter observation (SNOMED 1156071007) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen",
      "short" : "Per-lumen observation (specify per lumen; conditional: if catheterObservation = Abnormal)",
      "definition" : "Per-lumen observation (specify per lumen; conditional: if catheterObservation = Abnormal)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.colorLumen",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.colorLumen",
      "short" : "Color of lumen hub (SNOMED 1396483008) | Answers: 371253002 Gray | 371251000 White | 371240000 Red | 371250004 Purple",
      "definition" : "Color of lumen hub (SNOMED 1396483008) | Answers: 371253002 Gray | 371251000 White | 371240000 Red | 371250004 Purple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.bloodAspiration",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.bloodAspiration",
      "short" : "Blood aspiration (SNOMED 25797006) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "definition" : "Blood aspiration (SNOMED 25797006) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.infusion",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.lumen.infusion",
      "short" : "Infusion (SNOMED 36576007) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "definition" : "Infusion (SNOMED 36576007) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.damagedCatheter",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.damagedCatheter",
      "short" : "Damaged catheter (SNOMED 1156074004) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Damaged catheter (SNOMED 1156074004) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.other",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.catheterObservation.other",
      "short" : "Other catheter observation, if applicable (SNOMED 406148008)",
      "definition" : "Other catheter observation, if applicable (SNOMED 406148008)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects",
      "short" : "Side Effects",
      "definition" : "Side Effects",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.itching",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.itching",
      "short" : "Itching (SNOMED 418290006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Itching (SNOMED 418290006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.blistersSkinPeeling",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.blistersSkinPeeling",
      "short" : "Blisters/skin peeling (SNOMED 271767006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Blisters/skin peeling (SNOMED 271767006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.nausea",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.constipation",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.decreasedAppetite",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.decreasedAppetite",
      "short" : "Decreased appetite / taste change (SNOMED 64379006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Decreased appetite / taste change (SNOMED 64379006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.painDuringAdministration",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.painDuringAdministration",
      "short" : "Pain during administration (SNOMED 698749006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Pain during administration (SNOMED 698749006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.painGeneral",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.painGeneral",
      "short" : "Pain general (SNOMED 112104007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Pain general (SNOMED 112104007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "short" : "Fatigue (SNOMED 224960004) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Fatigue (SNOMED 224960004) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.chills",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.chills",
      "short" : "Chills (SNOMED 43724002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Chills (SNOMED 43724002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.candidiasis",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.candidiasis",
      "short" : "Candidiasis / fungal infection (SNOMED 78048006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Candidiasis / fungal infection (SNOMED 78048006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.jointPain",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.jointPain",
      "short" : "Joint pain (SNOMED 57676002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Joint pain (SNOMED 57676002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.breathingProblems",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.breathingProblems",
      "short" : "Breathing problems / shortness of breath (SNOMED 267036007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Breathing problems / shortness of breath (SNOMED 267036007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.swellingFaceTongue",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.swellingFaceTongue",
      "short" : "Swelling of face/tongue (SNOMED 278528006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Swelling of face/tongue (SNOMED 278528006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.otherSymptoms",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.sideEffects.otherSymptoms",
      "short" : "Other symptoms or relevant clinical/psychosocial observations (SNOMED 365275006)",
      "definition" : "Other symptoms or relevant clinical/psychosocial observations (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "OPATContinuousInfusionQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
