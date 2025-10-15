Invariant: 1-20-int-range
Description: "valueInteger must be between 1 and 20 inclusive"
Severity: #error
Expression: "valueInteger.exists() implies (valueInteger >= 1 and valueInteger <= 20)"

Profile: WexnerCCISScoreObservation
Parent: Observation
Id: wexner-ccis-score-observation
Title: "Wexner/CCIS score Observation"
Description: "Wexner/CCIS score observation"
* code = $snomed#782487009 "Assessment score"
* value[x] only integer
* valueInteger
* obeys 1-20-int-range