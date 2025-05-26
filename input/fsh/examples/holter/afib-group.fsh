Instance: afib-group
InstanceOf: Observation
Title: "AFib Episode Group"
Description: "A group observation for atrial fibrillation episodes"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#afib-group "AFib episode group"
* hasMember[0] = Reference(afib-ep-1)
* hasMember[1] = Reference(afib-ep-2)

Instance: afib-ep-1
InstanceOf: Observation
Title: "AFib Episode 1"
Description: "An episode of atrial fibrillation with duration and average heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164889003 "Atrial fibrillation"
* effectivePeriod.start = "2024-08-14T12:14:59+02:00"
* effectivePeriod.end = "2024-08-14T12:16:54+02:00"
* component[0].code = http://loinc.org#8867-4 "Average heart rate"
* component[0].valueQuantity.value = 79
* component[0].valueQuantity.unit = "beats/minute"

Instance: afib-ep-2
InstanceOf: Observation
Title: "AFib Episode 2"
Description: "Second episode of atrial fibrillation with duration and average heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164889003 "Atrial fibrillation"
* effectivePeriod.start = "2024-08-14T14:22:00+02:00"
* effectivePeriod.end = "2024-08-14T14:23:45+02:00"
* component[0].code = http://loinc.org#8867-4 "Average heart rate"
* component[0].valueQuantity.value = 82
* component[0].valueQuantity.unit = "beats/minute"
