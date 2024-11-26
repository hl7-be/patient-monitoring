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

  | Description               | Code(s)                  | Possible answers     |
  | ------------------------- | ------------------------ | -------------------- |
  | Heart rate                | LOINC 8867-4             |                      |
  | Blood pressure            | LOINC 8480-6 / 8463-4    |                      |
  | Body weight               | LOINC 29463-7            |                      |
  | Respiratory rate          | LOINC 9279-1             |                      |
  | Saturation                | LOINC 2708-6             |                      |
  | Body temperature          | LOINC 8310-5             |                      |
  | Abdominal pain            | SNOMEDCT 21522001        | LOINC 72514-3        |
  | Pain puncture wounds      | LOINC 72514-3 ??         | LOINC 72514-3        |
  | Pain during urination     | SNOMEDCT 49650001        | SNOMED 373066001 - ??|
  | Pain in calves            | SNOMEDCT 1264028004      | SNOMED 373066001 - ??|
  | Pain medication taken     | ??                       | ??                   |
  | Well-being                | SNOMEDCT 365275006       | ??                   |
  | Flatulence                | SNOMEDCT 249504006       |                      |
  | Bowel movement            | SNOMEDCT 39211005        |                      |
  | Nausea                    | SNOMEDCT 422587007       |                      |
  | Vomiting                  | SNOMEDCT 300359004       |                      |
  | Water intake last 24h     | LOINC 9007-6             |                      |
  | Meals last 24h            | ??                       |                      |
  | Coughing                  | SNOMEDCT 263731006       |                      |
  | Product cough             | SNOMEDCT 28743005        |                      |
  | Pressure in chest         | SNOMEDCT 23924001        |                      |
  | Shortness of breath       | SNOMEDCT 267036007       |                      |
  | Walking daily             | ??                       |                      |
  | Wound appearance          |                          | SNOMED 17621005 - ???|
  | Concern about patient     | ??                       | SNOMED 373066001 - ??|
  | Fraxiparine               | ??                       |                      |

###### Colon surgery specific
<div class="table-md"></div>

  | Description               | Code(s)                  | Possible answers     |
  | ------------------------- | ------------------------ | ---------------------|
  | Pain surgical wound       | LOINC 72514-3 ??         | LOINC 72514-3        |
  | Distended abdomen         | SNOMEDCT 60728008        |                      |

###### Bariatric surgery specific
<div class="table-md"></div>

  | Description               | Code(s)                  | Possible answers     |
  | ------------------------- | ------------------------ | ---------------------|
  | Shoulder pain             | LOINC 72514-3 ??         |                      |

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

