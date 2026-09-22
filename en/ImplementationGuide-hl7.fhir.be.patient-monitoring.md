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
    "version" : "7.2.0"
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
        "valueString" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
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
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
        "valueCode" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
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
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-well-poor-scale.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-appetite-observation.html"
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
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-Appointment-testapp.html"
      }],
      "reference" : {
        "reference" : "Appointment/Appointment-testapp"
      },
      "name" : "Appointment: OPAT Hospital Follow-up",
      "description" : "Future hospital appointment at UZL for the OPAT patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-bladder-continence-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/bladder-continence-observation"
      },
      "name" : "Bladder Continence Observation",
      "description" : "An observation of bladder continence.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-CareTeam-Katheter.html"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-Katheter"
      },
      "name" : "CareTeam: Catheter",
      "description" : "Catheter team with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-CareTeam-Spoed.html"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-Spoed"
      },
      "name" : "CareTeam: Emergency",
      "description" : "Emergency reception with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-CareTeam-F-7766077.html"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-F-7766077"
      },
      "name" : "CareTeam: Home Hospitalization",
      "description" : "Containing OPAT team, catheter team and emergency reception as participants",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-CareTeam-OPAT.html"
      }],
      "reference" : {
        "reference" : "CareTeam/CareTeam-OPAT"
      },
      "name" : "CareTeam: OPAT",
      "description" : "OPAT team with contact details",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-lumen-color.html"
      }],
      "reference" : {
        "reference" : "ValueSet/lumen-color"
      },
      "name" : "Catheter Lumen Color",
      "description" : "SNOMED CT codes for the color label of a catheter lumen, used in OPAT home-hospitalization questionnaires to distinguish multi-lumen catheters.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-catheter-patency.html"
      }],
      "reference" : {
        "reference" : "ValueSet/catheter-patency"
      },
      "name" : "Catheter Patency Scale",
      "description" : "SNOMED CT codes representing the ease of blood aspiration or infusion through a vascular catheter, used in OPAT home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-catheter-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/catheter-type"
      },
      "name" : "Catheter Type",
      "description" : "SNOMED CT codes identifying the type of vascular catheter in place, used in OPAT home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-clinical-note-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/clinical-note-observation"
      },
      "name" : "Clinical Note Observation",
      "description" : "A clinical note",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-MED-medischeVG.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-MED-medischeVG"
      },
      "name" : "ClinicalImpression: Relevant Medical History",
      "description" : "Relevant medical history (OPAT 3.0 template field MED_medischeVG)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Blaren.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Blaren"
      },
      "name" : "ClinicalImpression: Symptom - Blisters",
      "description" : "Side effect assessment during OPAT home hospitalization: blisters",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Candidiase.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Candidiase"
      },
      "name" : "ClinicalImpression: Symptom - Candidiasis",
      "description" : "Side effect assessment during OPAT home hospitalization: candidiasis",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Rillingen.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Rillingen"
      },
      "name" : "ClinicalImpression: Symptom - Chills",
      "description" : "Side effect assessment during OPAT home hospitalization: chills",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Obstipatie.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Obstipatie"
      },
      "name" : "ClinicalImpression: Symptom - Constipation",
      "description" : "Side effect assessment during OPAT home hospitalization: constipation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Diarree.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Diarree"
      },
      "name" : "ClinicalImpression: Symptom - Diarrhea",
      "description" : "Side effect assessment during OPAT home hospitalization: diarrhea",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Moe.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Moe"
      },
      "name" : "ClinicalImpression: Symptom - Fatigue",
      "description" : "Side effect assessment during OPAT home hospitalization: fatigue",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Jeuk.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Jeuk"
      },
      "name" : "ClinicalImpression: Symptom - Itching",
      "description" : "Side effect assessment during OPAT home hospitalization: itching",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Gewrichtspijn.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Gewrichtspijn"
      },
      "name" : "ClinicalImpression: Symptom - Joint Pain",
      "description" : "Side effect assessment during OPAT home hospitalization: joint pain",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Misselijkheid.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Misselijkheid"
      },
      "name" : "ClinicalImpression: Symptom - Nausea",
      "description" : "Side effect assessment during OPAT home hospitalization: nausea",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Andere.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Andere"
      },
      "name" : "ClinicalImpression: Symptom - Other",
      "description" : "Side effect assessment during OPAT home hospitalization: other symptom",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Observatie-andere-specifieer.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Observatie-andere-specifieer"
      },
      "name" : "ClinicalImpression: Symptom - Other (Specify)",
      "description" : "Side effect assessment during OPAT home hospitalization: other observation (free text)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Pijn.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Pijn"
      },
      "name" : "ClinicalImpression: Symptom - Pain",
      "description" : "Side effect assessment during OPAT home hospitalization: pain",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Huiduitslag.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Huiduitslag"
      },
      "name" : "ClinicalImpression: Symptom - Rash",
      "description" : "Side effect assessment during OPAT home hospitalization: rash",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Verminderdeeetlust.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Verminderdeeetlust"
      },
      "name" : "ClinicalImpression: Symptom - Reduced Appetite",
      "description" : "Side effect assessment during OPAT home hospitalization: reduced appetite",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Ademhalingsproblemen.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Ademhalingsproblemen"
      },
      "name" : "ClinicalImpression: Symptom - Respiratory Problems",
      "description" : "Side effect assessment during OPAT home hospitalization: respiratory problems",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Zwelling.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Zwelling"
      },
      "name" : "ClinicalImpression: Symptom - Swelling",
      "description" : "Side effect assessment during OPAT home hospitalization: swelling",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-ClinicalImpression-OBS-Braken.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/ClinicalImpression-OBS-Braken"
      },
      "name" : "ClinicalImpression: Symptom - Vomiting",
      "description" : "Side effect assessment during OPAT home hospitalization: vomiting",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-OPAT-Document.html"
      }],
      "reference" : {
        "reference" : "Composition/OPAT-Document"
      },
      "name" : "Composition: OPAT Document",
      "description" : "FHIR document containing necessary information for an OPAT treatment at home",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-continence-level.html"
      }],
      "reference" : {
        "reference" : "ValueSet/continence-level"
      },
      "name" : "Continence Level",
      "description" : "LOINC codes to represent the level of continence reported",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-example-holter-diagnosticreport.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/example-holter-diagnosticreport"
      },
      "name" : "DiagnosticReport: Holter",
      "description" : "This diagnostic report summarizes Holter rhythm findings including AFib and a supraventricular episode.",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-drain-fluid-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/drain-fluid-observation"
      },
      "name" : "Drain Fluid Observation",
      "description" : "An observation drain fluid observations. Drain fluid is measured in mL per 24h",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-Encounter-3441.html"
      }],
      "reference" : {
        "reference" : "Encounter/Encounter-3441"
      },
      "name" : "Encounter: Home Hospitalization (Subcutaneous Injection)",
      "description" : "First line encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-CT-259690079.html"
      }],
      "reference" : {
        "reference" : "Encounter/CT-259690079"
      },
      "name" : "Encounter: OPAT Consultation",
      "description" : "Hospital consultation encounter for the OPAT patient at UZ Leuven",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-FluidDrainVS.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-heart-failure-symptoms.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-holter-diagnostic-report.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-holter-event-codes.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-holter-observation.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-holter-event-component-codes.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-holter-report-code.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-encounter.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-questionnaire-response.html"
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
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-encounter-lm.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-questionnaire-response-lm.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-homehosp-side-effect-severity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/homehosp-side-effect-severity"
      },
      "name" : "Home Hospitalization Side Effect Severity Scale",
      "description" : "SNOMED CT codes representing the severity of side effects in OPAT home-hospitalization questionnaires: Absent, Mild, Moderate and Severe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-testloc.html"
      }],
      "reference" : {
        "reference" : "Location/testloc"
      },
      "name" : "Location: UZL Consultation",
      "description" : "Example hospital consultation location at UZ Leuven for the OPAT appointment",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-decision.html"
      }],
      "reference" : {
        "reference" : "ValueSet/decision"
      },
      "name" : "Medication Administration Decision",
      "description" : "Codes for the nurse's decision after contraindication assessment — whether to administer, withhold, or take another action following consultation with the hospital care team.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-decision-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/decision-cs"
      },
      "name" : "Medication Administration Decision Codes",
      "description" : "Local codes for the nurse's decision following contraindication assessment in ONCO home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-medication-storage.html"
      }],
      "reference" : {
        "reference" : "ValueSet/medication-storage"
      },
      "name" : "Medication Storage Status",
      "description" : "SNOMED CT codes representing whether the home medication storage of a patient is appropriate or has issues, used in OPAT and ONCO home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-nausea-observation.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-normal-abnormal.html"
      }],
      "reference" : {
        "reference" : "ValueSet/normal-abnormal"
      },
      "name" : "Normal / Abnormal Finding",
      "description" : "SNOMED CT codes to represent a binary normal vs. abnormal clinical finding, used for dressing, insertion-site, and catheter observation items in OPAT home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-AbdominalPainExample.html"
      }],
      "reference" : {
        "reference" : "Observation/AbdominalPainExample"
      },
      "name" : "Observation: Abdominal Pain",
      "description" : "Pain scale is used as answer",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-AppetiteExample.html"
      }],
      "reference" : {
        "reference" : "Observation/AppetiteExample"
      },
      "name" : "Observation: Appetite",
      "description" : "Answer scaled 0 to 10 with steps of 0.5. 0 being being very poor, 10 being very well.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BladderContinenceExample.html"
      }],
      "reference" : {
        "reference" : "Observation/BladderContinenceExample"
      },
      "name" : "Observation: Bladder Continence",
      "description" : "Example observation of a patient's bladder continence level.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BloodPressureExample.html"
      }],
      "reference" : {
        "reference" : "Observation/BloodPressureExample"
      },
      "name" : "Observation: Blood Pressure",
      "description" : "Blood pressure vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BloodPressureExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/BloodPressureExample2"
      },
      "name" : "Observation: Blood Pressure (Without Device)",
      "description" : "Blood Pressure example without device and with bodysite",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BodyTemperatureExample.html"
      }],
      "reference" : {
        "reference" : "Observation/BodyTemperatureExample"
      },
      "name" : "Observation: Body Temperature",
      "description" : "Body temperature vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Observation-Temperatuur.html"
      }],
      "reference" : {
        "reference" : "Observation/Observation-Temperatuur"
      },
      "name" : "Observation: Body Temperature (OPAT Document)",
      "description" : "Temperature vital sign observation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BodyTemperatureExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/BodyTemperatureExample2"
      },
      "name" : "Observation: Body Temperature (Without Device)",
      "description" : "Temperature example without device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BodyWeightExample.html"
      }],
      "reference" : {
        "reference" : "Observation/BodyWeightExample"
      },
      "name" : "Observation: Body Weight",
      "description" : "Body weight vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-BodyWeightExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/BodyWeightExample2"
      },
      "name" : "Observation: Body Weight (Registered by Patient)",
      "description" : "Body weight vital sign observation registered by the patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-StoolScoreExample.html"
      }],
      "reference" : {
        "reference" : "Observation/StoolScoreExample"
      },
      "name" : "Observation: Bristol Stool Form Score",
      "description" : "Score from 1 to 7",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Observation-Katheter-7938866.html"
      }],
      "reference" : {
        "reference" : "Observation/Observation-Katheter-7938866"
      },
      "name" : "Observation: Catheter (OPAT Document)",
      "description" : "Home hospitalization catheter observation example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-CatheterMovedOrRemovedExample.html"
      }],
      "reference" : {
        "reference" : "Observation/CatheterMovedOrRemovedExample"
      },
      "name" : "Observation: Catheter Moved or Removed",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ClinicalNoteExample.html"
      }],
      "reference" : {
        "reference" : "Observation/ClinicalNoteExample"
      },
      "name" : "Observation: Clinical Note",
      "description" : "Free text clinical note",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-DiarrheaExample.html"
      }],
      "reference" : {
        "reference" : "Observation/DiarrheaExample"
      },
      "name" : "Observation: Diarrhea",
      "description" : "Possible answers are absent, mild, moderate, severe",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-DistendedAbdomenExample.html"
      }],
      "reference" : {
        "reference" : "Observation/DistendedAbdomenExample"
      },
      "name" : "Observation: Distended Abdomen",
      "description" : "Answer options are none, mild, moderate, severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-DrainFluidExample.html"
      }],
      "reference" : {
        "reference" : "Observation/DrainFluidExample"
      },
      "name" : "Observation: Drain Fluid Output",
      "description" : "Drain fluid volume measured in mL per day",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HeartRateExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HeartRateExample"
      },
      "name" : "Observation: Heart Rate",
      "description" : "Heart rate vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HeartRateExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/HeartRateExample2"
      },
      "name" : "Observation: Heart Rate (Registered by Patient)",
      "description" : "Heart Rate example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-holter-afib.html"
      }],
      "reference" : {
        "reference" : "Observation/example-holter-afib"
      },
      "name" : "Observation: Holter AFib Episode",
      "description" : "Detected AFib event",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-example-holter-sv.html"
      }],
      "reference" : {
        "reference" : "Observation/example-holter-sv"
      },
      "name" : "Observation: Holter Supraventricular Event",
      "description" : "Supraventricular arrhythmia",
      "exampleCanonical" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/holter-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-LeakageCatheterExample.html"
      }],
      "reference" : {
        "reference" : "Observation/LeakageCatheterExample"
      },
      "name" : "Observation: Leakage Catheter",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-LevelOfResponsivenessExample.html"
      }],
      "reference" : {
        "reference" : "Observation/LevelOfResponsivenessExample"
      },
      "name" : "Observation: Level of Responsiveness",
      "description" : "Level of responsiveness (ACVPU scale)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-NationalEarlyWarningScoreExample.html"
      }],
      "reference" : {
        "reference" : "Observation/NationalEarlyWarningScoreExample"
      },
      "name" : "Observation: National Early Warning Score (NEWS)",
      "description" : "National Early Warning Score (NEWS)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-NauseaExample.html"
      }],
      "reference" : {
        "reference" : "Observation/NauseaExample"
      },
      "name" : "Observation: Nausea",
      "description" : "Answer options are none, mild, moderate, severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-NauseaExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/NauseaExample2"
      },
      "name" : "Observation: Nausea (2)",
      "description" : "Answers 0-10 scale, 0.5 increments, Very well to Very poor",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OrthopneuExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OrthopneuExample"
      },
      "name" : "Observation: Orthopnea",
      "description" : "Possible answers are absent, mild, moderate, severe",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OxygenSaturationExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OxygenSaturationExample"
      },
      "name" : "Observation: Oxygen Saturation",
      "description" : "Oxygen saturation vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OxygenSaturationExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/OxygenSaturationExample2"
      },
      "name" : "Observation: Oxygen Saturation (Registered by Patient)",
      "description" : "Oxygen saturation example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainInfectionSiteExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainInfectionSiteExample"
      },
      "name" : "Observation: Pain at Infection Site",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainPunctureWoundsExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainPunctureWoundsExample"
      },
      "name" : "Observation: Pain at Puncture Wounds",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainSurgicalWoundsExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainSurgicalWoundsExample"
      },
      "name" : "Observation: Pain at Surgical Wounds",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainSurgicalWoundsExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/PainSurgicalWoundsExample2"
      },
      "name" : "Observation: Pain at Surgical Wounds (2)",
      "description" : "Pain score related to the surgical wound",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainDuringUrinationExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainDuringUrinationExample"
      },
      "name" : "Observation: Pain During Urination",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainInCalvesExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainInCalvesExample"
      },
      "name" : "Observation: Pain in Calves",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PainKillerExample.html"
      }],
      "reference" : {
        "reference" : "Observation/PainKillerExample"
      },
      "name" : "Observation: Painkiller Usage",
      "description" : "Did the patient take any painkillers (Yes/No)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RednessPunctureWoundsExample.html"
      }],
      "reference" : {
        "reference" : "Observation/RednessPunctureWoundsExample"
      },
      "name" : "Observation: Redness at Puncture Wounds",
      "description" : "NO LOINC OR SNOMED CODE FOR SYMPTOM. Answer options to be determined.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ReducedAppetiteExample.html"
      }],
      "reference" : {
        "reference" : "Observation/ReducedAppetiteExample"
      },
      "name" : "Observation: Reduced Appetite",
      "description" : "Answer options are absent / mild / moderate / severe.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RespiratoryRateExample.html"
      }],
      "reference" : {
        "reference" : "Observation/RespiratoryRateExample"
      },
      "name" : "Observation: Respiratory Rate",
      "description" : "Respiratory rate vital sign observation with device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RespiratoryRateExample2.html"
      }],
      "reference" : {
        "reference" : "Observation/RespiratoryRateExample2"
      },
      "name" : "Observation: Respiratory Rate (Registered by Patient)",
      "description" : "Respiration example registered by patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ShortnessOfBreathExample.html"
      }],
      "reference" : {
        "reference" : "Observation/ShortnessOfBreathExample"
      },
      "name" : "Observation: Shortness of Breath",
      "description" : "Possible answers are yes and no",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ShoulderPainExample.html"
      }],
      "reference" : {
        "reference" : "Observation/ShoulderPainExample"
      },
      "name" : "Observation: Shoulder Pain",
      "description" : "Pain scale is used as answer.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-IncontinenceScoreExample.html"
      }],
      "reference" : {
        "reference" : "Observation/IncontinenceScoreExample"
      },
      "name" : "Observation: Wexner/CCIS Incontinence Score",
      "description" : "Score from 0 to 20",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-azacitidine.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-onco-azacitidine-questionnaire.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-bortezomib.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-onco-bortezomib-questionnaire.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-daratumumab.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-onco-daratumumab-questionnaire.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-daratumumab-questionnaire"
      },
      "name" : "ONCO Daratumumab Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Daratumumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes pre-medication intake verification and aftercare reaction monitoring.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-fulvestrant.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-onco-fulvestrant-questionnaire.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/onco-fulvestrant-questionnaire"
      },
      "name" : "ONCO Fulvestrant Questionnaire Logical Model",
      "description" : "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Fulvestrant. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: simplified contraindications checklist (fever/chills/unwell only), and includes muscle/joint pain in side effects.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-base.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-onco-base"
      },
      "name" : "ONCO Home Hospitalization Base Questionnaire",
      "description" : "Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, Assignment, QualityMonitoring) and sub-groups common across all ONCO medications: MedicationStorage, ObservationParameters, Contraindications, and MedicationAdministration. Medication-specific sub-groups and questions are added by child profiles.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-onco-symptom-grade.html"
      }],
      "reference" : {
        "reference" : "ValueSet/onco-symptom-grade"
      },
      "name" : "ONCO Symptom Grade Scale (CTCAE 0–3)",
      "description" : "SNOMED CT codes representing the Common Terminology Criteria for Adverse Events (CTCAE) grade scale 0 to 3, used to score symptom severity in ONCO home-hospitalization questionnaires.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-onco-trastuzumab.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-onco-trastuzumab-questionnaire.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-opat-continuous-infusion.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-opat-continuous-infusion-questionnaire.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-opat-base.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/homehosp-opat-base"
      },
      "name" : "OPAT Home Hospitalization Base Questionnaire",
      "description" : "Base profile for all OPAT home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, QualityMonitoring) and all eight sub-groups common to both OPAT questionnaires: MedicationStorage, MedicationPreparation, MedicationAdministration, VitalParameters, DressingInsertionSite, InsertionSite, Catheter, and SideEffects.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-opat-short-iv-questionnaire.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-homehosp-opat-short-iv.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-Organization-UZL.html"
      }],
      "reference" : {
        "reference" : "Organization/Organization-UZL"
      },
      "name" : "Organization: UZ Leuven",
      "description" : "UZ Leuven - authoring and custodian organization",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-pain-scale.html"
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
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-painkiller-usage-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/painkiller-usage-observation"
      },
      "name" : "Painkiller Usage Observation",
      "description" : "An observation if the patient uses pain killers or not",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-Patient-123.html"
      }],
      "reference" : {
        "reference" : "Patient/Patient-123"
      },
      "name" : "Patient: OPAT Home Hospitalization",
      "description" : "Example patient for the OPAT document",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-PractitionerRole-16500.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRole-16500"
      },
      "name" : "PractitionerRole: General Practitioner",
      "description" : "Example general practitioner (huisarts) for the OPAT patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-azacitidine.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-azacitidine"
      },
      "name" : "Questionnaire: Azacitidine Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Azacitidine.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-bortezomib.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-bortezomib"
      },
      "name" : "Questionnaire: Bortezomib Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Bortezomib (Velcade®).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-daratumumab.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-daratumumab"
      },
      "name" : "Questionnaire: Daratumumab Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Daratumumab (Darzalex®).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-fulvestrant.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-fulvestrant"
      },
      "name" : "Questionnaire: Fulvestrant Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Fulvestrant (Faslodex®).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-q-onco-definitions.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-q-onco-definitions"
      },
      "name" : "Questionnaire: ONCO SDC Questionnaire with Extraction Definitions (Trastuzumab)",
      "description" : "The ONCO Trastuzumab Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-opat-continuous-infusion.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-opat-continuous-infusion"
      },
      "name" : "Questionnaire: OPAT Continuous Infusion Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-q-opat-definitions.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-q-opat-definitions"
      },
      "name" : "Questionnaire: OPAT SDC Questionnaire with Extraction Definitions",
      "description" : "The OPAT continuous infusion Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-opat-short-iv.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-opat-short-iv"
      },
      "name" : "Questionnaire: OPAT Short IV Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a short-duration IV administration in the context of an OPAT treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-homehosp-trastuzumab.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/homehosp-trastuzumab"
      },
      "name" : "Questionnaire: Trastuzumab Home Hospitalization",
      "description" : "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Trastuzumab (Herceptin®).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-HomehospAzacitidineQuestionnaireResponseExample.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/HomehospAzacitidineQuestionnaireResponseExample"
      },
      "name" : "QuestionnaireResponse: Azacitidine Home Hospitalization",
      "description" : "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with Azacitidine.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-HomehospOpatContinuousInfusionQRMultiLumenExample.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/HomehospOpatContinuousInfusionQRMultiLumenExample"
      },
      "name" : "QuestionnaireResponse: OPAT continuous infusion QR - 2-lumen tunneled catheter",
      "description" : "QuestionnaireResponse for OPAT home hospitalization (continuous infusion) demonstrating per-lumen catheter observation with a 2-lumen tunneled catheter. Lumen 2 (white) shows difficult blood aspiration, triggering an Abnormal catheter observation. Uses the SDC definitions questionnaire which carries a repeating G_Lumen group.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-HomehospOpatContinuousInfusionQuestionnaireResponseExample.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/HomehospOpatContinuousInfusionQuestionnaireResponseExample"
      },
      "name" : "QuestionnaireResponse: OPAT Home Hospitalization - continuous infusion",
      "description" : "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-HomehospOpatShortIVQRMultiLumenExample.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/HomehospOpatShortIVQRMultiLumenExample"
      },
      "name" : "QuestionnaireResponse: OPAT short IV QR - 3-lumen tunneled catheter",
      "description" : "QuestionnaireResponse for OPAT home hospitalization (short IV) with a 3-lumen tunneled catheter, demonstrating per-lumen catheter observation. The red lumen (lumen 3) is completely obstructed — blood aspiration and infusion both impossible. Administration was completed via the gray lumen (lumen 1) after telephone consultation with the hospital team. Uses the homehosp-opat-short-iv questionnaire, which carries a repeating G_Lumen group.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-stool-observation.html"
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
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-surgical-wound-pain-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/surgical-wound-pain-observation"
      },
      "name" : "Surgical Wound Pain Observation",
      "description" : "An observation of the pain reported by the patient in a surgical wound.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-symptom-severity.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-true-false.html"
      }],
      "reference" : {
        "reference" : "ValueSet/true-false"
      },
      "name" : "True / False Value Set",
      "description" : "SNOMED CT codes for a simple true or false answer.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-wexner-ccis-score-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/wexner-ccis-score-observation"
      },
      "name" : "Wexner/CCIS Score Observation",
      "description" : "Wexner/CCIS score observation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-YesNoVS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/YesNoVS"
      },
      "name" : "Yes / No Value Set",
      "description" : "SNOMED CT codes for a simple yes or no answer, used across all home-hospitalization questionnaires.",
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
