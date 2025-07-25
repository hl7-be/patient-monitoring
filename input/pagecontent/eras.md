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
    - Body temperature
    - Redon drain fluid (ml)
    - Appetite (VAS)
    - Pain Surgical Wound (NRS)
    - Painkillers (Y/N)
    - Nausea (VAS)
    - Stool (Bristol Stool Scale)
    - Wexner Continence score
    - Incontince severity index (Urine)
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

| Description              | Code(s)                         | Possible answers                                    |
|--------------------------|---------------------------------|-----------------------------------------------------|
| Blood pressure           | LOINC 8480-6 / 8462-4           | Not applicable                                      |
| Heart rate               | LOINC 8867-4                    | Not applicable                                      |
| Oxygen Saturation (SPO2) | LOINC 2708-6 (sub 59408-5)      | Not applicable                                      |
| Body temperature         | LOINC 8310-5                    | Not applicable                                      |
| Redon drain fluid (ml)   | <span class="warning">??</span> | Not applicable                                      |
| Appetite                 | <span class="warning">??</span> | 0-10                                                |
| Pain Surgical Wound      | <span class="warning">??</span> | LOINC 72514-3 (Pain scale 0-10)                     |
| Painkillers              | <span class="warning">??</span> | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No) |
| Nausea                   | <span class="warning">??</span> | 0-10                                                |
| Stool                    | LOINC 29636-8                   | Bristol Stool Scale                                 |
| Wexner Continence score  | <span class="warning">??</span> | 0-20                                                |
| Bladder continence       | LOINC 45619-4                   | LOINC LL31-6                                        |
| Remarks HCP              | <span class="warning">??</span> | Free text                                           |


### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Temperature Example](./Observation-BodyTemperatureExample.html)
- Redon drain fluid Example
- Appetite Example
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample.html)
- Painkillers Example
- Nausea Example
- Wexner Continence score Example
- Bladder continence Example
- Remarks HCP Example

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.