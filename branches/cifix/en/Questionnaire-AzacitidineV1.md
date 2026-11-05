#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: AzacitidineV1
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "AzacitidineV1",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-azacitidine"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/AzacitidineV1",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.1"
  }],
  "version" : "0.1.0",
  "name" : "AzacitidineV1",
  "title" : "Azacitidine",
  "status" : "active",
  "subjectType" : ["Patient"],
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
    "linkId" : "Verpleegkundigassessment",
    "text" : "Verpleegkundig assessment",
    "type" : "group",
    "item" : [{
      "linkId" : "Bewaring",
      "text" : "Bewaring",
      "type" : "group",
      "item" : [{
        "linkId" : "A1_Bewaring",
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
        "linkId" : "A2_BewaringSpecifieer",
        "text" : "> Indien opmerkingen of bezorgdheid: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "A1_Bewaring",
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
      "linkId" : "Observatieparameters",
      "text" : "Observatie parameters",
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
        "linkId" : "B1_Temperatuur",
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
        "linkId" : "B2_Pols",
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]",
            "display" : "mm[Hg]"
          }
        }],
        "linkId" : "B3_BloeddrukSystolisch",
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "mm[Hg]",
            "display" : "mm[Hg]"
          }
        }],
        "linkId" : "B4_BloeddrukDiastolisch",
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
          "valueCoding" : {
            "system" : "http://unitsofmeasure.org",
            "code" : "%",
            "display" : "%"
          }
        }],
        "linkId" : "B5_Zuurstofsaturatie",
        "code" : [{
          "system" : "http://loinc.org",
          "code" : "2708-6",
          "display" : "Oxygen saturation in Arterial blood"
        }],
        "text" : "Zuurstofsaturatie (enkel uitvoeren bij hoest en kortademigheid)",
        "type" : "decimal"
      }]
    },
    {
      "linkId" : "Tegenindicaties",
      "text" : "Tegenindicaties",
      "type" : "group",
      "item" : [{
        "linkId" : "C1_Tegenindicatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "395008009",
          "display" : "Medication stopped - contra-indication"
        }],
        "text" : "Zijn er tegenindicaties voor toediening?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C2_SpecifieerTegenindicatie",
        "text" : "> Indien 'ja': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_Tegenindicatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "C3_KoortsRillingen",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "39104002",
          "display" : "Illness"
        }],
        "text" : "Koorts , koude rillingen, zich ziek voelen",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C4_OraleIntake",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "247318005",
          "display" : "Abnormal taste in mouth"
        }],
        "text" : "Geen orale intake (tgv verminderde eetlust of smaakverandering)",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C5_MisselijkheidErnstig",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "73335002",
          "display" : "Increased nausea and vomiting"
        }],
        "text" : "Ernstige misselijkheid (dwz misselijkheid met onvoldoende orale intake)",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C6_KortademigheidErnstig",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297216006",
          "display" : "Increasing breathlessness"
        }],
        "text" : "Toegenomen kortademigheid en/of ernstige kortademigheid (dwz kortademigheid in rust/zonder inspanning en/of kortademigheid die hindert bij de dagelijkse activiteiten) (Trastuzumab, Azacitidine)",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C7_HoestDyspnoe",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "11833005",
          "display" : "Dry cough"
        }],
        "text" : "Nieuwe of toegenomen productieve of droge hoest, met of zonder dyspnoe",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C8_Achteruitgang",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "154091000119106",
          "display" : "Decline in functional status"
        }],
        "text" : "Algemene achteruitgang",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "C9_Andere",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "438833006",
          "display" : "Administration of drug or medicament contraindicated"
        }],
        "text" : "Andere: (indien van toepassing)",
        "type" : "string"
      },
      {
        "linkId" : "C10_ContactZorgteam",
        "text" : "> Indien tegenindicatie(s): gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "C1_Tegenindicatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "C11_Beslissing",
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
        "linkId" : "C12_BeslissingSpecifieer",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156698007",
          "display" : "Review of current supply of medication"
        }],
        "text" : "> Indien andere: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C11_Beslissing",
          "operator" : "=",
          "answerString" : "andere"
        }]
      }]
    },
    {
      "linkId" : "Symptoomlast",
      "text" : "Symptoomlast",
      "type" : "group",
      "item" : [{
        "linkId" : "D1_Misselijkheid",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "422587007",
          "display" : "Nausea"
        }],
        "text" : "Misselijkheid",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D2_Braken",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "249497008",
          "display" : "Vomiting symptom"
        }],
        "text" : "Braken",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D3_VerminderdeEetlust",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite"
        }],
        "text" : "Verminderde eetlust of smaakverandering",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D4_Buikloop",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "62315008",
          "display" : "Diarrhea"
        }],
        "text" : "Buikloop",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D5_Verstopping",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14760008",
          "display" : "Constipation"
        }],
        "text" : "Verstopping",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D6_Vermoeidheid",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired"
        }],
        "text" : "Vermoeidheid/futloosheid",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D7_Pijn",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain"
        }],
        "text" : "Pijn",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D8_Huiduitslag",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271807003",
          "display" : "Eruption"
        }],
        "text" : "Huiduitslag",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D9_Psychosociaal",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384821006",
          "display" : "Mental state, behaviour and/or psychosocial function finding"
        }],
        "text" : "Psychosociale belasting",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D10_Kortademigheid",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea"
        }],
        "text" : "Kortademigheid",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D11_Hoest",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "49727002",
          "display" : "Cough"
        }],
        "text" : "Hoest",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444431007",
            "display" : "Grade 0 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444456001",
            "display" : "Grade 1 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444457005",
            "display" : "Grade 2 on a scale of 0 to 3"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "444447009",
            "display" : "Grade 3 on a scale of 0 to 3"
          }
        }]
      },
      {
        "linkId" : "D12_AndereObservaties",
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
    "linkId" : "Opdracht",
    "text" : "Opdracht",
    "type" : "group",
    "item" : [{
      "linkId" : "Voorbereidingmedicatietoediening",
      "text" : "Voorbereiding medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_BereidingCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385796006",
          "display" : "Medication prefill preparation"
        }],
        "text" : "Kon de medicatie worden bereid volgens de procedure?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "E2_ContactZorgteam",
        "text" : "> Indien 'nee': gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_BereidingCorrect",
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
      "linkId" : "Medicatietoediening",
      "text" : "Medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "E3_ToedieningCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373149000",
          "display" : "Medication administered following procedure"
        }],
        "text" : "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
          }
        }]
      },
      {
        "linkId" : "E4_SpecifieerNee",
        "text" : "> Indien 'nee': specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "E3_ToedieningCorrect",
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
    "linkId" : "Kwaliteitsopvolging",
    "text" : "(Kwaliteits)opvolging",
    "type" : "group",
    "item" : [{
      "linkId" : "F1_OpmerkingenAanmelding",
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
