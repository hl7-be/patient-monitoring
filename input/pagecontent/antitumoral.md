<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-02-07**

### Care Pathway Overview

The goal of antitumor therapy is the implementation of home hospitalization which increases the efficiency of the oncology day hospital as well as increasing patient and caregiver satisfaction. Patients will be included based on inclusion criteria and their own choice.
Specifically, subcutaneous or intramuscular administration will be done at the patient's home by a home nurse. On the day of administration, the home nurse will visit the patient and record a number of parameters and if they fall within certain limits, the medication will be administered. If one or more parameters are abnormal, the home nurse should first consult with the treating oncologist by telephone whether or not the administration can be done.

### Process and Workflow Description

#### Start-Up

- **Parameters Monitored**:

  - Heart Rate
  - Blood Pressure
  - Body weight
  - Body temperature
  - Swelling of bilateral feet
  - Orthopneu
  - Injection site pain 

#### Data Collection

- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs & symptoms

- **Frequency**: Ad hoc registrations by patients and healthcare providers.
- **LOINC & SNOMED Codes**:

###### General

<div class="table-md"></div>

| Description                | Code(s)               | Possible answers                                           |
| -------------------------- | --------------------- | ---------------------------------------------------------- |
| Heart rate                 | LOINC 8867-4          | Not applicable                                             |
| Blood pressure             | LOINC 8480-6 / 8462-4 | Not applicable                                             |
| Body weight                | LOINC 29463-7         | Not applicable                                             |
| Body temperature           | LOINC 8310-5          | Not applicable                                             |
| Swelling of bilateral feet | SNOMED 762917000      | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Orthopneu                  | SNOMED 62744007       | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |
| Injection site pain        | SNOMED 95388000       | SNOMED  <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe) |

##### Specification:

For detailed specifications, refer to the

- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Weight Example](./Observation-BodyWeightExample2.html)
- [Orthopneu Example](./Observation-OrthopneuExample.html)
