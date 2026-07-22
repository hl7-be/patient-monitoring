Alias: $sct = http://snomed.info/sct

Instance: HomehospOpatContinuousInfusionQRMultiLumenExample
InstanceOf: QuestionnaireResponse
Title: "QuestionnaireResponse: OPAT continuous infusion QR - 2-lumen tunneled catheter"
Description: "QuestionnaireResponse for OPAT home hospitalization (continuous infusion) demonstrating per-lumen catheter observation with a 2-lumen tunneled catheter. Lumen 2 (white) shows difficult blood aspiration, triggering an Abnormal catheter observation. Uses the SDC definitions questionnaire which carries a repeating G_Lumen group."
Usage: #example

* questionnaire = "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-q-opat-definitions"
* status = #completed
* subject = Reference(Patient/Patient-123)
* authored = "2025-11-22T09:15:00+01:00"

// ==========================================
// GROUP 0: Nursing Assessment
// ==========================================
* item[0].linkId = "NursingAssessment"
* item[0].text = "Nursing Assessment"

// --- Subgroup 0: Medication Storage ---
* item[0].item[0].linkId = "MedicationStorage"
* item[0].item[0].text = "Medication Storage"
* item[0].item[0].item[0].linkId = "A1_MedicationStorage"
* item[0].item[0].item[0].text = "Are there any comments or concerns regarding the (correct) home storage of the medication?"
* item[0].item[0].item[0].answer.valueCoding = $sct#710977001 "Safe storage and management of medication"

// --- Subgroup 1: Medication Preparation ---
* item[0].item[1].linkId = "MedicationPreparation"
* item[0].item[1].text = "Medication Preparation"

* item[0].item[1].item[0].linkId = "B1_MedicationFullyDissolved"
* item[0].item[1].item[0].text = "The medication was fully dissolved into a clear solution without visible particles"
* item[0].item[1].item[0].answer.valueCoding = $sct#373066001 "Yes"

* item[0].item[1].item[1].linkId = "B3_WeightFullInfusor"
* item[0].item[1].item[1].text = "Weight of full Infusor just before new administration"
* item[0].item[1].item[1].answer.valueDecimal = 312

* item[0].item[1].item[2].linkId = "B4_WeightEmptyInfusor"
* item[0].item[1].item[2].text = "Weight when disconnecting empty infusor"
* item[0].item[1].item[2].answer.valueDecimal = 118

// --- Subgroup 2: Medication Administration ---
* item[0].item[2].linkId = "MedicationAdministration"
* item[0].item[2].text = "Medication Administration"
* item[0].item[2].item[0].linkId = "C1_AdministrationCorrect"
* item[0].item[2].item[0].text = "Could the medication be administered exactly according to the procedure (there were no deviations)?"
* item[0].item[2].item[0].answer.valueCoding = $sct#373066001 "Yes"

// --- Subgroup 3: Vital Parameters ---
* item[0].item[3].linkId = "VitalParameters"
* item[0].item[3].text = "Vital Parameters"
* item[0].item[3].item[0].linkId = "D1_BodyTemperature"
* item[0].item[3].item[0].answer.valueDecimal = 37.5
* item[0].item[3].item[1].linkId = "D2_HeartRate"
* item[0].item[3].item[1].answer.valueDecimal = 88
* item[0].item[3].item[2].linkId = "D3_SystolicBloodPressure"
* item[0].item[3].item[2].answer.valueDecimal = 124
* item[0].item[3].item[3].linkId = "D4_DiastolicBloodPressure"
* item[0].item[3].item[3].answer.valueDecimal = 72

// --- Subgroup 4: Dressing Observation ---
* item[0].item[4].linkId = "DressingObservation"
* item[0].item[4].text = "Dressing observation at insertion site"
* item[0].item[4].item[0].linkId = "E1_DressingObservation"
* item[0].item[4].item[0].answer.valueCoding = $sct#17621005 "Normal"

// --- Subgroup 5: Insertion Site Observation ---
* item[0].item[5].linkId = "InsertionSiteObservation"
* item[0].item[5].text = "Insertion site observation"
* item[0].item[5].item[0].linkId = "F1_InsertionSiteObservation"
* item[0].item[5].item[0].answer.valueCoding = $sct#17621005 "Normal"

// --- Subgroup 6: Catheter Observation ---
// Catheter type: 2-lumen tunneled catheter. Lumen 2 (white) shows difficult blood aspiration.
* item[0].item[6].linkId = "CatheterObservation"
* item[0].item[6].text = "Catheter observation"

* item[0].item[6].item[0].linkId = "G1_CatheterObservation"
* item[0].item[6].item[0].text = "Catheter observation"
* item[0].item[6].item[0].answer.valueCoding = $sct#263654008 "Abnormal"

// G2_IfAbnormalSpecify is type #display — not included in response

* item[0].item[6].item[1].linkId = "G2b_CatheterType"
* item[0].item[6].item[1].text = "Select catheter type"
* item[0].item[6].item[1].answer.valueCoding = $sct#1396570005 "2-lumen tunneled catheter"

// Lumen 1 — Gray: easy blood aspiration and easy infusion
* item[0].item[6].item[2].linkId = "G_Lumen"
* item[0].item[6].item[2].text = "Per-lumen observation"
* item[0].item[6].item[2].item[0].linkId = "G_LumenColor"
* item[0].item[6].item[2].item[0].text = "Lumen color"
* item[0].item[6].item[2].item[0].answer.valueCoding = $sct#371253002 "Gray color"
* item[0].item[6].item[2].item[1].linkId = "G3_BloodAspiration"
* item[0].item[6].item[2].item[1].text = "Blood aspiration"
* item[0].item[6].item[2].item[1].answer.valueCoding = $sct#36203004 "Easy"
* item[0].item[6].item[2].item[2].linkId = "G4_Infusion"
* item[0].item[6].item[2].item[2].text = "Infusion"
* item[0].item[6].item[2].item[2].answer.valueCoding = $sct#36203004 "Easy"

// Lumen 2 — White: difficult blood aspiration, easy infusion
* item[0].item[6].item[3].linkId = "G_Lumen"
* item[0].item[6].item[3].text = "Per-lumen observation"
* item[0].item[6].item[3].item[0].linkId = "G_LumenColor"
* item[0].item[6].item[3].item[0].text = "Lumen color"
* item[0].item[6].item[3].item[0].answer.valueCoding = $sct#371251000 "White colour"
* item[0].item[6].item[3].item[1].linkId = "G3_BloodAspiration"
* item[0].item[6].item[3].item[1].text = "Blood aspiration"
* item[0].item[6].item[3].item[1].answer.valueCoding = $sct#52925006 "Difficult"
* item[0].item[6].item[3].item[2].linkId = "G4_Infusion"
* item[0].item[6].item[3].item[2].text = "Infusion"
* item[0].item[6].item[3].item[2].answer.valueCoding = $sct#36203004 "Easy"

* item[0].item[6].item[4].linkId = "G5_DamagedCatheter"
* item[0].item[6].item[4].text = "Damaged catheter"
* item[0].item[6].item[4].answer.valueCoding = $sct#373067005 "No"

* item[0].item[6].item[5].linkId = "G6_Other"
* item[0].item[6].item[5].text = "Other: (if applicable)"
* item[0].item[6].item[5].answer.valueString = "Difficult blood aspiration from lumen 2 (white). Hospital care team contacted by phone."

// --- Subgroup 7: Side Effects ---
* item[0].item[7].linkId = "SideEffects"
* item[0].item[7].text = "Side Effects"
* item[0].item[7].item[0].linkId = "H1_SkinRash"
* item[0].item[7].item[0].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[1].linkId = "H2_Itching"
* item[0].item[7].item[1].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[2].linkId = "H3_BlistersOrSkinPeeling"
* item[0].item[7].item[2].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[3].linkId = "H4_Nausea"
* item[0].item[7].item[3].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[4].linkId = "H5_Vomiting"
* item[0].item[7].item[4].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[5].linkId = "H6_Diarrhea"
* item[0].item[7].item[5].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[6].linkId = "H7_Constipation"
* item[0].item[7].item[6].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[7].linkId = "H8_DecreasedAppetite"
* item[0].item[7].item[7].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[8].linkId = "H9_PainDuringAdministration"
* item[0].item[7].item[8].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[9].linkId = "H10_GeneralPain"
* item[0].item[7].item[9].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[10].linkId = "H11_Fatigue"
* item[0].item[7].item[10].answer.valueCoding = $sct#255604002 "Mild"
* item[0].item[7].item[11].linkId = "H12_Chills"
* item[0].item[7].item[11].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[12].linkId = "H13_Candidiasis"
* item[0].item[7].item[12].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[13].linkId = "H14_JointPain"
* item[0].item[7].item[13].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[14].linkId = "H15_RespiratoryProblems"
* item[0].item[7].item[14].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[15].linkId = "H16_FacialTongueSwell"
* item[0].item[7].item[15].answer.valueCoding = $sct#2667000 "Absent"

// ==========================================
// GROUP 1: Quality Monitoring
// ==========================================
* item[1].linkId = "QualityMonitoring"
* item[1].text = "Quality Monitoring"
* item[1].item[0].linkId = "I1_CommentsRegistration"
* item[1].item[0].answer.valueString = "Difficult blood aspiration from the white lumen (lumen 2). Hospital OPAT team informed at 09:20. Follow-up catheter assessment scheduled for tomorrow."
