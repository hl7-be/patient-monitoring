#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: HomehospTrastuzumabQuestionnaireDefinition
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "homehosp-trastuzumab",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-trastuzumab"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-trastuzumab",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.7"
  }],
  "version" : "0.1.0",
  "name" : "HomehospTrastuzumabQuestionnaireDefinition",
  "title" : "Trastuzumab",
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
  "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Trastuzumab (Herceptin®).",
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
      },
      {
        "linkId" : "B5_BodyWeight",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "29463-7",
          "display" : "Body weight"
        }],
        "text" : "Lichaamsgewicht:",
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
        "linkId" : "C4_LowBloodPressure",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "12763006",
          "display" : "Low blood pressure, not hypotension"
        }],
        "text" : "Herhaaldelijk bloeddruk lager dan 100/60 mmHg",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C5_ElevatedOrIrregularHeartRate",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "361137007",
          "display" : "Irregular heart beat"
        }],
        "text" : "Hartslag boven 100 slagen per minuut in rust of onregelmatig hartritme, tenzij chronisch gekend",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C6_WeightGain",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "262286000",
          "display" : "Weight increased"
        }],
        "text" : "Toename van het lichaamsgewicht van 3 kg/3 weken of 5 kg/6 weken, zeker met toegenomen oedeem",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C7_EdemaHandsFeet",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267038008",
          "display" : "Edema"
        }],
        "text" : "Toegenomen oedeem in handen en/of voeten",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C8_Dyspnea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297216006",
          "display" : "Increasing breathlessness"
        }],
        "text" : "Toegenomen kortademigheid en/of ernstige kortademigheid (dwz kortademigheid in rust/zonder inspanning en/of kortademigheid die hindert bij de dagelijkse activiteiten)",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "C9_ContactCareTeam",
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
        "linkId" : "C10_Decision",
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
        "linkId" : "C11_DecisionSpecify",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156698007",
          "display" : "Review of current supply of medication"
        }],
        "text" : "> Indien andere: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C10_Decision",
          "operator" : "=",
          "answerString" : "andere"
        }]
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
        "linkId" : "D11_Edema",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "79654002",
          "display" : "Edema"
        }],
        "text" : "Oedeem",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/onco-symptom-grade"
      },
      {
        "linkId" : "D12_OtherObservations",
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
    },
    {
      "linkId" : "Aftercare",
      "text" : "Aftercare",
      "type" : "group",
      "item" : [{
        "linkId" : "G1_ReactionDuringHomeObservation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "281647001",
          "display" : "Adverse reaction"
        }],
        "text" : "Was er een reactie tijdens de thuisobservatieperiode?",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G2_SpecifyReaction",
        "text" : "> Indien 'ja': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "G1_ReactionDuringHomeObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "G3_Fever",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386661006",
          "display" : "Fever"
        }],
        "text" : "Koorts",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G4_Nausea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea"
        }],
        "text" : "Misselijkheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G5_Dyspnea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255365009",
          "display" : "Tightness"
        }],
        "text" : "Kortademigheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G6_Shivering",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "43724002",
          "display" : "Shivering"
        }],
        "text" : "Rillingen",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G7_FluLikeSymptoms",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95891005",
          "display" : "Influenza-like illness"
        }],
        "text" : "Griepachtige symptomen",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
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
