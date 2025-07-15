> ⚠️ **Draft Notice**  
> This FHIR implementation content is currently under development and may be subject to significant changes.  
> Use this information with caution, as it may not yet reflect finalized or fully validated guidance.  
> Always verify details before relying on them for production use.

**DRAFT: 2025-07-11**

**Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/ppg-screening

**Carepath Version**: 1.0.0

---

### Care Pathway Overview

- **Monitoring Type**: Spot-check or periodic PPG-based rhythm assessment
- **Facility Type**: Home setting or outpatient clinic
- **Device Type**: Smartphone camera or wearable with PPG sensor
- **Data Review**: Automated pre-classification with expert validation (if required)

#### Patient Eligibility

- **Indications**: Suspected or confirmed paroxysmal atrial fibrillation (e.g. after stroke, palpitations, or shortness of breath)
- **Consent**: Digital informed consent prior to use
- **Prescription**: Optional — can be initiated by a physician or used as a CE-marked class IIa self-monitoring tool

---

### Process & Workflow

#### Start-Up

- **App Installation**: Patient downloads FibriCheck or similar app
- **Activation**: Linked to a prescription code or self-initiated
- **Instructions**: In-app guidance provided for proper measurement

#### Data Collection

- **Measurement**: 60-second PPG spot-check
- **Analysis**: Performed by CE-certified algorithm
- **Optional Review**: Results may be reviewed by an expert panel in case of abnormal findings

---

### Alarm & Escalation

- **Thresholds**: Algorithm flags irregularities suggestive of atrial fibrillation
- **Patient Feedback**: Immediate result display with explanation and next steps
- **Sharing**: Results can be auto-shared with prescribing physician or manually exported

---

### Outcome : PDF

- **Generated After Measurement**
- **Contents**: PPG signal quality, rhythm classification, heart rate summary, patient-reported symptoms, visual tachogram & Lorenz plots
- **File Size**: ±0.5–2MB per measurement

---

### Outcome : FHIR

This Implementation Guide defines a core profile for representing structured PPG screening results :

#### 📈 [PPG Observation](./StructureDefinition-ppg-observation.html)

The **PPG Observation** profile is based on the FHIR `Observation` resource and represents the result of a heart rhythm screening performed using photoplethysmography (PPG), such as through a smartphone or wearable device.

**Each observation includes:**

- `status`: Typically `final` once the analysis is complete
- `code`: Fixed to a combination of LOINC 8884-9 ("Heart rate rhythm") and SNOMED CT 301149000 ("Finding of pulse rhythm")
- `effectivePeriod`: The timestamp of the measurement
- `issued`: When the result was generated

The component[] array contains structured sub-results, including:

- component[rhythm]: A value from a mixed SNOMED/LOINC ValueSet identifying the rhythm interpretation (e.g., "at high risk of atrial fibrillation")
- omponent[heartrate]: A heart rate value in beats per minute (UCUM: /min)
- component[activity]: The physical activity context during measurement (e.g., walking, sitting)
- component[symptom]: Patient-reported symptoms (e.g., palpitations, chest pain)
- component[severity]: Severity of the reported symptoms (e.g., mild, moderate)

The PPGObservation profile encodes the result of a single-point-in-time screening that may indicate signs of arrhythmia risk, typically used in outpatient or at-home settings.

---

### Terminology

- [PPG Heart Rate Codes](./ValueSet-ppg-heart-rate-codes.html)
- [PPG Activity Codes](./ValueSet-ppg-activity-context.html)
- [PPG Rythm Codes](./ValueSet-ppg-rythm-codes.html)
- [PPG Severity Codes](./ValueSet-ppg-severity-codes.html)
- [PPG Symptom Codes](./ValueSet-ppg-symptom-codes.html)

## Example References

- [Observation – Heart Rhythm & Signal Quality](./Observation-obs-ppg-afib.html)

---
