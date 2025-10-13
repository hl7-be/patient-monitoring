<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-10-06**

### Care Pathway Overview

The perioperative care path for abdominal surgery refers to the care of a patient who received abdominal surgery.

The care path typically contains following phases

- Preoperative Phase (Before Surgery)
- Intraoperative Phase (During Surgery)
- Postoperative Phase (After Surgery)

### Process and Workflow Description

#### Start-Up

- **Informed consent**: Collected and securely stored.
- **Parameters Monitored**:
    - Blood Pressure
    - Heart Rate
    - Oxygen Saturation
    - Body temperature
    - Redon drain fluid
    - Appetite
    - Pain Surgical Wound
    - Painkillers
    - Nausea
    - Stool (Bristol Stool Scale)
    - Wexner Continence score
    - Incontince severity index
    - Remarks HCP

#### Data Collection

- Data is manually entered into the system by patient or health care provider.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC and SNOMED CT Codes**:

<div class="table-md"></div>

| Description                 | Code(s)                         | Possible answers                                                                                                                                                                                         |
|-----------------------------|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Blood pressure              | LOINC 8480-6 / 8462-4           | Not applicable                                                                                                                                                                                           |
| Heart rate (BPM)            | LOINC 8867-4                    | Not applicable                                                                                                                                                                                           |
| Oxygen Saturation (SPO2)    | LOINC 2708-6 (sub 59408-5)      | Not applicable                                                                                                                                                                                           |
| Body temperature (C)        | LOINC 8310-5                    | Not applicable                                                                                                                                                                                           |
| Redon drain fluid (mL/24h ) | SNOMED 251843005                | Not applicable                                                                                                                                                                                           |
| Appetite                    | SNOMED 709263008                | LOINC LL3092-5 (very wel 0 to 10 very poor scale)                                                                                                                                                        |
| Pain Surgical Wound         | SNOMED 112633009                | LOINC 72514-3 (Pain scale 0-10)                                                                                                                                                                          |
| Painkillers                 | SNOMED 52685006                 | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                                                                                                      |
| Nausea                      | SNOMED 700471003                | LOINC LL3092-5 (very wel 0 to 10 very poor scale)                                                                                                                                                        |
| Stool                       | SNOMED 443172007                | Bristol Stool Scale (value 1 to 7)                                                                                                                                                                       |
| Wexner/CCIS score           | <span class="warning">??</span> | Score (value 0 to 20)                                                                                                                                                                                    |
| Bladder continence          | LOINC 45619-4                   | LOINC LL31-6<br>- LA126-5 (0 - CONTINENT)<br>- LA127-3 (1 - USUALLY CONTINENT)<br>- LA128-1 (2 - OCCASIONALLY INCONTINENT)<br>- LA129-9 (3 - FREQUENTLY INCONTINENTR)<br>- LA130-7 (4 - INCONTINENT)<br> |
| Remarks HCP                 | LOINC 107903-7                  | Free text                                                                                                                                                                                                |

### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Temperature Example](./Observation-BodyTemperatureExample.html)
- [Redon drain fluid Example](./Observation-DrainFluidExample.html)
- [Appetite Example](./Observation-AppetiteExample.html)
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample2.html)
- [Painkillers Example](./Observation-PainKillerExample.html)
- [Nausea Example](./Observation-NauseaExample2.html)
- [Stool Example](./Observation-StoolScoreExample.html)
- [Wexner Continence score Example](./Observation-IncontinenceScoreExample.html)
- [Bladder continence Example](./Observation-BladderContinenceExample.html)
- [Remarks HCP Example](./Observation-ClinicalNoteExample.html)

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the parameters.