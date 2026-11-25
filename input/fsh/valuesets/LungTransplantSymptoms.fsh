ValueSet: LungTransplantSymptoms
Id: lung-transplant-symptoms
Title: "Lung Transplant Symptom Codes"
Description: "SNOMED CT codes representing patient-reported symptoms monitored after lung transplantation: respiratory symptoms that may indicate rejection or infection, and common side effects of the immunosuppressive treatment."
* ^status = #active
* ^experimental = false
* ^copyright = "SNOMED CT is copyright (C) 2002+ International Health Terminology Standards Development Organisation (SNOMED International). Use of SNOMED CT requires the appropriate licence."

// Respiratory: possible rejection or infection
* include http://snomed.info/sct#267036007 "Dyspnea"
* include http://snomed.info/sct#49727002 "Cough"
* include http://snomed.info/sct#28743005 "Productive cough"
* include http://snomed.info/sct#66857006 "Hemoptysis"
* include http://snomed.info/sct#56018004 "Wheezing"
* include http://snomed.info/sct#29857009 "Chest pain"
* include http://snomed.info/sct#267044007 "Impaired exercise tolerance"
* include http://snomed.info/sct#84229001 "Fatigue"

// Gastro-intestinal: infection or drug side effect, may affect immunosuppressant levels
* include http://snomed.info/sct#62315008 "Diarrhea"
* include http://snomed.info/sct#422587007 "Nausea"
* include http://snomed.info/sct#422400008 "Vomiting"
* include http://snomed.info/sct#64379006 "Decrease in appetite"

// Neurological: calcineurin inhibitor toxicity
* include http://snomed.info/sct#26079004 "Tremor"
