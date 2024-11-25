**DRAFT: 2024-11-25**

### Care Pathway Overview

ToTem stands for Transmurale Opvolging met TeleMonitoring na chirurgie.

Improved surgical techniques allow patients to go home earlier and earlier after their surgery. Complications are possible with any surgery. It is important that they are noticed in time so that the necessary action can be taken by the appropriate healthcare provider.

TOTeM aims to send patients home after surgery as early as medically possible, with quality and specialised follow-up in the home environment. 

The patient can recover in a familiar environment and is more involved in the recovery process. For the hospital, faster discharge offers the opportunity to optimise length of stay and bed occupancy. The social cost of care falls.

With support from the FPS Public Health, some TOTeM projects are being rolled out in 6 hospitals in a pilot project; and this for specific types of surgery (depending on the hospital's choice): colon surgery, obesity surgery, kidney surgery, bladder surgery, pancreatic surgery and anti-reflux surgery.

### Patient monitoring

The following registrations will be made by patients and/or care providers that will be available in the prescription portal.


### Process and Workflow Description

#### Start-Up

- **Parameters Monitored**:
  - Heart Rate (HR)
  - Blood Pressure (BP)
  - Weight (BW)
  - Respiratory rate
  - Saturation
  - Body temperature
  - Abdominal pain
  - Pain surgical wound
  - Pain puncture wounds
  - Pain during urination
  - Pain in calves
  - Pain medication taken
  - Wellbeing
  - Flatulence
  - Bowl movement
  - Distended abdomen
  - Nausea
  - Vomitting
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

  | Description                     | LOINC Code(s)         |
  | ------------------------------- | --------------------- |
  | Heart rate (HR) measurement     | LOINC 8867-4          |
  | Blood pressure (BP) measurement | LOINC 8480-6 / 8463-4 |
  | Body weight (BW) measurement    | LOINC 29463-7         |
  ---

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Heart Rate Example](./Observation-HeartRateExample.html)
