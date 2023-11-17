Profile: PatientMonitoringObservation
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns

Profile: HRMonitoringObs
Parent: PatientMonitoringObservation

* subject 1..1 
* subject only Reference(HRMonitoringPatient)

* identifier 1..1

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Observation components"

* component contains hrValue 0..1 and hrIndicator 0..1 and hrReviewFinding 0..1 and symptoms 0..* and activityStatus 0..1 and hrReport 0..1
// note that one of these may be upgraded to be the main observation value

* component[hrValue]
  * value[x] only Quantity
  * code = #fibricheck-hr-value

* component[hrIndicator]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCHRIndicatorVS
  * code = #fibricheck-hr-indicator

* component[hrReviewFinding]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCHRFindingVS
  * code = #fibricheck-hr-review-finding

* component[symptoms]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCContextSymptomsVS
  * code = #fibricheck-symptoms

* component[activityStatus]
  * value[x] only CodeableConcept
  * valueCodeableConcept from FCContextActivityVS
  * code = #fibricheck-activity-status

* component[hrReport]
  * value[x] only CodeableConcept
  * code = #fibricheck-report

* code = #fibricheck
* effective[x] only dateTime 
* effectiveDateTime 1..1 MS


Profile: MonitoringPatient
Parent: Patient


Profile: HRMonitoringPatient
Parent: MonitoringPatient

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

// * identifier[fibricheck-userid] 
//   * type = #userid
//   * system = "http://somesystem/identifiertypes/userid"

// * identifier[fibricheck-username]
//   * type = #username
//   * system = "http://somesystem/identifiertypes/username"


Profile: SWDevice
Parent: Device


* version ^slicing.discriminator.type = #pattern
* version ^slicing.discriminator.path = "type"
* version ^slicing.rules = #open
* version ^slicing.description = "Types of versions"
* version contains software-version 1..1

* version[software-version].type = urn:iso:std:iso:11073:10101#531975
* version[software-version].value MS