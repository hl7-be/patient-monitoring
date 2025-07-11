Instance: obs-ppg-afib
InstanceOf: Observation
Title: "PPG Heart Rhythm Screening"
Description: "Observation for heart rhythm screening using PPG."
Usage: #example
* id = "obs-ppg-afib"
* status = #final

* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #xxx-xx
* code.coding[0].display = "Heart rhythm"
* code.text = "PPG Heart Rhythm Screening"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"

* effectiveDateTime = "2024-07-11T10:32:00+02:00"
* issued = "2024-07-11T10:35:00+02:00"

* performer[0].display = "FibriCheck algorithm v1.x.x"

* component[0].code.coding[0].system = "http://loinc.org"
* component[0].code.coding[0].code = #xxxx-x
* component[0].code.coding[0].display = "Heart rhythm"
* component[0].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[0].valueCodeableConcept.coding[0].code = #xxxx
* component[0].valueCodeableConcept.coding[0].display = "Regular rhythm"

* component[1].code.coding[0].system = "http://loinc.org"
* component[1].code.coding[0].code = #xxxx-x
* component[1].code.coding[0].display = "Heart rate"
* component[1].valueQuantity.value = 67
* component[1].valueQuantity = $UCUM#/min "beats/minute"


* component[2].code.coding[0].system = "http://hl7belgium.org/fhir/CodeSystem/observation-codes"
* component[2].code.coding[0].code = #measurement-context
* component[2].code.coding[0].display = "Measurement context"
* component[2].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[2].valueCodeableConcept.coding[0].code = #xxxx
* component[2].valueCodeableConcept.coding[0].display = "Walking"

* component[3].code.coding[0].system = "http://hl7belgium.org/fhir/CodeSystem/observation-codes"
* component[3].code.coding[0].code = #ppg-signal-quality
* component[3].code.coding[0].display = "PPG signal quality"
* component[3].valueQuantity.value = 90
* component[3].valueQuantity = $UCUM#/% "%"

* component[4].code.coding[0].system = "http://snomed.info/sct"
* component[4].code.coding[0].code = #xxxx
* component[4].code.coding[0].display = "Symptoms"
* component[4].valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* component[4].valueCodeableConcept.coding[0].code = #xxxx
* component[4].valueCodeableConcept.coding[0].display = "No symptoms"
