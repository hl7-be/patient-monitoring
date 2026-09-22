<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2026-09-21**

### Telemonitoring Hub Identifier

- **Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/cpap
- **Carepath Version**: 1.0.0

### Care Pathway Overview

This carepath describes the follow-up of patients treated with **positive airway pressure (PAP) therapy** for sleep
apnea. CPAP is the most common therapy mode, but the carepath covers the whole family of sleep apnea breathing therapy
equipment (SABTE).

<div class="table-md"></div>

| Therapy mode                            | Abbreviation | Description                                                        |
|-----------------------------------------|--------------|---------------------------------------------------------------------|
| Continuous positive airway pressure     | CPAP         | One fixed therapeutic pressure                                      |
| Automatic positive airway pressure      | APAP         | Pressure adapted automatically between a minimum and a maximum      |
| Bilevel positive airway pressure        | BPAP         | Separate inspiratory and expiratory pressure (S, T and ST variants) |
| Adaptive servo-ventilation              | ASV          | Pressure support adapted breath-by-breath, e.g. for central apnea   |

- **Monitoring Duration**: Continuous, for the duration of the therapy (typically multi-year).
- **Central Care Facility**: Sleep clinic / pneumology department with a dedicated PAP follow-up team.
- **Data Source**: The PAP device, read out through its internal modem or SD card and forwarded by the manufacturer's
  therapy management platform (e.g. ResMed, Philips, Löwenstein).
- **Reporting Obligation**: Adherence data is reported back to the mutualities, which makes therapy usage time a
  reimbursement-relevant data point rather than only a clinical one.

#### Patient Eligibility

- **Indications**: Diagnosed obstructive, central or mixed sleep apnea with an indication for PAP therapy.
- **Consent**: Signed informed consent for remote follow-up prior to enrolment.
- **Enrolment**: The device is registered on the manufacturer's therapy management platform and linked to the patient.

---

### Process and Workflow Description

#### Start-Up

- **Device delivery and mask fitting**: The device and an appropriate mask are fitted; the mask type materially
  affects leak values and is therefore relevant follow-up information.
- **Informed consent**: Collected and securely stored.
- **Initial settings**: Therapy mode and pressure settings are programmed and recorded as the baseline.

#### Data Collection

- The device records therapy data per session (typically one night) and transmits it to the manufacturer's platform,
  usually daily.
- The platform aggregates the sessions into daily and periodic summaries.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

#### Alarm Management

- **Adherence**: Usage below the agreed threshold (commonly expressed as hours per night over a reporting period) is
  flagged for follow-up and is relevant for continued reimbursement.
- **Residual events**: A residual AHI above threshold indicates insufficiently controlled apnea and triggers review of
  the therapy settings.
- **Leak**: Excessive leak indicates a mask problem and is addressed by the follow-up team.
- **Review**: Data is reviewed by the sleep clinic team during working hours.

---

### Reference Implementation Guide

This carepath builds on the HL7 International:

> **Personal Health Device (PHD) Implementation Guide**
> [https://build.fhir.org/ig/HL7/phd/en/](https://build.fhir.org/ig/HL7/phd/en/)
> Package: `hl7.fhir.uv.phd#2.0.0` — **based on FHIR 4.0.1**

The PHD IG defines how measurements from personal health devices are carried in FHIR, using ISO/IEEE 11073-10101 (MDC)
nomenclature for both the device type and the individual measurements. Sleep apnea breathing therapy equipment is one
of the device specializations it supports, and the MDC nomenclature contains a dedicated **SABTE** block covering
usage time, residual events, leak, pressure and therapy mode.

Unlike the [ICD / CIED carepath](./carepath-cied.html), the PHD IG is published against the **same FHIR version as
this IG (4.0.1)**. Its profiles can therefore be referenced and used directly, and `hl7.fhir.uv.phd` can be added to
this IG's dependencies when Belgian profiles or examples are added.

##### Profiles

<div class="table-md"></div>

| Description                                        | FHIR Profile                                                                                                                       |
|----------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| Numeric measurement (usage, AHI, leak, pressure)   | [`PhdNumericObservation`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhdNumericObservation.html)                        |
| Coded measurement (therapy mode, device mode)      | [`PhdCodedEnumerationObservation`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhdCodedEnumerationObservation.html)      |
| Grouped measurements reported together             | [`PhdCompoundObservation`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhdCompoundObservation.html)                      |
| The PAP device                                     | [`PhdDevice`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhdDevice.html)                                                |
| The gateway forwarding the data                    | [`PhgDevice`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhgDevice.html)                                                |
| Patient as reported by the gateway                 | [`PhdPatient`](https://build.fhir.org/ig/HL7/phd/en/StructureDefinition-PhdPatient.html)                                              |

`PhdNumericObservation` binds `Observation.code` extensibly to the MDC nomenclature, constrains `value[x]` to a
`Quantity` with a UCUM unit, requires `device` to reference a `PhdDevice`, and — importantly for this carepath —
allows `effective[x]` to be an `effectivePeriod`, which is what a per-night or per-period summary needs.

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Frequency**: One therapy report per reporting period, plus reports on request.
- **Content**: Adherence graph, residual AHI, leak and pressure statistics as produced by the manufacturer's platform.
- **Use**: Added to the patient file, shared externally and used for reporting back to the mutualities.
- **FHIR**: Attached to the therapy report as `DiagnosticReport.presentedForm`.

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: One set of summary observations per night, plus aggregated summaries per reporting period.
- **Terminology**: `urn:iso:std:iso:11073:10101` (MDC), SABTE block, with UCUM units.

##### Therapy mode and device type

The therapy mode is exchanged as a coded observation using `MDC_SABTE_MODE_THERAPY_SET` with one of the enumerated
mode values:

<div class="table-md"></div>

| MDC code | Reference ID                             | Mode                                   |
|----------|------------------------------------------|----------------------------------------|
| 8410888  | `MDC_SABTE_MODE_THERAPY_SET`             | *(the observation code itself)*        |
| 8410890  | `MDC_SABTE_MODE_THERAPY_CPAP`            | CPAP                                   |
| 8410891  | `MDC_SABTE_MODE_THERAPY_CPAP_AUTO`       | APAP                                   |
| 8410892  | `MDC_SABTE_MODE_THERAPY_BPAP_S`          | BPAP spontaneous                       |
| 8410893  | `MDC_SABTE_MODE_THERAPY_BPAP_T`          | BPAP timed                             |
| 8410894  | `MDC_SABTE_MODE_THERAPY_BPAP_ST`         | BPAP spontaneous/timed                 |
| 8410895  | `MDC_SABTE_MODE_THERAPY_BPAP_S_AUTO`     | BPAP spontaneous, auto-adjusting       |
| 8410896  | `MDC_SABTE_MODE_THERAPY_BPAP_T_AUTO`     | BPAP timed, auto-adjusting             |
| 8410897  | `MDC_SABTE_MODE_THERAPY_BPAP_ST_AUTO`    | BPAP spontaneous/timed, auto-adjusting |
| 8410898  | `MDC_SABTE_MODE_THERAPY_ACSV`            | ASV                                    |

In addition, the device itself carries its specialization on `PhdDevice.specialization`, bound to the PHD value set
[`DeviceTypes11073MDC`](https://build.fhir.org/ig/HL7/phd/en/ValueSet-DeviceTypes11073MDC.html), which contains both
the SABTE profile and the PAP sub-specializations:

<div class="table-md"></div>

| MDC code | Reference ID                        | Meaning                              |
|----------|-------------------------------------|--------------------------------------|
| 528408   | `MDC_DEV_SPEC_PROFILE_SABTE`        | Sleep apnea breathing therapy equipment |
| 528532   | `MDC_DEV_SUB_SPEC_PROFILE_CPAP`     | CPAP device                          |
| 528533   | `MDC_DEV_SUB_SPEC_PROFILE_CPAP_AUTO`| APAP device                          |
| 528534   | `MDC_DEV_SUB_SPEC_PROFILE_BPAP`     | BPAP device                          |
| 528535   | `MDC_DEV_SUB_SPEC_PROFILE_BPAP_AUTO`| Auto-adjusting BPAP device           |
| 528536   | `MDC_DEV_SUB_SPEC_PROFILE_ACSV`     | ASV device                           |

##### Therapy usage and adherence

<div class="table-md"></div>

| MDC code | Reference ID                          | Meaning                                              | Unit |
|----------|---------------------------------------|------------------------------------------------------|------|
| 8410708  | `MDC_SABTE_TIME_PD_FLOW_GEN_TOTAL`    | Time the flow generator was running (device "on")    | s    |
| 8410712  | `MDC_SABTE_TIME_PD_USAGE_TOTAL`       | Time therapy was actually delivered (device "in use")| s    |
| 8410716  | `MDC_SABTE_TIME_PD_USAGE_W_HUM`       | Usage time with humidifier                           | s    |
| 8410720  | `MDC_SABTE_TIME_PD_USAGE_WO_HUM`      | Usage time without humidifier                        | s    |
| 8410744  | `MDC_SABTE_TIME_PD_RAMP_SET`          | Programmed ramp duration                             | s    |

The distinction between *flow generator time* and *usage time* is exactly the "how long the device was on" versus
"how long the device was in use" pair requested by the clinical side, and both are needed: adherence is based on
usage time, while the difference between the two is itself informative.

##### Residual respiratory events

<div class="table-md"></div>

| MDC code | Reference ID                       | Meaning                                  | Unit  |
|----------|------------------------------------|------------------------------------------|-------|
| 8410788  | `MDC_SABTE_AHI`                    | Apnea-hypopnea index                     | /h    |
| 8410792  | `MDC_SABTE_AHI_TOTAL`              | Total AHI                                | /h    |
| 8410800  | `MDC_SABTE_AHI_OBSTRUC`            | Obstructive AHI                          | /h    |
| 8410804  | `MDC_SABTE_AHI_CENTRAL`            | Central AHI                              | /h    |
| 8410796  | `MDC_SABTE_AHI_UNCLASS`            | Unclassified AHI                         | /h    |
| 8410724  | `MDC_SABTE_TIME_PD_SNORING_TOTAL`  | Total snoring time                       | s     |
| 8410728  | `MDC_SABTE_TIME_PD_CSR_TOTAL`      | Total Cheyne-Stokes respiration time     | s     |

##### Leak

<div class="table-md"></div>

| MDC code | Reference ID                  | Meaning                      | Unit  |
|----------|-------------------------------|------------------------------|-------|
| 8411040  | `MDC_SABTE_VOL_LEAK`          | Leak                         | L/min |
| 8411041  | `MDC_SABTE_VOL_LEAK_MAX`      | Maximum leak                 | L/min |
| 8411042  | `MDC_SABTE_VOL_LEAK_MIN`      | Minimum leak                 | L/min |
| 8411043  | `MDC_SABTE_VOL_LEAK_MEAN`     | Mean leak                    | L/min |
| 8411047  | `MDC_SABTE_VOL_LEAK_P50`      | Median leak                  | L/min |
| 8411049  | `MDC_SABTE_VOL_LEAK_P90`      | 90th percentile leak         | L/min |
| 8411050  | `MDC_SABTE_VOL_LEAK_P95`      | 95th percentile leak         | L/min |

##### Pressure

<div class="table-md"></div>

| MDC code | Reference ID                          | Meaning                                | Unit   |
|----------|---------------------------------------|----------------------------------------|--------|
| 8410944  | `MDC_SABTE_PRESS`                     | Delivered pressure                     | cm[H2O]|
| 8410945  | `MDC_SABTE_PRESS_MAX`                 | Maximum delivered pressure             | cm[H2O]|
| 8410946  | `MDC_SABTE_PRESS_MIN`                 | Minimum delivered pressure             | cm[H2O]|
| 8410947  | `MDC_SABTE_PRESS_MEAN`                | Mean delivered pressure                | cm[H2O]|
| 8410951  | `MDC_SABTE_PRESS_P50`                 | Median delivered pressure              | cm[H2O]|
| 8410953  | `MDC_SABTE_PRESS_P90`                 | 90th percentile delivered pressure     | cm[H2O]|
| 8410954  | `MDC_SABTE_PRESS_P95`                 | 95th percentile delivered pressure     | cm[H2O]|
| 8410964  | `MDC_SABTE_PRESS_CPAP_SET`            | Programmed CPAP pressure               | cm[H2O]|
| 8410968  | `MDC_SABTE_PRESS_CPAP_AUTO_MAX_SET`   | Programmed APAP maximum pressure       | cm[H2O]|
| 8410972  | `MDC_SABTE_PRESS_CPAP_AUTO_MIN_SET`   | Programmed APAP minimum pressure       | cm[H2O]|
| 8410976  | `MDC_SABTE_PRESS_IPAP_SET`            | Programmed inspiratory pressure (BPAP) | cm[H2O]|
| 8410980  | `MDC_SABTE_PRESS_EPAP_SET`            | Programmed expiratory pressure (BPAP)  | cm[H2O]|
| 8410984  | `MDC_SABTE_PRESS_RAMP_START_SET`      | Programmed ramp start pressure         | cm[H2O]|

The `_SET` codes carry the programmed settings, which are the values requested for APAP and ASV follow-up; the
remaining codes carry what the device actually delivered.

##### Further ventilation parameters

Relevant mainly for BPAP and ASV: `MDC_SABTE_RESP_RATE` (8410992), `MDC_SABTE_VOL_TIDAL` (8411072),
`MDC_SABTE_VOL_MINUTE` (8411056) and `MDC_SABTE_RATIO_IE` (8411008), each with the same
`_MAX` / `_MIN` / `_MEAN` / `_P50` / `_P90` / `_P95` statistical variants as leak and pressure.

---

### Gap Assessment

The first step requested for this carepath was to assess what is already covered by the PHD IG and where the gaps are.

**Covered by PHD and the MDC nomenclature:**

- Therapy mode, device specialization, manufacturer, model and serial number.
- Usage and flow generator time, residual AHI with its obstructive/central/unclassified breakdown, snoring and CSR
  time, leak, delivered and programmed pressures, and the ventilation parameters.
- The structural pattern for carrying each of these as an `Observation` with an MDC code, a UCUM unit, a period and a
  device reference.

**Gaps to be resolved in this IG:**

<div class="table-md"></div>

| Gap                        | Description                                                                                                                                                                                                                                                 |
|----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| No report container        | PHD defines no `DiagnosticReport` profile — it models device-to-server measurement upload, not a clinical report. The therapy report toward the EPD, including the PDF for the patient file and the mutualities, has to be defined here.                     |
| Device identification      | `PhdDevice` requires an IEEE EUI-64 System-Id identifier, which comes from the Bluetooth/Continua transport. Data arriving from a manufacturer's cloud platform rather than from a direct device connection may not carry one. This needs a Belgian decision. |
| Mask information           | The MDC nomenclature has no code for mask type or model — only `MDC_SABTE_MODE_DEV_MASK_FITTING` (a device mode) and ventilator mask-leak events. Mask information was explicitly requested, so a representation has to be chosen.                            |
| Vendor semantic variation  | ResMed and Löwenstein report AHI and leak comparably; Philips is reported to differ, expressing some values as event counts rather than as an index or a flow rate. The exact code and unit per vendor has to be agreed so the EPD receives comparable data.  |
| Summary period             | The reporting period for each summary (per night, per week, per reimbursement period) has to be fixed, and expressed consistently in `effectivePeriod`.                                                                                                      |
| Ambiguous MDC codes        | The MDC expansion contains near-duplicate reference IDs at different code points — for example `MDC_SABTE_VOL_LEAK_MIN` appears at both 8411042 and 8411089, and `MDC_SABTE_PRESS_P90` at both 8410953 and 8410957. Exact codes must be pinned per data point. |
| Clinical interpretation    | A free-text clinical conclusion by the sleep clinic is part of the requested exchange and has no MDC equivalent; the existing [Clinical Note Observation](./StructureDefinition-clinical-note-observation.html) can be reused.                                |

### Terminology

<div class="table-md"></div>

| Purpose                                | System                                                          |
|----------------------------------------|-------------------------------------------------------------------|
| Device specialization and measurements | `urn:iso:std:iso:11073:10101` (ISO/IEEE 11073-10101, SABTE block) |
| PHD observation category               | `http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories`   |
| Units                                  | `http://unitsofmeasure.org` (UCUM)                                 |

As for the [ICD / CIED carepath](./carepath-cied.html), MDC rather than SNOMED CT is the terminology of choice here:
the data points are produced by the devices themselves using the ISO/IEEE nomenclature. This is a deliberate exception
to the general rule described on the [Terminologies](./terminology.html) page.

### Example References

The PHD IG publishes examples of the structural pattern, though not for sleep apnea equipment specifically:

- [Bundle: first-time transaction](https://build.fhir.org/ig/HL7/phd/en/Bundle-bundle-example-1.html) — Patient,
  Device and Observation in one upload.
- [Observation: numeric measurement](https://build.fhir.org/ig/HL7/phd/en/Observation-temperature-observation.html) —
  the `PhdNumericObservation` pattern.
- [Device: PHD system information](https://build.fhir.org/ig/HL7/phd/en/Device-phd-711000FEFF5F49B0.B0495F001071.html)

Belgian examples for PAP therapy are to be added once the gaps above are resolved.

### Open Items

<div class="table-md"></div>

| Topic                   | Description                                                                                                              |
|-------------------------|--------------------------------------------------------------------------------------------------------------------------|
| Dependency              | Add `hl7.fhir.uv.phd` to this IG's dependencies once Belgian profiles or examples referencing PHD are introduced.         |
| Minimum data set        | Confirm the minimum set of MDC codes per therapy mode with the sleep clinics and the PAP vendors.                         |
| Vendor alignment        | Validate the mapping against ResMed, Philips and Löwenstein platform exports.                                             |
| Reimbursement reporting | Determine whether the adherence data reported to the mutualities can be derived from the same observations.               |
| HCP involvement         | Review the minimum data set and the alerting thresholds with the treating pneumologists.                                  |
