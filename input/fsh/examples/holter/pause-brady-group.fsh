Instance: pause-brady-group
InstanceOf: Observation
Title: "Pause and Bradycardia Group"
Description: "A group observation that includes sinus pause and bradycardia events"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#pause-group "Pause episode group"
* hasMember[0] = Reference(pause-ep-1)
* hasMember[1] = Reference(brady-ep-1)

Instance: pause-ep-1
InstanceOf: Observation
Title: "Sinus Pause Episode"
Description: "Sinus pause with duration"
Usage: #example
* status = #final
* code = http://snomed.info/sct#698247007 "Sinus Pause"
* effectivePeriod.start = "2024-08-14T08:53:00+02:00"
* effectivePeriod.end = "2024-08-14T08:53:16+02:00"
* valueQuantity.value = 16
* valueQuantity.unit = "seconds"

Instance: brady-ep-1
InstanceOf: Observation
Title: "Bradycardia Episode"
Description: "Bradycardia episode with duration and average heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#48867003 "Bradycardia"
* effectivePeriod.start = "2024-08-14T08:56:00+02:00"
* effectivePeriod.end = "2024-08-14T08:56:16+02:00"
* valueQuantity.value = 16
* valueQuantity.unit = "seconds"
* component[0].code = http://loinc.org#8867-4 "Average heart rate"
* component[0].valueQuantity.value = 42
* component[0].valueQuantity.unit = "beats/minute"
