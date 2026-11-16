Instance: DyspneaExample
InstanceOf: Observation
Usage: #example
Title: "Observation: Dyspnea (Registered by Patient)"
Description: "Patient-reported dyspnea after lung transplantation. The code is taken from the Lung Transplant Symptom Codes, the answer from the Symptom Severity scale."
* status = #final
* category = $observation-category#survey "Survey"
* code = $snomed#267036007 "Dyspnea"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectiveDateTime = "2026-10-06T09:02:00+02:00"
* valueCodeableConcept = $snomed#255604002 "Mild"
