Instance: home-spirometer
InstanceOf: Device
Usage: #inline
* type = $snomed#303501006 "Spirometer"
* manufacturer = "Example Medical"
* deviceName.name = "Home Spirometer X"
* deviceName.type = #model-name
* modelNumber = "HSX-200"
* serialNumber = "HSX200-0042871"

Instance: home-peakflow-fev1-meter
InstanceOf: Device
Usage: #inline
* type = $snomed#303501006 "Spirometer"
* manufacturer = "Example Medical"
* deviceName.name = "Pocket FEV1 Meter"
* deviceName.type = #model-name
* modelNumber = "PF-10"

Instance: SpirometryExample
InstanceOf: SpirometryObservation
Usage: #example
Title: "Observation: Spirometry (Home Session)"
Description: "Home spirometry session of a lung transplant recipient on a full spirometer. FEV1 and FVC are the largest values of the acceptable manoeuvres, each with its ATS/ERS 2019 grade."
* status = #final
* category[procedure] = $observation-category#procedure "Procedure"
* code = $loinc#81459-0 "Spirometry panel"
* code.text = "Home spirometry session"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2026-10-05T09:14:00+02:00"
* effectivePeriod.end = "2026-10-05T09:19:40+02:00"
* issued = "2026-10-05T09:19:52+02:00"
* contained[0] = home-spirometer
* device = Reference(home-spirometer)
* method.text = "Home spirometry, graded against the ATS/ERS 2019 standard; predicted values according to GLI-2012"
* component[fev1].code = $loinc#20150-9 "FEV1"
* component[fev1].code.text = "FEV1"
* component[fev1].valueQuantity = 2.48 'L' "L"
* component[fvc].code = $loinc#19870-5 "Forced vital capacity [Volume] Respiratory system"
* component[fvc].code.text = "FVC"
* component[fvc].valueQuantity = 3.20 'L' "L"
* component[fev1Fvc].code = $loinc#19926-5 "FEV1/FVC"
* component[fev1Fvc].code.text = "FEV1/FVC"
* component[fev1Fvc].valueQuantity = 78 '%' "%"
* component[pef].code = $loinc#33452-4 "Maximum expiratory gas flow Respiratory system airway"
* component[pef].code.text = "PEF"
* component[pef].valueQuantity = 7.02 'L/s' "L/s"
* component[fef2575].code = $loinc#19927-3 "Gas flow FEV 25%-75%"
* component[fef2575].code.text = "FEF25-75"
* component[fef2575].valueQuantity = 2.21 'L/s' "L/s"
* component[fev1PercentPredicted].code = $loinc#20152-5 "FEV1 measured/predicted"
* component[fev1PercentPredicted].code.text = "FEV1 %pred"
* component[fev1PercentPredicted].valueQuantity = 74 '%' "%"
* component[fvcPercentPredicted].code = $loinc#19872-1 "FVC measured/predicted"
* component[fvcPercentPredicted].code.text = "FVC %pred"
* component[fvcPercentPredicted].valueQuantity = 81 '%' "%"
* component[fev1Grade].code = SpirometryComponentCS#fev1-grade "FEV1 grade"
* component[fev1Grade].valueCodeableConcept = SpirometryGradeCS#A "Grade A"
* component[fvcGrade].code = SpirometryComponentCS#fvc-grade "FVC grade"
* component[fvcGrade].valueCodeableConcept = SpirometryGradeCS#B "Grade B"

Instance: SpirometryExample2
InstanceOf: SpirometryObservation
Usage: #example
Title: "Observation: Spirometry (FEV1-only Device, Grade U)"
Description: "Home session on a handheld FEV1/PEF meter, which does not measure FVC. No manoeuvre met the acceptability criteria, so the FEV1 is graded U: it is reported, but must be interpreted with caution."
* status = #final
* category[procedure] = $observation-category#procedure "Procedure"
* code = $loinc#81459-0 "Spirometry panel"
* code.text = "Home spirometry session"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2026-10-06T08:52:00+02:00"
* effectivePeriod.end = "2026-10-06T08:55:10+02:00"
* issued = "2026-10-06T08:55:15+02:00"
* contained[0] = home-peakflow-fev1-meter
* device = Reference(home-peakflow-fev1-meter)
* component[fev1].code = $loinc#20150-9 "FEV1"
* component[fev1].code.text = "FEV1"
* component[fev1].valueQuantity = 2.11 'L' "L"
* component[pef].code = $loinc#33452-4 "Maximum expiratory gas flow Respiratory system airway"
* component[pef].code.text = "PEF"
* component[pef].valueQuantity = 6.10 'L/s' "L/s"
* component[fev1Grade].code = SpirometryComponentCS#fev1-grade "FEV1 grade"
* component[fev1Grade].valueCodeableConcept = SpirometryGradeCS#U "Grade U"
* note.text = "Patient reported coughing during the manoeuvres."
