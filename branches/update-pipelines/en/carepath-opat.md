# Carepath OPAT - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Carepath OPAT

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

**DRAFT: 2025-07-09**

### Carepath Overview

**Note: This page focuses on the **Carepath** for OPAT, which details how individual data points and symptoms are exchanged between patient monitoring providers and consumers. For the structured report defining how this data, along with encounters and questionnaires, is shared between EPDs/care-teams (e.g., between the hospital OPAT team and home nursing organizations), please see the [OPAT Careset](./home-hospitalization-opat.md).**

Certain infections, such as those affecting bones, joints, heart valves, or the prostate, require long-term intravenous (IV) antibiotics. The OPAT (Outpatient Parenteral Antimicrobial Therapy) care pathway involves the continuation of intravenous antibiotic therapy initiated in the hospital, in the outpatient setting.

### Process and Workflow Description

#### Start-Up

* **Parameters Monitored**:

#### Data Collection

* Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs & symptoms

* **Frequency**: Ad hoc registrations by patients and healthcare providers.
* **LOINC & SNOMED Codes**:

###### General

| | | |
| :--- | :--- | :--- |
| Body temperature | - SNOMED 386725007- LOINC 8310-5 | Not applicable |
| Heart rate | - SNOMED 364075005- LOINC 8867-4 | Not applicable |
| Saturation | LOINC 2708-6 (sub 59408-5) | Not applicable |
| Blood pressure | - SNOMED271649006 (Systolic) / 271650006 (Diastolic)- LOINC8480-6 (Systolic) / 8462-4 (Diastolic) | Not applicable |
| Body weight | LOINC 29463-7 | Not applicable |
| Measured weight of elastomeric continuous infusion pump after infusion | SNOMED 1381260006 | Not applicable |
| Measured weight of elastomeric continuous infusion pump with medication before infusion | SNOMED 1381257004 | Not applicable |
| Nausea | SNOMED 422587007 | None- LOINC LA137-2- SNOMED 2667000Mild- LOINC LA6752-5- SNOMED 255604002Moderate- LOINC LA6751-7- SNOMED 673007Severe- LOINC LA6750-9- SNOMED 24484000 |
| Diarrhea | SNOMED 62315008 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Pain of shoulder region | SNOMED 45326000 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Pain at insertion site | SNOMED 406189006-442093003 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Lokalised pain | SNOMED 112104007 | LOINC 72514-3 (Pain scale 0-10)SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Eruption of skin | SNOMED 271807003 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Itching | SNOMED 418290006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Peeling of skin | SNOMED 271767006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Vomiting symptom | SNOMED 249497008 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Constipation | SNOMED 14760008 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Decrease in appetite | SNOMED 64379006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Pain on flushing of implanted venous access device | SNOMED 698749006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Tired | SNOMED 224960004 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Chill | SNOMED 43724002 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Candidiasis | SNOMED 78048006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Pain of joint | SNOMED 57676002 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Dyspnea | SNOMED 267036007 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Facial swelling | SNOMED 278528006 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Observation insertion site | SNOMED 364554009 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Leakage | SNOMED 76676007 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Accidental removal of catheter | SNOMED 439377004 | SNOMED- 373066001 (Yes)- 373067005 (No)- 255609007 (Partial) |
| Medication administration | SNOMED 18629005 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Problem | SNOMED 55607006 | SNOMED- 82449006 (IV catheter)- 419241000 (Product)- 44668000 (Pump)- 705046008 (Deficit of medication supply)- 281647001 (Adverse reaction)- 373066001 (Other) |
| Problems functionality injection | SNOMED 59108006 | SNOMED- 36203004 (Easy)- 13705009 (Partial obstruction)- 1156073005 (Blocked catheter) |
| Problems insertion site | SNOMED 406148008 | SNOMED- 52475004 (Dry)- 271765003 (Crust)- 413867005 (Clear fluid)- 297968009 (Bleeding skin)- 255316004 (Purulent) |
| Problem fixation | SNOMED 444915009 | SNOMED- 17621005 (Normal)- 276626008 (Displacement)- 43937704 (Accidental removal) |
| Problem infection | SNOMED 405009004 | SNOMED- 260385009 (No signs of infection)- 406189006 (Pain)- 17038008 (Warmth)- 65124004 (Swelling)- 274640006 (Chills and fever)- 822962003 (Redness) |
| Redness of skin over lesion | SNOMED 822962003 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Problem swelling upper arm | SNOMED 449619004 | SNOMED- 2667000 (Absent)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Reaction to antibiotics | SNOMED 281789004 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Allergic reaction | SNOMED 472964009 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Care of central venous catheter | SNOMED 40493441 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Site of intravenous insertion | SNOMED 406148008 | SNOMED- 17621005 (Normal)- 263654008 (Abnormal) |
| Blocked catheter | SNOMED 1156073005 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| In context of bandage insertion site: bleeding skin | SNOMED 297968009 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of bandage insertion site: purulent discharge | SNOMED 225550006 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of bandage insertion site: loose | SNOMED 78799005 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of bandage insertion site: serous discharge | SNOMED 447112000 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of bandage insertion site: wet | SNOMED 17461003 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: blister | SNOMED 339008 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: red color | SNOMED 371240000 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: hematoma | SNOMED 35566002 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: pus | SNOMED 367646009 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: crust | SNOMED 69640009 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: swelling | SNOMED 65124004 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of insertion site: extravasation | SNOMED 76676007 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of catheter observation: pulmonary aspiration of blood | SNOMED 25797006 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of catheter observation: infusion | SNOMED 36576007 | SNOMED- 31874001 (True)- 64100000 (False) |
| In context of catheter observation: damaged catheter | SNOMED 1156074004 | SNOMED- 31874001 (True)- 64100000 (False) |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

* [Heart Rate Example](./Observation-HeartRateExample2.md)
* [Blood Pressure Example](./Observation-BloodPressureExample2.md)
* [Nausea Example](./Observation-NauseaExample.md)
* [Diarrhea Example](./Observation-DiarrheaExample.md)
* [Pain infection site Example](./Observation-PainInfectionSiteExample.md)
* [Redness puncture wounds Example](./Observation-RednessPunctureWoundsExample.md)
* [Leakage catheter Example](./Observation-LeakageCatheterExample.md)
* [Catheter moved or removed Example](./Observation-CatheterMovedOrRemovedExample.md)

