## Patient Monitoring Outcome

This Implementation Guide (IG) provides standardized guidance for Electronic Health Record (EHR) systems and Telemonitoring (TM) Providers. Developed in alignment with HL7 standards, it offers a unified framework for seamless data integration between EHRs and TM Providers. The guide is fully aligned with the Telemonitoring Prescription initiative. Additional information can be found at telemonitoring-prescription.com.

###

### Publication

This Implementation Guide is published in the following locations:

Continuous Build:
**https://hl7-be.github.io/patient-monitoring/**  
**http://build.fhir.org/ig/hl7-be/patient-monitoring/branches/main/index.html**

### Issues

Issues and change requests are managed here:

Issues: **https://github.com/hl7-be/patient-monitoring/issues**

### Running locally

_Install Prerequisites_
Before running a FHIR IG locally, ensure you have the necessary tools installed:

- Java : FHIR tools like the IG Publisher require Java. Download and install Java.
- Node.js and npm : Some IGs may use Node.js scripts. Download and install Node.js.
- FHIR IG Publisher : The FHIR IG Publisher tool is essential for generating and validating IGs. Download the latest publisher.jar from [here](https://github.com/HL7/fhir-ig-publisher/releases). Place the file in `input-cache/publisher.jar`

Run Locally:

```
java -jar input-cache/publisher.jar -ig ig.ini
```

The output will be available in `output/index.html`
