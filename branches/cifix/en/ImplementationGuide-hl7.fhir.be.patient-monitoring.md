# Resource Patient Monitoring Outcome FHIR Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.be.patient-monitoring",
  "language" : "en",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ImplementationGuide/hl7.fhir.be.patient-monitoring",
  "version" : "0.1.0",
  "name" : "PatientMonitoringOutcome",
  "title" : "Patient Monitoring Outcome FHIR Implementation Guide",
  "status" : "draft",
  "date" : "2024-11-20",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "http://example.com/committees"
    },
    {
      "system" : "email",
      "value" : "my-group@example.com"
    }]
  },
  {
    "name" : "Bob Smith",
    "telecom" : [{
      "system" : "email",
      "value" : "bobsmith@example.com",
      "use" : "work"
    }]
  }],
  "description" : "Patient Monitoring Outcome FHIR Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "packageId" : "hl7.fhir.be.patient-monitoring",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_be_core",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/core/ImplementationGuide/hl7.fhir.be.core",
    "packageId" : "hl7.fhir.be.core",
    "version" : "2.1.2"
  },
  {
    "id" : "hl7_fhir_be_core_clinical",
    "uri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ImplementationGuide/hl7.fhir.be.core-clinical",
    "packageId" : "hl7.fhir.be.core-clinical",
    "version" : "1.1.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "4.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "auto-oid-root"
      },
      {
        "url" : "value",
        "valueString" : "2.16.840.1.113883.4.642.40.54"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "validation"
      },
      {
        "url" : "value",
        "valueString" : "allow-any-extensions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7belgium.org/fhir/patient-monitoring/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "auto-oid-root"
      },
      {
        "url" : "value",
        "valueString" : "2.16.840.1.113883.4.642.40.54"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "validation"
      },
      {
        "url" : "value",
        "valueString" : "allow-any-extensions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7belgium.org/fhir/patient-monitoring/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/well-poor-scale"
      },
      "name" : "0-10 scale, 0.5 increments, Very well to Very poor",
      "description" : "Scale going from 0 to 10 in increments of 0.5. Indicating values very well to very port (see https://loinc.org/LL3092-5)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/AbdominalPainExample"
      },
      "name" : "Abdominal pain example",
      "description" : "Pain scale is used as answer",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/AppetiteExample"
      },
      "name" : "Appetite example",
      "description" : "Answer scaled 0 to 10 with steps of 0.5. 0 being being very poor, 10 being very well.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/appetite-observation"
      },
      "name" : "Appetite Observation",
      "description" : "An observation of how well or poor the appetite of a patient is.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/AzacitidineV1"
      },
      "name" : "Azacitidine questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Azacitidine.",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-azacitidine"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/AzacitidineV1response"
      },
      "name" : "Azacitidine questionnairesponse home hospitalization",
      "description" : "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with Azacitidine.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BladderContinenceExample"
      },
      "name" : "Bladder Continence",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bladder-continence-observation"
      },
      "name" : "Bladder continence Observation",
      "description" : "An observation of bladder continence.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BloodPressureExample"
      },
      "name" : "BloodPressureExample",
      "description" : "Blood Pressure example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BloodPressureExample2"
      },
      "name" : "BloodPressureExample2",
      "description" : "Blood Pressure example without device and with bodysite",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BodyTemperatureExample"
      },
      "name" : "BodyTemperatureExample",
      "description" : "Temperature example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BodyTemperatureExample2"
      },
      "name" : "BodyTemperatureExample2",
      "description" : "Temperature example without device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BodyWeightExample"
      },
      "name" : "BodyWeightExample",
      "description" : "Body Weight example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/BodyWeightExample2"
      },
      "name" : "BodyWeightExample2",
      "description" : "Body Weight example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/BortezomibV1"
      },
      "name" : "Bortezomib questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Bortezomib (Velcade®).",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-bortezomib"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-Katheter"
      },
      "name" : "CareTeam Katheter",
      "description" : "Catheter team with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-OPAT"
      },
      "name" : "CareTeam OPAT",
      "description" : "OPAT team with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-Spoed"
      },
      "name" : "CareTeam Spoed",
      "description" : "Emergency reception with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/CatheterMovedOrRemovedExample"
      },
      "name" : "Catheter moved or removed example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/Observation-Katheter-7938866"
      },
      "name" : "Catheter observation for OPAT patient",
      "description" : "Home hospitalization catheter observation example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ClinicalNoteExample"
      },
      "name" : "Clinical note",
      "description" : "Free text clinical note",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/clinical-note-observation"
      },
      "name" : "CLinical note Observation",
      "description" : "A clinical note",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/continence-level"
      },
      "name" : "Continence level",
      "description" : "LOINC codes to represent the level of continence reported",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/DaratumumabV1"
      },
      "name" : "Daratumumab questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Daratumumab (Darzalex®).",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-daratumumab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/DiarrheaExample"
      },
      "name" : "Diarrhea example",
      "description" : "Possible answers are absent, mild, moderate, severe",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/DistendedAbdomenExample"
      },
      "name" : "Distended abdomen example",
      "description" : "Answer options are none, mild, moderate, severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/drain-fluid-observation"
      },
      "name" : "Drain fluid Observation",
      "description" : "An observation drain fluid observations. Drain fluid is measured in mL per 24h",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/DrainFluidExample"
      },
      "name" : "Drain fluid output example",
      "description" : "Drain fluid volume measured in mL per day",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/FluidDrainVS"
      },
      "name" : "Fluid Drain Value Set",
      "description" : "Valid UCUM units for drain fluid measurement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/FulvestrantV1"
      },
      "name" : "Fulvestrant questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Fulvestrant (Faslodex®).",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-fulvestrant"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRole-16500"
      },
      "name" : "General practitioner example",
      "description" : "Example general practitioner (huisarts) for the OPAT patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/heart-failure-symptoms"
      },
      "name" : "Heart Failure Symptom Codes",
      "description" : "SNOMED CT codes representing common patient-reported symptoms in heart failure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/HeartRateExample"
      },
      "name" : "HeartRateExample",
      "description" : "Heart Rate example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/HeartRateExample2"
      },
      "name" : "HeartRateExample2",
      "description" : "Heart Rate example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/example-holter-afib"
      },
      "name" : "Holter AFib Episode",
      "description" : "Detected AFib event",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/holter-diagnostic-report"
      },
      "name" : "Holter Diagnostic Report",
      "description" : "A profile for ambulatory cardiac rhythm monitoring reports (Holter)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/example-holter-diagnosticreport"
      },
      "name" : "Holter DiagnosticReport Example",
      "description" : "This diagnostic report summarizes Holter rhythm findings including AFib and a supraventricular episode.",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/holter-event-codes"
      },
      "name" : "Holter Event Codes",
      "description" : "Codes used to classify Holter-detected rhythm events",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/holter-observation"
      },
      "name" : "Holter Observation",
      "description" : "An observation for rhythm events detected in Holter recordings",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/holter-event-component-codes"
      },
      "name" : "Holter Observation Component Codes",
      "description" : "LOINC codes for component observations in Holter events (e.g., heart rate)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/holter-report-code"
      },
      "name" : "Holter Report Code",
      "description" : "Ambulatory cardiac rhythm monitor report (Holter)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/example-holter-sv"
      },
      "name" : "Holter Supraventricular Event",
      "description" : "Supraventricular arrhythmia",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-encounter"
      },
      "name" : "Home Hospitalization Careset Encounter",
      "description" : "Profile on the FHIR Encounter resource for use in OPAT and ONCO home hospitalization caresets. The Encounter records whether the home visit took place and the status of each ordered care activity. Only hospital-ordered procedures should be reported back via this Encounter. See logical model: [CarestEncounter](StructureDefinition-homehosp-encounter-lm.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-questionnaire-response"
      },
      "name" : "Home Hospitalization Careset Questionnaire Response",
      "description" : "Profile on QuestionnaireResponse for OPAT and ONCO home hospitalization caresets. Links the filled-in nursing observation to the originating Encounter and the canonical Questionnaire. See logical model: [CarestQuestionnaireResponse](StructureDefinition-homehosp-questionnaire-response-lm.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/Encounter-3441"
      },
      "name" : "Home hospitalization encounter for subcutaneous injection",
      "description" : "First line encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-encounter-lm"
      },
      "name" : "Home Hospitalization Encounter Logical Model",
      "description" : "Logical model representing the FHIR Encounter resource as used in the OPAT and ONCO home hospitalization caresets. The Encounter serves two purposes: (1) recording whether the home visit took place and whether the patient was home, and (2) communicating the status of each ordered care activity back to the hospital. Only orders given by the hospital should be communicated back via this Encounter; other nursing activities are excluded.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-questionnaire-response-lm"
      },
      "name" : "Home Hospitalization QuestionnaireResponse Logical Model",
      "description" : "Logical model representing the FHIR QuestionnaireResponse resource as used in the OPAT and ONCO home hospitalization caresets. Each home nurse visit produces exactly one QuestionnaireResponse if the visit was not cancelled, which corresponds to a single Encounter. The QuestionnaireResponse references the canonical Questionnaire URL and contains the nurse's answers. It can be used as-is for clinical review or as input to an SDC Definition-based extraction pipeline that generates discrete FHIR Observations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/IncontinenceScoreExample"
      },
      "name" : "incontinence assessment using the wexner/CCIS score",
      "description" : "Score from 0 to 20",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/LeakageCatheterExample"
      },
      "name" : "Leakage catheter example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/LevelOfResponsivenessExample"
      },
      "name" : "Level of responsiveness example",
      "description" : "Level of responsiveness (ACVPU scale)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/NationalEarlyWarningScoreExample"
      },
      "name" : "National Early Warning Score example",
      "description" : "National Early Warning Score (NEWS)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/NauseaExample"
      },
      "name" : "Nausea example",
      "description" : "Answer options are none, mild, moderate, severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/NauseaExample2"
      },
      "name" : "Nausea example 2",
      "description" : "Answers 0-10 scale, 0.5 increments, Very well to Very poor",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/nausea-observation"
      },
      "name" : "Nausea Observation",
      "description" : "An observation of how well or poor the nausea of a patient is.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-azacitidine"
      },
      "name" : "ONCO Azacitidine Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the ONCO Azacitidine (Vidaza®) nursing observation form. Captures vital signs (including conditional SpO2), medication dissolution check, GI/pulmonary contraindications and side-effect monitoring. See logical model: [ONCOAzacitidineQuestionnaire](StructureDefinition-onco-azacitidine-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-azacitidine-questionnaire"
      },
      "name" : "ONCO Azacitidine Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Azacitidine. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes oxygen saturation (conditional, only when cough or shortness of breath), contraindications focused on GI symptoms and general deterioration, and a medication dissolution check.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-bortezomib"
      },
      "name" : "ONCO Bortezomib Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the ONCO Bortezomib (Velcade®) nursing observation form. Captures vital signs, medication checks, sensory/motor neuropathy contraindication assessment and post-administration side-effect monitoring. See logical model: [ONCOBortezomibQuestionnaire](StructureDefinition-onco-bortezomib-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-bortezomib-questionnaire"
      },
      "name" : "ONCO Bortezomib Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Bortezomib. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes neuropathy-focused contraindications (severe sensory and motor neuropathy) and symptom burden items for peripheral neuropathy.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-daratumumab"
      },
      "name" : "ONCO Daratumumab Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the ONCO Daratumumab (Darzalex®) nursing observation form. Captures pre-medication intake (dexamethasone, H1 antihistamine, paracetamol), medication checks, vital signs, administration, contraindications and side effects. See logical model: [ONCODaratumumabQuestionnaire](StructureDefinition-onco-daratumumab-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-daratumumab-questionnaire"
      },
      "name" : "ONCO Daratumumab Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Daratumumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes pre-medication intake verification (dexamethasone, H1-antihistamine, paracetamol) and aftercare reaction monitoring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-fulvestrant"
      },
      "name" : "ONCO Fulvestrant Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-fulvestrant-questionnaire"
      },
      "name" : "ONCO Fulvestrant Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Fulvestrant. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: simplified contraindications checklist (fever/chills/unwell only), and includes muscle/joint pain in side effects. No preparation check required.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-q-onco-definitions"
      },
      "name" : "ONCO SDC Questionnaire with Extraction Definitions (Trastuzumab)",
      "description" : "The ONCO Trastuzumab Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-trastuzumab"
      },
      "name" : "ONCO Trastuzumab Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the ONCO Trastuzumab (Herceptin®) nursing observation form. Captures body weight check, aftercare protocol, cardiac contraindications (LVEF, respiratory symptoms, oedema), vital signs and CTCAE-graded side effects. See logical model: [ONCOTrastuzumabQuestionnaire](StructureDefinition-onco-trastuzumab-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-trastuzumab-questionnaire"
      },
      "name" : "ONCO Trastuzumab Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Trastuzumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes body weight, aftercare/reaction monitoring, and cardiac-focused contraindication checklist.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      }],
      "reference" : {
        "reference" : "Appointment/Appointment-testapp"
      },
      "name" : "OPAT appointment example",
      "description" : "Future hospital appointment at UZL for the OPAT patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/CT-259690079"
      },
      "name" : "OPAT consultation encounter example",
      "description" : "Hospital consultation encounter for the OPAT patient at UZ Leuven",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-opat-continuous-infusion"
      },
      "name" : "OPAT Continuous Infusion Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the OPAT continuous-infusion (elastomeric pump / infusor) nursing observation form. Captures medication storage, infusor weights, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up. See logical model: [OPATContinuousInfusionQuestionnaire](StructureDefinition-opat-continuous-infusion-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/opat-continuous-infusion-questionnaire"
      },
      "name" : "OPAT Continuous Infusion Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving continuous infusion. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/OPAT-Document"
      },
      "name" : "OPAT document example (composition)",
      "description" : "FHIR document containing necessary information for an OPAT treatment at home",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Patient-123"
      },
      "name" : "OPAT patient example",
      "description" : "Example patient for the OPAT document",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/OPATContinuInfuusV1"
      },
      "name" : "OPAT questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-continuous-infusion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/OPATContinuInfuusV1response"
      },
      "name" : "OPAT questionnaireresponse home hospitalization",
      "description" : "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-q-opat-definitions"
      },
      "name" : "OPAT SDC Questionnaire with Extraction Definitions",
      "description" : "The OPAT continuous infusion Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/OPATKortIVV1"
      },
      "name" : "OPAT short IV questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a short-duration IV administration in the context of an OPAT treatment",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-opat-short-iv"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/opat-short-iv-questionnaire"
      },
      "name" : "OPAT Short IV Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving short IV administration. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Compared to the continuous infusion questionnaire, this model does not include infusor weight measurements.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-opat-short-iv"
      },
      "name" : "OPAT Short-Duration IV Nursing Questionnaire",
      "description" : "Profile on Questionnaire for the OPAT short-duration IV administration nursing observation form. Captures medication storage, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up (no infusor weight fields). See logical model: [OPATShortIVQuestionnaire](StructureDefinition-opat-short-iv-questionnaire.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/Organization-UZL"
      },
      "name" : "Organization example for OPAT document",
      "description" : "UZ Leuven - authoring and custodian organization",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/OrthopneuExample"
      },
      "name" : "Orthopneu example",
      "description" : "Possible answers are absent, mild, moderate, severe",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-F-7766077"
      },
      "name" : "Overarching CareTeam Home Hospitalization",
      "description" : "Containing OPAT team, catheter team and emergency reception as participants",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/OxygenSaturationExample"
      },
      "name" : "OxygenSaturationExample",
      "description" : "Oxygen saturation example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/OxygenSaturationExample2"
      },
      "name" : "OxygenSaturationExample2",
      "description" : "Oxygen saturation example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainDuringUrinationExample"
      },
      "name" : "Pain during urination example",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainInCalvesExample"
      },
      "name" : "Pain in calves example",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainInfectionSiteExample"
      },
      "name" : "Pain infection site example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainPunctureWoundsExample"
      },
      "name" : "Pain puncture wounds example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/pain-scale"
      },
      "name" : "Pain severity - 0-10 verbal numeric rating",
      "description" : "Pain severity scale, where 0 is no pain and 10 is the worst pain imaginable. See https://loinc.org/72514-3",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainSurgicalWoundsExample"
      },
      "name" : "Pain surgical wounds example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainSurgicalWoundsExample2"
      },
      "name" : "Pain surgical wounds example 2",
      "description" : "Pain score related to the surgical wound",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/painkiller-usage-observation"
      },
      "name" : "Painkiller usage Observation",
      "description" : "An observation if the patient uses pain killers or not",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/RednessPunctureWoundsExample"
      },
      "name" : "Redness puncture wounds example",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ReducedAppetiteExample"
      },
      "name" : "Reduced appetite example",
      "description" : "Answer options are absent / mild / moderate / severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-MED-medischeVG"
      },
      "name" : "Relevante medische voorgeschiedenis",
      "description" : "Relevant medical history (OPAT 3.0 template field MED_medischeVG)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/RespiratoryRateExample"
      },
      "name" : "RespiratoryRateExample",
      "description" : "Respiration example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/RespiratoryRateExample2"
      },
      "name" : "RespiratoryRateExample2",
      "description" : "Respiration example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ShortnessOfBreathExample"
      },
      "name" : "Shortness of breath example",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ShoulderPainExample"
      },
      "name" : "Shoulder pain example",
      "description" : "Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/StoolScoreExample"
      },
      "name" : "Stool assessment using the bristol stool form score",
      "description" : "Score from 1 to 7",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/stool-observation"
      },
      "name" : "Stool Observation",
      "description" : "An observation of stool according to the Bristol stool scale",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/surgical-wound-pain-observation"
      },
      "name" : "Surgical wound pain observation",
      "description" : "An observation of the pain reported by the patient in a surgical wound.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/symptom-severity"
      },
      "name" : "Symptom Severity Scale",
      "description" : "SNOMED CT codes to represent severity of patient-reported symptoms",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Ademhalingsproblemen"
      },
      "name" : "Symptoom: Ademhalingsproblemen",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Andere"
      },
      "name" : "Symptoom: Andere",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Blaren"
      },
      "name" : "Symptoom: Blaren",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Braken"
      },
      "name" : "Symptoom: Braken",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Candidiase"
      },
      "name" : "Symptoom: Candidiase",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Diarree"
      },
      "name" : "Symptoom: Diarree",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Gewrichtspijn"
      },
      "name" : "Symptoom: Gewrichtspijn",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Huiduitslag"
      },
      "name" : "Symptoom: Huiduitslag",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Jeuk"
      },
      "name" : "Symptoom: Jeuk",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Misselijkheid"
      },
      "name" : "Symptoom: Misselijkheid",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Moe"
      },
      "name" : "Symptoom: Moe",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Observatie-andere-specifieer"
      },
      "name" : "Symptoom: Observatie andere - specifieer",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Obstipatie"
      },
      "name" : "Symptoom: Obstipatie",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Pijn"
      },
      "name" : "Symptoom: Pijn",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Rillingen"
      },
      "name" : "Symptoom: Rillingen",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Verminderdeeetlust"
      },
      "name" : "Symptoom: Verminderde eetlust",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Zwelling"
      },
      "name" : "Symptoom: Zwelling",
      "description" : "OPAT 3.0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/Observation-Temperatuur"
      },
      "name" : "Temperature observation for OPAT patient",
      "description" : "Temperature vital sign observation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/TrastuzumabV1"
      },
      "name" : "Trastuzumab questionnaire home hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Trastuzumab (Herceptin®).",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-onco-trastuzumab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/PainKillerExample"
      },
      "name" : "Usage of pain killers",
      "description" : "Did the patient take any painkillers (Yes/No)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/testloc"
      },
      "name" : "UZL consultation location example",
      "description" : "Example hospital consultation location at UZ Leuven for the OPAT appointment",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/wexner-ccis-score-observation"
      },
      "name" : "Wexner/CCIS score Observation",
      "description" : "Wexner/CCIS score observation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/YesNoVS"
      },
      "name" : "Yes/No Value Set",
      "description" : "Simple yes or no answer value set",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Patient Monitoring Outcome Home Page",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "recommendations.html"
        }],
        "nameUrl" : "recommendations.html",
        "title" : "General Recommendations",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminology.html"
        }],
        "nameUrl" : "terminology.html",
        "title" : "Terminologies",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-overview.html"
        }],
        "nameUrl" : "carepath-overview.html",
        "title" : "Overview Carepaths",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-heartfailure.html"
        }],
        "nameUrl" : "carepath-heartfailure.html",
        "title" : "Carepath Heart failure",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-holter.html"
        }],
        "nameUrl" : "carepath-holter.html",
        "title" : "Carepath Holter Monitoring",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-ews.html"
        }],
        "nameUrl" : "carepath-ews.html",
        "title" : "Carepath NEWS (National Early Warning Score)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-totem.html"
        }],
        "nameUrl" : "carepath-totem.html",
        "title" : "Carepath TOTeM",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-opat.html"
        }],
        "nameUrl" : "carepath-opat.html",
        "title" : "Carepath OPAT",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-antitumoral.html"
        }],
        "nameUrl" : "carepath-antitumoral.html",
        "title" : "Carepath Antitumoral therapy",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-perioperative-abdominal.html"
        }],
        "nameUrl" : "carepath-perioperative-abdominal.html",
        "title" : "Carepath Perioperative care - abdominal",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "carepath-overview-loinc.html"
        }],
        "nameUrl" : "carepath-overview-loinc.html",
        "title" : "Overview carepath LOINC",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "careset-overview.html"
        }],
        "nameUrl" : "careset-overview.html",
        "title" : "Overview caresets",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "legal-guidelines-home-hospitalization.html"
        }],
        "nameUrl" : "legal-guidelines-home-hospitalization.html",
        "title" : "Special careset - home hospitalization",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "home-hospitalization-opat.html"
        }],
        "nameUrl" : "home-hospitalization-opat.html",
        "title" : "Home hosp - OPAT",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "home-hospitalization-antitumoral.html"
        }],
        "nameUrl" : "home-hospitalization-antitumoral.html",
        "title" : "Home hosp - Antitumoral therapy",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "home-hospitalization-mappingtable.html"
        }],
        "nameUrl" : "home-hospitalization-mappingtable.html",
        "title" : "Home hosp - Mappingtables",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Useful Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "copyrights.html"
        }],
        "nameUrl" : "copyrights.html",
        "title" : "Acknowledgments, licenses and copyrights",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "IG Change History",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
