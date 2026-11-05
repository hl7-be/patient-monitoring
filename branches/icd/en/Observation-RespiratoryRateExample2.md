# Observation: Respiratory Rate (Registered by Patient) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Respiratory Rate (Registered by Patient)

Profile: [Observation Respiratory Rate Profile](http://hl7.org/fhir/R4/resprate.html)

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2024-11-15 09:56:00+0000 --> 2024-11-15 09:57:00+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: 17.35 breaths/minute (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RespiratoryRateExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/resprate"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "9279-1",
      "display" : "Respiratory rate"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-15T09:56:00+00:00",
    "end" : "2024-11-15T09:57:00+00:00"
  },
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  }],
  "valueQuantity" : {
    "value" : 17.35,
    "unit" : "breaths/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
