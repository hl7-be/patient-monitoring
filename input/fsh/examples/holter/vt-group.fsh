Instance: vt-group
InstanceOf: Observation
Title: "Ventricular Tachycardia Group"
Description: "Group of VT episodes"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#vt-group "Ventricular Tachycardia episode group"
* hasMember[0] = Reference(vt-ep-1)
* hasMember[1] = Reference(vt-ep-2)

Instance: vt-ep-1
InstanceOf: Observation
Title: "VT Episode 1"
Description: "Ventricular tachycardia episode of 6.5 seconds with median heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164893009 "Ventricular tachycardia"
* effectivePeriod.start = "2024-08-15T03:29:42+02:00"
* effectivePeriod.end = "2024-08-15T03:29:48.5+02:00"
* valueQuantity.value = 6.5
* valueQuantity.unit = "seconds"
* component[0].code = http://loinc.org#8867-4 "Median heart rate"
* component[0].valueQuantity.value = 88
* component[0].valueQuantity.unit = "beats/minute"

Instance: vt-ep-2
InstanceOf: Observation
Title: "VT Episode 2"
Description: "Short VT episode of 1 second with median heart rate"
Usage: #example
* status = #final
* code = http://snomed.info/sct#164893009 "Ventricular tachycardia"
* effectivePeriod.start = "2024-08-14T21:32:59+02:00"
* effectivePeriod.end = "2024-08-14T21:33:00+02:00"
* valueQuantity.value = 1
* valueQuantity.unit = "seconds"
* component[0].code = http://loinc.org#8867-4 "Median heart rate"
* component[0].valueQuantity.value = 152
* component[0].valueQuantity.unit = "beats/minute"
