Invariant: 1-7-int-range
Description: "valueInteger must be between 1 and 7 inclusive"
Severity: #error
Expression: "valueInteger.exists() implies (valueInteger >= 1 and valueInteger <= 7)"

Profile: StoolObservation
Parent: Observation
Id: stool-observation
Title: "Stool Observation"
Description: "An observation of stool according to the Bristol stool scale"
* code = $snomed#443172007 "Bristol stool form score"
* value[x] only integer
* obeys 1-7-int-range