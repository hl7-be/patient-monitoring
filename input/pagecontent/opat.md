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

| Description               | Code(s)                    | Possible answers                                             |
| ------------------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------- |
| Heart rate                | LOINC 8867-4               | Not applicable                                                                                              |
| Blood pressure            | LOINC 8480-6 / 8462-4      | Not applicable                                                                                              |
| Body temperature          | LOINC 8310-5               | Not applicable                                                                                              |
| Body weight (BW) measurement         | LOINC 29463-7              | Not applicable   |
| Oxygen Saturation (SPO2) measurement | LOINC 2708-6 (sub 59408-5) | Not applicable   |
| Nausea                    | SNOMED 422587007           | LOINC  <br> - LA137-2 (None) <br> - LA6752-5 (Mild) <br> - LA6751-7 (Moderate) <br> - LA6750-9 (Severe)     |
| Diarrhea                  | SNOMED 62315008            | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                |
| Eruption of skin          | SNOMED 271807003           | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)                |
| Pain infection site       | <span class="warning">??</span> | LOINC 72514-3 (pain scale 0-10)                                                                        |
| Blocked catheter          | SNOMED 1156073005               | SNOMED  <br> - 373066001 (Yes) <br> - 255604002 (Mild)                                                 |
| Catheter moved or removed | <span class="warning">??</span> | <span class="warning">??</span>                                                                        |
| Redness of skin over lesion | SNOMED 822962003               | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)          |
| Redness puncture wounds   | <span class="warning">??</span> | <span class="warning">??</span>                                                                        |
| Pain puncture wounds      | <span class="warning">??</span> | LOINC 72514-3 (pain scale 0-10)                                                                        |
| Pain of shoulde regio     | SNOMED 45326000                 | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)           |
| Body fluid retention      | SNOMED 43498006                 | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)           |

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