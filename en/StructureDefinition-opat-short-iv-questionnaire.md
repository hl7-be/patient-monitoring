# OPAT Short IV Questionnaire Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: OPAT Short IV Questionnaire Logical Model 

 
Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving short IV administration. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Compared to the continuous infusion questionnaire, this model does not include infusor weight measurements. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-opat-short-iv-questionnaire.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-opat-short-iv-questionnaire.csv), [Excel](../StructureDefinition-opat-short-iv-questionnaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "opat-short-iv-questionnaire",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/opat-short-iv-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.21"
  }],
  "version" : "0.1.0",
  "name" : "OPATShortIVQuestionnaire",
  "title" : "OPAT Short IV Questionnaire Logical Model",
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
  "description" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving short IV administration. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Compared to the continuous infusion questionnaire, this model does not include infusor weight measurements.",
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
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/OPATShortIVQuestionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OPATShortIVQuestionnaire",
      "path" : "OPATShortIVQuestionnaire",
      "short" : "OPAT Short IV Questionnaire Logical Model",
      "definition" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving short IV administration. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Compared to the continuous infusion questionnaire, this model does not include infusor weight measurements."
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment",
      "short" : "Nursing Assessment",
      "definition" : "Nursing Assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.storage",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.storage",
      "short" : "Storage",
      "definition" : "Storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.storage.medicationStorageRemarks",
      "short" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "definition" : "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.storage.storageRemarksSpecification",
      "short" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "definition" : "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.preparation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.preparation",
      "short" : "Preparation of Medication Administration",
      "definition" : "Preparation of Medication Administration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.preparation.medicationDissolvedClear",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.preparation.medicationDissolvedClear",
      "short" : "The medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "The medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration",
      "short" : "Medication Administration",
      "definition" : "Medication Administration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration.administeredPerProcedure",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration.administeredPerProcedure",
      "short" : "Was the medication administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Was the medication administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration.deviationSpecification",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.medicationAdministration.deviationSpecification",
      "short" : "Specify deviation (conditional: if administeredPerProcedure = No)",
      "definition" : "Specify deviation (conditional: if administeredPerProcedure = No)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters",
      "short" : "Vital Parameters",
      "definition" : "Vital Parameters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bodyTemperature",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bodyTemperature",
      "short" : "Body temperature (°C) (LOINC 8310-5)",
      "definition" : "Body temperature (°C) (LOINC 8310-5)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.pulse",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.pulse",
      "short" : "Pulse (beats/min) (SNOMED 364075005)",
      "definition" : "Pulse (beats/min) (SNOMED 364075005)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bloodPressureSystolic",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bloodPressureSystolic",
      "short" : "Blood pressure - systolic (mmHg) (LOINC 8480-6)",
      "definition" : "Blood pressure - systolic (mmHg) (LOINC 8480-6)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bloodPressureDiastolic",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.vitalParameters.bloodPressureDiastolic",
      "short" : "Blood pressure - diastolic (mmHg) (LOINC 8462-4)",
      "definition" : "Blood pressure - diastolic (mmHg) (LOINC 8462-4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation",
      "short" : "Dressing Observation at Insertion Site",
      "definition" : "Dressing Observation at Insertion Site",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.dressingObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.dressingObservation",
      "short" : "Dressing observation at insertion site (SNOMED 364554009) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Dressing observation at insertion site (SNOMED 364554009) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.bloody",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.bloody",
      "short" : "Bloody (SNOMED 297968009) | Answers: 373066001 Yes | 373067005 No (conditional: if dressingObservation = Abnormal)",
      "definition" : "Bloody (SNOMED 297968009) | Answers: 373066001 Yes | 373067005 No (conditional: if dressingObservation = Abnormal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.purulent",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.purulent",
      "short" : "Purulent (SNOMED 225550006) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Purulent (SNOMED 225550006) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.loose",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.loose",
      "short" : "Loose (SNOMED 78799005) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Loose (SNOMED 78799005) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.serous",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.serous",
      "short" : "Serous (SNOMED 447112000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Serous (SNOMED 447112000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.moist",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.moist",
      "short" : "Moist (SNOMED 17461003) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Moist (SNOMED 17461003) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.other",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.dressingObservation.other",
      "short" : "Other dressing observation problem, if applicable (SNOMED 1481000124102)",
      "definition" : "Other dressing observation problem, if applicable (SNOMED 1481000124102)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation",
      "short" : "Insertion Site Observation",
      "definition" : "Insertion Site Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.insertionSiteObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.insertionSiteObservation",
      "short" : "Insertion site observation (SNOMED 386141001) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Insertion site observation (SNOMED 386141001) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.blistering",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.blistering",
      "short" : "Blistering (SNOMED 339008) | Answers: 373066001 Yes | 373067005 No (conditional: if insertionSiteObservation = Abnormal)",
      "definition" : "Blistering (SNOMED 339008) | Answers: 373066001 Yes | 373067005 No (conditional: if insertionSiteObservation = Abnormal)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.redness",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.redness",
      "short" : "Redness (SNOMED 371240000) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Redness (SNOMED 371240000) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.hematoma",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.hematoma",
      "short" : "Hematoma (SNOMED 35566002) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Hematoma (SNOMED 35566002) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.pus",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.pus",
      "short" : "Pus (SNOMED 367646009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Pus (SNOMED 367646009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.crusting",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.crusting",
      "short" : "Crusting / crust formation (SNOMED 69640009) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Crusting / crust formation (SNOMED 69640009) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.swelling",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.swelling",
      "short" : "Swelling (SNOMED 65124004) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Swelling (SNOMED 65124004) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.extravasation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.extravasation",
      "short" : "Extravasation/infiltration (SNOMED 76676007) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Extravasation/infiltration (SNOMED 76676007) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.other",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.insertionSiteObservation.other",
      "short" : "Other insertion site observation, if applicable (SNOMED 364554009)",
      "definition" : "Other insertion site observation, if applicable (SNOMED 364554009)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation",
      "short" : "Catheter Observation",
      "definition" : "Catheter Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.catheterType",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.catheterType",
      "short" : "Type of catheter (SNOMED 246138005) | Answers: 52124006 Port catheter | 1396546006 1-lumen tunneled | 1396570005 2-lumen tunneled | 1396538005 3-lumen tunneled | 1396531004 Single lumen midline | 1396527005 Double lumen midline | 1396526001 Single lumen PICC | 1396489007 Double lumen PICC | 423954007 Peripheral catheter",
      "definition" : "Type of catheter (SNOMED 246138005) | Answers: 52124006 Port catheter | 1396546006 1-lumen tunneled | 1396570005 2-lumen tunneled | 1396538005 3-lumen tunneled | 1396531004 Single lumen midline | 1396527005 Double lumen midline | 1396526001 Single lumen PICC | 1396489007 Double lumen PICC | 423954007 Peripheral catheter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.catheterObservation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.catheterObservation",
      "short" : "Catheter observation (SNOMED 1156071007) | Answers: 17621005 Normal | 263654008 Abnormal",
      "definition" : "Catheter observation (SNOMED 1156071007) | Answers: 17621005 Normal | 263654008 Abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen",
      "short" : "Per-lumen observation (specify per lumen; conditional: if catheterObservation = Abnormal)",
      "definition" : "Per-lumen observation (specify per lumen; conditional: if catheterObservation = Abnormal)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.colorLumen",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.colorLumen",
      "short" : "Color of lumen hub (SNOMED 1396483008) | Answers: 371253002 Gray | 371251000 White | 371240000 Red | 371250004 Purple",
      "definition" : "Color of lumen hub (SNOMED 1396483008) | Answers: 371253002 Gray | 371251000 White | 371240000 Red | 371250004 Purple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.bloodAspiration",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.bloodAspiration",
      "short" : "Blood aspiration (SNOMED 25797006) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "definition" : "Blood aspiration (SNOMED 25797006) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.infusion",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.lumen.infusion",
      "short" : "Infusion (SNOMED 36576007) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "definition" : "Infusion (SNOMED 36576007) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.damagedCatheter",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.damagedCatheter",
      "short" : "Damaged catheter (SNOMED 1156074004) | Answers: 373066001 Yes | 373067005 No",
      "definition" : "Damaged catheter (SNOMED 1156074004) | Answers: 373066001 Yes | 373067005 No",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.other",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.catheterObservation.other",
      "short" : "Other catheter observation, if applicable (SNOMED 406148008)",
      "definition" : "Other catheter observation, if applicable (SNOMED 406148008)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects",
      "short" : "Side Effects",
      "definition" : "Side Effects",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.skinRash",
      "short" : "Skin rash (SNOMED 271807003) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Skin rash (SNOMED 271807003) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.itching",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.itching",
      "short" : "Itching (SNOMED 418290006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Itching (SNOMED 418290006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.blistersSkinPeeling",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.blistersSkinPeeling",
      "short" : "Blisters/skin peeling (SNOMED 271767006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Blisters/skin peeling (SNOMED 271767006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.nausea",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.nausea",
      "short" : "Nausea (SNOMED 422587007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Nausea (SNOMED 422587007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.vomiting",
      "short" : "Vomiting (SNOMED 249497008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Vomiting (SNOMED 249497008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.diarrhea",
      "short" : "Diarrhea (SNOMED 62315008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Diarrhea (SNOMED 62315008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.constipation",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.constipation",
      "short" : "Constipation (SNOMED 14760008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Constipation (SNOMED 14760008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.decreasedAppetite",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.decreasedAppetite",
      "short" : "Decreased appetite / taste change (SNOMED 64379006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Decreased appetite / taste change (SNOMED 64379006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.painDuringAdministration",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.painDuringAdministration",
      "short" : "Pain during administration (SNOMED 698749006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Pain during administration (SNOMED 698749006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.painGeneral",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.painGeneral",
      "short" : "Pain general (SNOMED 112104007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Pain general (SNOMED 112104007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.fatigue",
      "short" : "Fatigue (SNOMED 224960004) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Fatigue (SNOMED 224960004) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.chills",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.chills",
      "short" : "Chills (SNOMED 43724002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Chills (SNOMED 43724002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.candidiasis",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.candidiasis",
      "short" : "Candidiasis / fungal infection (SNOMED 78048006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Candidiasis / fungal infection (SNOMED 78048006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.jointPain",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.jointPain",
      "short" : "Joint pain (SNOMED 57676002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Joint pain (SNOMED 57676002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.breathingProblems",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.breathingProblems",
      "short" : "Breathing problems / shortness of breath (SNOMED 267036007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Breathing problems / shortness of breath (SNOMED 267036007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.swellingFaceTongue",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.swellingFaceTongue",
      "short" : "Swelling of face/tongue (SNOMED 278528006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "definition" : "Swelling of face/tongue (SNOMED 278528006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.otherSymptoms",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.sideEffects.otherSymptoms",
      "short" : "Other symptoms or relevant clinical/psychosocial observations (SNOMED 365275006)",
      "definition" : "Other symptoms or relevant clinical/psychosocial observations (SNOMED 365275006)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.qualityFollowUp",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.qualityFollowUp",
      "short" : "Quality Follow-Up",
      "definition" : "Quality Follow-Up",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "OPATShortIVQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
      "path" : "OPATShortIVQuestionnaire.nursingAssessment.qualityFollowUp.remarks",
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
