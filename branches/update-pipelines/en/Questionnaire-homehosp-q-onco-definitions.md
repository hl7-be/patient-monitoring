#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: Questionnaire/homehosp-q-onco-definitions
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "homehosp-q-onco-definitions",
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "patient-placeholder",
    "meta" : {
      "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"],
      "tag" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code" : "SUBSETTED",
        "display" : "subsetted"
      }]
    },
    "identifier" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
      "value" : "UNKNOWN"
    }],
    "name" : [{
      "family" : "Unknown",
      "given" : ["Patient"]
    }]
  }],
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-q-onco-definitions",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.8"
  }],
  "version" : "0.1.0",
  "status" : "active",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "item" : [{
    "linkId" : "NursingAssessment",
    "text" : "Nursing assessment",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "MedicationStorage",
      "text" : "Medication storage",
      "type" : "group",
      "item" : [{
        "linkId" : "A1_MedicationStorage",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422413002",
          "display" : "Ability to store medications (observable entity)"
        }],
        "text" : "Are there any comments or concerns about the (correct) home storage of the medication?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "710977001",
            "display" : "Safe storage and management of medication"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "424363005",
            "display" : "Improper storage of medication"
          }
        }]
      },
      {
        "linkId" : "A2_MedicationStorageSpecify",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "text" : "> If comments or concerns: specify",
        "type" : "string",
        "enableWhen" : [{
          "question" : "A1_MedicationStorage",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "424363005",
            "display" : "Improper storage of medication"
          }
        }]
      }]
    },
    {
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "vital-signs",
              "display" : "Vital Signs"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "ObservationParameters",
      "text" : "Observation parameters",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "Cel",
            "display" : "Cel"
          }
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
          },
          {
            "url" : "fixed-value",
            "valueUri" : "http://unitsofmeasure.org"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
          },
          {
            "url" : "fixed-value",
            "valueCode" : "Cel"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
          },
          {
            "url" : "fixed-value",
            "valueString" : "°C"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B1_BodyTemperature",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8310-5",
          "display" : "Body temperature"
        }],
        "text" : "Body temperature:",
        "type" : "decimal",
        "required" : true
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "{beats}/min",
            "display" : "{beats}/min"
          }
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
          },
          {
            "url" : "fixed-value",
            "valueUri" : "http://unitsofmeasure.org"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
          },
          {
            "url" : "fixed-value",
            "valueCode" : "{beats}/min"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
          },
          {
            "url" : "fixed-value",
            "valueString" : "bpm"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B2_HeartRate",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364075005",
          "display" : "Heart rate (observable entity)"
        }],
        "text" : "Heart rate:",
        "type" : "decimal",
        "required" : true
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]",
            "display" : "mm[Hg]"
          }
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
          },
          {
            "url" : "fixed-value",
            "valueUri" : "http://unitsofmeasure.org"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
          },
          {
            "url" : "fixed-value",
            "valueCode" : "mm[Hg]"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
          },
          {
            "url" : "fixed-value",
            "valueString" : "mmHg"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B3_SystolicBloodPressure",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6",
          "display" : "Systolic blood pressure"
        }],
        "text" : "Systolic blood pressure:",
        "type" : "decimal",
        "required" : true
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]",
            "display" : "mm[Hg]"
          }
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
          },
          {
            "url" : "fixed-value",
            "valueUri" : "http://unitsofmeasure.org"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
          },
          {
            "url" : "fixed-value",
            "valueCode" : "mm[Hg]"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
          },
          {
            "url" : "fixed-value",
            "valueString" : "mmHg"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B4_DiastolicBloodPressure",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4",
          "display" : "Diastolic blood pressure"
        }],
        "text" : "Diastolic blood pressure:",
        "type" : "decimal",
        "required" : true
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "kg",
            "display" : "kg"
          }
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
          },
          {
            "url" : "fixed-value",
            "valueUri" : "http://unitsofmeasure.org"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
          },
          {
            "url" : "fixed-value",
            "valueCode" : "kg"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        },
        {
          "extension" : [{
            "url" : "definition",
            "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
          },
          {
            "url" : "fixed-value",
            "valueString" : "kg"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B5_BodyWeight",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "29463-7",
          "display" : "Body weight"
        }],
        "text" : "Body weight:",
        "type" : "decimal",
        "required" : true
      }]
    },
    {
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "Contraindications",
      "text" : "Contraindications",
      "type" : "group",
      "item" : [{
        "linkId" : "C1_ContraindicationPresent",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "395008009",
          "display" : "Medication stopped - contra-indication (situation)"
        }],
        "text" : "Are there any contraindications for administration?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C2_ContraindicationSpecify",
        "text" : "> If 'yes': specify",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_ContraindicationPresent",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C3_FeverChills",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "39104002",
          "display" : "Illness (finding)"
        }],
        "text" : "Fever, chills, feeling ill",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C4_LowBloodPressure",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "12763006",
          "display" : "Decreased blood pressure"
        }],
        "text" : "Blood pressure repeatedly below 100/60 mmHg",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C5_ElevatedOrIrregularHeartRate",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "361137007",
          "display" : "Irregular heart beat (finding)"
        }],
        "text" : "Heart rate above 100 bpm at rest or irregular heart rhythm, unless a chronically known problem.",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C6_WeightGain",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "262286000",
          "display" : "Weight increased (finding)"
        }],
        "text" : "A weight gain of 3 kg / 3 weeks or 5 kg / 6 weeks, especially in combination with increased edema.",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C7_Edema",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267038008",
          "display" : "Edema (finding)"
        }],
        "text" : "Increased edema of the hands and/or feet.",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C8_SevereDyspnea",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297216006",
          "display" : "Increasing breathlessness (finding)"
        }],
        "text" : "Increased breathlessness and/or severe breathlessness (i.e. breathlessness at rest/without exertion and/or breathlessness that interferes with daily activities) (Trastuzumab, Azacitidine)",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C9_Other",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "438833006",
          "display" : "Administration of drug or medicament contraindicated (situation)"
        }],
        "text" : "Other: (if applicable)",
        "type" : "string"
      },
      {
        "linkId" : "C10_ContactCareTeam",
        "text" : "> If contraindication(s): please contact the hospital care team",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_ContraindicationPresent",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "C11_Decision",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182836005",
          "display" : "Review of medication (procedure)"
        }],
        "text" : "Decision after consultation with hospital",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "administration"
        },
        {
          "valueString" : "no administration"
        },
        {
          "valueString" : "other"
        }]
      },
      {
        "linkId" : "C12_DecisionSpecify",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156698007",
          "display" : "Review of current supply of medication (procedure)"
        }],
        "text" : "> If 'other': specify",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C11_Decision",
          "operator" : "=",
          "answerString" : "other"
        }]
      }]
    },
    {
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "SymptomBurden",
      "text" : "Symptom burden",
      "type" : "group",
      "item" : [{
        "linkId" : "D1_Nausea",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea (finding)"
        }],
        "text" : "Nausea",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D2_Vomiting",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "249497008",
          "display" : "Vomiting symptom (finding)"
        }],
        "text" : "Vomiting",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D3_DecreasedAppetite",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite (finding)"
        }],
        "text" : "Decreased appetite or taste change",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D4_Diarrhea",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "62315008",
          "display" : "Diarrhea (finding)"
        }],
        "text" : "Diarrhea",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D5_Constipation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14760008",
          "display" : "Constipation (finding)"
        }],
        "text" : "Constipation",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D6_Fatigue",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired (finding)"
        }],
        "text" : "Fatigue/lethargy",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D7_Pain",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain (finding)"
        }],
        "text" : "Pain",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D8_SkinRash",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271807003",
          "display" : "Eruption of skin (disorder)"
        }],
        "text" : "Skin rash",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D9_PsychosocialBurden",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384821006",
          "display" : "Mental state, behavior and/or psychosocial function finding (finding)"
        }],
        "text" : "Psychosocial burden",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D10_Dyspnea",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea (finding)"
        }],
        "text" : "Dyspnea",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D11_Edema",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "79654002",
          "display" : "Edema (morphologic abnormality)"
        }],
        "text" : "Edema",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3 (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3 (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "D12_OtherObservations",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "365275006",
          "display" : "General well-being finding (finding)"
        }],
        "text" : "Other side effects or relevant clinical and psychosocial observations\n(in case of clinical concerns, please contact the hospital for discussion)",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "Assignment",
    "text" : "Assignment",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "MedicationPreparation",
      "text" : "Medication preparation",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_PreparationCorrect",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385796006",
          "display" : "Medication prefill preparation (procedure)"
        }],
        "text" : "Could the medication be prepared according to the procedure?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E2_ContactCareTeam",
        "text" : "> If 'no': please contact the hospital care team",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_PreparationCorrect",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      }]
    },
    {
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "MedicationAdministration",
      "text" : "Medication administration",
      "type" : "group",
      "item" : [{
        "linkId" : "E3_AdministrationCorrect",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373149000",
          "display" : "Medication administered following procedure (situation)"
        }],
        "text" : "Could the medication be administered exactly according to the procedure (there were no deviations)?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E4_SpecifyNo",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "text" : "> If 'no': specify",
        "type" : "string",
        "enableWhen" : [{
          "question" : "E3_AdministrationCorrect",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      }]
    },
    {
      "extension" : [{
        "extension" : [{
          "url" : "definition",
          "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
        },
        {
          "url" : "fixed-value",
          "valueCode" : "final"
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "survey",
              "display" : "Survey"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
        },
        {
          "url" : "fixed-value",
          "valueReference" : {
            "reference" : "#patient-placeholder"
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "Aftercare",
      "text" : "Aftercare",
      "type" : "group",
      "item" : [{
        "linkId" : "E5_ReactionDuringHomeObservation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "281647001",
          "display" : "Adverse reaction (disorder)"
        }],
        "text" : "Was there a reaction during the home observation period?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E6a_Fever",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386661006",
          "display" : "Fever (finding)"
        }],
        "text" : "Fever",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "E5_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E6b_Nausea",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea (finding)"
        }],
        "text" : "Nausea",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "E5_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E6c_TightnessSensation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255365009",
          "display" : "Tightness sensation quality (qualifier value)"
        }],
        "text" : "Tightness sensation",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "E5_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E6d_Chills",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "43724002",
          "display" : "Chill (finding)"
        }],
        "text" : "Chills",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "E5_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E6e_InfluenzaLikeSyndrome",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95891005",
          "display" : "Influenza-like illness (finding)"
        }],
        "text" : "Influenza-like syndromes",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "E5_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      }]
    }]
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "definition",
        "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
      }],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
    },
    {
      "extension" : [{
        "url" : "definition",
        "valueUri" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.status"
      },
      {
        "url" : "fixed-value",
        "valueCode" : "final"
      }],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    },
    {
      "extension" : [{
        "url" : "definition",
        "valueUri" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.category"
      },
      {
        "url" : "fixed-value",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
            "code" : "OTH",
            "display" : "Other"
          }]
        }
      }],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    },
    {
      "extension" : [{
        "url" : "definition",
        "valueUri" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.subject"
      },
      {
        "url" : "fixed-value",
        "valueReference" : {
          "reference" : "#patient-placeholder"
        }
      }],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    }],
    "linkId" : "QualityMonitoring",
    "text" : "(Quality) monitoring",
    "type" : "group",
    "item" : [{
      "linkId" : "F1_CommentsRegistration",
      "definition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.conclusion",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276238005",
        "display" : "Comments on own writing (finding)"
      }],
      "text" : "Please note any comments or concerns regarding the registration of this patient, the sharing of data from the hospital, the communication by and contact with the hospital, the availability of materials, or other aspects of the transmural collaboration around home hospitalization oncology. Thank you.",
      "type" : "string"
    }]
  }]
}

```
