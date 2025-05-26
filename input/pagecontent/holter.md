> ⚠️ **Draft Notice**  
> This FHIR implementation content is currently under development and may be subject to significant changes.  
> Use this information with caution, as it may not yet reflect finalized or fully validated guidance.  
> Always verify details before relying on them for production use.

# Holter Monitoring – FHIR Implementation Guide

**DRAFT: 2025-03-03**  
**Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/holter-monitoring
**Carepath Version**: 1.0.0

---

## Care Pathway Overview

- **Monitoring Duration**: 24–72 hours
- **Facility Type**: Hospital or diagnostic center
- **Device Type**: Holter ECG (1–3 lead, continuous)
- **Data Review**: By cardiologist or certified ECG analyst

### Patient Eligibility

- **Indications**: Suspected arrhythmias (e.g., palpitations, syncope, bradycardia)
- **Consent**: Signed informed consent prior to monitoring
- **Referral**: Required from physician (GP or specialist)

---

## Process & Workflow

### Start-Up

- **Device Placement**: On-site or outpatient setting
- **Instructions**: Provided on wearing and returning the device

### Data Collection

- **Recording**: Locally on Holter device
- **Upload & Analysis**: Uploaded securely and interpreted using CE-certified tools
- **Validation**: All abnormal events confirmed by a reviewer

---

## Alarm & Escalation

- **Thresholds**: System flags critical findings (e.g. AFib, VT, pauses)
- **Human Review**: All flagged findings are clinically reviewed

---

## Integration Modules

### 📄 Outcome Module - PDF

- **Generated After Review**
- **Contents**: Summary, rhythm findings, annotated ECG strips
- **File Size**: ±1–5MB depending on duration and findings

---

### 🧬 Outcome Module - FHIR (Bundle, Document Type)

Each DiagnosticReport includes references to structured Observations.

#### Key DiagnosticReport

- **LOINC**: `18754-2` – Ambulatory cardiac rhythm monitor (Holter)
- **Conclusion**: Structured raw annotations for Holter monitoring
- **Results Referenced**:
  - AFib episodes (`afib-group`)
  - Pauses and bradycardia (`pause-brady-group`)
  - Supraventricular events (`sve-group`)
  - Ventricular events (`ve-group`)
  - VT episodes (`vt-group`)
  - Heart rate summary (`obs-heartrate`)

---

## Vital Signs and Episode Summaries (Observations)

| Measurement                        | Code System | Code / Display                                                                |
| ---------------------------------- | ----------- | ----------------------------------------------------------------------------- |
| **Heart Rate**                     | LOINC       | `8867-4` – Median HR (day/night), avg, max, min                               |
|                                    | LOINC       | `101692-2` – Maximum HR                                                       |
|                                    | LOINC       | `103222-6` – Minimum HR                                                       |
| **Atrial Fibrillation**            | SNOMED      | `164889003` – Atrial fibrillation                                             |
|                                    | HL7 Belgium | `afib-group`                                                                  |
| **Pauses & Bradycardia**           | SNOMED      | `698247007` – Sinus Pause                                                     |
|                                    | SNOMED      | `48867003` – Bradycardia                                                      |
|                                    | HL7 Belgium | `pause-group`                                                                 |
| **Supraventricular Events (SVEs)** | SNOMED      | `164887001` – Supraventricular ectopic beat                                   |
|                                    | SNOMED      | `164873001` – Supraventricular tachycardia                                    |
|                                    | HL7 Belgium | `sve-group`                                                                   |
| **Ventricular Events (VES/VT)**    | SNOMED      | `25569003` – Ventricular tachycardia                                          |
|                                    | SNOMED      | `251175005` – Ventricular ectopic beats                                       |
|                                    | HL7 Belgium | `ve-group`, `ves-couplets`, `ves-triplets`, `ves-bigemnies`,`ves-trigeminies` |

---

## Example References

- [Diagnostic Report – Holter](./Observation-HolterReport.html)

---

These FHIR resources are designed to support structured, interoperable ECG data exchange. Each finding is encoded using HL7 Belgium and standard terminologies to promote clarity and consistency in digital health environments.
