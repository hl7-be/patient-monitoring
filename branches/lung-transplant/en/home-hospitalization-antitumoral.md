# Home hosp - Antitumoral therapy - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Home hosp - Antitumoral therapy

### Careset Overview

> ****NOTE:**** This page describes the **Careset** for antitumoral therapy, detailing the holistic structured report used to communicate patient status, Questionnaires, Encounters, and monitoring data between Electronic Patient Dossiers (EPDs) and care teams (e.g., between hospital care teams and home nursing organizations). For the specification mapping out the direct exchange of individual parameters from telemonitoring providers, see the [Antitumoral Carepath](./carepath-antitumoral.md).*

Home hospitalization allows patients to leave the hospital while continuing specialized treatments at home. Antitumoral Therapy focuses on the home administration of specific antitumoral drugs (e.g., Trastuzumab, Daratumumab) and the monitoring of symptom burden.

For this careset, there were **four necessary layers of agreements**:

1. Substantive**consensus via working group (NPTV/VVRO, hospitals) on the content of the questionnaires**and the overall workflow.
1. **Semantics (SNOMED CT)**: To ensure uniformity of language across systems, Caresets strictly re-use the SNOMED CT and LOINC codes defined in the basic[Antitumoral Carepath](./carepath-antitumoral.md). Furthermore, because Caresets capture a more holistic view of the patient’s care - including nursing interventions, hospital instructions, and specific questionnaires - the Careset extends this foundation with additional codes not found in the standalone telemonitoring Carepath. For a full overview of mappings, see the[Caresets Mappingtable](./home-hospitalization-mappingtable.md).
1. Structure (FHIR Profiling): more below, we use a**combination of FHIR resources (Questionnaire, QuestionnaireResponse, Encounter)**to capture the necessary information and structure it in a way that can be easily processed and implemented by the receiving and sending systems.
1. **Interaction & Transport**: The agreements on how the packet travels. This could be project dependent. In Belgium, for home hospitalization,[the ehealth box](https://www.witgelekruis.be/nieuws/eerste-versie-gestructureerd-voorschrift-voor-thuishospitalisatie-beschikbaar-ehealthbox)is currently the most common transport mechanism, but other mechanisms could be used as well. As an example, we are closely following the development of[eReferral](https://www.ehealth.fgov.be/ehealthplatform/nl/service-ereferral).

This careset has been successfully implemented in nexuzhealth hospitals and WGK Vlaams Brabant and is currently being implemented in other WGK departments and Corilus CareConnect Nurse.

### Workflow

#### Hospital to Home

1. Registration: The patient is registered in a virtual home hospitalization unit.
1. Report & Instructions: A specific medical report is created containing medical history, future appointments and certain parameters.
1. Order: A doctor generates an order in the hospitals EHR, which contains the medication order and specific tasks for the home nurse.
1. Communication: The hospital exchanges this information (the order and patient info) as a FHIR document with the home nursing organization.

#### Home to Hospital

1. Home Visit: The home nurse performs the requested tasks and records data using their own software.
1. Feedback: The home nursing system generates digital feedback in the form of FHIR resources (Questionnaire, QuestionnaireResponse, and Encounter).
1. Communication: This data is exchanged with the hospital.
1. Processing: The hospital can use automated “batch jobs” to process these responses and write the data back into the patient’s medical record for physician review.

### Questionnaire Content

#### Overview

The antitumoral questionnaires are **drug-specific** (e.g., for Azacitidine, Bortezomib, Fulvestrant, etc.) and go deeper into symptom burden and adverse reactions:

* **Medication administration**: Confirming if the medication could be prepared and administered exactly according to the procedure.
* **General assessment**: Checking for specific symptoms such as: 
* Fever
* Nausea
* Shortness of breath
* Chills
 

The content of these questionnaires was drafted within the transmural working group NPTV/VVRO along with the hospitals following the
[legal requirements for home hospitalization](./legal-guidelines-home-hospitalization.md). Changes to the content must be approved by the working group.

#### Specific Antitumoral Questionnaires

##### Trastuzumab

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) storage of medication at home? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Observation parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure systolic | Numeric |   | mmHg |
|   |   | Blood pressure diastolic | Numeric |   | mmHg |
|   |   | Body weight | Numeric |   | kg |
|   | Contraindications | Are there contraindications for administration? | Choice | Yes, No |   |
|   |   | Fever, chills, feeling unwell | Choice | Yes, No |   |
|   |   | Repeated blood pressure lower than 100/60 mmHg | Choice | Yes, No |   |
|   |   | Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known | Choice | Yes, No |   |
|   |   | Increase in body weight of 3 kg / 3 weeks or 5 kg / 6 weeks, especially with increased edema | Choice | Yes, No |   |
|   |   | Increased edema in hands and/or feet | Choice | Yes, No |   |
|   |   | Increased shortness of breath and/or severe shortness of breath (i.e., at rest or interfering with daily activities) (Trastuzumab, Azacitidine) | Choice | Yes, No |   |
|   |   | > If yes |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   |   | Decision after consultation with hospital | Choice | Administration, no administration, other |   |
|   |   | > If other: specify | Text |   |   |
|   | Symptom burden | Nausea | Choice | None; Patient is nauseous but can eat and drink normally; Due to nausea patient eats/drinks less but does not lose weight; Due to nausea patient cannot eat or drink sufficiently |   |
|   |   | Vomiting | Choice | None; No more than 2 times; 35 times; 6 or more times |   |
|   |   | Reduced appetite or taste changes | Choice | None; Taste changed or reduced appetite but no need to change eating habits; Eats less but no weight loss; Cannot eat sufficiently due to appetite/taste changes |   |
|   |   | Diarrhea | Choice | No more than normal; 13 times more than normal; 46 times more than normal; More than 6 times more or impacting daily life |   |
|   |   | Constipation | Choice | None; Bowel movement possible with occasional aid; Only possible with daily laxatives/enemas; Severe constipation affecting daily activities and not relieved by laxatives |   |
|   |   | Fatigue / lack of energy | Choice | Not more than normal; Mild fatigue but daily activities possible; Moderate fatigue making activities harder; Severe fatigue preventing daily activities |   |
|   |   | Pain | Choice | None; Mild pain not affecting activities; Moderate pain with reduced functioning; Severe pain preventing daily activities |   |
|   |   | Skin rash | Choice | None; Limited redness; Moderate redness; Severe redness or peeling over most of body |   |
|   |   | Psychosocial burden | Choice | Feels well; Slight distress without impact; Significant distress affecting daily life; Severe distress preventing normal functioning |   |
|   |   | Shortness of breath | Choice | None; Only with moderate exertion; With light exertion affecting daily activities; At rest, preventing activities |   |
|   |   | Edema | Choice | None; Mild, only visible on close inspection; Moderate, clearly visible affecting activities; Severe, clearly visible preventing activities |   |
|   | Other relevant observations | Other side effects or relevant clinical and psychosocial observations (please contact the hospital in case of clinical concern) | Text |   |   |
|   | Task | Could the medication be prepared according to the procedure? | Choice | Yes, No |   |
|   |   | Could the medication be administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   | Aftercare | Was there a reaction during the home observation period? | Choice | No, Yes |   |
|   |   | > If yes: specify |   |   |   |
|   |   | Fever | Choice | Yes, No |   |
|   |   | Nausea | Choice | Yes, No |   |
|   |   | Shortness of breath | Choice | Yes, No |   |
|   |   | Chills | Choice | Yes, No |   |
|   |   | Flu-like symptoms | Choice | Yes, No |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding patient registration, data sharing from the hospital, communication/contact with the hospital, availability of materials, or other aspects of transmural collaboration in home hospitalization oncology? Please share them here. Thank you. | Text |   |   |

##### Daratumumab

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) storage of medication at home? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Observation parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure systolic | Numeric |   | mmHg |
|   |   | Blood pressure diastolic | Numeric |   | mmHg |
|   | Pre-medication intake | Was pre-medication taken correctly (dexamethasone, H1 antihistamine, paracetamol before administration)? | Choice | Yes, No |   |
|   | Contraindications | Are there contraindications for administration? | Choice | Yes, No |   |
|   |   | Fever, chills, feeling unwell | Choice | Yes, No |   |
|   |   | Pre-medication not taken | Choice | Yes, No |   |
|   |   | > If yes |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   |   | Decision after consultation with hospital | Choice | Administration, no administration, other |   |
|   |   | > If other: specify | Text |   |   |
|   | Symptom burden | Nausea | Choice | None; Patient is nauseous but can eat and drink normally; Eats/drinks less due to nausea but no weight loss; Cannot eat or drink sufficiently due to nausea |   |
|   |   | Vomiting | Choice | None; No more than 2 times; 35 times; 6 or more times |   |
|   |   | Reduced appetite or taste changes | Choice | None; Taste/appetite changed but no dietary adjustment needed; Eats less but no weight loss; Cannot eat sufficiently |   |
|   |   | Diarrhea | Choice | No more than normal; 13 times more; 46 times more; >6 times or impacting daily life |   |
|   |   | Constipation | Choice | None; Occasional aid needed; Requires daily laxatives/enemas; Severe despite treatment |   |
|   |   | Fatigue / lack of energy | Choice | Not more than normal; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Pain | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Skin rash | Choice | None; Mild redness; Moderate; Severe/extensive peeling |   |
|   |   | Psychosocial burden | Choice | Feels well; Mild distress; Moderate impact; Severe impact preventing functioning |   |
|   |   | Shortness of breath | Choice | None; With moderate exertion; With light exertion; At rest |   |
|   |   | Cough | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Muscle and joint pain | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   | Other relevant observations | Other side effects or relevant clinical and psychosocial observations (please contact the hospital in case of clinical concern) | Text |   |   |
|   | Task | Could the medication be prepared according to the procedure? | Choice | Yes, No |   |
|   |   | Could the medication be administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding patient registration, data sharing from the hospital, communication/contact with the hospital, availability of materials, or other aspects of transmural collaboration in home hospitalization oncology? Please share them here. Thank you. | Text |   |   |

##### Bortezomib

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) storage of medication at home? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Observation parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure systolic | Numeric |   | mmHg |
|   |   | Blood pressure diastolic | Numeric |   | mmHg |
|   | Contraindications | Are there contraindications for administration? | Choice | Yes, No |   |
|   |   | Fever, chills, feeling unwell | Choice | Yes, No |   |
|   |   | Repeated blood pressure lower than 100/60 mmHg | Choice | Yes, No |   |
|   |   | Heart rate above 100 bpm at rest or irregular heart rhythm (unless chronically known) | Choice | Yes, No |   |
|   |   | Severe sensory neuropathy (e.g. numbness, tingling, burning or cold sensation in hands/feet with pain and/or impact on daily activities) | Choice | Yes, No |   |
|   |   | Severe motor neuropathy (e.g. severe muscle weakness, general weakness or tremor impacting activities such as walking or writing) | Choice | Yes, No |   |
|   |   | > If yes |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   |   | Decision after consultation with hospital | Choice | Administration, no administration, other |   |
|   |   | > If other: specify | Text |   |   |
|   | Symptom burden | Nausea | Choice | None; Patient is nauseous but can eat and drink normally; Eats/drinks less due to nausea but no weight loss; Cannot eat or drink sufficiently due to nausea |   |
|   |   | Vomiting | Choice | None; No more than 2 times; 35 times; 6 or more times |   |
|   |   | Reduced appetite or taste changes | Choice | None; Taste/appetite changed but no dietary adjustment needed; Eats less but no weight loss; Cannot eat sufficiently |   |
|   |   | Diarrhea | Choice | No more than normal; 13 times more; 46 times more; >6 times or impacting daily life |   |
|   |   | Constipation | Choice | None; Occasional aid needed; Requires daily laxatives/enemas; Severe despite treatment |   |
|   |   | Fatigue / lack of energy | Choice | Not more than normal; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Pain | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Skin rash | Choice | None; Limited redness; Moderate redness; Severe redness or peeling over most of body |   |
|   |   | Psychosocial burden | Choice | Feels well; Mild distress without impact; Significant distress affecting daily life; Severe distress preventing normal functioning |   |
|   |   | Shortness of breath | Choice | None; With moderate exertion; With light exertion affecting daily activities; At rest preventing activities |   |
|   |   | Tingling or numbness in fingers or toes | Choice | None; Present but no functional impact; Some activities more difficult; Activities no longer possible |   |
|   |   | Motor neuropathy | Choice | None; Weakness/tremor without functional impact; Impacts functioning but not ADL; Impacts ADL (e.g. washing, dressing, eating) |   |
|   |   | Cough | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   | Other relevant observations | Other side effects or relevant clinical and psychosocial observations (please contact the hospital in case of clinical concern) | Text |   |   |
|   | Task | Could the medication be administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding patient registration, data sharing from the hospital, communication/contact with the hospital, availability of materials, or other aspects of transmural collaboration in home hospitalization oncology? Please share them here. Thank you. | Text |   |   |

##### Azacitidine

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) home storage of medication? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Observation parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure systolic | Numeric |   | mmHg |
|   |   | Blood pressure diastolic | Numeric |   | mmHg |
|   |   | Oxygen saturation (only if cough or shortness of breath) | Numeric |   | % |
|   | Contraindications | Are there contraindications for administration? | Choice | Yes, No |   |
|   |   | Fever, chills, feeling unwell | Choice | Yes, No |   |
|   |   | No oral intake (due to reduced appetite or taste changes) | Choice | Yes, No |   |
|   |   | Severe nausea (i.e., nausea with insufficient oral intake) | Choice | Yes, No |   |
|   |   | Increased or severe shortness of breath (at rest or impacting daily activities) (Trastuzumab, Azacitidine) | Choice | Yes, No |   |
|   |   | New or increased productive/dry cough, with or without dyspnea | Choice | Yes, No |   |
|   |   | General deterioration | Choice | Yes, No |   |
|   |   | > If yes |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   |   | Decision after consultation with hospital | Choice | Administration, no administration, other |   |
|   |   | > If other: specify | Text |   |   |
|   | Symptom burden | Nausea | Choice | None; Patient is nauseous but can eat and drink normally; Eats/drinks less due to nausea but no weight loss; Cannot eat or drink sufficiently due to nausea |   |
|   |   | Vomiting | Choice | None; No more than 2 times; 35 times; 6 or more times |   |
|   |   | Reduced appetite or taste changes | Choice | None; Taste/appetite changed but no dietary adjustment needed; Eats less but no weight loss; Cannot eat sufficiently |   |
|   |   | Diarrhea | Choice | Normal; 13 times more; 46 times more; >6 times or impacting daily life |   |
|   |   | Constipation | Choice | None; Occasional aid needed; Requires daily laxatives/enemas; Severe despite treatment |   |
|   |   | Fatigue / lack of energy | Choice | Not more than normal; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Pain | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Skin rash | Choice | None; Limited redness; Moderate redness; Severe/extensive redness or peeling |   |
|   |   | Psychosocial burden | Choice | Feels well; Mild distress; Moderate impact on daily life; Severe impact preventing normal functioning |   |
|   |   | Shortness of breath | Choice | None; Only with moderate exertion; With light exertion affecting daily activities; At rest affecting daily activities |   |
|   |   | Cough | Choice | None; Mild; Moderate; Severe (limits daily activities) |   |
|   | Other relevant observations | Other side effects or relevant clinical and psychosocial observations (please contact the hospital in case of clinical concern) | Text |   |   |
|   | Task | Medication was completely dissolved into a clear solution without visible particles | Choice | Yes, No |   |
|   |   | Could the medication be administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding patient registration, data sharing from the hospital, communication/contact with the hospital, availability of materials, or other aspects of transmural collaboration in home hospitalization oncology? Please share them here. Thank you. | Text |   |   |

##### Fulvestrant

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) home storage of medication? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Observation parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure systolic | Numeric |   | mmHg |
|   |   | Blood pressure diastolic | Numeric |   | mmHg |
|   | Contraindications | Are there contraindications for administration? | Choice | Yes, No |   |
|   |   | Fever, chills, feeling unwell | Choice | Yes, No |   |
|   |   | > If yes |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   |   | Decision after consultation with hospital | Choice | Administration, no administration, other |   |
|   |   | > If other: specify | Text |   |   |
|   | Side effects | Nausea | Choice | None; Patient is nauseous but can eat and drink normally; Eats/drinks less due to nausea but no weight loss; Cannot eat or drink sufficiently due to nausea |   |
|   |   | Vomiting | Choice | None; No more than 2 times; 35 times; 6 or more times |   |
|   |   | Reduced appetite or taste changes | Choice | None; Taste/appetite changed but no dietary adjustment needed; Eats less but no weight loss; Cannot eat sufficiently |   |
|   |   | Diarrhea | Choice | Normal; 13 times more than normal; 46 times more than normal; >6 times or interfering with daily life |   |
|   |   | Constipation | Choice | None; Occasional aid (laxative, fruit, etc.); Daily laxatives/enemas required; Severe, impacting daily activities and not helped by laxatives |   |
|   |   | Fatigue / lack of energy | Choice | Not more than normal; Mild; Moderate; Severe (limits daily activities) |   |
|   |   | Pain | Choice | None; Mild, does not disturb daily activities; Moderate, daily activities more difficult; Severe, daily activities hardly possible |   |
|   |   | Skin rash | Choice | None; Limited redness; Moderate redness; Severe/extensive redness or peeling |   |
|   |   | Psychosocial burden | Choice | Feels well; Mild distress, does not disturb daily life; Moderate impact affecting daily tasks, social contacts, relaxation, or sleep; Severe impact preventing daily tasks, social contacts, relaxation, or sleep |   |
|   |   | Shortness of breath | Choice | None; Only with moderate exertion; With light exertion affecting daily life; At rest affecting daily activities |   |
|   |   | Muscle and joint pain | Choice | None; Mild, does not disturb daily life; Moderate, daily activities more difficult; Severe, daily activities hardly possible |   |
|   | Other relevant observations | Other side effects or relevant clinical and psychosocial observations (please contact the hospital for clinical concerns) | Text |   |   |
|   | Task | Medication administration |   |   |   |
|   |   | Could the medication be administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no |   |   |   |
|   |   | ? Please contact the hospital care team (click here for contact details) |   |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding patient registration, data sharing from the hospital, communication/contact with the hospital, availability of materials, or other aspects of transmural collaboration in home hospitalization oncology? Please note them here. Thank you. | Text |   |   |

### Justification for using Questionnaires

The OPAT careset uses FHIR Questionnaire and QuestionnaireResponse as its primary mechanism for structured data capture from home nurses. This is a deliberate design choice, justified on several grounds.

**It reflects the actual clinical workflow.** A questionnaire is literally what a home nurse fills in during or after a visit. The data capture model therefore mirrors reality: each home visit produces one completed QuestionnaireResponse, which corresponds to one discrete nursing encounter. Rather than asking implementers to map nursing observations to a collection of loosely related FHIR resources (Observation, Condition, Procedure, etc.) during data entry, the nurse-facing system can present the questionnaire directly, and the FHIR representation follows naturally.

**It preserves context.** Individual FHIR resources such as Observations are powerful for querying and analytics, but they are inherently atomic. A standalone Observation for a temperature of 38.9°C carries no information about whether the dressing at the insertion site was normal, whether the medication was correctly prepared, or whether the nurse noted swelling of the face. Grouping observations under a QuestionnaireResponse preserves the full clinical context of a single visit as a coherent unit, which is essential when a physician reviews the data.

**Loose resources can still be extracted via SDC Definition-based Extraction.** For systems that need individual FHIR resources (e.g., for populating a patient’s Observation timeline or triggering CDS alerts), the [SDC Definition Extract](https://build.fhir.org/ig/HL7/sdc/en/StructureDefinition-sdc-questionnaire-definitionExtract.html) mechanism allows individual resources to be derived automatically from a QuestionnaireResponse. Each question item can be annotated with a definition extension that maps it to a target resource and element path. This means a single QuestionnaireResponse can be both the source of truth and the input to an automated extraction pipeline that produces discrete Observations, Conditions, or other resources - without requiring the sending system to produce all of them independently. The questionnaire is therefore not a barrier to interoperability; it is the entry point.

**It enforces structural completeness.** A Questionnaire defines exactly which items are required, which are conditional ( e.g., “if abnormal: specify”), and which follow a controlled vocabulary. This makes validation straightforward and reduces the risk of partial or ambiguous submissions. Compared to accepting a bundle of arbitrary Observations, a QuestionnaireResponse validated against its Questionnaire gives the receiving system strong guarantees about what data is present and how it is structured.

**It simplifies versioning and governance.** The questionnaire content in this careset was established through a formal working group process (NPTV, VVRO, hospitals) and is subject to controlled change management. Encoding that content in a FHIR Questionnaire resource means the definition, its version, and its approved answer sets are all machine-readable and can be referenced explicitly by every QuestionnaireResponse. When the working group approves a change to the questionnaire, implementers can unambiguously distinguish responses that were captured under version N from those captured under version N+1.

**It lowers the implementation bar for home nursing systems.** Home nursing software is often less technically mature than hospital EPDs. Requiring these systems to produce a semantically correct bundle of typed FHIR resources (with proper codes, units, and references) places a significant implementation burden on them. Producing a QuestionnaireResponse - essentially a structured form submission - is a substantially simpler task. The complexity of mapping to fine-grained FHIR resources can then be handled centrally, either at the receiving hospital system or via an intermediary extraction service.

### Encounter

The **purpose of the FHIR Encounter resource is twofold**:

1. Note on the status of the visit: did the visit even happen? Was the patient home?
1. Note on the status of the care that was asked. Maybe the medication could not be administered but parameters were taken

The FHIR Encounter resource is only used for the orders given by the hospital. Other 'procedures' should not be communicated back to the hospital.

Possible **reasonCodes** for the FHIR Encounter resource (with link to the billing code **Tarfac/RIZIV**) are the following:

* 82078001 |Collection of blood specimen for laboratory (procedure)| » Bloedname (N/A, Non-reimbursable care)
* 705995006 |Needleless valve-connector (physical object)| » Vervangen naaldloze connector (N/A, Non-reimbursable care)
* 448439004 |Catheter stabilization device (physical object)| » Vervangen statlock (N/A, Non-reimbursable care)
* 103715008 |Removal of catheter (procedure)| » Permanent verwijderen centrale katheter (421072 or 425375 ?)
* 18949003 |Change of dressing (procedure)| » Vervangen katheterverband (424336, Specialized Nursing Care)
* 302358004 |Vascular cannula adjustment (procedure)| » Vervangen grippernaald (423113, Specialized Nursing Care)
* 233553003 |Vascular cannula removal (procedure)| » Verwijderen grippernaald (421072, Specialized Nursing Care)
* 18629005 |Administration of drug or medicament (procedure)| (+ one of the following codes for extra information) 
* 14152002 |Intravenous infusion (procedure)| » Perfusie (425375, Infusion/Perfusion)
* 386358000 |Administration of drug or medicament via intravenous route (procedure)| » Intraveneuze toediening (423054, Injection/Administration)
* 76601001 |Intramuscular injection (procedure)| » Intramusculaire toediening (423076, Injection/Administration)
* 1285265006 |Injection into subcutaneous tissue (procedure)|  » Subcutane toediening (423076, Injection/Administration)
* 243132000 |Inhaled drug administration (procedure)| » Inhalatie (? 425213)
 

### FHIR Resources

#### Profiles

* [Home Hospitalization Careset Encounter](./StructureDefinition-homehosp-encounter.md)
* [Home Hospitalization Careset Questionnaire Response](./StructureDefinition-homehosp-questionnaire-response.md)
* [ONCO Home Hospitalization Base Questionnaire](./StructureDefinition-homehosp-onco-base.md)
* [ONCO Azacitidine Nursing Questionnaire](./StructureDefinition-homehosp-onco-azacitidine.md)
* [ONCO Bortezomib Nursing Questionnaire](./StructureDefinition-homehosp-onco-bortezomib.md)
* [ONCO Daratumumab Nursing Questionnaire](./StructureDefinition-homehosp-onco-daratumumab.md)
* [ONCO Fulvestrant Nursing Questionnaire](./StructureDefinition-homehosp-onco-fulvestrant.md)
* [ONCO Trastuzumab Nursing Questionnaire](./StructureDefinition-homehosp-onco-trastuzumab.md)

#### Logical Models

* [Home Hospitalization Encounter Logical Model](./StructureDefinition-homehosp-encounter-lm.md)
* [Home Hospitalization QuestionnaireResponse Logical Model](./StructureDefinition-homehosp-questionnaire-response-lm.md)
* [ONCO Azacitidine Questionnaire Logical Model](./StructureDefinition-onco-azacitidine-questionnaire.md)
* [ONCO Bortezomib Questionnaire Logical Model](./StructureDefinition-onco-bortezomib-questionnaire.md)
* [ONCO Daratumumab Questionnaire Logical Model](./StructureDefinition-onco-daratumumab-questionnaire.md)
* [ONCO Fulvestrant Questionnaire Logical Model](./StructureDefinition-onco-fulvestrant-questionnaire.md)
* [ONCO Trastuzumab Questionnaire Logical Model](./StructureDefinition-onco-trastuzumab-questionnaire.md)

#### ValueSets

* [Medication Storage Status](./ValueSet-medication-storage.md)
* [True / False Value Set](./ValueSet-true-false.md)
* [Yes / No Value Set](./ValueSet-YesNoVS.md)
* [Normal / Abnormal Finding](./ValueSet-normal-abnormal.md)
* [ONCO Symptom Grade Scale (CTCAE 0–3)](./ValueSet-onco-symptom-grade.md)
* [Home Hospitalization Side Effect Severity Scale](./ValueSet-homehosp-side-effect-severity.md)
* [Medication Administration Decision Codes](./ValueSet-decision-cs.md)

#### Examples

* [FHIR Document with patient information from hospital](./Composition-OPAT-Document.md)
* [FHIR Encounter](./Encounter-Encounter-3441.md)
* [FHIR Questionnaire Azacitidine](./Questionnaire-homehosp-azacitidine.md)
* [FHIR Questionnaire Bortezomib](./Questionnaire-homehosp-bortezomib.md)
* [FHIR Questionnaire Daratumumab](./Questionnaire-homehosp-daratumumab.md)
* [FHIR Questionnaire Fulvestrant](./Questionnaire-homehosp-fulvestrant.md)
* [FHIR Questionnaire Trastuzumab](./Questionnaire-homehosp-trastuzumab.md)
* [FHIR QuestionnaireResponse Azacitidine](./QuestionnaireResponse-HomehospAzacitidineQuestionnaireResponseExample.md)

