> ⚠️ **Draft Notice**  
> This FHIR implementation content is currently under development and may be subject to significant changes.  
> Use this information with caution, as it may not yet reflect finalized or fully validated guidance.  
> Always verify details before relying on them for production use.

**DRAFT: 2025-07-14**

**Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/holter-monitoring

**Carepath Version**: 1.0.0

---

### Care Pathway Overview

- **Monitoring Duration**: 24–72 hours
- **Facility Type**: Hospital or diagnostic center
- **Device Type**: Holter ECG (1–3 lead, continuous)
- **Data Review**: By cardiologist or certified ECG analyst

#### Patient Eligibility

- **Indications**: Suspected arrhythmias (e.g., palpitations, syncope, bradycardia)
- **Consent**: Signed informed consent prior to monitoring
- **Referral**: Required from physician (GP or specialist)

---

### Process & Workflow

#### Start-Up

- **Device Placement**: On-site or outpatient setting
- **Instructions**: Provided on wearing and returning the device

#### Data Collection

- **Recording**: Locally on Holter device
- **Upload & Analysis**: Uploaded securely and interpreted using CE-certified tools
- **Validation**: All abnormal events confirmed by a reviewer

---

### Alarm & Escalation

- **Thresholds**: System flags critical findings (e.g. AFib, VT, pauses)
- **Human Review**: All flagged findings are clinically reviewed

---

### 📄 Outcome : PDF

- **Generated After Review**
- **Contents**: Summary, rhythm findings, annotated ECG strips
- **File Size**: ±1–5MB depending on duration and findings

---

### 🧬 Outcome : FHIR

This Implementation Guide defines two core profiles for representing structured Holter ECG monitoring results:

#### 📄 [Holter Diagnostic Report](./StructureDefinition-holter-diagnostic-report.html)

The **Holter Diagnostic Report** is a profile based on the FHIR `DiagnosticReport` resource. It serves as the **container** for a complete ambulatory cardiac rhythm analysis, such as a 24- or 48-hour Holter ECG report.

**Key elements:**

- `status`: The lifecycle status of the report (e.g., final, amended)
- `code`: Fixed to **LOINC `18754-2`**, identifying this as a Holter rhythm report
- `effectivePeriod`: The time range over which ECG monitoring was performed
- `result`: References to one or more `HolterObservation` resources, each representing a specific rhythm event or episode
- `conclusion`: An optional free-text summary by the reporting clinician or algorithm

> 📌 This report acts as the entry point for interpreting a Holter study and links to all rhythm-related findings detected during the monitoring period.

#### 📈 [Holter Observation](./StructureDefinition-holter-observation.html)

The **Holter Observation** profile is based on the FHIR `Observation` resource and represents an **individual rhythm event** or episode detected during the Holter recording, such as an atrial fibrillation episode, ventricular tachycardia, pause, or supraventricular run.

**Each observation includes:**

- `status`: Typically `final` once confirmed
- `code`: A SNOMED CT code identifying the arrhythmia type (e.g., atrial fibrillation)
- `valueCodeableConcept`: Also constrained to SNOMED CT, representing the same event type as `code`
- `effectivePeriod`: The **start and end time** of the arrhythmia episode
- `component` _(optional)_:
  - **Average heart rate**, using `LOINC:8867-4` (expressed in beats per minute)
  - Additional metrics like burden, duration, or RR intervals may be included in the future

> 🫀 Each `HolterObservation` provides structured, time-specific detail about one episode — for example, "an atrial fibrillation episode from 14:03 to 14:07 with an average HR of 79 bpm".

#### 🧩 Relationship between Report and Observations

- The **`HolterDiagnosticReport`** references one or more **`HolterObservation`** entries.
- This design enables systems to access both a **summary report** and a complete list of **structured, time-stamped rhythm events**.
- This supports:
  - Visualization of arrhythmia timelines
  - Quantitative reporting (e.g., total burden)
  - Decision support and auditability

---

### Terminology

- [Holter Report Code](./ValueSet-holter-report-code.html)
- [Holter Event Codes](./ValueSet-holter-event-codes.html)
- [Holter Event Component Codes](./ValueSet-holter-event-component-codes.html)

### Example References

- [Diagnostic Report – Holter](./Observation-HolterReport.html)
- [Holter Diagnostic Report](./DiagnosticReport-holter-report.html)

---

These FHIR resources are designed to support structured, interoperable ECG data exchange. Each finding is encoded using HL7 Belgium and standard terminologies to promote clarity and consistency in digital health environments.
