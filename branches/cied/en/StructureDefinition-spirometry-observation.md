# Spirometry Observation - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: Spirometry Observation 

**Usages:**

* Examples for this Profile: [Observation/SpirometryExample](Observation-SpirometryExample.md) and [Observation/SpirometryExample2](Observation-SpirometryExample2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-spirometry-observation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-spirometry-observation.csv), [Excel](../StructureDefinition-spirometry-observation.xlsx), [Schematron](../StructureDefinition-spirometry-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "spirometry-observation",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.36"
  }],
  "version" : "0.1.0",
  "name" : "SpirometryObservation",
  "title" : "Spirometry Observation",
  "status" : "draft",
  "date" : "2026-11-26T09:35:54+00:00",
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
  "description" : "The result of one spirometry session (one sitting, typically 3 to 8 forced manoeuvres) performed by the patient at\nhome. Following the ATS/ERS 2019 reporting rules, the reported FEV1 and FVC are the largest values from the acceptable\nmanoeuvres (they may come from different manoeuvres), and each is accompanied by its session quality grade.\nIndividual manoeuvres are not exchanged.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "spiro-fev1-grade",
        "severity" : "warning",
        "human" : "The ATS/ERS grade of the reported FEV1 SHOULD be reported.",
        "expression" : "component.where(code.coding.where(system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fev1-grade').exists()).exists()",
        "source" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation"
      },
      {
        "key" : "spiro-fvc-grade",
        "severity" : "warning",
        "human" : "If FVC is reported, its ATS/ERS grade SHOULD be reported as well.",
        "expression" : "component.where(code.coding.where(system = 'http://loinc.org' and code = '19870-5').exists()).exists() implies component.where(code.coding.where(system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fvc-grade').exists()).exists()",
        "source" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation"
      },
      {
        "key" : "spiro-fvc-required",
        "severity" : "error",
        "human" : "FEV1/FVC, FEF25-75, FVC % predicted and the FVC grade can only be reported together with FVC.",
        "expression" : "component.where(code.coding.where((system = 'http://loinc.org' and (code = '19926-5' or code = '19927-3' or code = '19872-1')) or (system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fvc-grade')).exists()).exists() implies component.where(code.coding.where(system = 'http://loinc.org' and code = '19870-5').exists()).exists()",
        "source" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/spirometry-observation"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:procedure",
      "path" : "Observation.category",
      "sliceName" : "procedure",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "procedure"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "81459-0"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Time of the session; a Period from the first to the last manoeuvre is preferred",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Who performed the manoeuvres (normally the patient)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "The spirometer used",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Individual manoeuvres are not exchanged",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "Sliced on component.code",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1",
      "path" : "Observation.component",
      "sliceName" : "fev1",
      "short" : "FEV1: largest FEV1 of the acceptable manoeuvres",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "20150-9"
        }]
      }
    },
    {
      "id" : "Observation.component:fev1.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "L"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fvc",
      "path" : "Observation.component",
      "sliceName" : "fvc",
      "short" : "FVC: largest FVC of the acceptable manoeuvres",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fvc.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19870-5"
        }]
      }
    },
    {
      "id" : "Observation.component:fvc.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "L"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1Fvc",
      "path" : "Observation.component",
      "sliceName" : "fev1Fvc",
      "short" : "FEV1/FVC ratio, from the reported FEV1 and FVC",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1Fvc.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19926-5"
        }]
      }
    },
    {
      "id" : "Observation.component:fev1Fvc.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pef",
      "path" : "Observation.component",
      "sliceName" : "pef",
      "short" : "Peak expiratory flow",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pef.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33452-4"
        }]
      }
    },
    {
      "id" : "Observation.component:pef.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "L/s"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fef2575",
      "path" : "Observation.component",
      "sliceName" : "fef2575",
      "short" : "FEF25-75%, from the manoeuvre with the largest sum of FEV1 and FVC",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fef2575.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19927-3"
        }]
      }
    },
    {
      "id" : "Observation.component:fef2575.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "L/s"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1PercentPredicted",
      "path" : "Observation.component",
      "sliceName" : "fev1PercentPredicted",
      "short" : "FEV1 as % of predicted",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1PercentPredicted.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "20152-5"
        }]
      }
    },
    {
      "id" : "Observation.component:fev1PercentPredicted.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fvcPercentPredicted",
      "path" : "Observation.component",
      "sliceName" : "fvcPercentPredicted",
      "short" : "FVC as % of predicted",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fvcPercentPredicted.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "19872-1"
        }]
      }
    },
    {
      "id" : "Observation.component:fvcPercentPredicted.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1Grade",
      "path" : "Observation.component",
      "sliceName" : "fev1Grade",
      "short" : "ATS/ERS 2019 quality grade of the reported FEV1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fev1Grade.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes",
          "code" : "fev1-grade"
        }]
      }
    },
    {
      "id" : "Observation.component:fev1Grade.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/spirometry-grade"
      }
    },
    {
      "id" : "Observation.component:fvcGrade",
      "path" : "Observation.component",
      "sliceName" : "fvcGrade",
      "short" : "ATS/ERS 2019 quality grade of the reported FVC",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:fvcGrade.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes",
          "code" : "fvc-grade"
        }]
      }
    },
    {
      "id" : "Observation.component:fvcGrade.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/spirometry-grade"
      }
    }]
  }
}

```
