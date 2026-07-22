# Carepath Antitumoral therapy - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Carepath Antitumoral therapy

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

**DRAFT: 2025-07-09**

### Carepath Overview

**Note: This page focuses on the **Carepath** for antitumoral therapy, which details how individual data points and symptoms are exchanged between patient monitoring providers and consumers. For the structured report defining how this data, along with encounters and questionnaires, is shared between EPDs/care-teams, please see the [Antitumoral Careset](./home-hospitalization-antitumoral.md).**

The goal of antitumor therapy is the implementation of home hospitalization which increases the efficiency of the oncology day hospital as well as increasing patient and caregiver satisfaction. Patients will be included based on inclusion criteria and their own choice. Specifically, subcutaneous or intramuscular administration will be done at the patient’s home by a home nurse. On the day of administration, the home nurse will visit the patient and record a number of parameters and if they fall within certain limits, the medication will be administered. If one or more parameters are abnormal, the home nurse should first consult with the treating oncologist by telephone whether or not the administration can be done.

### Process and Workflow Description

#### Start-Up

* **Parameters Monitored**: 
* Body temperature
* Heart rate
* Blood pressure
* Body weight
* Swelling of bilateral feet
* Orthopneu
* Injection site pain
* Nausea
* Diarrhea
* Eruption of skin
* Vomiting symptom
* Decrease in appetite
* Constipation
* Tired
* Dry cough
* Pain of joint
* Dyspnea
* Mental state, behavior and/or psychosocial function finding
* Oedema
* Fever, chills, feeling sick
* Blood pressure repeatedly lower than 100/60 mmHg
* Resting heart rate greater than 100 bpm or irregular heart rhythm, unless a chronic known problem
* Weight increased
* Sensory neuropathy
* Peripheral motor neuropathy
* Pain
 

#### Data Collection

* Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs & symptoms

* **Frequency**: Ad hoc registrations by patients and healthcare providers.
* A **grade of 0 to 3** is used for some parameters and can be given the meaning that the individual system wishes. 
* Example for Oedema: 
* None;
* Limited edema of the limbs, only visible on close examination, and without impact on daily activities;
* Moderate edema, clearly visible and making daily activities more difficult;
* Severe edema, clearly visible and making daily activities difficult or impossible.
 
* Example for Constipation: 
* None;
* The patient can have a bowel movement with occasional use of an aid (laxative, fruit, etc.);
* The patient can only have a bowel movement with daily use of laxatives or enemas;
* The patient is so constipated that it interferes with their daily activities, and laxatives are not effective.
 
 
* **LOINC & SNOMED Codes**:

###### General

| | | |
| :--- | :--- | :--- |
| Body temperature | - SNOMED 386725007- LOINC 8310-5 | Not applicable |
| Heart rate | - SNOMED 364075005- LOINC 8867-4 | Not applicable |
| Blood pressure | - SNOMED271649006 (Systolic) /271650006 (Diastolic)- LOINC8480-6 (Systolic) / 8462-4 (Diastolic) | Not applicable |
| Body weight | - SNOMED 271650006- LOINC 29463-7 | Not applicable |
| Swelling of bilateral feet | SNOMED 762917000 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Orthopneu | SNOMED 62744007 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Injection site pain | SNOMED 95388000 | SNOMED- 2667000 (Absent)- 255604002 (Mild)- 6736007 (Moderate severity)- 24484000 (Severe) |
| Nausea | SNOMED 422587007 | None- LOINC LA137-2- SNOMED 2667000Mild- LOINC LA6752-5- SNOMED 255604002Moderate- LOINC LA6751-7- SNOMED 673007Severe- LOINC LA6750-9- SNOMED 24484000 |
| Diarrhea | SNOMED 62315008 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Eruption of skin | SNOMED 271807003 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Vomiting symptom | SNOMED 249497008 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Decrease in appetite | SNOMED 64379006 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Constipation | SNOMED 14760008 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Tired | SNOMED 224960004 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Dry cough | SNOMED 11833005 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Pain of joint | SNOMED 57676002 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Dyspnea | SNOMED 267036007 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Mental state, behavior and/or psychosocial function finding | SNOMED 384821006 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Oedema | SNOMED 79654002 | SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |
| Fever, chills, feeling sick | SNOMED 39104002 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Blood pressure repeatedly lower than 100/60 mmHg | SNOMED 12763006 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Resting heart rate greater than 100 bpm or irregular heart rhythm, unless a chronic known problem | SNOMED 361137007 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Weight increased | SNOMED 262286000 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Sensory neuropathy | SNOMED 95662005 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Peripheral motor neuropathy | SNOMED 95663000 | SNOMED- 373066001 (Yes)- 373067005 (No) |
| Pain | SNOMED 112104007 | LOINC 72514-3 (Pain scale 0-10)SNOMED- 444431007 (Grade 0 on a scale of 0 to 3)- 444456001 (Grade 1 on a scale of 0 to 3)- 444457005 (Grade 2 on a scale of 0 to 3)- 444447009 (Grade 3 on a scale of 0 to 3) |

##### Specification:

For detailed specifications, refer to the

* [Heart Rate Example](./Observation-HeartRateExample2.md)
* [Blood Pressure Example](./Observation-BloodPressureExample2.md)
* [Weight Example](./Observation-BodyWeightExample2.md)
* [Orthopneu Example](./Observation-OrthopneuExample.md)

