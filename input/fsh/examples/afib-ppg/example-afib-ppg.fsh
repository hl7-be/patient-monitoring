Instance: obs-ppg-afib
InstanceOf: Observation
Title: "PPG Heart Rhythm Screening"
Description: "Observation for heart rhythm screening using PPG."
Usage: #example
* id = "obs-ppg-afib"
* status = #final

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8884-9
* code.coding[0].display = "Heart rate rhythm"
* code.coding[1].system = "http://snomed.info/sct"
* code.coding[1].code = #301149000
* code.coding[1].display = "Finding of pulse rhythm (finding)"
* code.text = "PPG Heart Rhythm Screening"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"

* effectiveDateTime = "2024-07-11T10:32:00+02:00"
* issued = "2024-07-11T10:35:00+02:00"

* performer[0].display = "FibriCheck algorithm v1.x.x"

* component[0].code.coding[0].system = "http://loinc.org"
* component[0].code.coding[0].code = #8884-9
* component[0].code.coding[0].display = "Heart rhythm"
* component[0].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[0].valueCodeableConcept.coding[0].code = #719077007
* component[0].valueCodeableConcept.coding[0].display = "At high risk of atrial fibrillation"
* component[0].valueCodeableConcept.coding[1].system = "http://loinc.org"
* component[0].valueCodeableConcept.coding[1].code = #54776-0
* component[0].valueCodeableConcept.coding[1].display = "Atrial fibrillation and other dysrhythmias in last 7 days"


* component[1].code.coding[0].system = "http://loinc.org"
* component[1].code.coding[0].code = #8867-4
* component[1].code.coding[0].display = "Heart rate"
* component[1].code.coding[1].system =  "http://snomed.info/sct"
* component[1].code.coding[1].code = #364075005
* component[1].code.coding[1].display = "Heart rate"
* component[1].valueQuantity.value = 67
* component[1].valueQuantity = $UCUM#/min "beats/minute"


* component[2].code.coding[0].system = "http://hl7belgium.org/fhir/CodeSystem/observation-codes"
* component[2].code.coding[0].code = #activity-context
* component[2].code.coding[0].display = "Activity context"
* component[2].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[2].valueCodeableConcept.coding[0].code = #116329008
* component[2].valueCodeableConcept.coding[0].display = "Walking"

* component[3].code.coding[0].system = "http://loinc.org"
* component[3].code.coding[0].code = #75325-1
* component[3].code.coding[0].display = "Symptom"
* component[3].code.coding[1].system = "http://snomed.info/sct"
* component[3].code.coding[1].code = #418799008
* component[3].code.coding[1].display = "Finding reported by subject or history provider"
* component[3].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[3].valueCodeableConcept.coding[0].code = #80313002
* component[3].valueCodeableConcept.coding[0].display = "Palpitations"


* component[4].code.coding[0].system = "http://loinc.org"
* component[4].code.coding[0].code = #64750-3
* component[4].code.coding[0].display = "Severity of symptoms"
* component[4].code.coding[1].system = "http://snomed.info/sct"
* component[4].code.coding[1].code = #272141005
* component[4].code.coding[1].display = "Severities (qualifier value)"
* component[4].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[4].valueCodeableConcept.coding[0].code = #255604002
* component[4].valueCodeableConcept.coding[0].display = "Mild (qualifier value)"
* component[4].valueCodeableConcept.coding[1].system = "http://loinc.org"
* component[4].valueCodeableConcept.coding[1].code = #LA6752-5
* component[4].valueCodeableConcept.coding[1].display = "Mild"
