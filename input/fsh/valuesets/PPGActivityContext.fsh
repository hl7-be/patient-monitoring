ValueSet: PPGActivityContext
Id: ppg-activity-context
Title: "PPG Activity Context"
Description: "SNOMED CT codes representing patient activity during PPG measurement."
* ^status = #active

* include http://snomed.info/sct#33586001 "Sitting position (finding)"
* include http://snomed.info/sct#282972001 "Does stand (finding)"
* include http://snomed.info/sct#116329008 "Finding of walking (finding)"
* include http://snomed.info/sct#128976003 "Exercise state (finding)"
* include http://snomed.info/sct#248220008 "Asleep (finding)"
