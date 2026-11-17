# OPAT patient example - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Patient: OPAT patient example

NUMMER 15 KWS-TESTPATIENT (official) Female, DoB: 1931-04-19 ( Medical record number: 310419V999 (use: usual, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Multiple Birth: | false | | |
| Other Id: | Medical record number/15 (use: usual, ) | | |
| Contact Detail | * ph: 02/1234567
* [test.test@1234.betestann](mailto:test.test@1234.betestann)
* [ditistest@testface.com](mailto:ditistest@testface.com)
* [face@tkklkljklklmlks.com](mailto:face@tkklkljklklmlks.com)
* ITALIESTRAAT 171 B Helecine 1357 (home)
* AAA X DEN HAAG 4544 NL NL (home)
 | | |
| Languages: | * French (preferred)
* Dutch
 | | |
| Teacher (occupation): | * +3212345678
 | | |
| Companion (occupation): | * [+32473444444](tel:+32473444444)
 | | |
| Child (person): | * [+3216622552](tel:+3216622552)
 | | |
| Links: | * General Practitioner: [PractitionerRole Physician](PractitionerRole-PractitionerRole-16500.md)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-123",
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/patient/eadnr",
    "value" : "15"
  },
  {
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical record number"
      }]
    },
    "system" : "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/patient/emdnr",
    "value" : "310419V999"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "KWS-TESTPATIENT",
    "given" : ["NUMMER 15"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02/1234567",
    "rank" : 9
  },
  {
    "system" : "email",
    "value" : "test.test@1234.betestann",
    "rank" : 9
  },
  {
    "system" : "email",
    "value" : "ditistest@testface.com",
    "rank" : 1
  },
  {
    "system" : "email",
    "value" : "face@tkklkljklklmlks.com",
    "rank" : 9
  }],
  "gender" : "female",
  "birthDate" : "1931-04-19",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "line" : ["ITALIESTRAAT 171 B"],
    "city" : "Helecine",
    "postalCode" : "1357",
    "period" : {
      "start" : "2006-03-07",
      "end" : "2020-10-15"
    }
  },
  {
    "use" : "home",
    "line" : ["AAA X"],
    "city" : "DEN HAAG",
    "postalCode" : "4544 NL",
    "country" : "NL",
    "period" : {
      "start" : "2020-10-16"
    }
  }],
  "multipleBirthBoolean" : false,
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106304008",
        "display" : "Teacher (occupation)"
      }]
    }],
    "telecom" : [{
      "system" : "sms",
      "value" : "+3212345678",
      "rank" : 9
    }]
  },
  {
    "relationship" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "62071000",
        "display" : "Companion (occupation)"
      }]
    }],
    "telecom" : [{
      "system" : "phone",
      "value" : "+32473444444",
      "rank" : 9
    }]
  },
  {
    "relationship" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "67822003",
        "display" : "Child (person)"
      }]
    }],
    "telecom" : [{
      "system" : "phone",
      "value" : "+3216622552",
      "rank" : 9
    }]
  }],
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "fr"
      }]
    },
    "preferred" : true
  },
  {
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "nl"
      }]
    }
  }],
  "generalPractitioner" : [{
    "reference" : "PractitionerRole/PractitionerRole-16500"
  }]
}

```
