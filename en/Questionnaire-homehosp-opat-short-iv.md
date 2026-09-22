#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: HomehospOpatShortIVQuestionnaireDefinition
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "homehosp-opat-short-iv",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-short-iv"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-opat-short-iv",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.6"
  }],
  "version" : "0.1.0",
  "name" : "HomehospOpatShortIVQuestionnaireDefinition",
  "title" : "OPAT - kort IV",
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
  "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a short-duration IV administration in the context of an OPAT treatment",
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
      "linkId" : "MedicationPreparation",
      "text" : "Voorbereiding medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "B1_MedicationFullyDissolved",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396076000",
          "display" : "Medication prefill preparation assessment"
        }],
        "text" : "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "B2_ContactCareTeam",
        "text" : "> Indien nee: gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "B1_MedicationFullyDissolved",
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
        "linkId" : "C1_AdministrationCorrect",
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
        "linkId" : "C2_SpecifyNo",
        "text" : "> Indien neen: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C1_AdministrationCorrect",
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
      "linkId" : "VitalParameters",
      "text" : "Vitale parameters",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "Cel",
            "display" : "Cel"
          }
        }],
        "linkId" : "D1_BodyTemperature",
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "{beats}/min",
            "display" : "{beats}/min"
          }
        }],
        "linkId" : "D2_HeartRate",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364075005",
          "display" : "Heart rate"
        }],
        "text" : "Pols:",
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
        }],
        "linkId" : "D3_SystolicBloodPressure",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6",
          "display" : "Systolic blood pressure"
        }],
        "text" : "Bloeddruk - systolisch",
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
        }],
        "linkId" : "D4_DiastolicBloodPressure",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4",
          "display" : "Diastolic blood pressure"
        }],
        "text" : "Bloeddruk - diastolisch",
        "type" : "decimal"
      }]
    },
    {
      "linkId" : "DressingInsertionSite",
      "text" : "Observatie verband insteekplaats",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_DressingObservation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364554009",
          "display" : "Wound observable"
        }],
        "text" : "Observatie verband insteekplaats",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/normal-abnormal"
      },
      {
        "linkId" : "E2_SpecifyIfAbnormal",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_DressingObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "E3_Bloody",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297968009",
          "display" : "Bleeding skin"
        }],
        "text" : "Bloederig",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E4_Purulent",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "225550006",
          "display" : "Purulent discharge from wound"
        }],
        "text" : "Etterig",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E5_Loose",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78799005",
          "display" : "Loose"
        }],
        "text" : "Los",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E6_Serous",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "447112000",
          "display" : "Serous discharge from wound"
        }],
        "text" : "Sereus",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E7_Moist",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "17461003",
          "display" : "Wet"
        }],
        "text" : "Vochtig",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "E8_Other",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1481000124102",
          "display" : "Wound dressing observable"
        }],
        "text" : "Andere: (indien van toepassing)",
        "type" : "string"
      }]
    },
    {
      "linkId" : "InsertionSite",
      "text" : "Observatie insteekplaats",
      "type" : "group",
      "item" : [{
        "linkId" : "F1_InsertionSiteObservation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386141001",
          "display" : "Insertion site"
        }],
        "text" : "Observatie insteekplaats",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/normal-abnormal"
      },
      {
        "linkId" : "F2_SpecifyIfAbnormal",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "F1_InsertionSiteObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "F3_Blistering",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "339008",
          "display" : "Blister"
        }],
        "text" : "Blaarvorming",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F4_Redness",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371240000",
          "display" : "Red colour"
        }],
        "text" : "Rood",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F5_Hematoma",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "35566002",
          "display" : "Hematoma"
        }],
        "text" : "Haematoom",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F6_Pus",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367646009",
          "display" : "Pus"
        }],
        "text" : "Etter",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F7_Crusting",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69640009",
          "display" : "Crust"
        }],
        "text" : "Korstvorming",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F8_Swelling",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "65124004",
          "display" : "Swelling"
        }],
        "text" : "Zwelling",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F9_Extravasation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76676007",
          "display" : "Extravasation"
        }],
        "text" : "Extravasatie/infiltratie",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "F10_Other",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364554009",
          "display" : "Wound observable"
        }],
        "text" : "Andere: (indien van toepassing)",
        "type" : "string"
      }]
    },
    {
      "linkId" : "Catheter",
      "text" : "Observatie katheter",
      "type" : "group",
      "item" : [{
        "linkId" : "G1_CatheterObservation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156071007",
          "display" : "Catheter observable"
        }],
        "text" : "Observatie katheter",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/normal-abnormal"
      },
      {
        "linkId" : "G2_SpecifyIfAbnormal",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "G1_CatheterObservation",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "G_KatheterType",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246138005",
          "display" : "Type of catheter"
        }],
        "text" : "Kies kathetertype",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/catheter-type"
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
            "display" : "Color of intravascular catheter lumen hub"
          }],
          "text" : "Kleur lumen",
          "type" : "choice",
          "answerOption" : [{
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371253002",
              "display" : "Gray color"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371251000",
              "display" : "White colour"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371240000",
              "display" : "Red colour"
            }
          },
          {
            "valueCoding" : {
              "system" : "http://snomed.info/sct",
              "code" : "371250004",
              "display" : "Purple colour"
            }
          }]
        },
        {
          "linkId" : "G3_BloodAspiration",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "25797006",
            "display" : "Blood aspiration"
          }],
          "text" : "Bloedaspiratie",
          "type" : "choice",
          "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/catheter-patency"
        },
        {
          "linkId" : "G4_Infusion",
          "code" : [{
            "system" : "http://snomed.info/sct",
            "code" : "36576007",
            "display" : "Infusion"
          }],
          "text" : "Infusie",
          "type" : "choice",
          "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/catheter-patency"
        }]
      },
      {
        "linkId" : "G5_DamagedCatheter",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156074004",
          "display" : "Device failure"
        }],
        "text" : "Beschadigde katheter",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS"
      },
      {
        "linkId" : "G6_Other",
        "text" : "Andere: (indien van toepassing)",
        "type" : "string"
      }]
    },
    {
      "linkId" : "SideEffects",
      "text" : "SideEffects",
      "type" : "group",
      "item" : [{
        "linkId" : "H1_SkinRash",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271807003",
          "display" : "Eruption"
        }],
        "text" : "Huiduitslag",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H2_Itching",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "418290006",
          "display" : "Itching"
        }],
        "text" : "Jeuk",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H3_BlistersOrPeeling",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271767006",
          "display" : "Peeling of skin"
        }],
        "text" : "Blaren/loslaten van de huid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H4_Nausea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea"
        }],
        "text" : "Misselijkheid",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H5_Vomiting",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "249497008",
          "display" : "Vomiting symptom"
        }],
        "text" : "Braken",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H6_Diarrhea",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "62315008",
          "display" : "Diarrhea"
        }],
        "text" : "Diarree",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H7_Constipation",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14760008",
          "display" : "Constipation"
        }],
        "text" : "Obstipatie",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H8_DecreasedAppetite",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite"
        }],
        "text" : "Verminderde eetlust",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H9_PainDuringAdministration",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "698749006",
          "display" : "Pain on flushing of implanted venous access device"
        }],
        "text" : "Pijn bij toediening",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H10_GeneralPain",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain"
        }],
        "text" : "Pijn (algemeen)",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H11_Fatigue",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired"
        }],
        "text" : "Moe",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H12_Chills",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "43724002",
          "display" : "Shivering"
        }],
        "text" : "Rillingen",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H13_Candidiasis",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78048006",
          "display" : "Candidiasis"
        }],
        "text" : "Candidiase (schimmelinfectie)",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H14_JointPain",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "57676002",
          "display" : "Joint pain"
        }],
        "text" : "Gewrichtspijn",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H15_RespiratoryProblems",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea"
        }],
        "text" : "Ademhalingsproblemen",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H16_FacialSwelling",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278528006",
          "display" : "Facial swelling"
        }],
        "text" : "Zwelling gezicht/tong",
        "type" : "choice",
        "answerValueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/homehosp-side-effect-severity"
      },
      {
        "linkId" : "H17_OtherObservations",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "365275006",
          "display" : "General well-being finding"
        }],
        "text" : "Is er andere symptoomlast of zijn er andere relevante klinische en/of psychosociale observaties?\n(gelieve bij klinische bezorgdheid contact te nemen met het zorgteam in het ziekenhuis)",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "QualityMonitoring",
    "text" : "(Kwaliteits)opvolging",
    "type" : "group",
    "item" : [{
      "linkId" : "I1_CommentsRegistration",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "276238005",
        "display" : "Comments on own writing"
      }],
      "text" : "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de medicatie en materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie OPAT, we vragen je graag ze met ons te delen. Alvast dank.",
      "type" : "string"
    }]
  }]
}

```
