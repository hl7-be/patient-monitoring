<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-07-15**

### Care Pathway Overview

ERAS@Home stands for Enhanced Recovery After Surgery @ Home. Tthe project primarily focuses on colorectal surgery. It has two main objectives:
- To better prepare patients for surgery—both physically (through physiotherapy and nutritional guidance) and mentally (by providing clear information about the procedure, hospitalisation, discharge process, and how to prepare the home environment for recovery).
- To enable earlier discharge from the hospital by ensuring the patient is well-prepared and remains safely connected to the care team through remote monitoring.

After surgery, a remote monitoring app keeps the patient and hospital in close contact during the first few weeks of recovery. This allows for remote follow-up, early detection of potential issues, and personalised advice delivered through the app.
By reducing unnecessary hospital days and supporting safe recovery at home, the project improves hospital efficiency and helps alleviate staffing pressures.

### Process and Workflow Description

#### Start-Up

- **Informed consent**: Collected and securely stored.
- **Parameters Monitored**:
    - Blood Pressure (BP)
    - Heart Rate (HR)
    - Oxygen Saturation (SPO2)
    - Respiratory Rate
    - General Wellbeing (NRS)
    - Pain Surgical Wound (NRS)
    - Nausea (NRS)
    - Food Intake
    - Stool
    - Redon
    - Weight (BW)
    - Remarks HCP (free text)

#### Data Collection

- Data is manually entered into the system by patient or health care provider.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC and SNOMED CT Codes**:


<div class="table-md"></div>

| Description              | Code(s)                         | Possible answers                |
|--------------------------|---------------------------------|---------------------------------|
| Blood pressure           | LOINC 8480-6 / 8462-4           | Not applicable                  |
| Heart rate               | LOINC 8867-4                    | Not applicable                  |
| Oxygen Saturation (SPO2) | LOINC 2708-6 (sub 59408-5)      | Not applicable                  |
| Respiratory rate         | LOINC 9279-1                    | Not applicable                  |
| General Wellbeing        | <span class="warning">??</span> | <span class="warning">??</span> |
| Pain Surgical Wound      | <span class="warning">??</span> | LOINC 72514-3 (Pain scale 0-10) |
| Nausea                   | <span class="warning">??</span> | <span class="warning">??</span> |
| Food Intake              | <span class="warning">??</span> | <span class="warning">??</span> |
| Stool                    | <span class="warning">??</span> | LOINC 29636-8 OR 11029-6        |
| Redon                    | <span class="warning">??</span> | <span class="warning">??</span> |
| Body weight              | LOINC 29463-7                   | Not applicable                  |
| Remarks HCP              | <span class="warning">??</span> | <span class="warning">??</span> |


### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Respiratory rate Example](./Observation-RespiratoryRateExample2.html)
- General Wellbeing Example
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample.html)
- Nausea Example
- Food Intake Example
- Stool Example
- Redon Example
- [Weight Example](./Observation-BodyWeightExample2.html)
- Remarks HCP Example

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.