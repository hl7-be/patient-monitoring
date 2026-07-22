Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org

// ============================================================
// NOTE: The SDC definition-based extraction extensions
// (sdc-questionnaire-definitionExtract and
// sdc-questionnaire-definitionExtractValue) are applied to
// GROUP-LEVEL items as FHIR extensions. These extensions are
// NOT visible in the rendered tree view of the IG because the
// questionnaire viewer does not render extensions on items in
// the tree. To understand the full extraction mapping, you must
// inspect the raw JSON structure directly.
// ============================================================

Instance: OncoContinuousInfusionDefinitions
InstanceOf: Questionnaire
Title: "Questionnaire: ONCO SDC Extraction (Trastuzumab)"
Description: "The ONCO Trastuzumab Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations."
Usage: #example
* id = "homehosp-q-onco-definitions"
* status = #active
* contained[+] = patient-placeholder

// ==========================================
// GROUP 0: Nursing Assessment
// ==========================================
* item[0].linkId = "NursingAssessment"
* item[=].text = "Nursing assessment"
* item[=].type = #group

// --- Subgroup 0: Medication Storage ---
* item[=].item[0].linkId = "MedicationStorage"
* item[=].item[=].text = "Medication storage"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "A1_MedicationStorage"
* item[=].item[=].item[=].text = "Are there any comments or concerns about the (correct) home storage of the medication?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#422413002 "Ability to store medications (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#710977001 "Safe storage and management of medication"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"

* item[=].item[=].item[+].linkId = "A2_MedicationStorageSpecify"
* item[=].item[=].item[=].text = "> If comments or concerns: specify"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"
* item[=].item[=].item[=].enableWhen[0].question = "A1_MedicationStorage"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#424363005 "Improper storage of medication"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 1: Observation Parameters ---
* item[=].item[+].linkId = "ObservationParameters"
* item[=].item[=].text = "Observation parameters"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "B1_BodyTemperature"
* item[=].item[=].item[=].text = "Body temperature:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8310-5 "Body temperature"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#Cel "Cel"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #Cel
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "°C"

* item[=].item[=].item[+].linkId = "B2_HeartRate"
* item[=].item[=].item[=].text = "Heart rate:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#364075005 "Heart rate (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#{beats}/min "{beats}/min"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #{beats}/min
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "bpm"

* item[=].item[=].item[+].linkId = "B3_SystolicBloodPressure"
* item[=].item[=].item[=].text = "Systolic blood pressure:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #mm[Hg]
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "mmHg"

* item[=].item[=].item[+].linkId = "B4_DiastolicBloodPressure"
* item[=].item[=].item[=].text = "Diastolic blood pressure:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #mm[Hg]
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "mmHg"

* item[=].item[=].item[+].linkId = "B5_BodyWeight"
* item[=].item[=].item[=].text = "Body weight:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#29463-7 "Body weight"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#kg "kg"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #kg
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "kg"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #vital-signs
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Vital Signs"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 2: Contraindications ---
* item[=].item[+].linkId = "Contraindications"
* item[=].item[=].text = "Contraindications"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "C1_ContraindicationPresent"
* item[=].item[=].item[=].text = "Are there any contraindications for administration?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#395008009 "Medication stopped - contra-indication (situation)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C2_ContraindicationSpecify"
* item[=].item[=].item[=].text = "> If 'yes': specify"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "C1_ContraindicationPresent"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"

* item[=].item[=].item[+].linkId = "C3_FeverChills"
* item[=].item[=].item[=].text = "Fever, chills, feeling ill"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#39104002 "Illness (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C4_LowBloodPressure"
* item[=].item[=].item[=].text = "Blood pressure repeatedly below 100/60 mmHg"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#12763006 "Decreased blood pressure"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C5_ElevatedOrIrregularHeartRate"
* item[=].item[=].item[=].text = "Heart rate above 100 bpm at rest or irregular heart rhythm, unless a chronically known problem."
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#361137007 "Irregular heart beat (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C6_WeightGain"
* item[=].item[=].item[=].text = "A weight gain of 3 kg / 3 weeks or 5 kg / 6 weeks, especially in combination with increased edema."
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#262286000 "Weight increased (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C7_Edema"
* item[=].item[=].item[=].text = "Increased edema of the hands and/or feet."
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#267038008 "Edema (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C8_SevereDyspnea"
* item[=].item[=].item[=].text = "Increased breathlessness and/or severe breathlessness (i.e. breathlessness at rest/without exertion and/or breathlessness that interferes with daily activities) (Trastuzumab, Azacitidine)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#297216006 "Increasing breathlessness (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C9_Other"
* item[=].item[=].item[=].text = "Other: (if applicable)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#438833006 "Administration of drug or medicament contraindicated (situation)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"

* item[=].item[=].item[+].linkId = "C10_ContactCareTeam"
* item[=].item[=].item[=].text = "> If contraindication(s): please contact the hospital care team"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "C1_ContraindicationPresent"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"

* item[=].item[=].item[+].linkId = "C11_Decision"
* item[=].item[=].item[=].text = "Decision after consultation with hospital"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#182836005 "Review of medication (procedure)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerOption[0].valueString = "administration"
* item[=].item[=].item[=].answerOption[+].valueString = "no administration"
* item[=].item[=].item[=].answerOption[+].valueString = "other"

* item[=].item[=].item[+].linkId = "C12_DecisionSpecify"
* item[=].item[=].item[=].text = "> If 'other': specify"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#1156698007 "Review of current supply of medication (procedure)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"
* item[=].item[=].item[=].enableWhen[0].question = "C11_Decision"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerString = "other"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 3: Symptom Burden ---
* item[=].item[+].linkId = "SymptomBurden"
* item[=].item[=].text = "Symptom burden"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "D1_Nausea"
* item[=].item[=].item[=].text = "Nausea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D2_Vomiting"
* item[=].item[=].item[=].text = "Vomiting"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#249497008 "Vomiting symptom (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D3_DecreasedAppetite"
* item[=].item[=].item[=].text = "Decreased appetite or taste change"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#64379006 "Decrease in appetite (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D4_Diarrhea"
* item[=].item[=].item[=].text = "Diarrhea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#62315008 "Diarrhea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D5_Constipation"
* item[=].item[=].item[=].text = "Constipation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#14760008 "Constipation (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D6_Fatigue"
* item[=].item[=].item[=].text = "Fatigue/lethargy"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#224960004 "Tired (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D7_Pain"
* item[=].item[=].item[=].text = "Pain"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#112104007 "Localized pain (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D8_SkinRash"
* item[=].item[=].item[=].text = "Skin rash"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271807003 "Eruption of skin (disorder)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D9_PsychosocialBurden"
* item[=].item[=].item[=].text = "Psychosocial burden"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#384821006 "Mental state, behavior and/or psychosocial function finding (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D10_Dyspnea"
* item[=].item[=].item[=].text = "Dyspnea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#267036007 "Dyspnea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D11_Edema"
* item[=].item[=].item[=].text = "Edema"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#79654002 "Edema (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[=].item[=].item[+].linkId = "D12_OtherObservations"
* item[=].item[=].item[=].text = "Other side effects or relevant clinical and psychosocial observations\n(in case of clinical concerns, please contact the hospital for discussion)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#365275006 "General well-being finding (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// ==========================================
// GROUP 1: Assignment
// ==========================================
* item[+].linkId = "Assignment"
* item[=].text = "Assignment"
* item[=].type = #group

// --- Subgroup 0: Medication Preparation ---
* item[=].item[0].linkId = "MedicationPreparation"
* item[=].item[=].text = "Medication preparation"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "E1_PreparationCorrect"
* item[=].item[=].item[=].text = "Could the medication be prepared according to the procedure?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#385796006 "Medication prefill preparation (procedure)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E2_ContactCareTeam"
* item[=].item[=].item[=].text = "> If 'no': please contact the hospital care team"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "E1_PreparationCorrect"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 1: Medication Administration ---
* item[=].item[+].linkId = "MedicationAdministration"
* item[=].item[=].text = "Medication administration"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "E3_AdministrationCorrect"
* item[=].item[=].item[=].text = "Could the medication be administered exactly according to the procedure (there were no deviations)?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#373149000 "Medication administered following procedure (situation)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E4_SpecifyNo"
* item[=].item[=].item[=].text = "> If 'no': specify"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"
* item[=].item[=].item[=].enableWhen[0].question = "E3_AdministrationCorrect"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 2: Aftercare ---
* item[=].item[+].linkId = "Aftercare"
* item[=].item[=].text = "Aftercare"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].text = "Was there a reaction during the home observation period?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#281647001 "Adverse reaction (disorder)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6a_Fever"
* item[=].item[=].item[=].text = "Fever"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#386661006 "Fever (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].enableWhen[0].question = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6b_Nausea"
* item[=].item[=].item[=].text = "Nausea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].enableWhen[0].question = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6c_TightnessSensation"
* item[=].item[=].item[=].text = "Tightness sensation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#255365009 "Tightness sensation quality (qualifier value)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].enableWhen[0].question = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6d_Chills"
* item[=].item[=].item[=].text = "Chills"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#43724002 "Chill (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].enableWhen[0].question = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6e_InfluenzaLikeSyndrome"
* item[=].item[=].item[=].text = "Influenza-like syndromes"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#95891005 "Influenza-like illness (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].enableWhen[0].question = "E5_ReactionDuringHomeObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.status"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCode = #final
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.category"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #survey
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Survey"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// ==========================================
// GROUP 2: Quality Monitoring
// ==========================================
* item[+].linkId = "QualityMonitoring"
* item[=].text = "(Quality) monitoring"
* item[=].type = #group

* item[=].item[0].linkId = "F1_CommentsRegistration"
* item[=].item[=].text = "Please note any comments or concerns regarding the registration of this patient, the sharing of data from the hospital, the communication by and contact with the hospital, the availability of materials, or other aspects of the transmural collaboration around home hospitalization oncology. Thank you."
* item[=].item[=].type = #string
* item[=].item[=].code = $sct#276238005 "Comments on own writing (finding)"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.conclusion"

* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtract"
* item[=].extension[=].extension[+].url = "definition"
* item[=].extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].extension[=].extension[+].url = "definition"
* item[=].extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.status"
* item[=].extension[=].extension[+].url = "fixed-value"
* item[=].extension[=].extension[=].valueCode = #final
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].extension[=].extension[+].url = "definition"
* item[=].extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.category"
* item[=].extension[=].extension[+].url = "fixed-value"
* item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #OTH
* item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Other"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].extension[=].extension[+].url = "definition"
* item[=].extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.subject"
* item[=].extension[=].extension[+].url = "fixed-value"
* item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// ==========================================
// Contained Patient Placeholder
// ==========================================
Instance: patient-placeholder
InstanceOf: BePatient
Usage: #inline
* meta.profile[+] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
* meta.tag[+].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationValue"
* meta.tag[=].code = #SUBSETTED
* meta.tag[=].display = "subsetted"
* identifier[+].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].value = "UNKNOWN"
* name[+].family = "Unknown"
* name[=].given[+] = "Patient"
