<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2025-10-06**

### Telemonitoring Hub Identifier

- **Carepath Identifier**: https://hl7belgium.org/fhir/patient-monitoring/carepath/perioperative-abdominal
- **Carepath Version**: 1.0.0

### Care Pathway Overview

The perioperative care path for abdominal surgery refers to the care of a patient who received abdominal surgery.

The care path typically contains following phases

- Preoperative Phase (Before Surgery)
- Intraoperative Phase (During Surgery)
- Postoperative Phase (After Surgery)

### Process and Workflow Description

#### Start-Up

- **Informed consent**: Collected and securely stored.
- **Parameters Monitored**:
    - Blood Pressure
    - Heart Rate
    - Oxygen Saturation
    - Body temperature
    - Redon drain fluid
    - Appetite
    - Pain Surgical Wound
    - Painkillers
    - Nausea
    - Stool (Bristol Stool Scale)
    - Wexner Continence score
    - Incontince severity index
    - Remarks HCP

#### Data Collection

- Data is manually entered into the system by patient or health care provider.
- Technology is CE-certified, with end-to-end encryption and GDPR compliance.

### Integration Modules for EPD

#### Outcome Module - FHIR Integration

##### General

- **Frequency**: Maximum of 5 updates per day, on average 1 update per day (per measurement).
- **LOINC and SNOMED CT Codes**:

<div class="table-md"></div>

| Description                 | FHIR Profile                                                                                |
|-----------------------------|---------------------------------------------------------------------------------------------|
| Blood pressure              | [`Observation-bp`](http://hl7.org/fhir/StructureDefinition/bp)                              |
| Heart rate (BPM)            | [`Observation-hr`](http://hl7.org/fhir/StructureDefinition/heartrate)                       |
| Oxygen Saturation (SPO2)    | [`Observation-oxygensat`](https://hl7.org/fhir/oxygensat.html)                              |
| Body temperature (C)        | [`Observation-bodytemp`](https://hl7.org/fhir/bodytemp.html)                                |
| Redon drain fluid (mL/24h ) | [`Observation-drain-fluid`](./StructureDefinition-drain-fluid-observation.html)             |
| Appetite                    | [`Observation-appetite`](./StructureDefinition-appetite-observation.html)                   |
| Pain Surgical Wound         | [`Observation-wound-pain`](./StructureDefinition-surgical-wound-pain-observation.html)      |
| Painkillers                 | [`Observation-painkiller`](./StructureDefinition-painkiller-usage-observation.html)         |
| Nausea                      | [`Observation-nausea`](./StructureDefinition-nausea-observation.html)                       |
| Stool                       | [`Observation-stool`](./StructureDefinition-stool-observation.html)                         |
| Wexner/CCIS score           | [`Observation-wexner-ccis-score`](./StructureDefinition-wexner-ccis-score-observation.html) |
| Bladder continence          | [`Observation-continence-level`](./StructureDefinition-bladder-continence-observation.html) |
| Remarks HCP                 | [`Clinical-note`](./StructureDefinition-clinical-note-observation.html)                     |                                                                       

- To be decided codes
<div class="table-md"></div>

| Description       | Code(s)                         | Possible Answers     |
|-------------------|---------------------------------|----------------------|
| Wexner/CCIS score | <span class="warning">??</span> | ValueInteger 1 to 20 |

### Specification:

For detailed specifications, refer to the

- [Blood Pressure Example](./Observation-BloodPressureExample2.html)
- [Heart Rate Example](./Observation-HeartRateExample2.html)
- [Saturation Example](./Observation-OxygenSaturationExample2.html)
- [Temperature Example](./Observation-BodyTemperatureExample.html)
- [Redon drain fluid Example](./Observation-DrainFluidExample.html)
- [Appetite Example](./Observation-AppetiteExample.html)
- [Pain surgical wound Example](./Observation-PainSurgicalWoundsExample2.html)
- [Painkillers Example](./Observation-PainKillerExample.html)
- [Nausea Example](./Observation-NauseaExample2.html)
- [Stool Example](./Observation-StoolScoreExample.html)
- [Wexner Continence score Example](./Observation-IncontinenceScoreExample.html)
- [Bladder continence Example](./Observation-BladderContinenceExample.html)
- [Remarks HCP Example](./Observation-ClinicalNoteExample.html)

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the parameters.