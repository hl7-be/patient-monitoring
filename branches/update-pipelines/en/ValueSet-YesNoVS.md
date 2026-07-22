# Yes/No Value Set - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## ValueSet: Yes/No Value Set 

 
Simple yes or no answer value set 

 **References** 

* [Painkiller usage Observation](StructureDefinition-painkiller-usage-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "YesNoVS",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/ValueSet/YesNoVS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.48.11"
  }],
  "version" : "0.1.0",
  "name" : "YesNoVS",
  "title" : "Yes/No Value Set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-18T09:41:30+00:00",
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
  "description" : "Simple yes or no answer value set",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "373066001",
        "display" : "Yes"
      },
      {
        "code" : "373067005",
        "display" : "No"
      }]
    }]
  }
}

```
