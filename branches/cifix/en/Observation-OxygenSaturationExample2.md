# OxygenSaturationExample2 - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: OxygenSaturationExample2

Profile: [Observation Oxygen Saturation Profile](http://hl7.org/fhir/R4/oxygensat.html)

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2024-11-18 09:38:52+0000 --> 2024-11-18 09:38:52+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: 98 %O2 (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OxygenSaturationExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/oxygensat"]
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
      "code" : "2708-6",
      "display" : "Oxygen saturation in Arterial blood"
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
    "value" : 98,
    "unit" : "%O2",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  }
}

```
