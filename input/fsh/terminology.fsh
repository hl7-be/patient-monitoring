

CodeSystem:  FCHRIndicatorCS
Id: FCHRIndicatorCS
Title: "HR Indicator Code System"
Description:  "FCHRIndicator"
* ^experimental = false
* ^caseSensitive = true
* #normal "Normal"
* #warning "warning"
* #urgent "Urgent"
* #quality "Quality"


ValueSet: FCHRIndicatorVS
Id: FCHRIndicatorVS
Title: "Heart Rate Indicator Value Set"
Description: "Codes representing the"
* include codes from system FCHRIndicatorCS
* ^experimental = false


CodeSystem:  FCHRFindingCS
Id: FCHRFindingCS
Title: "HR Finding Code System"
Description:  "FCHRFinding"
* ^experimental = false
* ^caseSensitive = true
* #1 "sinus_arrhythmia"
* #2 "extrasystoles_trig_episode"
* #3 "undiagnosable"
* #4 "extrasystoles_isolated"
* #5 "dubious_rhythm"
* #6 "extrasystoles"
* #7 "extrasystoles_trigeminy"
* #8 "tachy_episode"
* #9 "extrasystoles_frequent"
* #10 "phone_incompatible"
* #11 "extrasystoles_big_episode"
* #12 "increased_hrv"
* #13 "sinus"
* #14 "atrial_flutter"
* #15 "brady_episode"
* #16 "tachycardia"
* #17 "extrasystoles_bigminy"
* #18 "tachy_arrhytmia"
* #19 "pacemaker_rhythm"
* #20 "bradycardia"
* #21 "brady_arrhytmia"
* #22 "quality_to_low"
* #23 "atrial_fibrillation"
* #24 "other"
* #25 "no_diagnosis"

ValueSet: FCHRFindingVS
Id: FCHRFindingVS
Title: "Heart Rate Finding Value Set"
Description: "Codes representing the"
* include codes from system FCHRFindingCS
* ^experimental = false


CodeSystem:  FCContextSymptomsCS
Id: FCContextSymptomsCS
Title: "HR Context Symptoms Code System"
Description:  "Context Symptoms"
* ^experimental = false
* ^caseSensitive = true
* #1 "no_symptoms"
* #2 "lightheaded"
* #3 "confused"
* #4 "fatigue"
* #5 "other"
* #6 "palpitations"
* #7 "chest_pains"
* #8 "shortness_of_breath"


ValueSet: FCContextSymptomsVS
Id: FCContextSymptomsVS
Title: "Context findings Value Set"
Description: "Codes representing the"
* include codes from system FCContextSymptomsCS
* ^experimental = false



CodeSystem:  FCContextActivityCS
Id: FCContextActivityCS
Title: "HR Context Activity Code System"
Description:  "Context Activity"
* ^experimental = false
* ^caseSensitive = true
* #1 "activity"
* #2  "resting"
* #3  "sleeping"
* #4  "sitting"
* #5  "walking"
* #6 "working"
* #7  "exercising"
* #8  "other"
* #9  "standing"


ValueSet: FCContextActivityVS
Id: FCContextActivityVS
Title: "Context Activity Value Set"
Description: "Codes representing the"
* include codes from system FCContextActivityCS
* ^experimental = false

