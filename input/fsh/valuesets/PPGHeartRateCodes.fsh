ValueSet: PPGHeartRateCodes
Id: ppg-heart-rate-codes
Title: "PPG Heart Rate Codes"
Description: "LOINC and SNOMED CT codes representing heart rate measurement concepts used in PPG-based observations."
* ^status = #active

// SNOMED CT
* include http://snomed.info/sct#364075005 "Heart rate (observable entity)"

// LOINC
* include http://loinc.org#8867-4 "Heart rate"
