**DRAFT: 2024-11-25**

### Care Pathway Overview

TOTeM stands for Transmurale Opvolging met TeleMonitoring na chirurgie.

Improved surgical techniques allow patients to go home earlier and earlier after their surgery. Complications are possible with any surgery. It is important that they are noticed in time so that the necessary action can be taken by the appropriate healthcare provider.

TOTeM aims to send patients home after surgery as early as medically possible, with quality and specialised follow-up in the home environment.

The patient can recover in a familiar environment and is more involved in the recovery process. For the hospital, faster discharge offers the opportunity to optimise length of stay and bed occupancy. The social cost of care falls.

With support from the FPS Public Health, some TOTeM projects are being rolled out in 6 hospitals in a pilot project; and this for specific types of surgery (depending on the hospital's choice): colon surgery, obesity surgery, kidney surgery, bladder surgery, pancreatic surgery and anti-reflux surgery.

### Process and Workflow Description

#### Start-Up

- **Parameters Monitored**:

  - Heart Rate
  - Blood Pressure
  - Body weight
  - Respiratory rate
  - Saturation
  - Body temperature
  - Abdominal pain
  - Pain surgical wound
  - Pain puncture wounds
  - Pain during urination
  - Pain in calves
  - Pain medication taken
  - Well-being
  - Flatulence
  - Bowel movement
  - Distended abdomen
  - Nausea
  - Vomiting
  - Water intake last 24h
  - Meals last 24h
  - Coughing
  - Mucus when coughing
  - Pression on chest
  - Shortness of breath
  - Walking daily
  - Shoulder pain

- **Frequency**: 3 times a day, 7 days a week.

#### Data Collection

- Data is automatically collected via connected devices or manually entered into the system.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### Vital Signs

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC Codes**:

###### General

<div class="table-md"></div>

| Description              | Code(s)                    | Possible answers                                                                                                       |
| ------------------------ | -------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Heart rate               | LOINC 8867-4               |  Not applicable                                                                                                        |
| Blood pressure           | LOINC 8480-6 / 8463-4      |  Not applicable                                                                                                        |
| Body weight              | LOINC 29463-7              |  Not applicable                                                                                                        |
| Respiratory rate         | LOINC 9279-1               |  Not applicable                                                                                                        |
| Oxygen Saturation (SPO2) | LOINC 2708-6 (sub 59408-5) |  Not applicable                                                                                                        |
| Body temperature         | LOINC 8310-5               |  Not applicable                                                                                                        |
| Abdominal pain           | SNOMED 21522001            | LOINC 72514-3 (pain scale 0-10)                                                                                        |
| Pain puncture wounds     | <span class="warning">??</span> | LOINC 72514-3 (pain scale 0-10)                                                                                        |
| Pain during urination    | SNOMED 49650001            | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Pain in calves           | SNOMED 1264028004          | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Pain medication taken    | <span class="warning">??</span> | SNOMED <br> - 268910001 (unchanged) <br> - 27762005 (improved) <br> - 230993007                                        |
| Well-being               | SNOMED 73595000            | SNOMED <br> - 268910001 (unchanged) <br> - 27762005 (improved) <br> - 230993007                                        |
| Flatulence               | SNOMED 249504006           | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Bowel movement           | SNOMED 39211005            | SNOMED <br> - 373067005 (no) <br> - 264312008 (liquid) <br> - 300585004 (solid)                                        |
| Nausea                   | SNOMED 422587007           | <span class="warning">??</span> (score 0-10)                                                                                                         |
| Vomiting                 | SNOMED 300359004           | SNOMED <br> - 373067005 (no) <br> - <span class="warning">??</span> (yes, 1 time) <br> - <span class="warning">??</span> (yes, multiple times)                                     |
| Water intake last 24h    | LOINC 9007-6               | - <span class="warning">??</span> (>2l) <br> - <span class="warning">??</span> (1.5 to 2l) <br> - <span class="warning">??</span> (1 to 1.5l ) <br> - <span class="warning">??</span> (<1l)                                                    |
| Meals last 24h           | <span class="warning">??</span> | - <span class="warning">??</span> (no meals last 24h) <br> - <span class="warning">??</span> (yes, normal (3 or more per day)) <br> - <span class="warning">??</span> (yes, difficult (between 1 and 3 per day)) |
| Coughing                 | SNOMED 263731006           | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Productive cough         | SNOMED 28743005            | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Pressure in chest        | SNOMED 23924001            | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Shortness of breath      | SNOMED 267036007           | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Walking daily            | <span class="warning">??</span> | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Wound appearance         | <span class="warning">??</span> | SNOMED <br> - 17621005 (normal) <br> - <span class="warning">??</span> (clear exudate) <br> - <span class="warning">??</span> (signs of infection)                                 |
| Concern about patient    | <span class="warning">??</span> | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |
| Fraxiparine              | <span class="warning">??</span> | SNOMED <br> - 373066001 (yes) <br> - 373067005 (no)                                                                    |

###### Colon surgery specific

<div class="table-md"></div>

| Description         | Code(s)         | Possible answers                                    |
| ------------------- | --------------- | --------------------------------------------------- |
| Pain surgical wound | <span class="warning">??</span> | LOINC 72514-3 (pain scale 0-10)                     |
| Distended abdomen   | SNOMED 60728008 | 373067005 (no) <br> - <span class="warning">??</span> (a little) <br> - <span class="warning">??</span> (fierce)|

###### Bariatric surgery specific

<div class="table-md"></div>

| Description   | Code(s) | Possible answers                                                                                                    |
| ------------- | ------- | ------------------------------------------------------------------------------------------------------------------- |
| Shoulder pain | <span class="warning">??</span> | SNOMED  <br> - 24028007 (right) <br> - 7771000 (left) <br> - 51440002 (right and left) <br> - 373067005 (no)        |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Heart Rate Example](./Observation-HeartRateExample.html)
- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Respiratory rate Example](./Observation-RespiratoryRateExample.html)
- [Saturation Example](./Observation-OxygenSaturationExample.html)
- [Abdominal pain Example](./Observation-AbdominalPainExample.html)
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample.html)
- Pain puncture wounds Example
- [Pain during urination Example](./Observation-PainDuringUrinationExample.html)
- [Pain in calves Example](./Observation-PainInCalvesExample.html)
- [Pain medication taken Example](./Observation-PainMedicationTakenExample.html)
- Well-being Example
- Flatulence Example
- Bowel movement Example
- [Distended abdomen Example](./Observation-DistendedAbdomenExample.html)
- Nausea Example
- Vomiting Example
- Water intake last 24h Example
- Meals last 24h Example
- Coughing Example
- Mucus when coughing Example
- Pression on chest Example
- [Shortness of breath Example](./Observation-ShortnessOfBreathExample.html)
- Walking daily Example
- [Shoulder pain Example](./Observation-ShoulderPainExample.html)
