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

Instance: OpatContinuousInfusionDefinitions
InstanceOf: Questionnaire
Title: "Questionnaire: OPAT SDC Extraction (Continuous Infusion)"
Description: "The OPAT continuous infusion Questionnaire enriched with SDC item.definition fields, enabling definition-based extraction of a QuestionnaireResponse into discrete FHIR Observations."
Usage: #example
* id = "homehosp-q-opat-definitions"
* status = #active
* contained[+] = patient-placeholder

// ==========================================
// GROUP 0: Nursing Assessment
// ==========================================
* item[0].linkId = "NursingAssessment"
* item[=].text = "Nursing Assessment"
* item[=].type = #group

// --- Subgroup 0: Medication Storage ---
* item[=].item[0].linkId = "MedicationStorage"
* item[=].item[=].text = "Medication Storage"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "A1_MedicationStorage"
* item[=].item[=].item[=].text = "Are there any comments or concerns regarding the (correct) home storage of the medication?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#422413002 "Ability to store medications (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#710977001 "Safe storage and management of medication"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"

* item[=].item[=].item[+].linkId = "A2_MedicationStorageSpecify"
* item[=].item[=].item[=].text = "> If there are comments or concerns: specify"
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

// --- Subgroup 1: Medication Preparation ---
* item[=].item[+].linkId = "MedicationPreparation"
* item[=].item[=].text = "Medication Preparation"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "B1_MedicationFullyDissolved"
* item[=].item[=].item[=].text = "The medication was fully dissolved into a clear solution without visible particles"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#396076000 "Medication prefill preparation assessment (procedure)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "B2_IfNoContact"
* item[=].item[=].item[=].text = "> If no: please contact the care team at the hospital"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "B1_MedicationFullyDissolved"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#373067005 "No (qualifier value)"

* item[=].item[=].item[+].linkId = "B3_WeightFullInfusor"
* item[=].item[=].item[=].text = "Weight of full Infusor just before new administration"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1381257004 "Measured weight of elastomeric continuous infusion pump with medication before infusion (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#g "g"
* item[=].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[=].item[=].item[=].extension[=].valueString = "Only to be filled in for continuous infusion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #g
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "g"

* item[=].item[=].item[+].linkId = "B4_WeightEmptyInfusor"
* item[=].item[=].item[=].text = "Weight when disconnecting empty infusor"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1381260006 "Measured weight of elastomeric continuous infusion pump after infusion (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.value"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#g "g"
* item[=].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[=].item[=].item[=].extension[=].valueString = "Only to be filled in for continuous infusion"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.system"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "http://unitsofmeasure.org"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.code"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueCode = #g
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueQuantity.unit"
* item[=].item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].item[=].extension[=].extension[=].valueString = "g"

* item[=].item[=].item[+].linkId = "B5_AdditionalObservation"
* item[=].item[=].item[=].text = "Additional observation: (if applicable)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#396078004 "Medication prefill preparation management (procedure)"
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

// --- Subgroup 2: Medication Administration ---
* item[=].item[+].linkId = "MedicationAdministration"
* item[=].item[=].text = "Medication Administration"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "C1_AdministrationCorrect"
* item[=].item[=].item[=].text = "Could the medication be administered exactly according to the procedure (there were no deviations)?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#373149000 "Medication administered following procedure (situation)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "C2_SpecifyNo"
* item[=].item[=].item[=].text = "> If no: specify"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.note.text"
* item[=].item[=].item[=].enableWhen[0].question = "C1_AdministrationCorrect"
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

// --- Subgroup 3: Vital Parameters ---
* item[=].item[+].linkId = "VitalParameters"
* item[=].item[=].text = "Vital Parameters"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "D1_BodyTemperature"
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

* item[=].item[=].item[+].linkId = "D2_HeartRate"
* item[=].item[=].item[=].text = "Heart rate:"
* item[=].item[=].item[=].type = #decimal
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

* item[=].item[=].item[+].linkId = "D3_SystolicBloodPressure"
* item[=].item[=].item[=].text = "Blood pressure - systolic"
* item[=].item[=].item[=].type = #decimal
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

* item[=].item[=].item[+].linkId = "D4_DiastolicBloodPressure"
* item[=].item[=].item[=].text = "Blood pressure - diastolic"
* item[=].item[=].item[=].type = #decimal
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
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.code"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[+].system = "http://loinc.org"
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #8716-3
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Vital signs note"

// --- Subgroup 4: Dressing Observation ---
* item[=].item[+].linkId = "DressingObservation"
* item[=].item[=].text = "Dressing observation at insertion site"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "E1_DressingObservation"
* item[=].item[=].item[=].text = "Dressing observation at insertion site"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#364554009 "Wound observable (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(NormalAbnormalVS)

* item[=].item[=].item[+].linkId = "E2_IfAbnormalSpecify"
* item[=].item[=].item[=].text = "> If 'abnormal': specify"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "E1_DressingObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[=].item[=].item[+].linkId = "E3_Bloody"
* item[=].item[=].item[=].text = "Bloody"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#297968009 "Bleeding skin (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E4_Purulent"
* item[=].item[=].item[=].text = "Purulent"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#225550006 "Purulent discharge from wound (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E5_Loose"
* item[=].item[=].item[=].text = "Loose"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#78799005 "Loose (qualifier value)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E6_Serous"
* item[=].item[=].item[=].text = "Serous"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#447112000 "Serous discharge from wound (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E7_Moist"
* item[=].item[=].item[=].text = "Moist"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#17461003 "Wet (qualifier value)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "E8_Other"
* item[=].item[=].item[=].text = "Other: (if applicable)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#1481000124102 "Wound dressing observable (observable entity)"
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
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #exam
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Exam"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 5: Insertion Site Observation ---
* item[=].item[+].linkId = "InsertionSiteObservation"
* item[=].item[=].text = "Insertion site observation"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "F1_InsertionSiteObservation"
* item[=].item[=].item[=].text = "Insertion site observation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#386141001 "Insertion site (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(NormalAbnormalVS)

* item[=].item[=].item[+].linkId = "F2_IfAbnormalSpecify"
* item[=].item[=].item[=].text = "> If 'abnormal': specify"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "F1_InsertionSiteObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[=].item[=].item[+].linkId = "F3_Blistering"
* item[=].item[=].item[=].text = "Blistering"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#339008 "Blister (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F4_Redness"
* item[=].item[=].item[=].text = "Redness"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#371240000 "Red color (qualifier value)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F5_Hematoma"
* item[=].item[=].item[=].text = "Hematoma"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#35566002 "Hematoma (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F6_Pus"
* item[=].item[=].item[=].text = "Pus"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#367646009 "Pus (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F7_Crusting"
* item[=].item[=].item[=].text = "Crusting"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#69640009 "Crust (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F8_Swelling"
* item[=].item[=].item[=].text = "Swelling"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#65124004 "Swelling (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F9_Extravasation"
* item[=].item[=].item[=].text = "Extravasation/infiltration"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#76676007 "Extravasation (morphologic abnormality)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "F10_Other"
* item[=].item[=].item[=].text = "Other: (if applicable)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#364554009 "Wound observable (observable entity)"
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
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #exam
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Exam"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 6: Catheter Observation ---
* item[=].item[+].linkId = "CatheterObservation"
* item[=].item[=].text = "Catheter observation"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "G1_CatheterObservation"
* item[=].item[=].item[=].text = "Catheter observation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1156071007 "Catheter observable (observable entity)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(NormalAbnormalVS)

* item[=].item[=].item[+].linkId = "G2_IfAbnormalSpecify"
* item[=].item[=].item[=].text = "> If 'abnormal': specify"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen[0].question = "G1_CatheterObservation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[=].item[=].item[+].linkId = "G2b_CatheterType"
* item[=].item[=].item[=].text = "Select catheter type"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#246138005 "Type of catheter (attribute)"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement#DeviceUseStatement.device"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#52124006 "Central venous catheter, device (physical object)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396546006 "1-lumen tunneled catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396570005 "2-lumen tunneled catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396538005 "3-lumen tunneled catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396531004 "Single lumen midline catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396527005 "Double lumen midline catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396526001 "Single lumen PICC"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1396489007 "Double lumen PICC"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#423954007 "Peripheral catheter"

// G_Lumen is a repeating sub-group; no definition/extraction extensions on this group
* item[=].item[=].item[+].linkId = "G_Lumen"
* item[=].item[=].item[=].text = "Per-lumen observation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "G_LumenColor"
* item[=].item[=].item[=].item[=].text = "Lumen color"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].code = $sct#1396483008 "Color of lumen (observable entity)"
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#371253002 "Gray color (qualifier value)"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371251000 "White color (qualifier value)"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371240000 "Red color (qualifier value)"
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#371250004 "Purple color (qualifier value)"

* item[=].item[=].item[=].item[+].linkId = "G3_BloodAspiration"
* item[=].item[=].item[=].item[=].text = "Blood aspiration"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].code = $sct#25797006 "Pulmonary aspiration of blood (finding)"
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(CatheterPatencyVS)

* item[=].item[=].item[=].item[+].linkId = "G4_Infusion"
* item[=].item[=].item[=].item[=].text = "Infusion"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].code = $sct#36576007 "Infusion (procedure)"
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(CatheterPatencyVS)

* item[=].item[=].item[+].linkId = "G5_DamagedCatheter"
* item[=].item[=].item[=].text = "Damaged catheter"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#1156074004 "Device failure (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[=].item[+].linkId = "G6_Other"
* item[=].item[=].item[=].text = "Other: (if applicable)"
* item[=].item[=].item[=].type = #string
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
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].code = #exam
* item[=].item[=].extension[=].extension[=].valueCodeableConcept.coding[=].display = "Exam"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
* item[=].item[=].extension[=].extension[+].url = "definition"
* item[=].item[=].extension[=].extension[=].valueUri = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.subject"
* item[=].item[=].extension[=].extension[+].url = "fixed-value"
* item[=].item[=].extension[=].extension[=].valueReference.reference = "#patient-placeholder"

// --- Subgroup 7: Side Effects ---
* item[=].item[+].linkId = "SideEffects"
* item[=].item[=].text = "Side Effects"
* item[=].item[=].type = #group

* item[=].item[=].item[0].linkId = "H1_SkinRash"
* item[=].item[=].item[=].text = "Skin rash"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271807003 "Eruption of skin (disorder)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H2_Itching"
* item[=].item[=].item[=].text = "Itching"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#418290006 "Itching (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H3_BlistersOrSkinPeeling"
* item[=].item[=].item[=].text = "Blisters/skin peeling"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271767006 "Peeling of skin (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H4_Nausea"
* item[=].item[=].item[=].text = "Nausea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H5_Vomiting"
* item[=].item[=].item[=].text = "Vomiting"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#249497008 "Vomiting symptom (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H6_Diarrhea"
* item[=].item[=].item[=].text = "Diarrhea"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#62315008 "Diarrhea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H7_Constipation"
* item[=].item[=].item[=].text = "Constipation"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#14760008 "Constipation (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H8_DecreasedAppetite"
* item[=].item[=].item[=].text = "Decreased appetite"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#64379006 "Decrease in appetite (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H9_PainDuringAdministration"
* item[=].item[=].item[=].text = "Pain during administration"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#698749006 "Pain on flushing of implanted venous access device (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H10_GeneralPain"
* item[=].item[=].item[=].text = "Pain (general)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#112104007 "Localized pain (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H11_Fatigue"
* item[=].item[=].item[=].text = "Fatigue"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#224960004 "Tired (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H12_Chills"
* item[=].item[=].item[=].text = "Chills"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#43724002 "Chill (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H13_Candidiasis"
* item[=].item[=].item[=].text = "Candidiasis (fungal infection)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#78048006 "Candidiasis (disorder)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H14_JointPain"
* item[=].item[=].item[=].text = "Joint pain"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#57676002 "Pain of joint (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H15_RespiratoryProblems"
* item[=].item[=].item[=].text = "Respiratory problems"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#267036007 "Dyspnea (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H16_FacialTongueSwell"
* item[=].item[=].item[=].text = "Facial/tongue swelling"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#278528006 "Facial swelling (finding)"
* item[=].item[=].item[=].definition = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation#Observation.valueCodeableConcept"
* item[=].item[=].item[=].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[=].item[=].item[+].linkId = "H17_OtherObservations"
* item[=].item[=].item[=].text = "Are there other symptoms or other relevant clinical and/or psychosocial observations?\n(please contact the care team at the hospital if there are clinical concerns)"
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
// GROUP 1: Quality Monitoring
// ==========================================
* item[+].linkId = "QualityMonitoring"
* item[=].text = "Quality Monitoring"
* item[=].type = #group

* item[=].item[0].linkId = "I1_CommentsRegistration"
* item[=].item[=].text = "Are there any comments or concerns regarding the registration of this patient, the data sharing from the hospital, the communication and contact with the hospital, the availability of medication and materials, or other aspects of the transmurale collaboration regarding home hospitalization OPAT, we would appreciate if you share them with us. Thank you in advance."
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

// patient-placeholder is defined in questionnaire_onco_definitions.fsh
