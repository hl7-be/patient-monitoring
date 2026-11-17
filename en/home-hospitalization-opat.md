# Home hosp - OPAT - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Home hosp - OPAT

### Careset Overview

> ****NOTE:**** This page describes the **Careset** for OPAT, detailing the holistic structured report used to communicate patient status, Questionnaires, Encounters, and monitoring data between Electronic Patient Dossiers (EPDs) and care teams (e.g., between the hospital OPAT team and home nursing organizations). For the specification mapping out the direct exchange of individual parameters from telemonitoring providers, see the [OPAT Carepath](./carepath-opat.md).*

Home hospitalization allows patients to leave the hospital while continuing specialized treatments at home. OPAT (Outpatient Parenteral Antimicrobial Therapy) focuses on the home administration of intravenous antibiotics and the associated catheter care.

For this careset, there were **four necessary layers of agreements**:

1. Substantive**consensus via working group (VZA, NPTV) on the content of the questionnaires**and the overall workflow.
1. **Semantics (SNOMED CT)**: To ensure uniformity of language across systems, Caresets strictly re-use the SNOMED CT and LOINC codes defined in the basic[OPAT Carepath](./carepath-opat.md). Furthermore, because Caresets capture a more holistic view of the patient’s care - including nursing interventions, hospital instructions, and specific questionnaires - the Careset extends this foundation with additional codes not found in the standalone telemonitoring Carepath. For a full overview of mappings, see the[Home hospitalization mappingtable](./home-hospitalization-mappingtable.md).
1. Structure (FHIR Profiling): more below, we use a**combination of FHIR resources (Questionnaire, QuestionnaireResponse, Encounter)**to capture the necessary information and structure it in a way that can be easily processed and implemented by the receiving and sending systems.
1. **Interaction & Transport**: The agreements on how the packet travels. This could be project dependent. In Belgium, for home hospitalization,[the ehealth box](https://www.witgelekruis.be/nieuws/eerste-versie-gestructureerd-voorschrift-voor-thuishospitalisatie-beschikbaar-ehealthbox)is currently the most common transport mechanism, but other mechanisms could be used as well. As an example, we are closely following the development of[eReferral](https://www.ehealth.fgov.be/ehealthplatform/nl/service-ereferral).

This careset has been successfully implemented in nexuzhealth hospitals and WGK Vlaams Brabant and is currently being implemented in other WGK departments and Corilus CareConnect Nurse.

### Workflow

#### Hospital to Home

1. Registration: The patient is registered in a virtual home hospitalization unit.
1. Report & Instructions: A specific medical report is created containing medical history, future appointments and catheter type.
1. Order: A doctor generates an order in the hospitals EHR, which contains the medication order and specific tasks for the home nurse.
1. Communication: The hospital exchanges this information (the order and patient info) as a FHIR document with the home nursing organization.

#### Home to Hospital

1. Home Visit: The home nurse performs the requested tasks and records data using their own software.
1. Feedback: The home nursing system generates digital feedback in the form of FHIR resources (Questionnaire, QuestionnaireResponse, and Encounter).
1. Communication: This data is exchanged with the hospital.
1. Processing: The hospital can use automated “batch jobs” to process these responses and write the data back into the patient’s medical record for physician review.

### Questionnaire Content

#### Overview

The OPAT questionnaires focus heavily on the technical aspects of intravenous access and basic physical status:

* **Catheter care**: Monitoring the stabilization device type and specific care for the access port (e.g., implantable port, adhesive tape).
* **Medication administration**: Confirming if the medication could be prepared and administered exactly according to the procedure.
* **General assessment**: Checking for specific symptoms such as: 
* Fever
* Nausea
* Shortness of breath
* Chills
 

The content of these questionnaires was drafted within working groups with representation at the level of the VZA ( Flemish Association of Hospital Pharmacists) and NPTV (Dutch-speaking Platform for Home Nursing) following the
[legal requirements for home hospitalization](./legal-guidelines-home-hospitalization.md). Changes to the content must be approved by the working group.

#### Specific OPAT Questionnaires

##### Continuous infusion

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) storage of medication at home? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Preparation of medication administration | The medication was completely dissolved into a clear solution without visible particles | Choice | Yes, No |   |
|   |   | > If no: please contact the hospital care team |   |   |   |
|   |   | Weight when disconnecting empty infusor | Numeric |   | g |
|   |   | Weight of full infusor just before new administration | Numeric |   | g |
|   |   | Additional observation (if applicable) | Text |   |   |
|   | Medication administration | Was the medication administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no: specify | Text |   |   |
|   | Vital parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure - systolic | Numeric |   | mmHg |
|   |   | Blood pressure - diastolic | Numeric |   | mmHg |
|   | Dressing observation at insertion site | Dressing observation at insertion site | Choice | Normal, abnormal |   |
|   |   | > If abnormal: specify |   |   |   |
|   |   | Bloody | Choice | Yes, No |   |
|   |   | Purulent | Choice | Yes, No |   |
|   |   | Loose | Choice | Yes, No |   |
|   |   | Serous | Choice | Yes, No |   |
|   |   | Moist | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Insertion site observation | Insertion site observation | Choice | Normal, abnormal |   |
|   |   | > If abnormal: specify |   |   |   |
|   |   | Blistering | Choice | Yes, No |   |
|   |   | Redness | Choice | Yes, No |   |
|   |   | Hematoma | Choice | Yes, No |   |
|   |   | Pus | Choice | Yes, No |   |
|   |   | Crusting | Choice | Yes, No |   |
|   |   | Swelling | Choice | Yes, No |   |
|   |   | Extravasation/infiltration | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Catheter observation | Type of catheter | Choice | Port catheter, 1-lumen tunneled catheter, 2-lumen tunneled catheter, 3-lumen tunneled catheter, Single lumen midline, Double lumen midline, Single lumen PICC, Double lumen PICC, Peripheral catheter |   |
|   |   | Catheter observation | Choice | Normal, abnormal |   |
|   |   | > Specify**per lumen** |   |   |   |
|   |   | > (per lumen) Color lumen | Choice | Gray, White, Red, Purple |   |
|   |   | > (per lumen) Blood aspiration | Choice | Easy / difficult / impossible |   |
|   |   | > (per lumen) Infusion | Choice | Easy / difficult / impossible |   |
|   |   | Damaged catheter | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Side effects | Skin rash | Choice | None, mild, moderate, severe |   |
|   |   | Itching | Choice | None, mild, moderate, severe |   |
|   |   | Blisters/skin peeling | Choice | None, mild, moderate, severe |   |
|   |   | Nausea | Choice | None, mild, moderate, severe |   |
|   |   | Vomiting | Choice | None, mild, moderate, severe |   |
|   |   | Diarrhea | Choice | None, mild, moderate, severe |   |
|   |   | Constipation | Choice | None, mild, moderate, severe |   |
|   |   | Decreased appetite | Choice | None, mild, moderate, severe |   |
|   |   | Pain during administration | Choice | None, mild, moderate, severe |   |
|   |   | Pain (general) | Choice | None, mild, moderate, severe |   |
|   |   | Fatigue | Choice | None, mild, moderate, severe |   |
|   |   | Chills | Choice | None, mild, moderate, severe |   |
|   |   | Candidiasis (fungal infection) | Choice | None, mild, moderate, severe |   |
|   |   | Joint pain | Choice | None, mild, moderate, severe |   |
|   |   | Breathing problems | Choice | None, mild, moderate, severe |   |
|   |   | Swelling of face/tongue | Choice | None, mild, moderate, severe |   |
|   |   | Are there other symptoms or relevant clinical and/or psychosocial observations? (please contact the hospital care team in case of clinical concern) | Text |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding the registration of this patient, data sharing from the hospital, communication with the hospital, availability of medication and materials, or other aspects of transmural collaboration around home hospitalization OPAT? Please share them with us. Thank you. | Text |   |   |

##### Short IV

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Nursing assessment | Storage | Are there any remarks or concerns regarding the (proper) storage of medication at home? | Choice | Medication is stored correctly, concern about proper home storage |   |
|   |   | > If remarks or concerns: specify | Text |   |   |
|   | Preparation of medication administration | The medication was completely dissolved into a clear solution without visible particles | Choice | Yes, No |   |
|   |   | > If no: please contact the hospital care team |   |   |   |
|   | Medication administration | Was the medication administered exactly according to the procedure (no deviations)? | Choice | Yes, No |   |
|   |   | > If no: specify | Text |   |   |
|   | Vital parameters | Body temperature | Numeric |   | °C |
|   |   | Pulse | Numeric |   | beats/min |
|   |   | Blood pressure - systolic | Numeric |   | mmHg |
|   |   | Blood pressure - diastolic | Numeric |   | mmHg |
|   | Dressing observation at insertion site | Dressing observation at insertion site | Choice | Normal, abnormal |   |
|   |   | > If abnormal: specify |   |   |   |
|   |   | Bloody | Choice | Yes, No |   |
|   |   | Purulent | Choice | Yes, No |   |
|   |   | Loose | Choice | Yes, No |   |
|   |   | Serous | Choice | Yes, No |   |
|   |   | Moist | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Insertion site observation | Insertion site observation | Choice | Normal, abnormal |   |
|   |   | > If abnormal: specify |   |   |   |
|   |   | Blistering | Choice | Yes, No |   |
|   |   | Redness | Choice | Yes, No |   |
|   |   | Hematoma | Choice | Yes, No |   |
|   |   | Pus | Choice | Yes, No |   |
|   |   | Crusting | Choice | Yes, No |   |
|   |   | Swelling | Choice | Yes, No |   |
|   |   | Extravasation/infiltration | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Catheter observation | Type of catheter | Choice | Port catheter, 1-lumen tunneled catheter, 2-lumen tunneled catheter, 3-lumen tunneled catheter, Single lumen midline, Double lumen midline, Single lumen PICC, Double lumen PICC, Peripheral catheter |   |
|   |   | Catheter observation | Choice | Normal, abnormal |   |
|   |   | > Specify**per lumen** |   |   |   |
|   |   | > (per lumen) Color lumen | Choice | Gray, White, Red, Purple |   |
|   |   | > (per lumen) Blood aspiration | Choice | Easy / difficult / impossible |   |
|   |   | > (per lumen) Infusion | Choice | Easy / difficult / impossible |   |
|   |   | Damaged catheter | Choice | Yes, No |   |
|   |   | Other (if applicable) | Text |   |   |
|   | Side effects | Skin rash | Choice | None, mild, moderate, severe |   |
|   |   | Itching | Choice | None, mild, moderate, severe |   |
|   |   | Blisters/skin peeling | Choice | None, mild, moderate, severe |   |
|   |   | Nausea | Choice | None, mild, moderate, severe |   |
|   |   | Vomiting | Choice | None, mild, moderate, severe |   |
|   |   | Diarrhea | Choice | None, mild, moderate, severe |   |
|   |   | Constipation | Choice | None, mild, moderate, severe |   |
|   |   | Decreased appetite | Choice | None, mild, moderate, severe |   |
|   |   | Pain during administration | Choice | None, mild, moderate, severe |   |
|   |   | Pain (general) | Choice | None, mild, moderate, severe |   |
|   |   | Fatigue | Choice | None, mild, moderate, severe |   |
|   |   | Chills | Choice | None, mild, moderate, severe |   |
|   |   | Candidiasis (fungal infection) | Choice | None, mild, moderate, severe |   |
|   |   | Joint pain | Choice | None, mild, moderate, severe |   |
|   |   | Breathing problems | Choice | None, mild, moderate, severe |   |
|   |   | Swelling of face/tongue | Choice | None, mild, moderate, severe |   |
|   |   | Are there other symptoms or relevant clinical and/or psychosocial observations? (please contact the hospital care team in case of clinical concern) | Text |   |   |
|   | (Quality) follow-up | Are there any remarks or concerns regarding the registration of this patient, data sharing from the hospital, communication with and contact with the hospital, availability of medication and materials, or other aspects of transmural collaboration around home hospitalization OPAT? Please share them with us. Thank you. | Text |   |   |

### Justification for using Questionnaires

The OPAT careset uses FHIR Questionnaire and QuestionnaireResponse as its primary mechanism for structured data capture from home nurses. This is a deliberate design choice, justified on several grounds.

**It reflects the actual clinical workflow.** A questionnaire is literally what a home nurse fills in during or after a visit. The data capture model therefore mirrors reality: each home visit produces one completed QuestionnaireResponse, which corresponds to one discrete nursing encounter. Rather than asking implementers to map nursing observations to a collection of loosely related FHIR resources (Observation, Condition, Procedure, etc.) during data entry, the nurse-facing system can present the questionnaire directly, and the FHIR representation follows naturally.

**It preserves context.** Individual FHIR resources such as Observations are powerful for querying and analytics, but they are inherently atomic. A standalone Observation for a temperature of 38.9°C carries no information about whether the dressing at the insertion site was normal, whether the medication was correctly prepared, or whether the nurse noted swelling of the face. Grouping observations under a QuestionnaireResponse preserves the full clinical context of a single visit as a coherent unit, which is essential when a physician reviews the data.

**Loose resources can still be extracted via SDC Definition-based Extraction.** For systems that need individual FHIR resources (e.g., for populating a patient’s Observation timeline or triggering CDS alerts), the [SDC Definition Extract](https://build.fhir.org/ig/HL7/sdc/en/StructureDefinition-sdc-questionnaire-definitionExtract.html) mechanism allows individual resources to be derived automatically from a QuestionnaireResponse. Each question item can be annotated with a definition extension that maps it to a target resource and element path. This means a single QuestionnaireResponse can be both the source of truth and the input to an automated extraction pipeline that produces discrete Observations, Conditions, or other resources - without requiring the sending system to produce all of them independently. The questionnaire is therefore not a barrier to interoperability; it is the entry point.

**It enforces structural completeness.** A Questionnaire defines exactly which items are required, which are conditional ( e.g., “if abnormal: specify”), and which follow a controlled vocabulary. This makes validation straightforward and reduces the risk of partial or ambiguous submissions. Compared to accepting a bundle of arbitrary Observations, a QuestionnaireResponse validated against its Questionnaire gives the receiving system strong guarantees about what data is present and how it is structured.

**It simplifies versioning and governance.** The questionnaire content in this careset was established through a formal working group process (VZA, NPTV) and is subject to controlled change management. Encoding that content in a FHIR Questionnaire resource means the definition, its version, and its approved answer sets are all machine-readable and can be referenced explicitly by every QuestionnaireResponse. When the working group approves a change to the questionnaire, implementers can unambiguously distinguish responses that were captured under version N from those captured under version N+1.

**It lowers the implementation bar for home nursing systems.** Home nursing software is often less technically mature than hospital EPDs. Requiring these systems to produce a semantically correct bundle of typed FHIR resources (with proper codes, units, and references) places a significant implementation burden on them. Producing a QuestionnaireResponse - essentially a structured form submission - is a substantially simpler task. The complexity of mapping to fine-grained FHIR resources can then be handled centrally, either at the receiving hospital system or via an intermediary extraction service.

### Encounter

The **purpose of the FHIR Encounter resource is twofold**:

1. Note on the status of the visit: did the visit even happen? Was the patient home?
1. Note on the status of the care that was asked. E.g. for OPAT medication administration was ordered but also the care of the catheter. Care of the catheter was done but not the medication administration (e.g. medication could not be properly prepared) then caregivers at the hospital want to know for each order/procedure what the status was. It is possible that different nurses are involved in the care of the patient and that they have different observations to share with the hospital. For example, one nurse could be responsible for the care of the catheter and another nurse could be responsible for the medication administration. Both nurses can share their carestatus with the hospital using the FHIR Encounter resource.

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
* [OPAT Home Hospitalization Base Questionnaire](./StructureDefinition-homehosp-opat-base.md)
* [OPAT Continuous Infusion Nursing Questionnaire](./StructureDefinition-homehosp-opat-continuous-infusion.md)
* [OPAT Short-Duration IV Nursing Questionnaire](./StructureDefinition-homehosp-opat-short-iv.md)

#### Logical Models

* [Home Hospitalization Encounter Logical Model](./StructureDefinition-homehosp-encounter-lm.md)
* [Home Hospitalization QuestionnaireResponse Logical Model](./StructureDefinition-homehosp-questionnaire-response-lm.md)
* [OPAT Continuous Infusion Questionnaire Logical Model](./StructureDefinition-opat-continuous-infusion-questionnaire.md)
* [OPAT Short IV Questionnaire Logical Model](./StructureDefinition-opat-short-iv-questionnaire.md)

#### ValueSets

* [Medication Storage Status](./ValueSet-medication-storage.md)
* [True / False Value Set](./ValueSet-true-false.md)
* [Yes / No Value Set](./ValueSet-YesNoVS.md)
* [Normal / Abnormal Finding](./ValueSet-normal-abnormal.md)
* [Catheter Type](./ValueSet-catheter-type.md)
* [Catheter Lumen Color](./ValueSet-lumen-color.md)
* [Catheter Patency Scale](./ValueSet-catheter-patency.md)
* [Home Hospitalization Side Effect Severity Scale](./ValueSet-homehosp-side-effect-severity.md)

#### Examples

* [FHIR Document with patient information from hospital](./Composition-OPAT-Document.md)
* [FHIR Encounter](./Encounter-Encounter-3441.md)
* [FHIR Questionnaire continuous infusion](./Questionnaire-homehosp-opat-continuous-infusion.md)
* [FHIR Questionnaire short IV](./Questionnaire-homehosp-opat-short-iv.md)
* [FHIR QuestionnaireResponse continuous infusion](./QuestionnaireResponse-HomehospOpatContinuousInfusionQuestionnaireResponseExample.md)

