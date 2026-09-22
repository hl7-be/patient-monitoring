# Home Hospitalization Encounter Logical Model - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Logical Model: Home Hospitalization Encounter Logical Model 

 
Logical model representing the FHIR Encounter resource as used in the OPAT and ONCO home hospitalization caresets. The Encounter serves two purposes: (1) recording whether the home visit took place and whether the patient was home, and (2) communicating the status of each ordered care activity back to the hospital. Only orders given by the hospital should be communicated back via this Encounter; other nursing activities are excluded. 

**Usages:**

* Refer to this Logical Model: [Home Hospitalization QuestionnaireResponse Logical Model](StructureDefinition-homehosp-questionnaire-response-lm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-monitoring|current/StructureDefinition/StructureDefinition-homehosp-encounter-lm.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-homehosp-encounter-lm.csv), [Excel](../StructureDefinition-homehosp-encounter-lm.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "homehosp-encounter-lm",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-encounter-lm",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.42.22"
  }],
  "version" : "0.1.0",
  "name" : "HomeHospEncounter",
  "title" : "Home Hospitalization Encounter Logical Model",
  "status" : "draft",
  "date" : "2026-07-22T07:37:58+00:00",
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
  "description" : "Logical model representing the FHIR Encounter resource as used in the OPAT and ONCO home hospitalization caresets. The Encounter serves two purposes: (1) recording whether the home visit took place and whether the patient was home, and (2) communicating the status of each ordered care activity back to the hospital. Only orders given by the hospital should be communicated back via this Encounter; other nursing activities are excluded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/HomeHospEncounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HomeHospEncounter",
      "path" : "HomeHospEncounter",
      "short" : "Home Hospitalization Encounter Logical Model",
      "definition" : "Logical model representing the FHIR Encounter resource as used in the OPAT and ONCO home hospitalization caresets. The Encounter serves two purposes: (1) recording whether the home visit took place and whether the patient was home, and (2) communicating the status of each ordered care activity back to the hospital. Only orders given by the hospital should be communicated back via this Encounter; other nursing activities are excluded."
    },
    {
      "id" : "HomeHospEncounter.status",
      "path" : "HomeHospEncounter.status",
      "short" : "Status of the encounter - reported from Home nurse back to hospital | Answers: finished | cancelled | entered-in-error",
      "definition" : "Status of the encounter - reported from Home nurse back to hospital | Answers: finished | cancelled | entered-in-error",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.class",
      "path" : "HomeHospEncounter.class",
      "short" : "Classification of the encounter | Fixed value: HH (home health) from http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "definition" : "Classification of the encounter | Fixed value: HH (home health) from http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.period",
      "path" : "HomeHospEncounter.period",
      "short" : "The start (and optionally end) time of the encounter",
      "definition" : "The start (and optionally end) time of the encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospEncounter.period.start",
      "path" : "HomeHospEncounter.period.start",
      "short" : "Start date/time of the home visit",
      "definition" : "Start date/time of the home visit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "HomeHospEncounter.period.end",
      "path" : "HomeHospEncounter.period.end",
      "short" : "End date/time of the home visit",
      "definition" : "End date/time of the home visit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "HomeHospEncounter.participant",
      "path" : "HomeHospEncounter.participant",
      "short" : "The home nurse performing the visit",
      "definition" : "The home nurse performing the visit",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospEncounter.participant.type",
      "path" : "HomeHospEncounter.participant.type",
      "short" : "Participant type | Fixed value: PPRF (primary performer) from http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
      "definition" : "Participant type | Fixed value: PPRF (primary performer) from http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.participant.individual",
      "path" : "HomeHospEncounter.participant.individual",
      "short" : "Reference or display name and RIZIV number of the performing home nurse",
      "definition" : "Reference or display name and RIZIV number of the performing home nurse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonCode",
      "path" : "HomeHospEncounter.reasonCode",
      "short" : "The ordered care activities being reported on. One reasonCode entry per ordered activity (e.g. medication administration + catheter care). Only orders from the hospital should be included.",
      "definition" : "The ordered care activities being reported on. One reasonCode entry per ordered activity (e.g. medication administration + catheter care). Only orders from the hospital should be included.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonCode.primaryProcedure",
      "path" : "HomeHospEncounter.reasonCode.primaryProcedure",
      "short" : "Primary SNOMED code for the ordered care activity | Possible values: 18629005 Administration of drug or medicament | 18949003 Change of dressing | 705995006 Replace needleless connector | 448439004 Replace statlock | 302358004 Replace gripper needle | 233553003 Remove gripper needle | 103715008 Remove catheter | 82078001 Blood sample collection",
      "definition" : "Primary SNOMED code for the ordered care activity | Possible values: 18629005 Administration of drug or medicament | 18949003 Change of dressing | 705995006 Replace needleless connector | 448439004 Replace statlock | 302358004 Replace gripper needle | 233553003 Remove gripper needle | 103715008 Remove catheter | 82078001 Blood sample collection",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonCode.administrationSubtype",
      "path" : "HomeHospEncounter.reasonCode.administrationSubtype",
      "short" : "Subtype for drug administration (use when primaryProcedure = 18629005) | Possible values: 14152002 Intravenous infusion | 386358000 IV administration | 76601001 Intramuscular injection | 276844002 Subcutaneous injection | 243132000 Inhaled administration",
      "definition" : "Subtype for drug administration (use when primaryProcedure = 18629005) | Possible values: 14152002 Intravenous infusion | 386358000 IV administration | 76601001 Intramuscular injection | 276844002 Subcutaneous injection | 243132000 Inhaled administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonCode.statusText",
      "path" : "HomeHospEncounter.reasonCode.statusText",
      "short" : "Free-text status note for this care activity (e.g. why it was not performed)",
      "definition" : "Free-text status note for this care activity (e.g. why it was not performed)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonCode.completed",
      "path" : "HomeHospEncounter.reasonCode.completed",
      "short" : "Was this ordered care activity completed? | Answers: 31874001 True (completed) | 64100000 False (not completed)",
      "definition" : "Was this ordered care activity completed? | Answers: 31874001 True (completed) | 64100000 False (not completed)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "HomeHospEncounter.serviceProvider",
      "path" : "HomeHospEncounter.serviceProvider",
      "short" : "Reference or display name of the home nursing organisation (e.g. Wit-Gele Kruis Vlaams-Brabant)",
      "definition" : "Reference or display name of the home nursing organisation (e.g. Wit-Gele Kruis Vlaams-Brabant)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }]
    },
    {
      "id" : "HomeHospEncounter.reasonReference",
      "path" : "HomeHospEncounter.reasonReference",
      "short" : "Reference(s) to the QuestionnaireResponse(s) associated with this encounter",
      "definition" : "Reference(s) to the QuestionnaireResponse(s) associated with this encounter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-questionnaire-response-lm"]
      }]
    }]
  }
}

```
