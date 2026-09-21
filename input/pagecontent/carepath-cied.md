<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2026-09-21**

### Telemonitoring Hub Identifier

- **Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/cied
- **Carepath Version**: 1.0.0

### Care Pathway Overview

This carepath describes the remote follow-up of patients carrying a **Cardiac Implantable Electronic Device (CIED)**.
The term CIED covers the full family of implanted cardiac devices; the **ICD** (implantable cardioverter defibrillator)
is the most frequent device in a telemonitoring setting, but the carepath applies to all types listed below.

<div class="table-md"></div>

| Device type                                     | Abbreviation | Primary purpose                                                        |
|-------------------------------------------------|--------------|------------------------------------------------------------------------|
| Implantable pulse generator (pacemaker)         | IPG          | Bradycardia pacing                                                      |
| Implantable cardioverter defibrillator          | ICD          | Detection and termination of ventricular tachyarrhythmia                |
| Cardiac resynchronisation therapy defibrillator | CRT-D        | Resynchronisation combined with defibrillation                          |
| Cardiac resynchronisation therapy pacemaker     | CRT-P        | Resynchronisation pacing                                                |
| Insertable/implantable cardiac monitor          | ICM          | Long-term rhythm monitoring without therapy                             |

- **Monitoring Duration**: Continuous, for the entire service life of the device (typically 5–15 years).
- **Central Care Facility**: Cardiology department with a device clinic and a dedicated CIED follow-up team.
- **Data Source**: The implanted device, read out by a bedside monitor, a mobile app or an in-clinic programmer,
  and forwarded by the manufacturer's remote monitoring platform.
- **Accessibility**: Device clinic reachable during office hours; alert triage on working days.

#### Patient Eligibility

- **Indications**: Any patient carrying a CIED who is enrolled in remote follow-up after implantation or device replacement.
- **Consent**: Signed informed consent for remote monitoring prior to enrolment.
- **Enrolment**: The patient is paired with a monitor/transmitter and registered on the manufacturer's remote monitoring platform.

---

### Process and Workflow Description

#### Start-Up

- **Device association**: The implanted device, its leads and the monitor are associated with the patient on the remote
  monitoring platform. Until this association is complete, no interrogation data can be exchanged.
- **Informed consent**: Collected and securely stored.
- **Baseline interrogation**: A full in-clinic interrogation is performed at implantation and serves as the reference
  for later remote transmissions.
- **Patient instructions**: Provided on the placement of the bedside monitor or the use of the mobile app.

#### Data Collection

Three transmission types occur in this carepath:

1. **Scheduled remote interrogation** — a periodic, complete device read-out (typically every 3 to 12 months,
   depending on device type and national reimbursement rules).
2. **Alert-triggered transmission** — an unscheduled transmission sent automatically when the device detects a
   programmed alert condition (arrhythmia episode, delivered therapy, lead or battery problem).
3. **In-clinic interrogation** — a read-out through a programmer during a physical consultation, producing the same
   data set as a remote interrogation.

Each interrogation produces a **report** (a document for the patient record) and a **set of discrete, computable
findings** (measurements, programmed settings, episode summaries, delivered therapy). This carepath specifies how the
discrete findings are sent to the EPD as `Observation` resources so they can be used for trending, decision support
and registry use, rather than only being archived as a PDF.

#### Alarm Management

- **Thresholds**: Alert thresholds are programmed in the device and mirrored on the remote monitoring platform
  (e.g. lead impedance out of range, low battery / RRT reached, AT/AF burden above threshold, delivered shock).
- **Severity**: The platform classifies alerts as red (immediate action) or yellow (review at next working day).
- **Triage**: All transmissions are reviewed by the CIED follow-up team during working hours.
- **Notification**: The treating cardiologist is informed for red alerts; the general practitioner is informed
  according to local agreements.
- **Connectivity loss**: A device that stops transmitting is itself an actionable event and is reported separately
  (see *Connectivity status* below).

---

### Reference Implementation Guide

This carepath does **not** define its own profiles. The data model for cardiac implantable electronic devices is
already specified by HL7 International in:

> **CardX - Cardiac Implantable Electronic Devices (CardX - CIED)**
> [https://build.fhir.org/ig/HL7/CardX-CIED/en/](https://build.fhir.org/ig/HL7/CardX-CIED/en/)
> Canonical base: `http://hl7.org/fhir/uv/cardx-cied`

CardX - CIED builds on the **IDCO** (Implantable Device Cardiac Observation) profile, in use by the CIED industry since
2006, and re-expresses it as FHIR. Belgian implementers of this carepath are expected to follow the CardX - CIED
profiles as-is; this page only describes **which** artefacts are used, **when** they are exchanged and **which**
elements the Belgian EPD expects to receive.

<div class="stu-note">
<b>Open item — FHIR version.</b> CardX - CIED v2.0.0 is published against FHIR R5, while this Implementation Guide is
published against FHIR R4 (4.0.1). An R4 sender therefore cannot literally claim conformance to the CardX - CIED
StructureDefinitions. Until a cross-version alignment is agreed, the expectation for this draft carepath is that R4
senders reproduce the CardX - CIED content model (codes, components, cardinalities) on the equivalent R4 resources.
The main differences to be resolved are <code>DeviceAssociation</code> (R5 only; in R4 the device/patient and
device/lead relationships are expressed through <code>Device.patient</code> and <code>Device.parent</code>) and
<code>Device.type</code> (0..* in R5, 0..1 in R4). This item is to be taken up with the FHIR validation team.
</div>

---

### Integration Modules for EPD

#### Outcome Module - PDF

- **Frequency**: One report per interrogation (scheduled, alert-triggered or in-clinic).
- **Content**: Full device interrogation report as produced by the manufacturer's platform, including intracardiac
  electrograms of the reported episodes.
- **File Size**: ±0.5–5MB per report, depending on the number of episodes and electrogram strips.
- **FHIR**: Attached to the interrogation report as `DiagnosticReport.presentedForm`.

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: 1 transmission per scheduled interval (3–12 months) plus alert-triggered transmissions;
  on average a few transmissions per patient per year. Connectivity status is refreshed daily by the platform.
- **Transport**: The complete result of one interrogation is sent as a single **IDCO Bundle** (a `collection`
  Bundle). The EPD can also subscribe to individual observations through the IDCO Observation Subscription Topic.

##### Profiles

<div class="table-md"></div>

| Description                                    | FHIR Profile                                                                                                                                       |
|------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Interrogation result (discrete findings)       | [`IdcoObservation`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-IdcoObservation.html)                                           |
| Connectivity status of the monitoring chain    | [`Observation - CIED Connectivity`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-connectivity-status.html)                  |
| Interrogation report (container)               | [`CIED Diagnostic Report`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-diagnostic-report.html)                             |
| Interrogation session                          | [`CIED Interrogation Procedure`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-interrogation-procedure.html)                 |
| Implanted device                               | [`Device - CIED`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-device.html)                                                 |
| Implanted lead                                 | [`Device - CIED Lead`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-device-lead.html)                                       |
| Bedside monitor / transmitter                  | [`Device - CIED Monitor`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-monitor.html)                                        |
| Device ↔ patient and device ↔ lead association | [`Device Association - CIED`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-device-association.html)                         |
| Transmission container                         | [`IDCO Bundle`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-idco-bundle.html)                                                   |
| Patient                                        | [`Patient - CIED`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-patient.html)                                               |
| Reporting clinician                            | [`CIED Practitioner`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-practioner.html)                                         |
| Device clinic / monitoring organisation        | [`Organization - CIED`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-organization.html)                                     |

Supporting extensions:

<div class="table-md"></div>

| Description                                          | FHIR Extension                                                                                                                             |
|------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| Groups repeated elements (lead channel, zone, episode) | [`Instance of Repeatable Element`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-instance-idco.html)                       |
| Points to the device an observation originates from    | [`CIED Device`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-device-extension.html)                                  |
| State of a device/patient or device/lead association   | [`Association Status`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-association-status-extension.html)                    |

##### How the Observation is structured

The IDCO model differs from the other carepaths in this IG. Instead of one `Observation` per measurement, **one
`Observation` carries the complete interrogation** and every individual data point is a `component`:

- `Observation.code` identifies the nomenclature context and is fixed to
  `http://hl7.org/fhir/uv/cardx-cied/CodeSystem/CardXCIED#IDCO` *(Implantable Device Cardiac Observation)*.
- `Observation.component.code` carries the individual data point, coded with **ISO/IEEE 11073-10103 (MDC IDC)** in
  code system `urn:iso:std:iso:11073:10101`. The code is the numeric MDC term code; the reference ID
  (`MDC_IDC_...`) is used as display.
- `Observation.component.value[x]` carries the value, typed per data point (`Quantity` with a UCUM unit,
  `CodeableConcept` with an MDC enumeration code, `dateTime`, `string`, …).
- `Observation.component.interpretation` carries the abnormal flag, bound to
  [`Abnormal Flags`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-idco-abnormal-flags.html).
- The *Instance of Repeatable Element* extension on `component` groups the components that describe the same
  occurrence — for example the components of one lead channel, of one therapy zone or of one episode.

Because a single interrogation can contain several hundred data points, the set below is what the Belgian EPD expects
**at a minimum** per transmission. The full nomenclature is available through the CardX value set
[`MDC IDC`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-IDCvalues.html) and the narrative page
[Device Observations](https://build.fhir.org/ig/HL7/CardX-CIED/en/device-observations.html).

**Battery and capacitor**

<div class="table-md"></div>

| MDC code | Reference ID                               | Value type              | Unit |
|----------|--------------------------------------------|-------------------------|------|
| 721216   | `MDC_IDC_MSMT_BATTERY_DTM`                 | dateTime                | —    |
| 721280   | `MDC_IDC_MSMT_BATTERY_STATUS`              | CodeableConcept (MDC)   | —    |
| 721344   | `MDC_IDC_MSMT_BATTERY_VOLTAGE`             | Quantity                | V    |
| 721408   | `MDC_IDC_MSMT_BATTERY_IMPEDANCE`           | Quantity                | Ohm  |
| 721472   | `MDC_IDC_MSMT_BATTERY_REMAINING_LONGEVITY` | Quantity                | mo   |
| 721536   | `MDC_IDC_MSMT_BATTERY_REMAINING_PERCENTAGE`| Quantity                | %    |
| 721728   | `MDC_IDC_MSMT_CAP_CHARGE_TIME`             | Quantity                | s    |
| 721792   | `MDC_IDC_MSMT_CAP_CHARGE_ENERGY`           | Quantity                | J    |

**Lead channel** — the codes below are those of the right atrial (RA) channel; equivalent codes exist per channel
(RV, LV, …). One instance number is used per lead channel.

<div class="table-md"></div>

| MDC code | Reference ID                                            | Value type            | Unit |
|----------|---------------------------------------------------------|-----------------------|------|
| 721984   | `MDC_IDC_MSMT_LEADCHNL_RA_LEAD_CHANNEL_STATUS`          | CodeableConcept (MDC) | —    |
| 722051   | `MDC_IDC_MSMT_LEADCHNL_RA_SENSING_INTR_AMPL_MEAN`       | Quantity              | mV   |
| 722176   | `MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_AMPLITUDE`   | Quantity              | V    |
| 722240   | `MDC_IDC_MSMT_LEADCHNL_RA_PACING_THRESHOLD_PULSEWIDTH`  | Quantity              | ms   |
| 722432   | `MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_VALUE`              | Quantity              | Ohm  |
| 722496   | `MDC_IDC_MSMT_LEADCHNL_RA_IMPEDANCE_POLARITY`           | CodeableConcept (MDC) | —    |

**Programmed therapy zones** — one instance number per zone; the trailing digit of the reference ID identifies the
therapy step within the zone.

<div class="table-md"></div>

| MDC code | Reference ID                       | Value type            | Unit |
|----------|------------------------------------|-----------------------|------|
| 732097   | `MDC_IDC_SET_ZONE_TYPE_ATP_1`      | CodeableConcept (MDC) | —    |
| 732161   | `MDC_IDC_SET_ZONE_NUM_ATP_SEQS_1`  | Quantity              | —    |
| 732225   | `MDC_IDC_SET_ZONE_SHOCK_ENERGY_1`  | Quantity              | J    |
| 732289   | `MDC_IDC_SET_ZONE_NUM_SHOCKS_1`    | Quantity              | —    |

##### Device identification

The implanted device is identified through `Device.manufacturer`, `Device.modelNumber` and `Device.serialNumber`, and
typed with an MDC device type from
[`MDC IDC Device Types`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-MDCIDCDeviceTypes.html):

<div class="table-md"></div>

| MDC code | Reference ID                    | Device type                                    |
|----------|---------------------------------|------------------------------------------------|
| 753665   | `MDC_IDC_ENUM_DEV_TYPE_IPG`     | Pacemaker                                      |
| 753666   | `MDC_IDC_ENUM_DEV_TYPE_ICD`     | Implantable cardioverter defibrillator         |
| 753667   | `MDC_IDC_ENUM_DEV_TYPE_CRT_D`   | Resynchronisation therapy defibrillator        |
| 753668   | `MDC_IDC_ENUM_DEV_TYPE_CRT_P`   | Resynchronisation therapy pacemaker            |
| 753669   | `MDC_IDC_ENUM_DEV_TYPE_Monitor` | Insertable cardiac monitor                     |
| 753670   | `MDC_IDC_ENUM_DEV_TYPE_Other`   | Other implantable cardiac device               |

##### Connectivity status

A CIED that no longer transmits silently stops being monitored, so the state of the monitoring chain is exchanged as
an observation of its own, conforming to
[`Observation - CIED Connectivity`](https://build.fhir.org/ig/HL7/CardX-CIED/en/StructureDefinition-cied-connectivity-status.html).
Its components use the CardX code system
[`CardXCIED`](https://build.fhir.org/ig/HL7/CardX-CIED/en/CodeSystem-CardXCIED.html):

<div class="table-md"></div>

| Component code                    | Meaning                                                              | Value                                                                                                                 |
|-----------------------------------|----------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| `connectivity-status`             | Overall status of the monitoring chain                               | [`CIED Connectivity Status`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-cied-connectivity-state-vs.html)      |
| `connectivity-modifier`           | Manufacturer-specific refinement of the status                       | [`CIED Connectivity Status Modifier`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-cied-connectivity-state-modifier-vs.html) |
| `last-cied-connectivity-time`     | Most recent communication between device and monitor                 | dateTime                                                                                                                |
| `last-monitor-connectivity-time`  | Most recent communication between monitor and platform               | dateTime                                                                                                                |
| `next-cied-connectivity-date`     | Next expected communication between device and monitor               | dateTime                                                                                                                |
| `last-interrogation-date`         | Date of the most recent remote interrogation                         | dateTime                                                                                                                |
| `next-interrogation-date`         | Date of the next scheduled remote interrogation                      | dateTime                                                                                                                |
| `status-reason`                   | Why the patient is at this status                                    | string                                                                                                                  |
| `status-guidance`                 | Steps needed to return the patient to a connected status             | string                                                                                                                  |

The main statuses are `connected`, `disconnected`, `suspended`, `inactive`, `unenrolled`, `transferred` and
`not-applicable`. For this carepath, a transition to `disconnected` is treated as a yellow alert and triggers patient
contact by the device clinic.

##### Subscription

Rather than polling, an EPD can be notified of new interrogation data through the
[IDCO Observation Subscription Topic](https://build.fhir.org/ig/HL7/CardX-CIED/en/SubscriptionTopic-IDCOObservationSubscriptionTopic.html).
The capabilities expected from a sending remote monitoring platform are described in the
[CardX CIED Connectivity Server Capability Statement](https://build.fhir.org/ig/HL7/CardX-CIED/en/CapabilityStatement-cied-data-sender.html).

---

### Terminology

<div class="table-md"></div>

| Purpose                                   | System                                                    |
|-------------------------------------------|------------------------------------------------------------|
| Individual interrogation data points      | `urn:iso:std:iso:11073:10101` (ISO/IEEE 11073-10103, MDC IDC) |
| Observation type, connectivity, flags     | `http://hl7.org/fhir/uv/cardx-cied/CodeSystem/CardXCIED`     |
| Interrogation report code                 | `http://loinc.org#10191-5` *(Cardiac electrophysiology procedure note)* |
| Units                                     | `http://unitsofmeasure.org` (UCUM)                           |

Note that MDC, and not SNOMED CT, is the terminology of choice for this carepath. The device data points are produced
by the devices themselves using the ISO/IEEE nomenclature, and there is no SNOMED CT equivalent for the large majority
of them. This is a deliberate exception to the general rule described on the [Terminologies](./terminology.html) page.

### Example References

The CardX - CIED IG publishes a complete worked example of one transmission:

- [Bundle: IDCO transmission](https://build.fhir.org/ig/HL7/CardX-CIED/en/Bundle-uc1ACMEBundle.html) — patient, device,
  lead, associations, report, observation, organisation and practitioner in one collection.
- [Observation: IDCO interrogation result](https://build.fhir.org/ig/HL7/CardX-CIED/en/Observation-IDCOExample2.html) —
  battery, capacitor, lead channel and therapy zone components.
- [Observation: CIED connectivity](https://build.fhir.org/ig/HL7/CardX-CIED/en/Observation-uc1ConnectivityACME.html) —
  a disconnected device.

### Open Items

<div class="table-md"></div>

| Topic                        | Description                                                                                                                                  |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| FHIR version                 | Alignment between CardX - CIED (R5) and this IG (R4) — see the note above.                                                                     |
| Belgian examples             | Belgian example instances are to be added once the R4/R5 alignment is settled.                                                                 |
| Minimum data set             | The minimum set of MDC codes per device type is to be confirmed with the Belgian device clinics and the CIED manufacturers.                     |
| Patient identification       | Use of the Belgian patient identifier (SSIN) in place of the CardX [`CIED Patient Identifier`](https://build.fhir.org/ig/HL7/CardX-CIED/en/ValueSet-cied-patient-identifier.html) value set. |
| Alert severity               | Mapping of manufacturer red/yellow alert levels onto `Observation.component.interpretation` abnormal flags.                                     |
