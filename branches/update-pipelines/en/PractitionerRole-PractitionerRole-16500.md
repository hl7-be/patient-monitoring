# General practitioner example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example PractitionerRole: General practitioner example

Profile: [BePractitionerRole](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/StructureDefinition-be-practitionerrole.html)

**identifier**: `https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/huisarts/id`/16500

**code**: Physician

**specialty**: General Physician



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRole-16500",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
  },
  "identifier" : [{
    "system" : "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/huisarts/id",
    "value" : "16500"
  }],
  "code" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
      "code" : "persphysician",
      "display" : "Physician"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty",
      "code" : "drgeneralphysician",
      "display" : "General Physician"
    }]
  }]
}

```
