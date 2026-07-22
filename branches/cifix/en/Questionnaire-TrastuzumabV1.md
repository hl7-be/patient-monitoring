#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: TrastuzumabV1
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "TrastuzumabV1",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-trastuzumab"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/TrastuzumabV1",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.7"
  }],
  "version" : "0.1.0",
  "name" : "TrastuzumabV1",
  "title" : "Trastuzumab",
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
            "code" : "kg",
            "display" : "kg"
          }
        }],
        "linkId" : "B5_Lichaamsgewicht",
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
        "text" : "Koorts, koude rillingen, zich ziek voelen",
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
        "linkId" : "C4_LageBloeddruk",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "12763006",
          "display" : "Low blood pressure, not hypotension"
        }],
        "text" : "Herhaaldelijk bloeddruk lager dan 100/60 mmHg",
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
        "linkId" : "C5_HartslagHoog",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "361137007",
          "display" : "Irregular heart beat"
        }],
        "text" : "Hartslag boven 100 slagen per minuut in rust of onregelmatig hartritme, tenzij chronisch gekend",
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
        "linkId" : "C6_GewichtstoeName",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "262286000",
          "display" : "Weight increased"
        }],
        "text" : "Toename van het lichaamsgewicht van 3 kg/3 weken of 5 kg/6 weken, zeker met toegenomen oedeem",
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
        "linkId" : "C7_OedeemHandenVoeten",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267038008",
          "display" : "Edema"
        }],
        "text" : "Toegenomen oedeem in handen en/of voeten",
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
        "linkId" : "C8_Kortademigheid",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297216006",
          "display" : "Increasing breathlessness"
        }],
        "text" : "Toegenomen kortademigheid en/of ernstige kortademigheid (dwz kortademigheid in rust/zonder inspanning en/of kortademigheid die hindert bij de dagelijkse activiteiten)",
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
        "linkId" : "C9_ContactZorgteam",
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
        "linkId" : "C10_Beslissing",
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
        "linkId" : "C11_BeslissingSpecifieer",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156698007",
          "display" : "Review of current supply of medication"
        }],
        "text" : "> Indien andere: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C10_Beslissing",
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
        "linkId" : "D11_Oedeem",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "79654002",
          "display" : "Edema"
        }],
        "text" : "Oedeem",
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
    },
    {
      "linkId" : "Nazorg",
      "text" : "Nazorg",
      "type" : "group",
      "item" : [{
        "linkId" : "F1_ReactieTijdensObservatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "281647001",
          "display" : "Adverse reaction"
        }],
        "text" : "Was er een reactie tijdens de thuisobservatieperiode?",
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
        "linkId" : "F2_SpecifieerReactie",
        "text" : "> Indien 'ja': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "F1_ReactieTijdensObservatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373066001",
            "display" : "Yes"
          }
        }]
      },
      {
        "linkId" : "F3_Koorts",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386661006",
          "display" : "Fever"
        }],
        "text" : "Koorts",
        "type" : "choice",
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
        "linkId" : "F4_Misselijkheid",
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
        "linkId" : "F5_Kortademigheid",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255365009",
          "display" : "Tightness"
        }],
        "text" : "Kortademigheid",
        "type" : "choice",
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
        "linkId" : "F6_Rillingen",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "43724002",
          "display" : "Shivering"
        }],
        "text" : "Rillingen",
        "type" : "choice",
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
        "linkId" : "F7_GriepachtigeSymptomen",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95891005",
          "display" : "Influenza-like illness"
        }],
        "text" : "Griepachtige symptomen",
        "type" : "choice",
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
      }]
    }]
  },
  {
    "linkId" : "Kwaliteitsopvolging",
    "text" : "(Kwaliteits)opvolging",
    "type" : "group",
    "item" : [{
      "linkId" : "G1_OpmerkingenAanmelding",
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
