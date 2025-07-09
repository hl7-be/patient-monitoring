Instance: sve-group
InstanceOf: Observation
Title: "Supraventricular Events Group"
Description: "Group of supraventricular ectopic and tachycardic events"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#sve-group "Supraventricular Events Group"
* hasMember[0] = Reference(sve-1)
* hasMember[1] = Reference(sve-2)
* hasMember[2] = Reference(sve-3)
* hasMember[3] = Reference(svt-1)

Instance: sve-1
InstanceOf: Observation
Title: "Single Supraventricular Ectopic Beat"
Description: "A single supraventricular ectopic beat"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164887001 "Supraventricular ectopic beat"
* effectiveDateTime = "2024-08-14T08:15:03+02:00"

Instance: sve-2
InstanceOf: Observation
Title: "Supraventricular Couplet"
Description: "Two consecutive supraventricular ectopic beats"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#sve-couplet "Supraventricular couplet"
* effectiveDateTime = "2024-08-14T12:32:45+02:00"

Instance: sve-3
InstanceOf: Observation
Title: "Short Supraventricular Run"
Description: "A short run of supraventricular ectopics"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#sve-run "Short supraventricular run"
* effectiveDateTime = "2024-08-14T15:10:22+02:00"

Instance: svt-1
InstanceOf: Observation
Title: "Supraventricular Tachycardia"
Description: "Short SVT episode with heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164873001 "Supraventricular tachycardia"
* effectivePeriod.start = "2024-08-14T23:31:15+02:00"
* effectivePeriod.end = "2024-08-14T23:31:16.1+02:00"
* component[0].code = http://loinc.org#8867-4 "Median heart rate"
* component[0].valueQuantity.value = 128
* component[0].valueQuantity.unit = "beats/minute"
