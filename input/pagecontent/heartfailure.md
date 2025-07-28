<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-02-10**

### Telemonitoring Hub Identifier

**Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/heart-failure
**Carepath Version**: 1.0.0

### Care Pathway Overview

- **Duration**: 4 years
- **Central Care Facility**: Specialized heart failure center with a telemonitoring team.
- **Minimal Capacity**: 0.5 FTE heart failure nurse per 100 patients.
- **Educational Material**: Available for self-management and adherence.
- **Accessibility**: Reachable during office hours.

#### Patient Criteria

- **NYHA Classification**: II or III (85% of all new patients, ~21,000 per year).
- **Informed Consent**: Signed informed consent required.
- **Physical Consultation**: At least 1 physical consultation 2 years before the start of telemonitoring.

---

### Process and Workflow Description

#### Start-Up

- **Screening and Risk Assessment**: Performed by the heart failure center.
- **Informed Consent**: Collected and securely stored.
- **Involvement**: General practitioner or home nurse involved in the workflow.
- **Parameters Monitored**:
  - Heart Rate (HR)
  - Blood Pressure (BP)
  - Weight (BW)
- **Frequency**: Daily, once per day, 7 days a week, 6 months.

#### Data Collection

- Data is automatically collected via connected devices or manually entered into the system.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

- **Thresholds**: Heart failure alarm thresholds predefined on the digital platform.
- **Monitoring**: Data checked daily during working hours by the heart failure team.
- **Alarm Notification**:
  - General practitioner or home nurse informed within 5 working days (or within 48 hours if urgent).

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Daily Updates**: Updated daily per measurement.
- **Content**: Overview of the questions and vital parameters.
- **File Size**: ±100KB per PDF, max: 10MB per PDF.

---

#### Outcome Module - FHIR Integration

##### Vital Signs

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC Codes**:
  <div class="table-md"></div>

  | Vital Sign          | FHIR Profile                                                                   |
  | ------------------- | ------------------------------------------------------------------------------ |
  | Heart Rate (HR)     | [`Observation-hr`](http://hl7.org/fhir/StructureDefinition/heartrate)          |
  | Blood Pressure (BP) | [`Observation-bp`](http://hl7.org/fhir/StructureDefinition/bp)                 |
  | Body Weight (BW)    | [`Observation-bodyweight`](http://hl7.org/fhir/StructureDefinition/bodyweight) |

##### Symptom Monitoring

- **Frequency**: As frequent as registered by the patient. Average of 1 per day per symptom.
- **FHIR ValueSets**:

  - [Heart Failure Symptoms](./ValueSet-heart-failure-symptoms.html)
  - [Symptom Severity](./ValueSet-symptom-severity.html)

- **To be decided Codes**:
  <div class="table-md"></div>

  | Description        | Code(s)                         | Possible answers                                       |
  | ------------------ | ------------------------------- | ------------------------------------------------------ |
  | Fear or depression | <span class="warning">??</span> | [`Symptom Severity`](./ValueSet-symptom-severity.html) |

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

##### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample.html)
- [Weight Example](./Observation-BodyWeightExample.html)
- [Heart Rate Example](./Observation-HeartRateExample.html)
- [Reduced Appetite Example](./Observation-ReducedAppetiteExample.html)
