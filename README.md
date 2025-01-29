## Patient Monitoring Outcome

IG
<br> </br>

###

### Publication

This ImplementationGuide is published in the following locations:

Continuous Build:
**https://hl7-be.github.io/patient-monitoring/**  
**http://build.fhir.org/ig/hl7-be/patient-monitoring/branches/main/index.html**  
Canonical / permanent URL:
<br> </br>

### Issues

Issues and change requests are managed here:

Issues: **https://github.com/hl7-be/patient-monitoring/issues**  
Kanban board: **https://github.com/hl7-be/patient-monitoring/projects/1**

---

### Running locally

1. Install Prerequisites
   Before running a FHIR IG locally, ensure you have the necessary tools installed:

a. Java
FHIR tools like the IG Publisher require Java. Download and install Java.

b. Node.js and npm
Some IGs may use Node.js scripts. Download and install Node.js.

c. FHIR IG Publisher
The FHIR IG Publisher tool is essential for generating and validating IGs. Download the latest publisher.jar from [here](https://github.com/HL7/fhir-ig-publisher/releases).

d. Jekyll (Optional)
If your IG uses Jekyll for hosting and templating, install Jekyll. Ensure Ruby and Bundler are installed.

Run Locally:

```
java -jar path/to/publisher.jar -ig ig.ini
```
