# Spirometry Grade Codes (ATS/ERS 2019) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## CodeSystem: Spirometry Grade Codes (ATS/ERS 2019) 

This Code system is referenced in the definition of the following value sets:

* [Spirometry Grade (ATS/ERS 2019)](ValueSet-spirometry-grade.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "spirometry-grade",
  "url" : "http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-grade",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.54.16.3"
  }],
  "version" : "0.1.0",
  "name" : "SpirometryGradeCS",
  "title" : "Spirometry Grade Codes (ATS/ERS 2019)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-26T09:35:57+00:00",
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
  "description" : "Session-level quality grades for FEV1 and FVC as defined in Table 10 of the ATS/ERS 2019 technical standard\n(Graham BL et al., Standardization of Spirometry 2019 Update, Am J Respir Crit Care Med 2019;200(8):e70-e88).\nThe repeatability thresholds below apply to patients older than 6 years. FEV1 and FVC are graded independently.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "A",
    "display" : "Grade A",
    "definition" : "3 or more acceptable manoeuvres, with the two largest values within 0.150 L of each other."
  },
  {
    "code" : "B",
    "display" : "Grade B",
    "definition" : "2 acceptable manoeuvres, with the two largest values within 0.150 L of each other."
  },
  {
    "code" : "C",
    "display" : "Grade C",
    "definition" : "2 or more acceptable manoeuvres, with the two largest values within 0.200 L of each other."
  },
  {
    "code" : "D",
    "display" : "Grade D",
    "definition" : "2 or more acceptable manoeuvres, with the two largest values within 0.250 L of each other."
  },
  {
    "code" : "E",
    "display" : "Grade E",
    "definition" : "2 or more acceptable manoeuvres with the two largest values more than 0.250 L apart, or only 1 acceptable manoeuvre."
  },
  {
    "code" : "U",
    "display" : "Grade U",
    "definition" : "No acceptable manoeuvres, but at least 1 usable manoeuvre."
  },
  {
    "code" : "F",
    "display" : "Grade F",
    "definition" : "No acceptable and no usable manoeuvres."
  }]
}

```
