URL: https://www.telemonitoring-prescription.com/

### **Heart Failure Care Pathway: Telemonitoring Integration**

DRAFT : 2024-10-01


#### **Objective:**

This document describes the technical requirements and expectations for integrating data from the Heart Failure care pathway into an Electronic Patient Record (EPD), in line with the Telemonitoring guidelines and the principles of FAIR data (Findable, Accessible, Interoperable, Reusable). The integration includes both PDF generation and FHIR compliance to ensure a smooth and consistent data flow between systems.

***


### **1. Heart Failure Care Pathway: Overview**

**Duration:** 4 years\
**Central Care Facility:** Specialized heart failure center with a telemonitoring team.\
**Minimal Capacity:** 0.5 FTE heart failure nurse per 100 patients.\
**Educational Material:** Available for self-management and adherence.\
**Accessibility:** Reachable during office hours.

**Patient Criteria:**

- NYHA classification II or III (85% of all new patients, \~21,000 per year)

- Signed informed consent

- At least 1 physical consultation 2 years before the start of telemonitoring

- Ability to sustainably implement telemonitoring

***


### ********

### **2. Process and Workflow Description**

#### **Start-Up:**

- Screening and risk assessment performed by the heart failure center.

- Informed consent is collected and securely stored.

- General practitioner or home nurse is involved in the workflow.

- Parameters monitored: Heart Rate (HR), Blood Pressure (BP), Weight (BW).

  - Frequency: Daily, once per day, 7 days a week, 6 months.


#### **Data Collection:**

- Data is automatically collected via connected devices or manually entered into the system.

- Technology is CE certified, with end-to-end encryption and GDPR compliant.


#### **Alarm Management:**

- Heart failure alarm thresholds are predefined on the digital platform.

- The heart failure team checks the collected data daily during working hours.

- In case of alarms, the general practitioner or home nurse is informed within 5 working days (or within 48 hours if urgent).

***


### ********

### **3. Integration Modules for EPD**

**Outcome Module - PDF**

- **Daily Updates:** The Telemonitoring Overview is updated daily per measurement.

- **Content:** Overview of the questions and vital parameters.

- **File Size:** ±100KB per PDF, max : 10MB per PDF

**Example :** 

****![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdWX17TQScQ0aE34tYE2ipCfU6HXdQc754lAuq648GnvxsJ01Nrq1NCb9to3Djy9fkTGLkBUNqxgFxpQkpveeBijcWx5E9zIFxDNi_wcWdB6wAEl3je2X3dmc-rVH6bsNUWSQKZznJh_giv5IBM0qWSY8VJ?key=6Kaq7lqtajICNiFjKTzGKQ)****


#### ********

#### **Outcome Module - FHIR Integratie**

**Vital Signs:**

- **Frequency:** Maximum of 5 updates per day, on average 1 update per day (per measurement).

- **LOINC codes for vital parameters:**

  - **Heart Rate (HR):** LOINC 8867-4

  - **Blood Pressure (BP):** LOINC 8480-6 / 8463-4

  - **Weight (BW):** LOINC 29463-7

These FHIR modules ensure standardized data exchange between systems and guarantee consistency of the vital parameters.

**Example :** 

    {
      resourceType: "Observation",
      id: "tm-xxxx-xxx-xxx",
      meta: {profile:["http://hl7.org/fhir/StructureDefinition/vitalsigns"]},
      text: {
       status: "generated",
       div: "<div xmlns="http://www.w3.org/1999/xhtml"><p>Heart Rate Measurement</p></div>"
      },
      status: "final",
      category: [{
         coding:[{
         system: "http://terminology.hl7.org/CodeSystem/observation-category",
         code: "vital-signs",
         display: "Vital Signs"
         }]
      }],
      code:{
        coding: [{
          system: "http://loinc.org",
          code: "8867-4",
          display: "Heart rate"
       }]},
      subject:{reference: "Patient/XXX-XXX"},
      effectiveDateTime: "2024-10-07T10:27:18+00:00",




      component: [{
        code: {
         coding: [{
           system: "http://loinc.org",
           code: "8867-4",
           display: "Heart rate"}
        },
        valueQuantity: {
          value: 74,
          unit: "beats/min",
          system: "http://unitsofmeasure.org",
          code: "/min"
        }}],
      device:{reference: "Device/Byteflies Vital Signs"}
    }

**Questionnaires:**

- **Frequency: TBC**

- **LOINC codes for questionnaires: TBC**

*


#### **Dashboard Module**

- **N/A** (For this care pathway, no direct dashboard integration is foreseen).

***


### ********

### **4. Expectations for EPD Integration**

For each integration, EPDs must be able to:

- Correctly process **PDF files** and make them visible to healthcare providers within the EPD and Health Hubs.

- Optionally: Interpret **FHIR data** according to the specified LOINC codes and link the data to the appropriate patient records (in this case, the PDF does not need to be linked).

The Telemonitoring Coördination application must foresee : 

- To support automated workflows that **trigger alerts** when thresholds are exceeded.

\


Optie 1 : EPD + Carepath Provider + Telemetry Provider

Optie 2 : EPD + Telemetry Provider

