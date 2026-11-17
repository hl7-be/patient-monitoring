# Carepath NEWS (National Early Warning Score) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Carepath NEWS (National Early Warning Score)

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

**DRAFT: 2024-11-27**

### Care Pathway Overview

* **Accessibility**: Reachable during office hours.
* **Patient Criteria**:
* **Accessibility**: Reachable during office hours.

-------

### Process and Workflow Description

#### Start-Up

* **Screening and risk Assessment**: performed by the attending physician.
* **Informed consent**: Collected and securely stored.
* **Tele Care Center**: Involved in the workflow.
* **Parameters monitored**:

#### Data Collection

* Data is automatically collected via connected devices or manually entered into the system.
* Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

* (N)EWS and/or single vital sign alarm thresholds are predefined on the digital platform.
* The RRT/tele care center checks the collected data daily during working hours.
* In case of alarms, the tele care center will inform the home nurse as soon as possible.

-------

### Integration Modules for EPD

#### Outcome Module - PDF

* **Daily Updates**: Updated hourly.
* **Content**: Overview of the questions and vital parameters.
* **File Size**: ±100KB per PDF, max: 10MB per PDF.

-------

#### Outcome Module - FHIR Integration

##### Vital Signs

* **Frequency**: Maximum of 1 update per minute.
* **LOINC Codes**: 

 

| | | |
| :--- | :--- | :--- |
| Heart rate (HR) measurement | LOINC 8867-4 | Not applicable |
| Blood pressure (BP) measurement | LOINC 8480-6 / 8462-4 | Not applicable |
| Body weight (BW) measurement | LOINC 29463-7 | Not applicable |
| Respiratory (RESP) measurement | LOINC 9279-1 | Not applicable |
| Temperature (TEMP) measurement | LOINC 8310-5 | Not applicable |
| Oxygen Saturation (SPO2) measurement | LOINC 2708-6 (sub 59408-5) | Not applicable |
| Patient on oxygen | SNOMED 371825009 | SNOMED- 373066001 (yes)- 373067005 (no) |
| Inhaled oxygen flow rate | LOINC 3151-8 | Not applicable |
| Level of responsiveness (ACVPU scale) | LOINC 67775-7 | LOINC- LA9340-6 (Alert)- LA6560-2 (Confused)- LA17108-4 (Verbal)- LA17107-6 (Painful)- LA9343-0 (Unresponsive) |
| National Early Warning Score (NEWS) | SNOMED 1287358002 | Not applicable |

 

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

* **Blood Pressure BodySite** 

 

| | |
| :--- | :--- |
| Right Arm | SNOMED 368209003 |
| Left Arm | SNOMED 368208006 |

 
* **Blood Pressure Specifics** 

 

| | |
| :--- | :--- |
| Standing diastolic blood pressure | 400975005 |
| Lying diastolic blood pressure | 407557002 |
| Sitting diastolic blood pressure | 407555005 |
| Diastolic blood pressure | 271650006 |
|   |   |
| Standing systolic blood pressure | 400974009 |
| Lying systolic blood pressure | 407556006 |
| Sitting systolic blood pressure | 407554009 |
| Systolic blood pressure | 271649006 |

 
* **Temperature BodySite** 

 

| | |
| :--- | :--- |
| Ear | 117590005 |
| Forehead | 52795006 |
| Oral cavity (sublingual) | 74262004 |
| Axillary fossa | 422543003 |

 

##### Specification:

For detailed specifications, refer to the

* [Blood Pressure Example](./Observation-BloodPressureExample.md)
* [Weight Example](./Observation-BodyWeightExample.md)
* [Heart Rate Example](./Observation-HeartRateExample.md)
* [Oxygen Saturation Example](./Observation-OxygenSaturationExample.md)
* [Respiratory Rate Example](./Observation-RespiratoryRateExample.md)
* [Temperature Example](./Observation-BodyTemperatureExample.md)
* [Level of responsiveness Example](./Observation-LevelOfResponsivenessExample.md)
* [National Early Warning Score Example](./Observation-NationalEarlyWarningScoreExample.md)

