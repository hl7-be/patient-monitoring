> ⚠️ **Draft Notice**  
> This FHIR implementation content is currently under development and may be subject to significant changes.  
> Use this information with caution, as it may not yet reflect finalized or fully validated guidance.  
> Always verify details before relying on them for production use.

# Atrial Fibrillation Detection (PPG) – FHIR Implementation Guide

**DRAFT: 2025-07-11**  
**Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/afib-ppg  
**Carepath Version**: 1.0.0

---

## Care Pathway Overview

- **Monitoring Type**: Spot-check or periodic PPG-based rhythm assessment
- **Facility Type**: Home setting or outpatient clinic
- **Device Type**: Smartphone camera or wearable with PPG sensor
- **Data Review**: Automated pre-classification with expert validation (if required)

### Patient Eligibility

- **Indications**: Suspected or confirmed paroxysmal atrial fibrillation (e.g. after stroke, palpitations, or shortness of breath)
- **Consent**: Digital informed consent prior to use
- **Prescription**: Optional — can be initiated by a physician or used as a CE-marked class IIa self-monitoring tool

---

## Process & Workflow

### Start-Up

- **App Installation**: Patient downloads FibriCheck or similar app
- **Activation**: Linked to a prescription code or self-initiated
- **Instructions**: In-app guidance provided for proper measurement

### Data Collection

- **Measurement**: 60-second PPG spot-check
- **Analysis**: Performed by CE-certified algorithm
- **Optional Review**: Results may be reviewed by an expert panel in case of abnormal findings

---

## Alarm & Escalation

- **Thresholds**: Algorithm flags irregularities suggestive of atrial fibrillation
- **Patient Feedback**: Immediate result display with explanation and next steps
- **Sharing**: Results can be auto-shared with prescribing physician or manually exported

---

## Integration Modules

### Outcome Module - PDF

- **Generated After Measurement**
- **Contents**: PPG signal quality, rhythm classification, heart rate summary, patient-reported symptoms, visual tachogram & Lorenz plots
- **File Size**: ±0.5–2MB per measurement

---

### Outcome Module - FHIR (Bundle, Document Type)

Each measurement is exposed as a FHIR `Observation`.

## Vital Signs and Rhythm Observations (FHIR)

| Measurement                      | Code System | Code / Display                                                |
| -------------------------------- | ----------- | ------------------------------------------------------------- |
| **Heart Rhythm**                 | LOINC       | `8884-9` – Heart rate rhythm                                  |
| **Heart Rate**                   | LOINC       | `8867-4` – Average HR during PPG recording                    |
| **Symptom Reporting**            | LOINC       | `75325-1` – e.g. shortness of breath, palpitations            |
| **Symptom Severity**             | LOINC       | `64750-3` – e.g. shortness of breath, palpitations            |
| **Measurement Context**          | HL7 Belgium | `measurement-context` – e.g. resting, sleeping, post-exercise |

---

## Example References

- [Observation – Heart Rhythm & Signal Quality](./Observation-obs-ppg-afib.html)

---

These FHIR resources support structured, interoperable data exchange for digital AFib detection using PPG. Observations include heart rhythm classification, heart rate, symptoms, and signal quality. Designed for integration in patient-centric platforms and early atrial fibrillation detection workflows.
