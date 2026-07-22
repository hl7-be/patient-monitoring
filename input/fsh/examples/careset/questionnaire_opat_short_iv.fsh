Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org

Instance: HomehospOpatShortIVQuestionnaireDefinition
InstanceOf: HomehospOpatShortIVQuestionnaire
Title: "Questionnaire: OPAT Short IV Home Hospitalization"
Description: "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a short-duration IV administration in the context of an OPAT treatment"
Usage: #definition
* url = "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-opat-short-iv"
* id = "homehosp-opat-short-iv"
* name = "HomehospOpatShortIVQuestionnaireDefinition"
* title = "OPAT - kort IV"
* status = #active

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[nursingAssessment].linkId = "NursingAssessment"
* item[nursingAssessment].text = "Verpleegkundig assessment"
* item[nursingAssessment].type = #group

// --- Subgroup 0: Bewaring ---
* item[nursingAssessment].item[0].linkId = "MedicationStorage"
* item[nursingAssessment].item[0].text = "MedicationStorage"
* item[nursingAssessment].item[0].type = #group

* item[nursingAssessment].item[0].item[0].linkId = "A1_MedicationStorage"
* item[nursingAssessment].item[0].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[nursingAssessment].item[0].item[0].type = #choice
* item[nursingAssessment].item[0].item[0].required = true
* item[nursingAssessment].item[0].item[0].code = $sct#422413002 "Ability to store medications"
* item[nursingAssessment].item[0].item[0].answerOption[0].valueCoding = $sct#710977001 "Safe storage and management of medication"
* item[nursingAssessment].item[0].item[0].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"

* item[nursingAssessment].item[0].item[+].linkId = "A2_MedicationStorageSpecify"
* item[nursingAssessment].item[0].item[=].text = "> Indien opmerkingen of bezorgdheid: specifieer"
* item[nursingAssessment].item[0].item[=].type = #string
* item[nursingAssessment].item[0].item[=].enableWhen.question = "A1_MedicationStorage"
* item[nursingAssessment].item[0].item[=].enableWhen.operator = #=
* item[nursingAssessment].item[0].item[=].enableWhen.answerCoding = $sct#424363005 "Improper storage of medication"

// --- Subgroup 1: Voorbereiding medicatietoediening ---
* item[nursingAssessment].item[+].linkId = "MedicationPreparation"
* item[nursingAssessment].item[=].text = "Voorbereiding medicatietoediening"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "B1_MedicationFullyDissolved"
* item[nursingAssessment].item[=].item[0].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $sct#396076000 "Medication prefill preparation assessment"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "B2_ContactCareTeam"
* item[nursingAssessment].item[=].item[=].text = "> Indien nee: gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen.question = "B1_MedicationFullyDissolved"
* item[nursingAssessment].item[=].item[=].enableWhen.operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No"

// --- Subgroup 2: Medicatietoediening ---
* item[nursingAssessment].item[+].linkId = "MedicationAdministration"
* item[nursingAssessment].item[=].text = "MedicationAdministration"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "C1_AdministrationCorrect"
* item[nursingAssessment].item[=].item[0].text = "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $sct#373149000 "Medication administered following procedure"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "C2_SpecifyNo"
* item[nursingAssessment].item[=].item[=].text = "> Indien neen: specifieer"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].enableWhen.question = "C1_AdministrationCorrect"
* item[nursingAssessment].item[=].item[=].enableWhen.operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No"

// --- Subgroup 3: Vitale parameters ---
* item[nursingAssessment].item[+].linkId = "VitalParameters"
* item[nursingAssessment].item[=].text = "Vitale parameters"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "D1_BodyTemperature"
* item[nursingAssessment].item[=].item[0].text = "Lichaamstemperatuur:"
* item[nursingAssessment].item[=].item[0].type = #decimal
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $loinc#8310-5 "Body temperature"
* item[nursingAssessment].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[0].extension.valueCoding = $unitsofmeasure#Cel "Cel"

* item[nursingAssessment].item[=].item[+].linkId = "D2_HeartRate"
* item[nursingAssessment].item[=].item[=].text = "Pols:"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].code = $sct#364075005 "Heart rate"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "{beats}/min"

* item[nursingAssessment].item[=].item[+].linkId = "D3_SystolicBloodPressure"
* item[nursingAssessment].item[=].item[=].text = "Bloeddruk - systolisch"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

* item[nursingAssessment].item[=].item[+].linkId = "D4_DiastolicBloodPressure"
* item[nursingAssessment].item[=].item[=].text = "Bloeddruk - diastolisch"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

// --- Subgroup 4: Observatie verband insteekplaats ---
* item[nursingAssessment].item[+].linkId = "DressingInsertionSite"
* item[nursingAssessment].item[=].text = "Observatie verband insteekplaats"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "E1_DressingObservation"
* item[nursingAssessment].item[=].item[0].text = "Observatie verband insteekplaats"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $sct#364554009 "Wound observable"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[=].item[+].linkId = "E2_SpecifyIfAbnormal"
* item[nursingAssessment].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen.question = "E1_DressingObservation"
* item[nursingAssessment].item[=].item[=].enableWhen.operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal"

* item[nursingAssessment].item[=].item[+].linkId = "E3_Bloody"
* item[nursingAssessment].item[=].item[=].text = "Bloederig"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#297968009 "Bleeding skin"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "E4_Purulent"
* item[nursingAssessment].item[=].item[=].text = "Etterig"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#225550006 "Purulent discharge from wound"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "E5_Loose"
* item[nursingAssessment].item[=].item[=].text = "Los"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#78799005 "Loose"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "E6_Serous"
* item[nursingAssessment].item[=].item[=].text = "Sereus"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#447112000 "Serous discharge from wound"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "E7_Moist"
* item[nursingAssessment].item[=].item[=].text = "Vochtig"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#17461003 "Wet"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "E8_Other"
* item[nursingAssessment].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].code = $sct#1481000124102 "Wound dressing observable"

// --- Subgroup 5: Observatie insteekplaats ---
* item[nursingAssessment].item[+].linkId = "InsertionSite"
* item[nursingAssessment].item[=].text = "Observatie insteekplaats"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "F1_InsertionSiteObservation"
* item[nursingAssessment].item[=].item[0].text = "Observatie insteekplaats"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $sct#386141001 "Insertion site"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[=].item[+].linkId = "F2_SpecifyIfAbnormal"
* item[nursingAssessment].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen.question = "F1_InsertionSiteObservation"
* item[nursingAssessment].item[=].item[=].enableWhen.operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal"

* item[nursingAssessment].item[=].item[+].linkId = "F3_Blistering"
* item[nursingAssessment].item[=].item[=].text = "Blaarvorming"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#339008 "Blister"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F4_Redness"
* item[nursingAssessment].item[=].item[=].text = "Rood"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#371240000 "Red colour"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F5_Hematoma"
* item[nursingAssessment].item[=].item[=].text = "Haematoom"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#35566002 "Hematoma"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F6_Pus"
* item[nursingAssessment].item[=].item[=].text = "Etter"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#367646009 "Pus"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F7_Crusting"
* item[nursingAssessment].item[=].item[=].text = "Korstvorming"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#69640009 "Crust"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F8_Swelling"
* item[nursingAssessment].item[=].item[=].text = "Zwelling"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#65124004 "Swelling"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F9_Extravasation"
* item[nursingAssessment].item[=].item[=].text = "Extravasatie/infiltratie"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#76676007 "Extravasation"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "F10_Other"
* item[nursingAssessment].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].code = $sct#364554009 "Wound observable"

// --- Subgroup 6: Observatie katheter ---
* item[nursingAssessment].item[+].linkId = "Catheter"
* item[nursingAssessment].item[=].text = "Observatie katheter"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "G1_CatheterObservation"
* item[nursingAssessment].item[=].item[0].text = "Observatie katheter"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].required = true
* item[nursingAssessment].item[=].item[0].code = $sct#1156071007 "Catheter observable"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[=].item[+].linkId = "G2_SpecifyIfAbnormal"
* item[nursingAssessment].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen[0].question = "G1_CatheterObservation"
* item[nursingAssessment].item[=].item[=].enableWhen[0].operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen[0].answerCoding = $sct#263654008 "Abnormal"

* item[nursingAssessment].item[=].item[+].linkId = "G_KatheterType"
* item[nursingAssessment].item[=].item[=].text = "Kies kathetertype"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#246138005 "Type of catheter"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(CatheterTypeVS)

// G_Lumen is a repeating sub-group: one instance per catheter lumen
* item[nursingAssessment].item[=].item[+].linkId = "G_Lumen"
* item[nursingAssessment].item[=].item[=].text = "Per-lumen observation"
* item[nursingAssessment].item[=].item[=].type = #group
* item[nursingAssessment].item[=].item[=].repeats = true

* item[nursingAssessment].item[=].item[=].item[0].linkId = "G_LumenColor"
* item[nursingAssessment].item[=].item[=].item[=].text = "Kleur lumen"
* item[nursingAssessment].item[=].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].item[=].code = $sct#1396483008 "Color of intravascular catheter lumen hub"
* item[nursingAssessment].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#371253002 "Gray color"
* item[nursingAssessment].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371251000 "White colour"
* item[nursingAssessment].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371240000 "Red colour"
* item[nursingAssessment].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371250004 "Purple colour"

* item[nursingAssessment].item[=].item[=].item[+].linkId = "G3_BloodAspiration"
* item[nursingAssessment].item[=].item[=].item[=].text = "Bloedaspiratie"
* item[nursingAssessment].item[=].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].item[=].code = $sct#25797006 "Blood aspiration"
* item[nursingAssessment].item[=].item[=].item[=].answerValueSet = Canonical(CatheterPatencyVS)

* item[nursingAssessment].item[=].item[=].item[+].linkId = "G4_Infusion"
* item[nursingAssessment].item[=].item[=].item[=].text = "Infusie"
* item[nursingAssessment].item[=].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].item[=].code = $sct#36576007 "Infusion"
* item[nursingAssessment].item[=].item[=].item[=].answerValueSet = Canonical(CatheterPatencyVS)

* item[nursingAssessment].item[=].item[+].linkId = "G5_DamagedCatheter"
* item[nursingAssessment].item[=].item[=].text = "Beschadigde katheter"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#1156074004 "Device failure"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[=].item[+].linkId = "G6_Other"
* item[nursingAssessment].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[nursingAssessment].item[=].item[=].type = #string

// --- Subgroup 7: Nevenwerkingen ---
* item[nursingAssessment].item[+].linkId = "SideEffects"
* item[nursingAssessment].item[=].text = "SideEffects"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "H1_SkinRash"
* item[nursingAssessment].item[=].item[0].text = "Huiduitslag"
* item[nursingAssessment].item[=].item[0].type = #choice
* item[nursingAssessment].item[=].item[0].code = $sct#271807003 "Eruption"
* item[nursingAssessment].item[=].item[0].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H2_Itching"
* item[nursingAssessment].item[=].item[=].text = "Jeuk"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#418290006 "Itching"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H3_BlistersOrPeeling"
* item[nursingAssessment].item[=].item[=].text = "Blaren/loslaten van de huid"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#271767006 "Peeling of skin"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H4_Nausea"
* item[nursingAssessment].item[=].item[=].text = "Misselijkheid"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#422587007 "Nausea"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H5_Vomiting"
* item[nursingAssessment].item[=].item[=].text = "Braken"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#249497008 "Vomiting symptom"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H6_Diarrhea"
* item[nursingAssessment].item[=].item[=].text = "Diarree"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#62315008 "Diarrhea"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H7_Constipation"
* item[nursingAssessment].item[=].item[=].text = "Obstipatie"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#14760008 "Constipation"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H8_DecreasedAppetite"
* item[nursingAssessment].item[=].item[=].text = "Verminderde eetlust"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#64379006 "Decrease in appetite"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H9_PainDuringAdministration"
* item[nursingAssessment].item[=].item[=].text = "Pijn bij toediening"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#698749006 "Pain on flushing of implanted venous access device"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H10_GeneralPain"
* item[nursingAssessment].item[=].item[=].text = "Pijn (algemeen)"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#112104007 "Localized pain"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H11_Fatigue"
* item[nursingAssessment].item[=].item[=].text = "Moe"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#224960004 "Tired"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H12_Chills"
* item[nursingAssessment].item[=].item[=].text = "Rillingen"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#43724002 "Shivering"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H13_Candidiasis"
* item[nursingAssessment].item[=].item[=].text = "Candidiase (schimmelinfectie)"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#78048006 "Candidiasis"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H14_JointPain"
* item[nursingAssessment].item[=].item[=].text = "Gewrichtspijn"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#57676002 "Joint pain"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H15_RespiratoryProblems"
* item[nursingAssessment].item[=].item[=].text = "Ademhalingsproblemen"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#267036007 "Dyspnea"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H16_FacialSwelling"
* item[nursingAssessment].item[=].item[=].text = "Zwelling gezicht/tong"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#278528006 "Facial swelling"
* item[nursingAssessment].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[=].item[+].linkId = "H17_OtherObservations"
* item[nursingAssessment].item[=].item[=].text = "Is er andere symptoomlast of zijn er andere relevante klinische en/of psychosociale observaties?\n(gelieve bij klinische bezorgdheid contact te nemen met het zorgteam in het ziekenhuis)"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].code = $sct#365275006 "General well-being finding"

// ==========================================
// GROUP 1: (Kwaliteits)opvolging
// ==========================================
* item[qualityMonitoring].linkId = "QualityMonitoring"
* item[qualityMonitoring].text = "(Kwaliteits)opvolging"
* item[qualityMonitoring].type = #group

* item[qualityMonitoring].item[0].linkId = "I1_CommentsRegistration"
* item[qualityMonitoring].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de medicatie en materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie OPAT, we vragen je graag ze met ons te delen. Alvast dank."
* item[qualityMonitoring].item[0].type = #string
* item[qualityMonitoring].item[0].code = $sct#276238005 "Comments on own writing"
