Instance: obs-ppg-afib
InstanceOf: PPGObservation
Title: "PPG Heart Rhythm Screening"
Description: "Example of an observation for heart rhythm screening using PPG."
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

* effectiveDateTime = "2024-07-11T10:32:00+02:00"
* issued = "2024-07-11T10:35:00+02:00"
* performer[0].display = "FibriCheck algorithm v1.x.x"

* component[rhythm].code.coding[0].system = "http://loinc.org"
* component[rhythm].code.coding[0].code = #8884-9
* component[rhythm].code.coding[0].display = "Heart rhythm"
* component[rhythm].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[rhythm].valueCodeableConcept.coding[0].code = #719077007
* component[rhythm].valueCodeableConcept.coding[0].display = "At high risk of atrial fibrillation"
* component[rhythm].valueCodeableConcept.coding[1].system = "http://loinc.org"
* component[rhythm].valueCodeableConcept.coding[1].code = #54776-0
* component[rhythm].valueCodeableConcept.coding[1].display = "Atrial fibrillation and other dysrhythmias in last 7 days"

* component[heartrate].code.coding[0].system = "http://loinc.org"
* component[heartrate].code.coding[0].code = #8867-4
* component[heartrate].code.coding[0].display = "Heart rate"
* component[heartrate].code.coding[1].system = "http://snomed.info/sct"
* component[heartrate].code.coding[1].code = #364075005
* component[heartrate].code.coding[1].display = "Heart rate"
* component[heartrate].valueQuantity.value = 67
* component[heartrate].valueQuantity.system = "http://unitsofmeasure.org"
* component[heartrate].valueQuantity.code = #/min
* component[heartrate].valueQuantity.unit = "beats/minute"

* component[activity].code.coding[0].system = "http://hl7belgium.org/fhir/CodeSystem/observation-codes"
* component[activity].code.coding[0].code = #activity-context
* component[activity].code.coding[0].display = "Activity context"
* component[activity].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[activity].valueCodeableConcept.coding[0].code = #116329008
* component[activity].valueCodeableConcept.coding[0].display = "Walking"

* component[symptom].code.coding[0].system = "http://loinc.org"
* component[symptom].code.coding[0].code = #75325-1
* component[symptom].code.coding[0].display = "Symptom"
* component[symptom].code.coding[1].system = "http://snomed.info/sct"
* component[symptom].code.coding[1].code = #418799008
* component[symptom].code.coding[1].display = "Finding reported by subject or history provider"
* component[symptom].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[symptom].valueCodeableConcept.coding[0].code = #80313002
* component[symptom].valueCodeableConcept.coding[0].display = "Palpitations"

* component[severity].code.coding[0].system = "http://loinc.org"
* component[severity].code.coding[0].code = #64750-3
* component[severity].code.coding[0].display = "Severity of symptoms"
* component[severity].code.coding[1].system = "http://snomed.info/sct"
* component[severity].code.coding[1].code = #272141005
* component[severity].code.coding[1].display = "Severities (qualifier value)"
* component[severity].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[severity].valueCodeableConcept.coding[0].code = #255604002
* component[severity].valueCodeableConcept.coding[0].display = "Mild (qualifier value)"
* component[severity].valueCodeableConcept.coding[1].system = "http://loinc.org"
* component[severity].valueCodeableConcept.coding[1].code = #LA6752-5
* component[severity].valueCodeableConcept.coding[1].display = "Mild"
