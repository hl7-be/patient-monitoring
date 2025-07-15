ValueSet: PPGSeverityCodes
Id: ppg-severity-codes
Title: "PPG Symptom Severity Codes"
Description: "SNOMED CT and LOINC codes representing severity levels of symptoms reported during PPG rhythm screening."
* ^status = #active

// SNOMED CT severities
* include http://snomed.info/sct#255604002 "Mild (qualifier value)"
* include http://snomed.info/sct#6736007 "Moderate (severity modifier) (qualifier value)"
* include http://snomed.info/sct#272141005 "Severities (qualifier value)"
* include http://snomed.info/sct#442452003 "Life threatening severity (qualifier value)"

// LOINC answers
* include http://loinc.org#LA6752-5 "Mild"
* include http://loinc.org#LA6751-7 "Moderate"
* include http://loinc.org#LA6750-9 "Severe"
