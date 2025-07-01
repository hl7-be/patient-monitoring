<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2024-11-25**

Note : This is currently a project that exists out of multiple carepaths. The different carepaths can be found below in the outcome module.

### Care Pathway Overview

TOTeM stands for Transmurale Opvolging met TeleMonitoring na chirurgie.

Improved surgical techniques allow patients to go home earlier and earlier after their surgery. Complications are possible with any surgery. It is important that they are noticed in time so that the necessary action can be taken by the appropriate healthcare provider.

TOTeM aims to send patients home after surgery as early as medically possible, with quality and specialised follow-up in the home environment.

The patient can recover in a familiar environment and is more involved in the recovery process. For the hospital, faster discharge offers the opportunity to optimise length of stay and bed occupancy. The social cost of care falls.

With support from the FPS Public Health, some TOTeM projects are being rolled out in 6 hospitals in a pilot project; and this for specific types of surgery (depending on the hospital's choice): colon surgery, obesity surgery, kidney surgery, bladder surgery, pancreatic surgery and anti-reflux surgery.

### Process and Workflow Description

#### Start-Up

- **Informed consent**: Collected and securely stored.
- **Parameters Monitored**:

See outcome module for parameters monitored in all carepath variants (general) and additional parameters per carepath variant if relevant. 

#### Data Collection

- Data is automatically collected via connected devices or manually entered into the system.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC and SNOMED CT Codes**:

<div class="table-md"></div>

| Description              | Code(s)                    | Possible answers                                                                                                       |
| ------------------------ | -------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Heart rate               | LOINC 8867-4               | Not applicable                                                                                                        |
| Blood pressure           | LOINC 8480-6 / 8462-4      | Not applicable                                                                                                        |
| Body weight              | LOINC 29463-7              | Not applicable                                                                                                        |
| Respiratory rate         | LOINC 9279-1               | Not applicable                                                                                                        |
| Oxygen Saturation (SPO2) | LOINC 2708-6 (sub 59408-5) | Not applicable                                                                                                        |
| Patient on oxygen        | SNOMED 371825009           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)  |
| Inhaled oxygen flow rate | LOINC 3151-8               | Not applicable   |  
| Body temperature         | LOINC 8310-5               | Not applicable                                                                                                        |
| Level of responsiveness (ACVPU scale) | LOINC 67775-7             | LOINC <br> - LA9340-6 (Alert) <br> - LA6560-2 (Confused) <br> - LA17108-4 (Verbal) <br> - LA17107-6 (Painful) <br> - LA9343-0 (Unresponsive) |
| Abdominal pain           | SNOMED 21522001            | LOINC 72514-3 (Pain scale 0-10)                                                                                        |
| Pain puncture wounds     | <span class="warning">??</span> | LOINC 72514-3 (Pain scale 0-10)                                                                                   |
| Pain during urination    | SNOMED 49650001            | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Renal pain               | SNOMED 274279008           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Pain in calves           | SNOMED 1264028004          | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Pain provoked by eating  | SNOMED 426277009           | LOINC 72514-3 (Pain scale 0-10)                                                                                        |
| Well-being               | SNOMED 365275006           | SNOMED <br> - 260388006 (No status change) <br> - 268910001 (Patient's condition improved) <br> - 230993007 (Worsening)|
| Flatulence               | SNOMED 249504006           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Bowel movement           | SNOMED 39211005            | SNOMED <br> - 373067005 (No) <br> - 264312008 (Liquid) <br> - 300585004 (Solid)                                        |
| Nausea                   | SNOMED 422587007           | LOINC  <br> - LA137-2 (None) <br> - LA6752-5 (Mild) <br> - LA6751-7 (Moderate) <br> - LA6750-9 (Severe)                |
| Vomiting                 | SNOMED 300359004           | LOINC  <br> - LA137-2 (None) <br> - LA6752-5 (Mild) <br> - LA6751-7 (Moderate) <br> - LA6750-9 (Severe)                |
| Coughing                 | SNOMED 263731006           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Productive cough         | SNOMED 28743005            | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Pressure in chest        | SNOMED 23924001            | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Shortness of breath      | SNOMED 267036007           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Contact with patient     | SNOMED 712553007           | SNOMED <br> - 373066001 (Yes) <br> - 373067005 (No)                                                                    |
| Action                   | SNOMED 129264002           | SNOMED <br> - 2667000 (Absent) <br> - 313184003 (Patient given telephone advice) -  304561000 (Informing health care professional)

##### Abdominal surgery

##### Bariatrics

<div class="table-md"></div>

| Description   | Code(s) | Possible answers                                                                                                                     |
| ------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------|
| Shoulder pain | SNOMED 45326000 | SNOMED  <br> - 24028007 (Right) <br> - 7771000 (Left) <br> - 51440002 (Right and left) <br> - 373067005 (No) |

##### Colon surgery

<div class="table-md"></div>

| Description         | Code(s)                         | Possible answers                                                                                       |
| ------------------- | ------------------------------- | ------------------------------------------------------------------------------------------------------ |
| Pain surgical wound | <span class="warning">??</span> | LOINC 72514-3 (Pain scale 0-10)                                                                        |
| Distended abdomen   | SNOMED 60728008                 | LOINC <br> - LA137-2 (None) <br> - LA6752-5 (Mild) <br> - LA6751-7 (Moderate) <br> - LA6750-9 (Severe) |

##### Cystectomy

<div class="table-md"></div>

| Description                      | Code(s)          | Possible answers                                                                                                    |
| ---------------------------------| ---------------- | ------------------------------------------------------------------------------------------------------------------- |
| Volume of 24-hour Urine          | LOINC 3167-4     | Not applicable                                                                                                      |
| Skin surrounding stoma red       | SNOMED 407549000 | SNOMED <br> - 2667000 (Absent) <br> - 255604002 (Mild) <br> - 6736007 (Moderate severity) <br> - 24484000 (Severe)  |

##### Distal pancreatic surgery

##### Hemicolectomy

##### Gastric bypass

##### Nefrectomy

<div class="table-md"></div>

| Description    | Code(s)          | Possible answers                                                                                                                                               |
| -------------- | ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Color of urine | SNOMED 430327009 | SNOMED <br> - 167236000 (Urine looks clear) <br> - 720001001 (Dark yellow urine) <br> - 720003003 (Reddish color urine) <br> - 167235001 (Urine: red – blood)  |
| Hematoma       | SNOMED 385494008 | SNOMED <br> - 2667000 (Absent) <br> - 19776001 (Decreased size) <br> - 260388006 (No status change) <br> - 15454001 (Inscreased size)                          |

##### Radical prostatectomy and adenomectomy

### Specification:

For detailed specifications, refer to the

- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Weight Example](./Observation-BodyWeightExample2.html)
- [Respiratory rate Example](./Observation-RespiratoryRateExample2.html)
- [Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Nausea Example](./Observation-NauseaExample.html)
- [Abdominal pain Example](./Observation-AbdominalPainExample.html)
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample.html)
- [Pain during urination Example](./Observation-PainDuringUrinationExample.html)
- [Pain in calves Example](./Observation-PainInCalvesExample.html)
- [Distended abdomen Example](./Observation-DistendedAbdomenExample.html)
- [Shortness of breath Example](./Observation-ShortnessOfBreathExample.html)
- [Shoulder pain Example](./Observation-ShoulderPainExample.html)
- [Pain puncture wounds Example](./Observation-PainPunctureWoundsExample.html)
- [Leakage catheter Example](./Observation-LeakageCatheterExample.html)

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.