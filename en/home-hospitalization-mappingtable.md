# Home hosp - Mappingtables - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Home hosp - Mappingtables

### Careset Mapping Tables

There is a lot of overlap between the different Caresets, but also between the Caresets and Carepaths. Caresets build upon the basic semantic foundation of Carepaths, intentionally re-using the SNOMED CT and LOINC codes defined for standalone parameters (for example, Heart Rate or Body Weight as seen in the Carepaths). However, because Caresets also track Encounters, advanced Questionnaires, and procedural outcomes, they expand upon that core set. We list here the expanded mappings used in the Caresets and their connection to the base Carepath parameters.

#### General mappings

If there is a distinction between OPAT and ONCO (Antitumoral therapy) this is noted in the table. It might be that in the future we can align these caresets even more. The yellow marked codes are codes that do not appear in the corresponding carepath in this IG.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Storage medication | Are there any remarks or concerns regarding the (correct) home storage of medication? | SNOMED 422413002 | SNOMED: 710977001 (safe storage / medication correctly stored), 424363005 (improper storage / concern about correct home storage) | OPAT / ONCO |
| Preparation medication | Medication fully dissolved into a clear solution without visible particles | SNOMED 396076000  | SNOMED: 31874001 (true), 64100000 (false) | OPAT / ONCO |
|   | Weight after disconnecting empty infusion device | SNOMED 1381260006 | Not applicable | OPAT |
|   | Weight of full infusion device just before new administration | SNOMED 1381257004 | Not applicable | OPAT |
|   | Additional observation (if applicable) (during medication preparation) |  SNOMED 396078004  | Not applicable | OPAT |
|   | Could the medication be prepared according to procedure? |  SNOMED 385796006  | SNOMED: 373066001 (yes), 373067005 (no) | OPAT / ONCO |
| Medication administration | Could the medication be administered exactly according to procedure (no deviations)? |  SNOMED 373149000  | SNOMED: 373066001 (yes), 373067005 (no) | OPAT / ONCO |
| Taking pre-medication | Pre-medication correctly taken (dexamethasone, H1-antihistamine, paracetamol before administration) |  SNOMED 182833002  | SNOMED: 31874001 (true), 64100000 (false) | ONCO |
| Observation parameters | Body temperature | LOINC 8310-5 | Not applicable | OPAT / ONCO |
|   | Pulse | SNOMED 364075005 | Not applicable | OPAT / ONCO |
|   | Blood pressure (systolic mmHg) | LOINC 8480-6 | Not applicable | OPAT / ONCO |
|   | Blood pressure (diastolic mmHg) | LOINC 8462-4 | Not applicable | OPAT / ONCO |
|   | Oxygen saturation (%) | LOINC 2708-6 | Not applicable | ONCO |
|   | Body weight | LOINC 29463-7 | Not applicable | ONCO |
| Observation of insertion site dressing | Observation of insertion site dressing | SNOMED 364554009 | SNOMED: 17621005 (Normal), 263654008 (Abnormal) | OPAT |
|   | Bloody | SNOMED 297968009 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Purulent | SNOMED 225550006 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Loose | SNOMED 78799005 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Serous | SNOMED 447112000 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Moist | SNOMED 17461003 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Other observation problems with dressing |  SNOMED 1481000124102  | Not applicable | OPAT |
| Observation insertion site | Observation insertion site | SNOMED 386141001 | SNOMED: 17621005 (Normal), 263654008 (Abnormal) | OPAT |
|   | Blistering | SNOMED 339008 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Red | SNOMED 371240000 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Hematoma | SNOMED 35566002 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Pus | SNOMED 367646009 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Crust formation | SNOMED 69640009 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Swelling | SNOMED 65124004 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Extravasation/Infiltration | SNOMED 76676007 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Damaged catheter | SNOMED 1156074004 | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Other observation problems at insertion site |  SNOMED 364554009  | Not applicable | OPAT |
| Observation catheter | Observation catheter | SNOMED 1156071007 | SNOMED: 17621005 (Normal), 263654008 (Abnormal) | OPAT |
|   | Catheter type |  SNOMED 246138005  | SNOMED: 52124006 (central venous), 1396546006 (Single lumen tunneled central venous), 1396570005 (Double lumen tunneled central venous), 1396538005 (Triple lumen tunneled central venous), 1396531004 (Single lumen midline), 1396527005 (Double lumen midline), 1396526001 (Single lumen peripherally inserted central venous), 1396489007 (Double lumen peripherally inserted central venous), 423954007 (Peripheral) | OPAT |
|   | > (per lumen) Color of intravascular catheter lumen hub |  SNOMED 1396483008  | SNOMED: 371253002 (Gray color), 371251000 (White color), 371240000 (red color), 371250004 (Purple color) | OPAT |
|   | > (per lumen) Blood aspiration |  SNOMED 25797006  | SNOMED: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful) | OPAT |
|   | > (per lumen) Infusion | SNOMED 36576007 | SNOMED: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful) | OPAT |
|   | **Other: (if applicable)** | SNOMED 406148008  | Not applicable | OPAT |
| Contraindications | Any contraindications for administration? |  SNOMED 395008009  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Fever, chills, feeling unwell | SNOMED 39104002 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Pre-medication not taken |  SNOMED 371900001  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Blood pressure on repetition below 100/60 mmHg | SNOMED 12763006 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Heart rate above 100 bpm at rest or irregular heartbeat unless known chronic | SNOMED 361137007 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Severe sensory neuropathy | SNOMED 95662005 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Severe motor neuropathy | SNOMED 299737009  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Weight increase of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema | SNOMED 262286000 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Increased edema in hands and/or feet |  SNOMED 267038008  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | New or increased productive/dry cough, with/without dyspnea | SNOMED 11833005 | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Severe nausea (insufficient oral intake) |  SNOMED 73335002  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | No oral intake (due to decreased appetite or taste change) |  SNOMED 247318005  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | General deterioration |  SNOMED 154091000119106  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Grade 3 dyspnea (resting) or increased shortness of breath |  SNOMED 297216006  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | Decision after hospital consultation |  SNOMED 182836005  | Administration, no administration, other | ONCO |
|   | **Other: (if applicable)** | SNOMED 438833006  | Not applicable | ONCO |
| Side effects | Skin rash | SNOMED 271807003 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Itching | SNOMED 418290006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Blisters / skin peeling | SNOMED 271767006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Nausea | SNOMED 422587007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Vomiting | SNOMED 249497008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Diarrhea | SNOMED 62315008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Constipation | SNOMED 14760008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Decreased appetite / taste change | SNOMED 64379006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Pain during administration | SNOMED 698749006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Localized pain | SNOMED 112104007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Fatigue / tiredness | SNOMED 224960004 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Psychosocial burden | SNOMED 384821006 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
|   | Chills | SNOMED 43724002 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Candidiasis (fungal infection) | SNOMED 78048006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Joint pain | SNOMED 57676002 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT / ONCO |
|   | Respiratory problems / shortness of breath | SNOMED 267036007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | OPAT / ONCO |
|   | Facial / tongue swelling | SNOMED 278528006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) | OPAT |
|   | Cough | SNOMED 49727002 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
|   | Muscle and joint pain | SNOMED 57676002 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
|   | Motor neuropathy | SNOMED 95663000 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
|   | Edema | SNOMED 79654002 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
|   | Tingling or numbness in fingers or toes | SNOMED 91019004 | SNOMED: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) | ONCO |
| Other relevant observations | Any other symptom burden or relevant clinical/psychosocial observations? (contact hospital care team if clinically concerned) |  SNOMED 365275006  | Not applicable | OPAT / ONCO |
| Aftercare | Was there a reaction during the home observation period? | SNOMED 281647001  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | > If yes: (one question per possible reaction) |  SNOMED 386661006 (fever), 422587007 (nausea), 255365009 (tightness), 43724002 (chill), 95891005 (influenza-like illness)  | SNOMED: 373066001 (yes), 373067005 (no) | ONCO |
|   | > If yes (on reaction): specify | SNOMED 62014003  | Not applicable | ONCO |
| (Quality) follow-up | Any remarks or concerns regarding patient registration, data sharing, communication with hospital, material availability, or other aspects of oncology home hospitalization? | SNOMED 276238005  | Not applicable | OPAT / ONCO |
| Order (encounter/not in questionnaire) | Medication administered |  SNOMED 18629005  | SNOMED: 31874001 (true), 64100000 (false) | OPAT / ONCO |
|   | Dressing change |  SNOMED 18949003  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Replace needleless connector |  SNOMED 705995006  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Replace statlock |  SNOMED 448439004  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Replace gripper needle | SNOMED 302358004  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Remove gripper needle | SNOMED 233553003  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Remove catheter | SNOMED 103715008  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |
|   | Blood sample taken | SNOMED 82078001  | SNOMED: 31874001 (true), 64100000 (false) | OPAT |

#### Note on parameters with units

Parameters with a unit (such as temperature, weight, etc.) are being exchanged as valueDecimal (so simply a number without a unit). The unit is in the question (Questionnaire).

This was not noticed until enrolling the POC because the examples from hl7 also include the unit in the questionnaire and then do not repeat it in the questionnaire response, e.g. birthWeight [https://hl7.org/fhir/R4/questionnaireresponse-example-bluebook.json.html](https://hl7.org/fhir/R4/questionnaireresponse-example-bluebook.json.html)

It would be reasonable to consider using valueQuantity instead in the future.

#### Note on cathetermapping for OPAT

For OPAT questionnaires, we also want to include the catheter type in a structured manner. This led us to the following mapping:

| | |
| :--- | :--- |
| Port catheter | 52124006 | Central venous catheter, device (physical object) | |
| Tunneled catheter with 1 lumen | 1396546006 | Single lumen tunneled central venous catheter (physical object) | |
| Tunneled catheter with 2 lumen | 1396570005 | Double lumen tunneled central venous catheter (physical object) | |
| Tunneled catheter with 3 lumen | 1396538005 | Triple lumen tunneled central venous catheter (physical object) | |
| Single lumen Midline | 1396531004 | Single lumen midline catheter (physical object) | |
| Double lumen Midline | 1396527005 | Double lumen midline catheter (physical object) | |
| Single lumen PICC | 1396526001 | Single lumen peripherally inserted central venous catheter (physical object) | |
| Double lumen PICC | 1396489007 | Double lumen peripherally inserted central venous catheter (physical object) | |
| Peripheral catheter | 423954007 | Peripheral catheter (physical object) | |

In the background, this segment will look as follows:

```
{
  "resourceType": "Questionnaire",
  "id": "catheter-choice-list",
  "title": "Questionnaire about type of catheter",
  "status": "active",
  "item": [
    {
      "linkId": "263",
      "text": "Type catheter",
      "type": "choice",
      "answerOption": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "52124006",
            "display": "Port catheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396546006",
            "display": "Tunneled catheter with 1 lumen"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396570005",
            "display": "Tunneled catheter with 2 lumen"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396538005",
            "display": "Tunneled catheter with 3 lumen"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396531004",
            "display": "Single lumen Midline"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396527005",
            "display": "Double lumen Midline"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396526001",
            "display": "Single lumen PICC"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1396489007",
            "display": "Double lumen PICC"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "423954007",
            "display": "Peripheral catheter"
          }
        }
      ]
    }
  ]
} 

```

### FHIR Resources

The following ValueSets define the coded answer options referenced in the mapping tables above:

#### ValueSets (OPAT and ONCO)

* [Medication Storage Status](./ValueSet-medication-storage.md)
* [True / False Value Set](./ValueSet-true-false.md)
* [Yes / No Value Set](./ValueSet-YesNoVS.md)
* [Normal / Abnormal Finding](./ValueSet-normal-abnormal.md)
* [Home Hospitalization Side Effect Severity Scale](./ValueSet-homehosp-side-effect-severity.md)
* [Medication Administration Decision Codes](./ValueSet-decision-cs.md)

#### ValueSets (OPAT only)

* [Catheter Type](./ValueSet-catheter-type.md)
* [Catheter Lumen Color](./ValueSet-lumen-color.md)
* [Catheter Patency Scale](./ValueSet-catheter-patency.md)

#### ValueSets (ONCO only)

* [ONCO Symptom Grade Scale (CTCAE 0–3)](./ValueSet-onco-symptom-grade.md)

