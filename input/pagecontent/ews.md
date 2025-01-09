<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

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
  - AVPU
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
  | Level of responsiveness (AVPU scale) | LOINC 67775-7              | LOINC LA9340-6 (Alert) <br> LOINC LA17108-4 (Verbal) <br> LOINC  LA17107-6 (Painful) <br> LOINC LA9343-0 (Unresponsive) <br> LOINC LA6560-2 (Confused) <br>|
  | National Early Warning Score (NEWS)  | SNOMED 1287358002          |                  |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

- **Blood Pressure BodySite**
  <div class="table-md"></div>

  | Location  | SNOMED-CT Code(s) |
  | --------- | ----------------- |
  | Right Arm | SNOMED 368209003  |
  | Left Arm  | SNOMED 368208006  |

- **Blood Pressure Specifics**
  <div class="table-md"></div>

  | Type                              | SNOMED-CT Code(s) |
  | --------------------------------- | ----------------- |
  | Standing diastolic blood pressure | 400975005         |
  | Lying diastolic blood pressure    | 407557002         |
  | Sitting diastolic blood pressure  | 407555005         |
  | Diastolic blood pressure          | 271650006         |
  |                                   |                   |
  | Standing systolic blood pressure  | 400974009         |
  | Lying systolic blood pressure     | 407556006         |
  | Sitting systolic blood pressure   | 407554009         |
  | Systolic blood pressure           | 271649006         |

- **Temperature BodySite**
    <div class="table-md"></div>

  | Location                 | SNOMED-CT Code(s) |
  | ------------------------ | ----------------- |
  | Ear                      | 117590005         |
  | Forehead                 | 52795006          |
  | Oral cavity (sublingual) | 74262004          |
  | Axillary fossa           | 422543003         |

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
