# Observation: Heart Rate (Registered by Patient) - Patient Monitoring Outcome FHIR Implementation Guide v0.1.0

## Example Observation: Observation: Heart Rate (Registered by Patient)

Profile: [Observation Heart Rate Profile](http://hl7.org/fhir/R4/heartrate.html)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**effective**: 2024-11-18 09:38:52+0000 --> 2024-11-18 09:38:52+0000

**performer**: Identifier: `https://www.telemonitoring-prescription.com/FHIR/patient`/EFD5E060-9522-48BE-9ECC-3BFA54EA3666

**value**: 78 /min (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HeartRateExample2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/heartrate"]
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
      "code" : "8867-4",
      "display" : "Heart rate"
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
    "value" : 78,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
