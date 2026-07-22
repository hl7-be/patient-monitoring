# Patient Monitoring Outcome Home Page - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Patient Monitoring Outcome Home Page

### Introduction

This **FHIR Implementation Guide (IG)** provides standardized guidance for integrating data related to patient monitoring. The main stakeholders are **Electronic Health Record (EHR)** systems, **Transmural Data Providers** (ex. remote monitoring) and **Home care nurses**.

For more background information about transmural care working with telemonitoring providers, visit: [https://transmuralplatform.eu](https://www.transmuralplatform.eu).

See also [the Downloads section](./downloads.md) for a comprehensive guide on home hospitalization for OPAT and transmural care.

#### Core Concepts: Carepath vs Careset

This IG contains two distinct concepts that are important to distinguish:

##### Carepath

The **Carepath** definitions describe how transmural care data is exchanged between systems. This exchange typically happens between **Transmural Data Providers** (e.g., vital signs monitors, home devices) and **Care Systems** (e.g., EHRs, Clinical Command Centers, Virtual Wards, …). It defines the specific data points that need to be collected from the patient as part of their pathway.

##### Careset

The **Careset** definitions describe how data is collected in a structured report that can be shared between Electronic Patient Dossiers (EPDs) or specific healthcare actors. A Careset report actively re-uses the semantic foundation ( SNOMED-CT and LOINC codes) from Carepath definitions to ensure a uniform baseline, but it extends this foundation with extra information capturing a holistic overview, such as hospital instructions, Encounters, advanced PatientQuestionnaires, and procedural outcomes.

****Example**: A patient is home hospitalized and a nurse is scheduled to come by and take care of the patient. The communication (e.g., the Careset report) happens between the care team in the hospital (e.g., the OPAT team) and the home nurse or home nursing organization.**

### Topics Covered

* **Use Cases and Scenarios**: Practical examples to demonstrate the implementation of Telemonitoring in real-world settings.
* **Key Concepts and Definitions**: 
* Clear explanations of core terms and concepts relevant to the Telemonitoring Prescription.
* Key structural difference between **Carepaths** (describing the individual data exchange from patient/device to consumer) and **Caresets** (describing structured reports shared between EPDs/care teams, e.g., between an OPAT hospital team and a home nursing organization).
* Definition of home hospitalization and its legal implications.
 
* **Interoperability**: Guidelines for achieving seamless data exchange between EHRs and TM Providers.
* **FHIR Profiles and Terminology Bindings**: Detailed specifications for consistent use of FHIR standards.
* **Sample Resources**: Examples of FHIR resources to facilitate implementation.
* **Security and Privacy**: Best practices for ensuring compliance with privacy regulations and securing patient data.
* **Implementation Guidance**: 
* Handling errors and exceptions
* Best practices for deployment and integration
 

This guide serves as a critical resource for ensuring the success of the Telemonitoring Prescription initiative by promoting consistency, interoperability, and security in patient monitoring data exchange.

