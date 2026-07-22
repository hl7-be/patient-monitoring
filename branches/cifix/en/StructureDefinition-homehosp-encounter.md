# Home Hospitalization Careset Encounter - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Resource Profile: Home Hospitalization Careset Encounter 

 
Profile on the FHIR Encounter resource for use in OPAT and ONCO home hospitalization caresets. The Encounter records whether the home visit took place and the status of each ordered care activity. Only hospital-ordered procedures should be reported back via this Encounter. See logical model: [CarestEncounter](StructureDefinition-homehosp-encounter-lm.md) 

**Usages:**

* Refer to this Profile: [Home Hospitalization Careset Questionnaire Response](StructureDefinition-homehosp-questionnaire-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-monitoring|current/StructureDefinition/homehosp-encounter)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-encounter.csv), [Excel](../StructureDefinition-homehosp-encounter.xlsx), [Schematron](../StructureDefinition-homehosp-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-encounter",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-encounter",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.13"
  }],
  "version" : "0.1.0",
  "name" : "HomehospEncounter",
  "title" : "Home Hospitalization Careset Encounter",
  "status" : "draft",
  "date" : "2026-05-19T06:47:26+00:00",
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
  "description" : "Profile on the FHIR Encounter resource for use in OPAT and ONCO home hospitalization caresets. The Encounter records whether the home visit took place and the status of each ordered care activity. Only hospital-ordered procedures should be reported back via this Encounter. See logical model: [CarestEncounter](StructureDefinition-homehosp-encounter-lm.html)",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "HH",
        "display" : "home health"
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode.coding",
      "path" : "Encounter.reasonCode.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
