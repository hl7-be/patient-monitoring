# Carepath Perioperative care - abdominal - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Carepath Perioperative care - abdominal

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

**DRAFT: 2025-10-06**

### Telemonitoring Hub Identifier

* **Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/perioperative-abdominal
* **Carepath Version**: 1.0.0

### Care Pathway Overview

The perioperative care path for abdominal surgery refers to the care of a patient who received abdominal surgery.

The care path typically contains following phases

* Preoperative Phase (Before Surgery)
* Intraoperative Phase (During Surgery)
* Postoperative Phase (After Surgery)

### Process and Workflow Description

#### Start-Up

* **Informed consent**: Collected and securely stored.
* **Parameters Monitored**: 
* Blood Pressure
* Heart Rate
* Oxygen Saturation
* Body temperature
* Redon drain fluid
* Appetite
* Pain Surgical Wound
* Painkillers
* Nausea
* Stool (Bristol Stool Scale)
* Wexner Continence score
* Incontince severity index
* Remarks HCP
 

#### Data Collection

* Data is manually entered into the system by patient or health care provider.
* Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### General

* **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
* **LOINC and SNOMED CT Codes**:

| | |
| :--- | :--- |
| Blood pressure | [`Observation-bp`](http://hl7.org/fhir/StructureDefinition/bp) |
| Heart rate (BPM) | [`Observation-hr`](http://hl7.org/fhir/StructureDefinition/heartrate) |
| Oxygen Saturation (SPO2) | [`Observation-oxygensat`](https://hl7.org/fhir/oxygensat.html) |
| Body temperature (C) | [`Observation-bodytemp`](https://hl7.org/fhir/bodytemp.html) |
| Redon drain fluid (mL/24h ) | [`Observation-drain-fluid`](./StructureDefinition-drain-fluid-observation.md) |
| Appetite | [`Observation-appetite`](./StructureDefinition-appetite-observation.md) |
| Pain Surgical Wound | [`Observation-wound-pain`](./StructureDefinition-surgical-wound-pain-observation.md) |
| Painkillers | [`Observation-painkiller`](./StructureDefinition-painkiller-usage-observation.md) |
| Nausea | [`Observation-nausea`](./StructureDefinition-nausea-observation.md) |
| Stool | [`Observation-stool`](./StructureDefinition-stool-observation.md) |
| Wexner/CCIS score | [`Observation-wexner-ccis-score`](./StructureDefinition-wexner-ccis-score-observation.md) |
| Bladder continence | [`Observation-continence-level`](./StructureDefinition-bladder-continence-observation.md) |
| Remarks HCP | [`Clinical-note`](./StructureDefinition-clinical-note-observation.md) |

* To be decided codes

| | | |
| :--- | :--- | :--- |
| Wexner/CCIS score | ?? | ValueInteger 1 to 20 |

### Specification:

For detailed specifications, refer to the

* [Blood Pressure Example](./Observation-BloodPressureExample2.md)
* [Heart Rate Example](./Observation-HeartRateExample2.md)
* [Saturation Example](./Observation-OxygenSaturationExample2.md)
* [Temperature Example](./Observation-BodyTemperatureExample.md)
* [Redon drain fluid Example](./Observation-DrainFluidExample.md)
* [Appetite Example](./Observation-AppetiteExample.md)
* [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample2.md)
* [Painkillers Example](./Observation-PainKillerExample.md)
* [Nausea Example](./Observation-NauseaExample2.md)
* [Stool Example](./Observation-StoolScoreExample.md)
* [Wexner Continence score Example](./Observation-IncontinenceScoreExample.md)
* [Bladder continence Example](./Observation-BladderContinenceExample.md)
* [Remarks HCP Example](./Observation-ClinicalNoteExample.md)

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the parameters.

