# Overview caresets - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Overview caresets

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

### What is a Careset?

In the context of this Implementation Guide, the **Careset** definitions describe how clinical data is collected in a structured report that can be securely shared between Electronic Patient Dossiers (EPDs) or other healthcare systems.

While **[Carepaths](./carepath-overview.md)** focus on how individual data points are exchanged between telemonitoring providers and consumers, Careset reports provide a more holistic clinical picture. These reports may include data imported from the Carepath definitions (such as vital signs and symptoms), but can also contain additional, extensive information including:

* `Encounter` resources (contextualizing the care event)
* `Questionnaire` and `QuestionnaireResponse` (PROMs/PREMs)
* Mappings from raw observations to derived clinical concepts

#### Example Use Case

Consider a scenario where a patient is home-hospitalized and a home nurse is scheduled to come by to take care of the patient. The critical clinical communication happens between the central care team in the hospital (e.g., an OPAT team) and the home nurse or home nursing organization. A **Careset** facilitates this communication by bundling all relevant measurements, questionnaires, and encounter details into a cohesive report that is easily transferable between their respective EHRs/systems.

**Legal Distinction:**While this IG currently focuses on home-hospitalization examples, the
`Careset`framework applies to many types of transmural care. Note that not all transmural care qualifies as "home hospitalization" under the strict legal definition established by the
**Royal Decree of June 22, 2023**. For the specific legal criteria, refer to the
[official RIZIV/INAMI definition](https://www.riziv.fgov.be/nl/thema-s/verzorging-kosten-en-terugbetaling/wat-het-ziekenfonds-terugbetaalt/thuishospitalisatie-voor-oncologie-en-antimicrobiele-behandeling#:~:text=Onder%20thuishospitalisatie%20verstaan,of%20een%20daghospitalisatie.).

### Processing QuestionnaireResponses with SDC Extract

Once a hospital receives a `QuestionnaireResponse` from the home nursing system, it typically needs to write the individual answers back into the patient’s medical record as discrete clinical data (e.g., as `Observation` resources). Doing this manually — field by field — is error-prone and expensive to maintain.

**[HL7 Structured Data Capture (SDC)](https://hl7.org/fhir/uv/sdc/)** defines a mechanism called **definition-based extraction** that solves this. Each question item in the `Questionnaire` carries a `definition` field pointing to a FHIR element path (e.g., `Observation#Observation.valueCodeableConcept`). An SDC-capable server can then automatically extract a complete set of `Observation` resources from a submitted `QuestionnaireResponse` — no custom mapping code needed.

#### How It Works

```
QuestionnaireResponse (received from home nurse)
        │
        ▼  [SDC $extract operation]
  Observation: body temperature
  Observation: blood pressure
  Observation: nausea severity
  ...

```

Each `Questionnaire` item that carries a `definition` field like:

```
"definition": "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueCodeableConcept"

```

tells the extraction engine how to map the answer into a structured FHIR resource.

#### Examples

The following Questionnaire instances include full SDC `item.definition` annotations and can be used directly with an SDC-capable server to test the `$extract` operation:

* [OPAT SDC Questionnaire (Continuous Infusion)](Questionnaire-homehosp-q-opat-definitions.md) — based on the [OPAT careset](home-hospitalization-opat.md)
* [ONCO SDC Questionnaire (Trastuzumab)](Questionnaire-homehosp-q-onco-definitions.md) — based on the [antitumoral careset](home-hospitalization-antitumoral.md)

These examples cover the same questionnaire content as the base `Questionnaire` instances defined in this IG, with the addition of `definition` fields on every extractable item. Implementers can use these as a starting point for all other drug questionnaires defined in this IG.

