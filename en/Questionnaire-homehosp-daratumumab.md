#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: HomehospDaratumumabQuestionnaireDefinition
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "homehosp-daratumumab",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-daratumumab"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-daratumumab",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.4"
  }],
  "version" : "0.1.0",
  "name" : "HomehospDaratumumabQuestionnaireDefinition",
  "title" : "Daratumumab",
  "status" : "active",
  "subjectType" : ["Patient"],
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
  "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Daratumumab (Darzalex®).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "item" : [{
    "linkId" : "NursingAssessment",
    "text" : "Verpleegkundig assessment",
    "type" : "group",
    "item" : [{
      "linkId" : "MedicationStorage",
      "text" : "MedicationStorage",
      "type" : "group",
      "item" : [{
        "linkId" : "A1_MedicationStorage",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422413002",
          "display" : "Ability to store medications"
        }],
        "text" : "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?",
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
        "text" : "> Indien opmerkingen of bezorgdheid: specifieer",
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
      "linkId" : "ObservationParameters",
      "text" : "Observatie parameters",
      "type" : "group",
      "item" : [{
        "linkId" : "B1_BodyTemperature",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8310-5",
          "display" : "Body temperature"
        }],
        "text" : "Lichaamstemperatuur:",
        "type" : "decimal",
        "required" : true
      },
      {
        "linkId" : "B2_HeartRate",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364075005",
          "display" : "Heart rate"
        }],
        "text" : "Pols:",
        "type" : "decimal",
        "required" : true
      },
      {
        "linkId" : "B3_SystolicBloodPressure",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6",
          "display" : "Systolic blood pressure"
        }],
        "text" : "Bloeddruk systolisch:",
        "type" : "decimal",
        "required" : true
      },
      {
        "linkId" : "B4_DiastolicBloodPressure",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4",
          "display" : "Diastolic blood pressure"
        }],
        "text" : "Bloeddruk diastolisch:",
        "type" : "decimal",
        "required" : true
      }]
    },
    {
      "linkId" : "Contraindications",
      "text" : "Contraindications",
      "type" : "group",
      "item" : [{
        "linkId" : "C1_ContraindicationPresent",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "395008009",
          "display" : "Medication stopped - contra-indication"
        }],
        "text" : "Zijn er tegenindicaties voor toediening?",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C2_ContraindicationSpecify",
        "text" : "> Indien 'ja': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_ContraindicationPresent",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "C3_FeverChills",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "39104002",
          "display" : "Illness"
        }],
        "text" : "Koorts, koude rillingen, zich ziek voelen",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C4_PremedicationNotTaken",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371900001",
          "display" : "Medication not administered"
        }],
        "text" : "Premedicatie niet genomen",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C5_ContactCareTeam",
        "text" : "> Indien tegenindicatie(s): gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_ContraindicationPresent",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "C6_Decision",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182836005",
          "display" : "Medication review"
        }],
        "text" : "Beslissing na overleg ziekenhuis",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "toediening"
        },
        {
          "valueString" : "geen toediening"
        },
        {
          "valueString" : "andere"
        }]
      },
      {
        "linkId" : "C7_DecisionSpecify",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156698007",
          "display" : "Review of current supply of medication"
        }],
        "text" : "> Indien andere: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C6_Decision",
          "operator" : "=",
          "answerString" : "andere"
        }]
      }]
    },
    {
      "linkId" : "PremedicationIntake",
      "text" : "Premedicatie-inname",
      "type" : "group",
      "item" : [{
        "linkId" : "B5_PremedicationCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182833002",
          "display" : "Medication given"
        }],
        "text" : "Werd de premedicatie correct ingenomen (dexamethason, H1-antihistaminicum, paracetamol voor toediening)?",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      }]
    },
    {
      "linkId" : "SymptomBurden",
      "text" : "SymptomBurden",
      "type" : "group",
      "item" : [{
        "linkId" : "D1_Nausea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea"
        }],
        "text" : "Misselijkheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D2_Vomiting",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "249497008",
          "display" : "Vomiting symptom"
        }],
        "text" : "Braken",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D3_DecreasedAppetite",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite"
        }],
        "text" : "Verminderde eetlust of smaakverandering",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D4_Diarrhea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "62315008",
          "display" : "Diarrhea"
        }],
        "text" : "Buikloop",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D5_Constipation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14760008",
          "display" : "Constipation"
        }],
        "text" : "Verstopping",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D6_Fatigue",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired"
        }],
        "text" : "Vermoeidheid/futloosheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D7_Pain",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain"
        }],
        "text" : "Pijn",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D8_SkinRash",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271807003",
          "display" : "Eruption"
        }],
        "text" : "Huiduitslag",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D9_PsychosocialBurden",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384821006",
          "display" : "Mental state, behaviour and/or psychosocial function finding"
        }],
        "text" : "Psychosociale belasting",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D10_Dyspnea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea"
        }],
        "text" : "Kortademigheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D11_Cough",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "49727002",
          "display" : "Cough"
        }],
        "text" : "Hoest",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D12_MuscleAndJointPain",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "57676002",
          "display" : "Joint pain"
        }],
        "text" : "Spier- en gewrichtspijn",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D13_OtherObservations",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "365275006",
          "display" : "General well-being finding"
        }],
        "text" : "Andere nevenwerkingen of relevante klinische en psychosociale observaties\n(gelieve bij klinische bezorgdheid contact te nemen met het ziekenhuis voor bespreking)",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "Assignment",
    "text" : "Assignment",
    "type" : "group",
    "item" : [{
      "linkId" : "MedicationPreparation",
      "text" : "Voorbereiding medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_PreparationCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385796006",
          "display" : "Medication prefill preparation"
        }],
        "text" : "Kon de medicatie worden bereid volgens de procedure?",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E2_ContactCareTeam",
        "text" : "> Indien 'nee': gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_PreparationCorrect",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      }]
    },
    {
      "linkId" : "MedicationAdministration",
      "text" : "MedicationAdministration",
      "type" : "group",
      "item" : [{
        "linkId" : "E3_AdministrationCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373149000",
          "display" : "Medication administered following procedure"
        }],
        "text" : "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E4_SpecifyNo",
        "text" : "> Indien 'nee': specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "E3_AdministrationCorrect",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "QualityMonitoring",
    "text" : "(Kwaliteits)opvolging",
    "type" : "group",
    "item" : [{
      "linkId" : "F1_CommentsRegistration",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276238005",
        "display" : "Comments on own writing"
      }],
      "text" : "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie oncologie, dan kan je deze hier noteren. Alvast dank.",
      "type" : "string"
    }]
  }]
}

```
