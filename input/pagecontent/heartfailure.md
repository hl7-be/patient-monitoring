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

  | Description                     | LOINC Code(s)         |
  | ------------------------------- | --------------------- |
  | Heart rate (HR) measurement     | LOINC 8867-4          |
  | Blood pressure (BP) measurement | LOINC 8480-6 / 8463-4 |
  | Body weight (BW) measurement    | LOINC 29463-7         |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Heart Rate Example](./Observation-HeartRateExample.html)
