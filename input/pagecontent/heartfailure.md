<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2024-11-25**

### Care Pathway Overview

- **Duration**: 4 years
- **Central Care Facility**: Specialized heart failure center with a telemonitoring team.
- **Minimal Capacity**: 0.5 FTE heart failure nurse per 100 patients.
- **Educational Material**: Available for self-management and adherence.
- **Accessibility**: Reachable during office hours.

#### Patient Criteria

- **NYHA Classification**: II or III (85% of all new patients, ~21,000 per year).
- **Informed Consent**: Signed informed consent required.
- **Physical Consultation**: At least 1 physical consultation 2 years before the start of telemonitoring.

---

### Process and Workflow Description

#### Start-Up

- **Screening and Risk Assessment**: Performed by the heart failure center.
- **Informed Consent**: Collected and securely stored.
- **Involvement**: General practitioner or home nurse involved in the workflow.
- **Parameters Monitored**:
  - Heart Rate (HR)
  - Blood Pressure (BP)
  - Weight (BW)
- **Frequency**: Daily, once per day, 7 days a week, 6 months.

#### Data Collection

- Data is automatically collected via connected devices or manually entered into the system.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

- **Thresholds**: Heart failure alarm thresholds predefined on the digital platform.
- **Monitoring**: Data checked daily during working hours by the heart failure team.
- **Alarm Notification**:
  - General practitioner or home nurse informed within 5 working days (or within 48 hours if urgent).

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Daily Updates**: Updated daily per measurement.
- **Content**: Overview of the questions and vital parameters.
- **File Size**: ±100KB per PDF, max: 10MB per PDF.

---

#### Outcome Module - FHIR Integration

##### Vital Signs

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC Codes**:
<div class="table-md"></div>

  | Description                     | Code(s)               |
  | ------------------------------- | --------------------- |
  | Heart rate (HR) measurement     | LOINC 8867-4          |
  | Blood pressure (BP) measurement | LOINC 8480-6 / 8463-4 |
  | Body weight (BW) measurement    | LOINC 29463-7         |
 
##### Symptoms

- **Frequency**: As frequent as registered by the patient. Average of 1 per day per symptom.
- **Codes**:
<div class="table-md"></div>

  | Description                     | Code(s)               | Possible answers                                                                                                              |
  | ------------------------------- | --------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
  | Palpitations                    | SNOMED 80313002       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Reduced appetite                | SNOMED 64379006       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Shortness of breath             | SNOMED 267036007      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Constipation                    | SNOMED 14760008       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Diarrhea                        | SNOMED 62315008       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Nocturnal shortness of breath   | SNOMED 248548009      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Disturbed sleep pattern         | SNOMED 26677001       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Tickly cough                    | SNOMED 901000172101   | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Social isolation                | SNOMED 422650009      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Oedema                          | SNOMED 267038008      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Fatigue                         | SNOMED 84229001       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Chest pain                      | SNOMED 29857009       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Dizziness                       | SNOMED 404640003      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Confusion                       | SNOMED 40917007       | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Foot swelling                   | SNOMED 297142003      | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |
  | Fear or depression              | <span class="warning">??</span> | SNOMED <br> - 2667000 (absent) <br> - 255604002 (mild) <br> - 1255665007 (moderate) <br> - 24484000 (severe)                  |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Heart Rate Example](./Observation-HeartRateExample.html)
- [Reduced Appetite Example](./Observation-ReducedAppetiteExample.html)
