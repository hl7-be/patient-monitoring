# Overview Carepaths - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Overview Carepaths

This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.

### What is a Carepath?

In the context of this Implementation Guide, the **Carepath** concepts describe how specific telemonitoring and device data are exchanged between **providers of patient monitoring data** and **consumers**.

A **Carepath** focuses on the specific data points, vital signs, and symptoms that need to be collected from the patient as part of their standardized remote or home pathway. It defines the required SNOMED and LOINC codes to ensure accurate interoperability between standard measurement devices and receiving hospital systems.

**Note:** The Carepath is distinct from the **[Careset](./careset-overview.md)**. While Carepaths detail the individual data components (e.g., monitoring variables), Caresets define how this data is collected into reports that can be shared between Electronic Patient Dossiers (EPDs) and healthcare actors.

