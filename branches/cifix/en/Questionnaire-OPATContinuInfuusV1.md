#  - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Questionnaire: OPATContinuInfuusV1
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "OPATContinuInfuusV1",
  "meta" : {
    "profile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-continuous-infusion"]
  },
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/OPATContinuInfuusV1",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.35.2"
  }],
  "version" : "0.1.0",
  "name" : "OPATContinuInfuusV1",
  "title" : "OPAT - continu infuus",
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
      "linkId" : "Voorbereidingmedicatietoediening",
      "text" : "Voorbereiding medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "B1_MedicatieVolledigOpgelost",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396076000",
          "display" : "Medication prefill preparation assessment"
        }],
        "text" : "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes",
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
        "linkId" : "B2_IndienNeeContact",
        "text" : "> Indien nee: gelieve contact op te nemen met het zorgteam in het ziekenhuis",
        "type" : "display",
        "enableWhen" : [{
          "question" : "B1_MedicatieVolledigOpgelost",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "373067005",
            "display" : "No"
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
        }],
        "linkId" : "B3_GewichtVolleInfusor",
        "text" : "Gewicht van volle Infusor net voor nieuwe toediening",
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
        }],
        "linkId" : "B4_GewichtLegeInfusor",
        "text" : "Gewicht bij afkoppelen van lege infusor",
        "type" : "decimal",
        "required" : true
      },
      {
        "linkId" : "B5_BijkomendeObservatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396078004",
          "display" : "Medication prefill preparation management"
        }],
        "text" : "Bijkomende observatie:(indien van toepassing)",
        "type" : "string"
      }]
    },
    {
      "linkId" : "Medicatietoediening",
      "text" : "Medicatietoediening",
      "type" : "group",
      "item" : [{
        "linkId" : "C1_ToedieningCorrect",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373149000",
          "display" : "Medication administered following procedure"
        }],
        "text" : "Kon de medicatie exact volgens de procedure worden toegediend  (er waren geen afwijkingen)?",
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
        "linkId" : "C2_SpecifieerNee",
        "text" : "> Indien neen: specifieer",
        "type" : "string",
        "enableWhen" : [{
          "question" : "C1_ToedieningCorrect",
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
      "linkId" : "Vitaleparameters",
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
        "linkId" : "D1_Temperatuur",
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
        "linkId" : "D2_Pols",
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
        "linkId" : "D3_BloeddrukSystolisch",
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
        "linkId" : "D4_BloeddrukDiastolisch",
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
      "linkId" : "Observatieverbandinsteekplaats",
      "text" : "Observatie verband insteekplaats",
      "type" : "group",
      "item" : [{
        "linkId" : "E1_VerbandObservatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364554009",
          "display" : "Wound observable"
        }],
        "text" : "Observatie verband insteekplaats",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "E2_IndienAfwijkendSpecifieer",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "E1_VerbandObservatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "E3_Bloederig",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297968009",
          "display" : "Bleeding skin"
        }],
        "text" : "Bloederig",
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
        "linkId" : "E4_Etterig",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "225550006",
          "display" : "Purulent discharge from wound"
        }],
        "text" : "Etterig",
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
        "linkId" : "E5_Los",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78799005",
          "display" : "Loose"
        }],
        "text" : "Los",
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
        "linkId" : "E6_Sereus",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "447112000",
          "display" : "Serous discharge from wound"
        }],
        "text" : "Sereus",
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
        "linkId" : "E7_Vochtig",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "17461003",
          "display" : "Wet"
        }],
        "text" : "Vochtig",
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
        "linkId" : "E8_Andere",
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
      "linkId" : "Observatieinsteekplaats",
      "text" : "Observatie insteekplaats",
      "type" : "group",
      "item" : [{
        "linkId" : "F1_InsteekplaatsObservatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "386141001",
          "display" : "Insertion site"
        }],
        "text" : "Observatie insteekplaats",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "F2_IndienAfwijkendSpecifieer",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "F1_InsteekplaatsObservatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "F3_Blaarvorming",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "339008",
          "display" : "Blister"
        }],
        "text" : "Blaarvorming",
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
        "linkId" : "F4_Rood",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371240000",
          "display" : "Red colour"
        }],
        "text" : "Rood",
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
        "linkId" : "F5_Haematoom",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "35566002",
          "display" : "Hematoma"
        }],
        "text" : "Haematoom",
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
        "linkId" : "F6_Etter",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367646009",
          "display" : "Pus"
        }],
        "text" : "Etter",
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
        "linkId" : "F7_Korstvorming",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69640009",
          "display" : "Crust"
        }],
        "text" : "Korstvorming",
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
        "linkId" : "F8_Zwelling",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "65124004",
          "display" : "Swelling"
        }],
        "text" : "Zwelling",
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
        "linkId" : "F9_Extravasatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76676007",
          "display" : "Extravasation"
        }],
        "text" : "Extravasatie/infiltratie",
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
        "linkId" : "F10_Andere",
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
      "linkId" : "Observatiekatheter",
      "text" : "Observatie katheter",
      "type" : "group",
      "item" : [{
        "linkId" : "G1_KatheterObservatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156071007",
          "display" : "Catheter observable"
        }],
        "text" : "Observatie katheter",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "17621005",
            "display" : "Normal"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "G2_IndienAfwijkendSpecifieer",
        "text" : "> Indien 'afwijkend': specifieer",
        "type" : "display",
        "enableWhen" : [{
          "question" : "G1_KatheterObservatie",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "263654008",
            "display" : "Abnormal"
          }
        }]
      },
      {
        "linkId" : "catheter-type",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246138005",
          "display" : "Type of catheter"
        }],
        "text" : "Kies kathetertype",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "52124006",
            "display" : "Central venous catheter"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396546006",
            "display" : "Tunneled catheter with 1 lumen"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396570005",
            "display" : "Tunneled catheter with 2 lumen"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396538005",
            "display" : "Tunneled catheter with 3 lumen"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396531004",
            "display" : "Single lumen Midline"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "1396527005",
            "display" : "Double lumen Midline"
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
        "linkId" : "G20_Kleurlumen",
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
        "linkId" : "G3_Bloedaspiratie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "25797006",
          "display" : "Blood aspiration"
        }],
        "text" : "Bloedaspiratie",
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
        "linkId" : "G4_Infusie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "36576007",
          "display" : "Infusion"
        }],
        "text" : "Infusie",
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
        "linkId" : "G5_BeschadigdeKatheter",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1156074004",
          "display" : "Device failure"
        }],
        "text" : "Beschadigde katheter",
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
        "linkId" : "G6_Andere",
        "text" : "Andere: (indien van toepassing)",
        "type" : "string"
      }]
    },
    {
      "linkId" : "Nevenwerkingen",
      "text" : "Nevenwerkingen",
      "type" : "group",
      "item" : [{
        "linkId" : "H1_Huiduitslag",
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
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H2_Jeuk",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "418290006",
          "display" : "Itching"
        }],
        "text" : "Jeuk",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H3_BlarenOfHuidloslaten",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "271767006",
          "display" : "Peeling of skin"
        }],
        "text" : "Blaren/loslaten van de huid",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H4_Misselijkheid",
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
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H5_Braken",
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
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H6_Diarree",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "62315008",
          "display" : "Diarrhea"
        }],
        "text" : "Diarree",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H7_Obstipatie",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14760008",
          "display" : "Constipation"
        }],
        "text" : "Obstipatie",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H8_VerminderdeEetlust",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "64379006",
          "display" : "Decrease in appetite"
        }],
        "text" : "Verminderde eetlust",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H9_PijnBijToediening",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "698749006",
          "display" : "Pain on flushing of implanted venous access device"
        }],
        "text" : "Pijn bij toediening",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H10_PijnAlgemeen",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112104007",
          "display" : "Localized pain"
        }],
        "text" : "Pijn (algemeen)",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H11_Moe",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "224960004",
          "display" : "Tired"
        }],
        "text" : "Moe",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H12_Rillingen",
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
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "78048006",
          "display" : "Candidiasis"
        }],
        "text" : "Candidiase (schimmelinfectie)",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H14_Gewrichtspijn",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "57676002",
          "display" : "Joint pain"
        }],
        "text" : "Gewrichtspijn",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H15_Ademhalingsproblemen",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "267036007",
          "display" : "Dyspnea"
        }],
        "text" : "Ademhalingsproblemen",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H16_ZwellingGezichtTong",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278528006",
          "display" : "Facial swelling"
        }],
        "text" : "Zwelling gezicht/tong",
        "type" : "choice",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "2667000",
            "display" : "Absent"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "255604002",
            "display" : "Mild"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "6736007",
            "display" : "Midgrade"
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
        "linkId" : "H17_AndereObservaties",
        "code" : [{
          "system" : "http://snomed.info/sct",
          "code" : "365275006",
          "display" : "General well-being finding"
        }],
        "text" : "Is er andere symptoomlast of zijn er andere relevante klinische en/of psychosociale observaties? \n(gelieve bij klinische bezorgdheid contact te nemen met het zorgteam in het ziekenhuis)",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "Kwaliteitsopvolging",
    "text" : "(Kwaliteits)opvolging",
    "type" : "group",
    "item" : [{
      "linkId" : "I1_OpmerkingenAanmelding",
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
