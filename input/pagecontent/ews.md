**DRAFT: 2024-11-27**

### Care Pathway Overview

- **Accessibility**: Reachable during office hours.
- **Patient Criteria**:

  - Signed informed consent
  - Ability to sustainably implement telemonitoring
  - Lives within the geographically defined region
  - Patient has no psychosocial issues
  - Patient without non-compliance
  - Patient is willing to wear wearables during the hospital stay and in the home environment
  - Patient is over 16 years old
  - Patient was not admitted to intensive care
  - Patient is medically stable
  - Patient is no longer receiving oxygen therapy at discharge (EWS calculation)

- **Accessibility**: Reachable during office hours.

---

### Process and Workflow Description

#### Start-Up

- **Screening and risk Assessment**: performed by the attending physician.
- **Informed consent**: Collected and securely stored.
- **Tele Care Center**: Involved in the workflow.
- **Parameters monitored**:

  - Heart Rate (HR)
  - Systolic Blood Pressure (BP)
  - Saturation
  - Temperature
  - Respiratory Rate
  - Oxygen
  - AWPU
    - Frequency: Daily, 3 times per day, 10 days.

#### Data Collection

- Data is automatically collected via connected devices or manually entered into the system.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

- (N)EWS and/or single vital sign alarm thresholds are predefined on the digital platform.
- The RRT/tele care center checks the collected data daily during working hours.
- In case of alarms, the tele care center will inform the home nurse as soon as possible.

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Daily Updates**: Updated hourly.
- **Content**: Overview of the questions and vital parameters.
- **File Size**: ±100KB per PDF, max: 10MB per PDF.

---

#### Outcome Module - FHIR Integration

##### Vital Signs

- **Frequency**: Maximum of 1 update per minute.
- **LOINC Codes**:
  <div class="table-md"></div>

  | Description                          | Code(s)                    | Possible answers |
  | ------------------------------------ | -------------------------- | ---------------- |
  | Heart rate (HR) measurement          | LOINC 8867-4               |                  |
  | Blood pressure (BP) measurement      | LOINC 8480-6 / 8463-4      |                  |
  | Body weight (BW) measurement         | LOINC 29463-7              |                  |
  | Respiratory (RESP) measurement       | LOINC 9279-1               |                  |
  | Temperature (TEMP) measurement       | LOINC 8310-5               |                  |
  | Oxygen Saturation (SPO2) measurement | LOINC 2708-6 (sub 59408-5) |                  |
  | Level of responsiveness (AVPU scale) | LOINC 67775-7              | LOINC LL1845-8   |
  | National Early Warning Score (NEWS)  | SNOMED 1287358002          |                  |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Heart Rate Example](./Observation-HeartRateExample.html)
- [Oxygen Saturation Example](./Observation-OxygenSaturationExample.html)
- [Respiratory Rate Example](./Observation-RespiratoryRateExample.html)
- [Temperature Example](./Observation-BodyTemperatureExample.html)
- [Level of responsiveness Example](./Observation-LevelOfResponsivenessExample.html)
- [National Early Warning Score Example](./Observation-NationalEarlyWarningScoreExample.html)
