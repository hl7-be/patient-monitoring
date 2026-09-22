# BodyWeightExample2 - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: BodyWeightExample2

Profile: [Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)

**status**: Final

**category**: Vital Signs

**code**: Body Weight

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2024-11-18 09:38:52+0000 --> 2024-11-18 09:38:52+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: 89.3 kg (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BodyWeightExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodyweight"]
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
      "code" : "29463-7",
      "display" : "Body Weight"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-18T09:38:52+00:00",
    "end" : "2024-11-18T09:38:52+00:00"
  },
  "performer" : [{
    "identifier" : {
      "system" : "https://www.telemonitoring-prescription.com/FHIR/patient",
      "value" : "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
    }
  }],
  "valueQuantity" : {
    "value" : 89.3,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
