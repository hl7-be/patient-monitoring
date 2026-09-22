#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: Questionnaire/homehosp-q-opat-definitions
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "homehosp-q-opat-definitions",
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
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-q-opat-definitions",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.9"
  }],
  "version" : "0.1.0",
  "status" : "active",
  "date" : "2026-05-19T06:47:26+00:00",
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
    "text" : "Nursing Assessment",
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
      "text" : "Medication Storage",
      "type" : "group",
      "item" : [{
        "linkId" : "A1_MedicationStorage",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422413002",
          "display" : "Ability to store medications (observable entity)"
        }],
        "text" : "Are there any comments or concerns regarding the (correct) home storage of the medication?",
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
        "text" : "> If there are comments or concerns: specify",
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
      "text" : "Medication Preparation",
      "type" : "group",
      "item" : [{
        "linkId" : "B1_MedicationFullyDissolved",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396076000",
          "display" : "Medication prefill preparation assessment (procedure)"
        }],
        "text" : "The medication was fully dissolved into a clear solution without visible particles",
        "type" : "choice",
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
        "linkId" : "B2_IfNoContact",
        "text" : "> If no: please contact the care team at the hospital",
        "type" : "display",
        "enableWhen" : [{
          "question" : "B1_MedicationFullyDissolved",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No (qualifier value)"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "g",
            "display" : "g"
          }
        },
        {
          "url" : "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext",
          "valueString" : "Only to be filled in for continuous infusion"
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
            "valueCode" : "g"
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
            "valueString" : "g"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B3_WeightFullInfusor",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1381257004",
          "display" : "Measured weight of elastomeric continuous infusion pump with medication before infusion (observable entity)"
        }],
        "text" : "Weight of full Infusor just before new administration",
        "type" : "decimal",
        "required" : true
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "g",
            "display" : "g"
          }
        },
        {
          "url" : "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext",
          "valueString" : "Only to be filled in for continuous infusion"
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
            "valueCode" : "g"
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
            "valueString" : "g"
          }],
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
        }],
        "linkId" : "B4_WeightEmptyInfusor",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1381260006",
          "display" : "Measured weight of elastomeric continuous infusion pump after infusion (observable entity)"
        }],
        "text" : "Weight when disconnecting empty infusor",
        "type" : "decimal",
        "required" : true
      },
      {
        "linkId" : "B5_AdditionalObservation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396078004",
          "display" : "Medication prefill preparation management (procedure)"
        }],
        "text" : "Additional observation: (if applicable)",
        "type" : "string"
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
      "text" : "Medication Administration",
      "type" : "group",
      "item" : [{
        "linkId" : "C1_AdministrationCorrect",
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
        "linkId" : "C2_SpecifyNo",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "text" : "> If no: specify",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C1_AdministrationCorrect",
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
      },
      {
        "extension" : [{
          "url" : "definition",
          "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.code"
        },
        {
          "url" : "fixed-value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "8716-3",
              "display" : "Vital signs note"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      }],
      "linkId" : "VitalParameters",
      "text" : "Vital Parameters",
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
        "linkId" : "D1_BodyTemperature",
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
        "linkId" : "D2_HeartRate",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364075005",
          "display" : "Heart rate (observable entity)"
        }],
        "text" : "Heart rate:",
        "type" : "decimal"
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
        "linkId" : "D3_SystolicBloodPressure",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6",
          "display" : "Systolic blood pressure"
        }],
        "text" : "Blood pressure - systolic",
        "type" : "decimal"
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
        "linkId" : "D4_DiastolicBloodPressure",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4",
          "display" : "Diastolic blood pressure"
        }],
        "text" : "Blood pressure - diastolic",
        "type" : "decimal"
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
              "code" : "exam",
              "display" : "Exam"
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
      "linkId" : "DressingObservation",
      "text" : "Dressing observation at insertion site",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_DressingObservation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364554009",
          "display" : "Wound observable (observable entity)"
        }],
        "text" : "Dressing observation at insertion site",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E2_IfAbnormalSpecify",
        "text" : "> If 'abnormal': specify",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_DressingObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "E3_Bloody",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297968009",
          "display" : "Bleeding skin (finding)"
        }],
        "text" : "Bloody",
        "type" : "choice",
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
        "linkId" : "E4_Purulent",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "225550006",
          "display" : "Purulent discharge from wound (finding)"
        }],
        "text" : "Purulent",
        "type" : "choice",
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
        "linkId" : "E5_Loose",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78799005",
          "display" : "Loose (qualifier value)"
        }],
        "text" : "Loose",
        "type" : "choice",
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
        "linkId" : "E6_Serous",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "447112000",
          "display" : "Serous discharge from wound (finding)"
        }],
        "text" : "Serous",
        "type" : "choice",
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
        "linkId" : "E7_Moist",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "17461003",
          "display" : "Wet (qualifier value)"
        }],
        "text" : "Moist",
        "type" : "choice",
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
        "linkId" : "E8_Other",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1481000124102",
          "display" : "Wound dressing observable (observable entity)"
        }],
        "text" : "Other: (if applicable)",
        "type" : "string"
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
              "code" : "exam",
              "display" : "Exam"
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
      "linkId" : "InsertionSiteObservation",
      "text" : "Insertion site observation",
      "type" : "group",
      "item" : [{
        "linkId" : "F1_InsertionSiteObservation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386141001",
          "display" : "Insertion site (morphologic abnormality)"
        }],
        "text" : "Insertion site observation",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "F2_IfAbnormalSpecify",
        "text" : "> If 'abnormal': specify",
        "type" : "display",
        "enableWhen" : [{
          "question" : "F1_InsertionSiteObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "F3_Blistering",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "339008",
          "display" : "Blister (morphologic abnormality)"
        }],
        "text" : "Blistering",
        "type" : "choice",
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
        "linkId" : "F4_Redness",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371240000",
          "display" : "Red color (qualifier value)"
        }],
        "text" : "Redness",
        "type" : "choice",
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
        "linkId" : "F5_Hematoma",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "35566002",
          "display" : "Hematoma (morphologic abnormality)"
        }],
        "text" : "Hematoma",
        "type" : "choice",
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
        "linkId" : "F6_Pus",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367646009",
          "display" : "Pus (morphologic abnormality)"
        }],
        "text" : "Pus",
        "type" : "choice",
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
        "linkId" : "F7_Crusting",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69640009",
          "display" : "Crust (morphologic abnormality)"
        }],
        "text" : "Crusting",
        "type" : "choice",
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
        "linkId" : "F8_Swelling",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "65124004",
          "display" : "Swelling (finding)"
        }],
        "text" : "Swelling",
        "type" : "choice",
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
        "linkId" : "F9_Extravasation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76676007",
          "display" : "Extravasation (morphologic abnormality)"
        }],
        "text" : "Extravasation/infiltration",
        "type" : "choice",
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
        "linkId" : "F10_Other",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364554009",
          "display" : "Wound observable (observable entity)"
        }],
        "text" : "Other: (if applicable)",
        "type" : "string"
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
              "code" : "exam",
              "display" : "Exam"
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
      "linkId" : "CatheterObservation",
      "text" : "Catheter observation",
      "type" : "group",
      "item" : [{
        "linkId" : "G1_CatheterObservation",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156071007",
          "display" : "Catheter observable (observable entity)"
        }],
        "text" : "Catheter observation",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "G2_IfAbnormalSpecify",
        "text" : "> If 'abnormal': specify",
        "type" : "display",
        "enableWhen" : [{
          "question" : "G1_CatheterObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal (qualifier value)"
          }
        }]
      },
      {
        "linkId" : "G2b_CatheterType",
        "definition" : "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement#DeviceUseStatement.device",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246138005",
          "display" : "Type of catheter (attribute)"
        }],
        "text" : "Select catheter type",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "52124006",
            "display" : "Central venous catheter, device (physical object)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396546006",
            "display" : "1-lumen tunneled catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396570005",
            "display" : "2-lumen tunneled catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396538005",
            "display" : "3-lumen tunneled catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396531004",
            "display" : "Single lumen midline catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396527005",
            "display" : "Double lumen midline catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396526001",
            "display" : "Single lumen PICC"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396489007",
            "display" : "Double lumen PICC"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "423954007",
            "display" : "Peripheral catheter"
          }
        }]
      },
      {
        "linkId" : "G_Lumen",
        "text" : "Per-lumen observation",
        "type" : "group",
        "repeats" : true,
        "item" : [{
          "linkId" : "G_LumenColor",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1396483008",
            "display" : "Color of lumen (observable entity)"
          }],
          "text" : "Lumen color",
          "type" : "choice",
          "answerOption" : [{
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371253002",
              "display" : "Gray color (qualifier value)"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371251000",
              "display" : "White color (qualifier value)"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371240000",
              "display" : "Red color (qualifier value)"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371250004",
              "display" : "Purple color (qualifier value)"
            }
          }]
        },
        {
          "linkId" : "G3_BloodAspiration",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "25797006",
            "display" : "Pulmonary aspiration of blood (finding)"
          }],
          "text" : "Blood aspiration",
          "type" : "choice",
          "answerOption" : [{
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "36203004",
              "display" : "Easy"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "52925006",
              "display" : "Difficult"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "385671000",
              "display" : "Unsuccessful"
            }
          }]
        },
        {
          "linkId" : "G4_Infusion",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "36576007",
            "display" : "Infusion (procedure)"
          }],
          "text" : "Infusion",
          "type" : "choice",
          "answerOption" : [{
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "36203004",
              "display" : "Easy"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "52925006",
              "display" : "Difficult"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "385671000",
              "display" : "Unsuccessful"
            }
          }]
        }]
      },
      {
        "linkId" : "G5_DamagedCatheter",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156074004",
          "display" : "Device failure (finding)"
        }],
        "text" : "Damaged catheter",
        "type" : "choice",
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
        "linkId" : "G6_Other",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "text" : "Other: (if applicable)",
        "type" : "string"
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
      "linkId" : "SideEffects",
      "text" : "Side Effects",
      "type" : "group",
      "item" : [{
        "linkId" : "H1_SkinRash",
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
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H2_Itching",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "418290006",
          "display" : "Itching (finding)"
        }],
        "text" : "Itching",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H3_BlistersOrSkinPeeling",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271767006",
          "display" : "Peeling of skin (finding)"
        }],
        "text" : "Blisters/skin peeling",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H4_Nausea",
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
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H5_Vomiting",
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
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H6_Diarrhea",
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
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H7_Constipation",
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
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H8_DecreasedAppetite",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite (finding)"
        }],
        "text" : "Decreased appetite",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H9_PainDuringAdministration",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "698749006",
          "display" : "Pain on flushing of implanted venous access device (finding)"
        }],
        "text" : "Pain during administration",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H10_GeneralPain",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain (finding)"
        }],
        "text" : "Pain (general)",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H11_Fatigue",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired (finding)"
        }],
        "text" : "Fatigue",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H12_Chills",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "43724002",
          "display" : "Chill (finding)"
        }],
        "text" : "Chills",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H13_Candidiasis",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78048006",
          "display" : "Candidiasis (disorder)"
        }],
        "text" : "Candidiasis (fungal infection)",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H14_JointPain",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "57676002",
          "display" : "Pain of joint (finding)"
        }],
        "text" : "Joint pain",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H15_RespiratoryProblems",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea (finding)"
        }],
        "text" : "Respiratory problems",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H16_FacialTongueSwell",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278528006",
          "display" : "Facial swelling (finding)"
        }],
        "text" : "Facial/tongue swelling",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild (qualifier value)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Moderate (severity modifier)"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24484000",
            "display" : "Severe"
          }
        }]
      },
      {
        "linkId" : "H17_OtherObservations",
        "definition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "365275006",
          "display" : "General well-being finding (finding)"
        }],
        "text" : "Are there other symptoms or other relevant clinical and/or psychosocial observations?\n(please contact the care team at the hospital if there are clinical concerns)",
        "type" : "string"
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
    "text" : "Quality Monitoring",
    "type" : "group",
    "item" : [{
      "linkId" : "I1_CommentsRegistration",
      "definition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.conclusion",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276238005",
        "display" : "Comments on own writing (finding)"
      }],
      "text" : "Are there any comments or concerns regarding the registration of this patient, the data sharing from the hospital, the communication and contact with the hospital, the availability of medication and materials, or other aspects of the transmurale collaboration regarding home hospitalization OPAT, we would appreciate if you share them with us. Thank you in advance.",
      "type" : "string"
    }]
  }]
}

```
