Instance: ve-group
InstanceOf: Observation
Title: "Ventricular Events Group"
Description: "Group of various ventricular ectopic events and VT episodes"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#ve-group "Ventricular Events Group"
* hasMember[0] = Reference(ves-1)
* hasMember[1] = Reference(ves-2)
* hasMember[2] = Reference(ves-couplet-1)
* hasMember[3] = Reference(ves-triplet-1)
* hasMember[4] = Reference(ves-bigeminy-1)
* hasMember[5] = Reference(ves-trigeminy-1)
* hasMember[6] = Reference(vt-1)
* hasMember[7] = Reference(vt-2)

Instance: ves-1
InstanceOf: Observation
Title: "VES 1"
Description: "Single ventricular ectopic beat"
Usage: #example
* status = #final
* code = http://snomed.info/sct#251175005 "Ventricular ectopic beat"
* effectiveDateTime = "2024-08-14T08:01:00+02:00"

Instance: ves-2
InstanceOf: Observation
Title: "VES 2"
Description: "Another single ventricular ectopic beat"
Usage: #example
* status = #final
* code = http://snomed.info/sct#251175005 "Ventricular ectopic beat"
* effectiveDateTime = "2024-08-14T08:04:00+02:00"

Instance: ves-couplet-1
InstanceOf: Observation
Title: "VES Couplets"
Description: "Two consecutive VES"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#ves-couplets "VES Couplets"
* effectiveDateTime = "2024-08-14T09:23:00+02:00"

Instance: ves-triplet-1
InstanceOf: Observation
Title: "VES Triplets"
Description: "Three consecutive VES"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#ves-triplets "VES Triplets"
* effectiveDateTime = "2024-08-14T14:03:00+02:00"

Instance: ves-bigeminy-1
InstanceOf: Observation
Title: "VES Bigeminies"
Description: "Bigeminy pattern"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#ves-bigeminies "VES Bigeminies"
* effectiveDateTime = "2024-08-14T19:00:00+02:00"

Instance: ves-trigeminy-1
InstanceOf: Observation
Title: "VES Trigeminies"
Description: "Trigeminy pattern"
Usage: #example
* status = #final
* code = http://hl7belgium.org/fhir/CodeSystem/holter#ves-trigeminies "VES Trigeminies"
* effectiveDateTime = "2024-08-14T19:02:00+02:00"

Instance: vt-1
InstanceOf: Observation
Title: "Additional VT Episode 1"
Description: "VT episode included in VES group"
Usage: #example
* status = #final
* code = http://snomed.info/sct#25569003 "Ventricular tachycardia"
* effectivePeriod.start = "2024-08-15T03:29:42+02:00"
* effectivePeriod.end = "2024-08-15T03:29:48.5+02:00"
* component[0].code = http://loinc.org#8867-4 "Median heart rate"
* component[0].valueQuantity.value = 88
* component[0].valueQuantity.unit = "beats/minute"

Instance: vt-2
InstanceOf: Observation
Title: "Additional VT Episode 2"
Description: "Second VT episode in VES group"
Usage: #example
* status = #final
* code = http://snomed.info/sct#25569003 "Ventricular tachycardia"
* effectivePeriod.start = "2024-08-14T21:32:59+02:00"
* effectivePeriod.end = "2024-08-14T21:33:00+02:00"
* component[0].code = http://loinc.org#8867-4 "Median heart rate"
* component[0].valueQuantity.value = 152
* component[0].valueQuantity.unit = "beats/minute"
