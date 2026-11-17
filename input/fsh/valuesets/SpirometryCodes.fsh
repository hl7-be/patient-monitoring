CodeSystem: SpirometryComponentCS
Id: spirometry-component-codes
Title: "Spirometry Component Codes"
Description: "Local codes for spirometry session quality components that have no LOINC or SNOMED CT equivalent. Used as `Observation.component.code` in the Spirometry Observation profile."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #fev1-grade "FEV1 grade" "Quality grade of the FEV1 reported for a spirometry session, according to the ATS/ERS 2019 grading system."
* #fvc-grade "FVC grade" "Quality grade of the FVC reported for a spirometry session, according to the ATS/ERS 2019 grading system."

CodeSystem: SpirometryGradeCS
Id: spirometry-grade
Title: "Spirometry Grade Codes (ATS/ERS 2019)"
Description: """
Session-level quality grades for FEV1 and FVC as defined in Table 10 of the ATS/ERS 2019 technical standard
(Graham BL et al., Standardization of Spirometry 2019 Update, Am J Respir Crit Care Med 2019;200(8):e70-e88).
The repeatability thresholds below apply to patients older than 6 years. FEV1 and FVC are graded independently.
"""
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #A "Grade A" "3 or more acceptable manoeuvres, with the two largest values within 0.150 L of each other."
* #B "Grade B" "2 acceptable manoeuvres, with the two largest values within 0.150 L of each other."
* #C "Grade C" "2 or more acceptable manoeuvres, with the two largest values within 0.200 L of each other."
* #D "Grade D" "2 or more acceptable manoeuvres, with the two largest values within 0.250 L of each other."
* #E "Grade E" "2 or more acceptable manoeuvres with the two largest values more than 0.250 L apart, or only 1 acceptable manoeuvre."
* #U "Grade U" "No acceptable manoeuvres, but at least 1 usable manoeuvre."
* #F "Grade F" "No acceptable and no usable manoeuvres."

ValueSet: SpirometryGradeVS
Id: spirometry-grade
Title: "Spirometry Grade (ATS/ERS 2019)"
Description: "ATS/ERS 2019 session quality grades (A-F, U) for FEV1 and FVC."
* ^status = #active
* ^experimental = false
* include codes from system SpirometryGradeCS
