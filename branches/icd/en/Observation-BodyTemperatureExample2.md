# Observation: Body Temperature (Without Device) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Body Temperature (Without Device)

Profile: [Observation Body Temperature Profile](http://hl7.org/fhir/R4/bodytemp.html)

**status**: Final

**category**: Vital Signs

**code**: Body Temperature

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2024-11-15 09:56:00+0000 --> 2024-11-15 09:57:00+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: 35.29 C (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BodyTemperatureExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodytemp"]
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
      "code" : "8310-5",
      "display" : "Body Temperature"
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
    "value" : 35.29,
    "unit" : "C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
