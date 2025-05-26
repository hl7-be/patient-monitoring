Instance: obs-heartrate
InstanceOf: Observation
Title: "Heart Rate Summary"
Description: "Summary of heart rate metrics during Holter recording"
Usage: #example
* id = "obs-heartrate"
* status = #final
* code = http://loinc.org#8867-4 "Heart rate"
* effectiveDateTime = "2024-08-14T09:01:24+02:00"

* component[0].code = http://loinc.org#8867-4 "Median heart rate (daytime)"
* component[0].valueQuantity.value = 64
* component[0].valueQuantity.unit = "beats/minute"
* component[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-time-period"
* component[0].extension[0].valuePeriod.start = "2024-08-14T06:00:00+02:00"
* component[0].extension[0].valuePeriod.end = "2024-08-14T22:00:00+02:00"

* component[1].code = http://loinc.org#8867-4 "Median heart rate (nighttime)"
* component[1].valueQuantity.value = 60
* component[1].valueQuantity.unit = "beats/minute"
* component[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-time-period"
* component[1].extension[0].valuePeriod.start = "2024-08-14T22:00:00+02:00"
* component[1].extension[0].valuePeriod.end = "2024-08-15T06:00:00+02:00"

* component[2].code = http://loinc.org#101692-2 "Maximum Heart rate"
* component[2].valueQuantity.value = 136
* component[2].valueQuantity.unit = "beats/minute"

* component[3].code = http://loinc.org#103222-6 "Minimum Heart rate"
* component[3].valueQuantity.value = 40
* component[3].valueQuantity.unit = "beats/minute"
