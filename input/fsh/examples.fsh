Instance: ExampleHRMonitoringObs
InstanceOf: HRMonitoringObs
Usage: #example
* subject = Reference(ExampleHRMonitoringPatient)
* component[hrIndicator].valueCodeableConcept = FCHRIndicatorCS#normal
* component[hrReviewFinding].valueCodeableConcept = FCHRFindingCS#25
* component[rmssd].valueQuantity = 25 'ms'
* component[symptoms].valueCodeableConcept = FCContextSymptomsCS#4
* component[activityStatus].valueCodeableConcept = FCContextActivityCS#3
* component[chadvasc].valueCodeableConcept = #LowRisk
* component[measurementAttempts].valueInteger = 2
* device = Reference(ExampleSWDevice)
* code = #fibricheck
* effectiveDateTime = "2023-07-20T14:30:00Z"
* status = #final


Instance: ExampleHRMonitoringPatient
InstanceOf: HRMonitoringPatient
Usage: #example
* identifier[fibricheck-username].type = #username
* identifier[fibricheck-username].system = "http://somesystem/identifiertypes/username"
* identifier[fibricheck-username].value = "johndoe"
* identifier[fibricheck-userid].type = #userid
* identifier[fibricheck-userid].system = "http://somesystem/identifiertypes/userid"
* identifier[fibricheck-userid].value = "123456"


Instance: ExampleSWDevice
InstanceOf: SWDevice
Usage: #example
* version[software-version].type = urn:iso:std:iso:11073:10101#531975
* version[software-version].value = "1.2.0"
