<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2026-11-16**

### Telemonitoring Hub Identifier

- **Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/lung-transplant
- **Carepath Version**: 1.0.0

### Care Pathway Overview

This carepath describes the home follow-up of **lung transplant recipients**. The main purpose is the early detection
of a decline in graft function. That decline can be caused by acute rejection, infection or the onset of
**chronic lung allograft dysfunction (CLAD)**, the main limit on long-term survival after lung transplantation. Daily
home spirometry detects a decline in FEV1 earlier than the scheduled outpatient pulmonary function tests.

The other parameters complete the picture:

- **Oxygen saturation and symptoms**: desaturation, dyspnea, cough or reduced exercise tolerance can accompany a fall
  in FEV1, and help distinguish a real decline from a poorly performed measurement.
- **Body temperature**: lung transplant recipients are immunosuppressed and at high risk of respiratory infections.
  Fever is an early sign of infection, and infection itself is a risk factor for rejection.
- **Blood pressure**: calcineurin inhibitors (tacrolimus, ciclosporin) often cause hypertension and nephrotoxicity.
- **Body weight**: reflects nutritional status, corticosteroid side effects and fluid balance.
- **Gastro-intestinal and neurological symptoms**: diarrhea and vomiting can be caused by infection or medication, and
  change immunosuppressant blood levels. Tremor is a typical sign of calcineurin inhibitor toxicity.

- **Monitoring Duration**: Long-term, starting after discharge following transplantation. Follow-up is most intensive
  in the first year.
- **Central Care Facility**: Lung transplant centre with a dedicated follow-up team.
- **Data Source**: A home spirometer, a pulse oximeter, a thermometer, a blood pressure monitor and a scale (connected
  or read manually), and a symptom questionnaire in the patient application.

#### Patient Eligibility

- **Indication**: Recipient of a single or double lung transplant.
- **Consent**: Signed informed consent for remote follow-up prior to enrolment.
- **Training**: The patient is trained in performing forced expiratory manoeuvres before the start of home monitoring.

---

### Process and Workflow Description

#### Start-Up

- **Informed Consent**: Collected and securely stored.
- **Device Delivery and Training**: The patient receives the home spirometer and is trained by the transplant team.
- **Parameters Monitored**:
  - Spirometry (FEV1, and depending on the device FVC, FEV1/FVC, PEF and FEF25-75)
  - Oxygen Saturation (SpO2)
  - Body Temperature
  - Blood Pressure (BP)
  - Body Weight (BW)
  - Symptoms
- **Frequency**: Daily, at a fixed time of day, preferably before medication intake. Symptoms are also registered
  whenever they occur.

#### Data Collection

- Spirometry is performed by the patient and processed by the spirometer or its application. The application selects
  the reported values from the session and grades the session quality according to the ATS/ERS 2019 standard (see
  below).
- Oxygen saturation, body temperature, blood pressure and body weight are collected automatically via connected devices
  or entered manually.
- Symptoms are registered by the patient.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

- **Baseline**: Each patient's own post-transplant baseline FEV1 is the reference, not the predicted value. Following
  the ISHLT 2019 CLAD consensus, the baseline is the mean of the two best post-operative FEV1 values measured at least
  3 weeks apart. Predicted values are of limited use after transplantation, because the lungs come from a donor of a
  different size, age and sex.
- **Thresholds**: Defined by the transplant centre. A typical home monitoring trigger is a sustained FEV1 decline of
  10% or more from baseline. CLAD itself is defined as a persistent decline of 20% or more.
- **Quality**: Sessions graded U or F, or graded E for FEV1, are unreliable and should not trigger an alarm on their
  own. They should lead to a repeat measurement instead.
- **Oxygen Saturation**: A fall in SpO2 from the patient's usual value should be assessed together with the FEV1 and
  the symptoms.
- **Body Temperature**: Fever (typically 38 °C or above) warrants contact with the transplant team, as it may indicate
  infection.
- **Symptoms**: New or worsening respiratory symptoms, and hemoptysis in particular, warrant contact with the transplant
  team, regardless of the spirometry result.
- **Blood Pressure and Weight**: Thresholds defined by the transplant centre.
- **Review**: Data is reviewed by the transplant team during working hours.

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Content**: Overview of the symptoms, the vital parameters and the spirometry trend, including the flow-volume and volume-time
  curves of the reported sessions.
- **File Size**: ±100KB per PDF, max: 10MB per PDF.

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).

<div class="table-md"></div>

| Description             | FHIR Profile                                                                         |
|-------------------------|--------------------------------------------------------------------------------------|
| Spirometry              | [`Spirometry Observation`](./StructureDefinition-spirometry-observation.html)        |
| Oxygen Saturation (SpO2)| [`Observation-oxygensat`](http://hl7.org/fhir/StructureDefinition/oxygensat)         |
| Body Temperature        | [`Observation-bodytemp`](http://hl7.org/fhir/StructureDefinition/bodytemp)           |
| Blood Pressure (BP)     | [`Observation-bp`](http://hl7.org/fhir/StructureDefinition/bp)                       |
| Body Weight (BW)        | [`Observation-bodyweight`](http://hl7.org/fhir/StructureDefinition/bodyweight)       |

The vital signs are exchanged with the standard FHIR vital-sign profiles, as in the other carepaths of this IG.

##### Spirometry

**One Observation per session.** A spirometry session is one sitting in which the patient performs several forced
manoeuvres, typically 3 to 8. One [Spirometry Observation](./StructureDefinition-spirometry-observation.html) is sent
per session, not per manoeuvre. This follows the ATS/ERS 2019 reporting rules:

- The reported **FEV1** is the largest FEV1 of the acceptable manoeuvres, and the reported **FVC** is the largest FVC of
  the acceptable manoeuvres. They may come from different manoeuvres.
- **FEV1/FVC** is calculated from the reported FEV1 and FVC.
- **FEF25-75** comes from the acceptable manoeuvre with the largest sum of FEV1 and FVC.
- If no manoeuvre is acceptable, the values of the best usable manoeuvre are reported, with grade U.

The spirometer or its application selects the values. The receiving system therefore does not need to apply the
ATS/ERS selection rules itself, and gets one value per session to compare against the patient's baseline. Individual
manoeuvres and curves are not exchanged as structured data; the curves are part of the PDF outcome module.

**Values**

<div class="table-md"></div>

| Component                | LOINC code | `code.text` | Unit (UCUM) | Cardinality |
|--------------------------|------------|-------------|-------------|-------------|
| FEV1                     | 20150-9    | FEV1        | `L`         | 1..1        |
| FVC                      | 19870-5    | FVC         | `L`         | 0..1        |
| FEV1/FVC                 | 19926-5    | FEV1/FVC    | `%`         | 0..1        |
| PEF                      | 33452-4    | PEF         | `L/s`       | 0..1        |
| FEF25-75                 | 19927-3    | FEF25-75    | `L/s`       | 0..1        |
| FEV1 % predicted         | 20152-5    | FEV1 %pred  | `%`         | 0..1        |
| FVC % predicted          | 19872-1    | FVC %pred   | `%`         | 0..1        |

`coding.display` holds the official LOINC display name. A short label for clinicians may be given in `code.text`.

FEV1 is the only mandatory value, so handheld FEV1/PEF meters that do not measure FVC can also be used. FEV1/FVC is
only allowed when FVC is reported. When predicted values are sent, the reference equation used (GLI-2012 recommended)
should be stated in `Observation.method.text`.

**Quality**

<div class="table-md"></div>

| Component | Code                                                        | Value                                                              |
|-----------|-------------------------------------------------------------|--------------------------------------------------------------------|
| FEV1 grade | [`fev1-grade`](./CodeSystem-spirometry-component-codes.html) | [Spirometry Grade](./ValueSet-spirometry-grade.html): A, B, C, D, E, U, F |
| FVC grade  | [`fvc-grade`](./CodeSystem-spirometry-component-codes.html)  | [Spirometry Grade](./ValueSet-spirometry-grade.html): A, B, C, D, E, U, F |

The grades are the session-level grades of Table 10 of the ATS/ERS 2019 standard, and FEV1 and FVC are graded
independently. The FEV1 grade SHOULD always be sent, and the FVC grade SHOULD be sent whenever FVC is sent. Remarks on
the session, such as a reason for poor quality reported by the patient, go in `Observation.note`.

**Other elements**

<div class="table-md"></div>

| Element             | Content                                                                                           |
|---------------------|---------------------------------------------------------------------------------------------------|
| `status`            | `final`; `amended` or `corrected` when a session is regraded                                      |
| `category`          | `procedure` (observation-category)                                                                |
| `code`              | LOINC `81459-0` *Spirometry panel*                                                                |
| `subject`           | The patient                                                                                       |
| `effective[x]`      | `effectivePeriod` from the first to the last manoeuvre (preferred), or `effectiveDateTime`         |
| `issued`            | When the graded result was made available                                                         |
| `performer`         | The patient                                                                                       |
| `device`            | The spirometer: a `Device` with `type`, `manufacturer`, `deviceName` and `modelNumber`, and `serialNumber` when known |
| `method`            | Optional free text, e.g. the grading standard and the reference equation for predicted values    |

##### Symptom Monitoring

- **Frequency**: As frequently as registered by the patient. Average of 1 per day per symptom.
- **Structure**: One `Observation` per symptom, with `code` taken from the symptom value set and
  `valueCodeableConcept` taken from the severity scale. This is the same pattern as the symptoms of the
  [Heart failure carepath](./carepath-heartfailure.html).
- **FHIR ValueSets**:
  - [Lung Transplant Symptoms](./ValueSet-lung-transplant-symptoms.html)
  - [Symptom Severity](./ValueSet-symptom-severity.html)

<div class="table-md"></div>

| Symptom                     | SNOMED CT | Clinical relevance                                     |
|-----------------------------|-----------|--------------------------------------------------------|
| Dyspnea                     | 267036007 | Rejection, infection                                   |
| Cough                       | 49727002  | Rejection, infection                                   |
| Productive cough            | 28743005  | Infection                                              |
| Hemoptysis                  | 66857006  | Infection, airway complication; always reported        |
| Wheezing                    | 56018004  | Airway obstruction, bronchiolitis obliterans           |
| Chest pain                  | 29857009  | Infection, pleural or cardiac complication             |
| Impaired exercise tolerance | 267044007 | Decline in graft function                              |
| Fatigue                     | 84229001  | Non-specific, infection, anemia                        |
| Diarrhea                    | 62315008  | Infection, drug side effect; affects drug levels       |
| Nausea                      | 422587007 | Drug side effect                                       |
| Vomiting                    | 422400008 | Drug side effect; affects drug intake and levels       |
| Decrease in appetite        | 64379006  | Nutritional status                                     |
| Tremor                      | 26079004  | Calcineurin inhibitor toxicity                         |

### Terminology

- [Spirometry Grade (ATS/ERS 2019)](./ValueSet-spirometry-grade.html)
- [Spirometry Component Codes](./CodeSystem-spirometry-component-codes.html)
- [Lung Transplant Symptoms](./ValueSet-lung-transplant-symptoms.html)
- [Symptom Severity](./ValueSet-symptom-severity.html)

Neither LOINC nor SNOMED CT has codes for the ATS/ERS 2019 session grades, so this IG defines them.

### Specification

For detailed specifications, refer to the

- [Spirometry Example](./Observation-SpirometryExample.html)
- [Spirometry Example - FEV1-only device, grade U](./Observation-SpirometryExample2.html)
- [Oxygen Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Temperature Example](./Observation-BodyTemperatureExample2.html)
- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Weight Example](./Observation-BodyWeightExample2.html)
- [Dyspnea Example](./Observation-DyspneaExample.html)

### Open Items

<div class="table-md"></div>

| Topic                 | Description                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------|
| Baseline and % change | Decide whether the provider also sends the FEV1 baseline and the % change from baseline, or whether the receiving system calculates them. |
| z-scores and LLN      | Decide whether z-scores and the lower limit of normal are needed next to % predicted, in line with the ATS/ERS 2022 interpretation standard. |
| Symptom list          | Validate the symptom list and the use of the severity scale with the transplant centres.                                       |
| Order reference       | Define an IG-wide identifier system for the telemonitoring order (`Observation.basedOn`).                                       |
| HCP involvement       | Review the parameters, the measurement frequency and the alarm thresholds with the Belgian lung transplant centres.             |
