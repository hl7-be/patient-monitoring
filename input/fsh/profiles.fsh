Profile: HRMonitoringObs
Parent: Observation

* subject 1..1 
* subject only Reference(HRMonitoringPatient)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Observation components"

* component contains hrIndicator 0..1 and hrReviewFinding 0..1 and rmssd 0..1 and symptoms 0..* and activityStatus 0..1 and chadvasc 0..1 and measurementAttempts 0..1
// note that one of these may be upgraded to be the main observation value

* component[hrIndicator]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCHRIndicatorVS

* component[hrReviewFinding]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCHRFindingVS

* component[rmssd]
  * value[x] only Quantity

* component[symptoms]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCContextSymptomsVS

* component[activityStatus]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCContextActivityVS

* component[chadvasc]
  * value[x] only CodeableConcept
//  * valueCodeableConcept from 

* component[measurementAttempts]
  * value[x] only integer


* device only Reference(SWDevice)



* code = #fibricheck
* effective[x] only dateTime 
* effectiveDateTime 1..1 MS


Profile: HRMonitoringPatient
Parent: BePatient

* identifier MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Types of identifiers"
* identifier contains fibricheck-username 1..1 and fibricheck-userid 1..1

* identifier[fibricheck-userid] 
  * type = #userid
  * system = "http://somesystem/identifiertypes/userid"

* identifier[fibricheck-username]
  * type = #username
  * system = "http://somesystem/identifiertypes/username"


Profile: SWDevice
Parent: Device


* version ^slicing.discriminator.type = #pattern
* version ^slicing.discriminator.path = "type"
* version ^slicing.rules = #open
* version ^slicing.description = "Types of versions"
* version contains software-version 1..1

* version[software-version].type = urn:iso:std:iso:11073:10101#531975
