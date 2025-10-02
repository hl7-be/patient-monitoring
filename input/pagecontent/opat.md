<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-07-09**

### Care Pathway Overview

Certain infections, such as those affecting bones, joints, heart valves, or the prostate, require long-term intravenous (IV) antibiotics.
The OPAT (Outpatient Parenteral Antimicrobial Therapy) care pathway involves the continuation of intravenous antibiotic therapy initiated in the hospital, in the outpatient setting.

### Process and Workflow Description

#### Start-Up

- **Parameters Monitored**:

  - Body temperature
  - Heart rate
  - Blood pressure
  - Nausea
  - Diarrhea
  - Pain of shoulder region
  - Pain at insertion site
  - Lokalised pain
  - Eruption of skin
  - Itching
  - Peeling of skin
  - Vomiting symptom
  - Constipation
  - Decrease in appetite
  - Pain on flushing of implanted venous access device
  - Tired
  - Chill
  - Candidiasis
  - Pain of joint
  - Dyspnea
  - Facial swelling
  - Observation insertion site
  - Leakage
  - Accidental removal of catheter
  - Medication administration
  - Problem
  - Problems functionality injection
  - Problems insertion site
  - Problem fixation
  - Problem infection
  - Redness of skin over lesion
  - Problem swelling upper arm
  - Reaction to antibiotics
  - Allergic reaction
  - Care of central venous catheter
  - Site of intravenous insertion
  - Blocked catheter
  - In context of bandage insertion site: 
    - Bleeding skin
    - Purulent discharge
    - Loose
    - Serous discharge
    - Wet 
  - In context of insertion site: 
    - Blister
    - Red color
    - Hematoma
    - Pus
    - Crust
    - Swelling
    - Extravasation
  - In context of catheter observation: 
    - Pulmonary aspiration of blood
    - Infusion
    - Damaged catheter
  
#### Data Collection

- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs & symptoms

- **Frequency**: Ad hoc registrations by patients and healthcare providers.
- **LOINC & SNOMED Codes**:

###### General

<div class="table-md"></div>

| Description                                                       | Code(s)                                                                                                            | Possible answers                                                                                                                                                                                                                              |
|-------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Body temperature                                                  | - SNOMED 386725007<br/>- LOINC 8310-5                                                                              | Not applicable                                                                                                                                                                                                                                |
| Heart rate                                                        | - SNOMED 364075005<br/>- LOINC 8867-4                                                                              | Not applicable                                                                                                                                                                                                                                |
| Blood pressure                                                    | - SNOMED <br/>271649006 (Systolic) / <br/>271650006 (Diastolic)<br/><br/>- LOINC <br/>8480-6 (Systolic) / 8462-4 (Diastolic) | Not applicable                                                                                                                                                                                                                                |
| Measured weight of elastomeric continuous infusion pump after infusion  | SNOMED 1381260006 | Not applicable                                                                                                     |
| Measured weight of elastomeric continuous infusion pump with medication before infusion | SNOMED 1381257004 | Not applicable    
| Nausea                                                            | SNOMED 422587007                                                                                                   | None <br> - LOINC LA137-2 <br> - SNOMED 2667000 <br> Mild <br> - LOINC LA6752-5 <br> - SNOMED 255604002 <br> Moderate <br> - LOINC LA6751-7 <br> - SNOMED 673007 <br> Severe <br> - LOINC LA6750-9 <br> - SNOMED 24484000                     |
| Diarrhea                                                          | SNOMED 62315008                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Pain of shoulder region                                           | SNOMED 45326000                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Pain at insertion site                                            | SNOMED 406189006-442093003                                                                                         | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Lokalised pain                                                    | SNOMED 112104007                                                                                                   | LOINC 72514-3 (Pain scale 0-10)   <br/>SNOMED <br> - 444431007 (Grade 0 on a scale of 0 to 3) <br> - 444456001 (Grade 1 on a scale of 0 to 3) <br> - 444457005 (Grade 2 on a scale of 0 to 3) <br> - 444447009 (Grade 3 on a scale of 0 to 3) |
| Eruption of skin                                                  | SNOMED 271807003                                                                                                   | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Itching                                                           | SNOMED 418290006                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Peeling of skin                                                   | SNOMED 271767006                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Vomiting symptom                                                  | SNOMED 249497008                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Constipation                                                      | SNOMED 14760008                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Decrease in appetite                                              | SNOMED 64379006                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Pain on flushing of implanted venous access device                | SNOMED 698749006                                     | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Tired                                                             | SNOMED 224960004                                | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Chill                                                             | SNOMED 43724002                                | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Candidiasis                                                       | SNOMED 78048006                                | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Pain of joint                                                     | SNOMED 57676002                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Dyspnea                                                           | SNOMED 267036007                                                                                                    | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Facial swelling                                                   | SNOMED 278528006                                                                                                     | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Observation insertion site                                        | SNOMED 364554009                                                                                                   | SNOMED <br> - 822962003 (Redness)                                                                                                                                                                                                             |
| Leakage                                                           | SNOMED 76676007                                                                                                    | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| Accidental removal of catheter                                    | SNOMED 439377004                                                                                                   | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| Medication administration                                         | SNOMED 18629005                                                                                                    | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| Problem                                                           | SNOMED 55607006                                                                                                    | SNOMED <br> - 82449006 (IV catheter) <br> - 419241000 (Product) <br> - 44668000 (Pump) <br> - 705046008 (Deficit of medication supply) <br> - 281647001 (Adverse reaction)                                                                    |                                                 
| Problems functionality injection                                  | SNOMED 59108006                                                                                                    | SNOMED <br> - 36203004 (Easy) <br> - 13705009 (Partial obstruction) <br> - 1156073005 (Blocked catheter)                                                                                                                                      |
| Problems insertion site                                           | SNOMED 406148008                                                                                                   | SNOMED <br> - 52475004 (Dry) <br> - 271765003 (Crust) <br> - 413867005 (Clear fluid) <br> - 297968009 (Bleeding skin) <br> - 255316004 (Purulent)                                                                                             |
| Problem fixation                                                  | SNOMED 444915009                                                                                                   | SNOMED <br> - 17621005 (Normal) <br> - 276626008 (Displacement) <br> - 43937704 (Accidental removal)                                                                                                                                          |
| Problem infection                                                 | SNOMED 405009004                                                                                                   | SNOMED <br> - 260385009 (No signs of infection) <br> - 406189006 (Pain) <br> - 17038008 (Warmth) <br> - 65124004 (Swelling) <br> - 274640006 (Chills and fever)                                                                               |
| Redness of skin over lesion                                       | SNOMED 822962003                                                                                                   | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Problem swelling upper arm                                        | SNOMED 449619004                                                                                                   | SNOMED <br> - 2667000 (Absent) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                                                    |
| Reaction to antibiotics                                           | SNOMED 281789004                                                                                                   | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| Allergic reaction                                                 | SNOMED 472964009                                                                                                   | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                                                                                                                            |
| Care of central venous catheter                                   | SNOMED 40493441                                                                                                    | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| Site of intravenous insertion                                     | SNOMED 406148008                                                                                                   | SNOMED <br> - 17621005 (Normal) <br> - 263654008 (Abnormal)                                                                                                                                                                                   |
| Blocked catheter                                                  | SNOMED 1156073005                                                                                                  | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                                                           |
| In context of bandage insertion site: bleeding skin               | SNOMED 297968009                                                                                                  | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of bandage insertion site: purulent discharge          | SNOMED 225550006                                                                                                   | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of bandage insertion site: loose                       | SNOMED 78799005                                                                                                    | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of bandage insertion site: serous discharge            | SNOMED 447112000                                                                                                     | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of bandage insertion site: wet                         | SNOMED 17461003                                                                                                      | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: blister                             | SNOMED 339008                                                                                                        | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: red color                           | SNOMED 371240000                                                                                                         | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: hematoma                            | SNOMED 35566002                                                                                                          | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: pus                                 | SNOMED 367646009                                                                                                           | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: crust                               | SNOMED 69640009                                                                                                            | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: swelling                            | SNOMED 65124004                                                                                                             | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of insertion site: extravasation                       | SNOMED 76676007                                                                                                              | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of catheter observation: pulmonary aspiration of blood | SNOMED 25797006                                                                                                               | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of catheter observation: infusion                      | SNOMED 36576007                                                                                                               | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |
| In context of catheter observation: damaged catheter              | SNOMED 1156074004                                                                                                                 | SNOMED <br> - 31874001 (True) <br> - 64100000 (False)                                                                                                                                                                                         |

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
