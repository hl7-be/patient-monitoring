<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-02-07**

### Care Pathway Overview

Certain infections, such as those affecting bones, joints, heart valves, or the prostate, require long-term intravenous (IV) antibiotics.
The OPAT (Outpatient Parenteral Antimicrobial Therapy) care pathway involves the continuation of intravenous antibiotic therapy initiated in the hospital, in the outpatient setting.

### Process and Workflow Description

#### Start-Up

- **Parameters Monitored**:

  - Heart Rate
  - Blood Pressure
  - Body temperature
  - Body weight
  - Oxygen saturation
  - Nausea
  - Diarrhea
  - Eruption of skin
  - Pain infection site
  - Blocked catheter
  - Catheter moved or removed
  - Redness of skin over lesion
  - Pain puncture wounds
  - Leakage
  - Pain of shoulder region

#### Data Collection

- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs & symptoms

- **Frequency**: Ad hoc registrations by patients and healthcare providers.
- **LOINC & SNOMED Codes**:

###### General

<div class="table-md"></div>

| Description                                                             | Code(s)           | Possible answers                                                                                                   |
|-------------------------------------------------------------------------|-------------------| ------------------------------------------------------------------------------------------------------------------ |
| Body temperature                                                        | LOINC 8310-5      | Not applicable                                                                                                     |
| Heart rate                                                              | LOINC 8867-4      | Not applicable                                                                                                     |
| Blood pressure                                                          | LOINC 8480-6 / 8462-4 | Not applicable                                                                                                     |
| Measured weight of elastomeric continuous infusion pump after infusion  | SNOMED 1381260006 | Not applicable                                                                                                     |
| Measured weight of elastomeric continuous infusion pump with medication before infusion | SNOMED 1381257004 | Not applicable                                                                                                     |
| Nausea                                                                  | SNOMED 422587007  | None <br> - LOINC LA137-2 <br> - SNOMED 2667000 <br> Mild <br> - LOINC LA6752-5 <br> - SNOMED 255604002 <br> Moderate <br> - LOINC LA6751-7 <br> - SNOMED 673007 <br> Severe <br> - LOINC LA6750-9 <br> - SNOMED 24484000 |
| Diarrhea                                                                | SNOMED 62315008   | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Pain of shoulder region                                                 | SNOMED 45326000   | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Pain at insertion site                                                  | SNOMED 406189006-442093003 | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Lokalised pain                                                          | SNOMED 112104007  | LOINC 72514-3 (Pain scale 0-10)                                       |
| Eruption of skin                                                        | SNOMED 271807003  | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Observation insertion site                                              | SNOMED 364554009  | SNOMED <br> - 822962003 (Redness)                                                                                  |
| Leakage                                                                 | SNOMED 76676007   | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |
| Accidental removal of catheter                                          | SNOMED 439377004  | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |
| Medication administration                                               | SNOMED 18629005   | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |
| Problem                                                                 | SNOMED 55607006   | SNOMED <br> - 82449006 (IV catheter) <br> - 419241000 (Product) <br> - 44668000 (Pump) <br> - 705046008 (Deficit of medication supply) <br> - 281647001 (Adverse reaction) |                                                 
| Problems functionality injection                                        | SNOMED 59108006   | SNOMED <br> - 36203004 (Easy) <br> - 13705009 (Partial obstruction) <br> - 1156073005 (Blocked catheter)           |
| Problems insertion site                                                 | SNOMED 406148008  | SNOMED <br> - 52475004 (Dry) <br> - 271765003 (Crust) <br> - 413867005 (Clear fluid) <br> - 297968009 (Bleeding skin) <br> - 255316004 (Purulent) |
| Problem fixation                                                        | SNOMED 444915009  | SNOMED <br> - 17621005 (Normal) <br> - 276626008 (Displacement) <br> - 43937704 (Accidental removal)               |
| Problem infection                                                       | SNOMED 405009004  | SNOMED <br> - 260385009 (No signs of infection) <br> - 406189006 (Pain) <br> - 17038008 (Warmth) <br> - 65124004 (Swelling) <br> - 274640006 (Chills and fever) |
| Redness of skin over lesion                                             | SNOMED 822962003  | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Problem swelling upper arm                                              | SNOMED 449619004  | SNOMED <br> - 2667000 (Absent) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                         |
| Reaction to antibiotics                                                 | SNOMED 281789004  | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |
| Allergic reaction                                                       | SNOMED 472964009  | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Care of central venous catheter                                         | SNOMED 40493441   | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |
| Site of intravenous insertion                                           | SNOMED 406148008  | SNOMED <br> - 17621005 (Normal) <br> - 263654008 (Abnormal)                                                        |
| Blocked catheter                                                        | SNOMED 1156073005 | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Nausea Example](./Observation-NauseaExample.html)
- [Diarrhea Example](./Observation-DiarrheaExample.html)
- [Pain infection site Example](./Observation-PainInfectionSiteExample.html)
- [Redness puncture wounds Example](./Observation-RednessPunctureWoundsExample.html)
- [Leakage catheter Example](./Observation-LeakageCatheterExample.html)
- [Catheter moved or removed Example](./Observation-CatheterMovedOrRemovedExample.html)
