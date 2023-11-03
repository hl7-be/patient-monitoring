Logical:        PatientMonitoring
Id:             PatientMonitoring
Title:          "Vital Signs"
Description:    "The data structure for Vital Signs."

* status 1..1 code "Measurement status" "Measurement status"
* code 1..1 CodeableConcept "Code for the sign"
* patient 1..1 BackboneElement "patient data" "patient data"
  * identfier 1..1 string "user id" "user id"
  * niss_number 1..1 string "Patient NISS Number" "Patient NISS Number"
  * otherId 0..* string "Patient NISS Number" "Patient NISS Number"
  * userName 1..1 Identifier "user name" "user name"
    
  * userEmail 1..1 string "app version" "app version"
  * dateOfBirth 1..1 date "Date of Birth" "Date of Birth"
  
* measurementTimeStamp 1..1 dateTime  "Measurement timestamp" "Measurement timestamp"
* measurementPeriod 1..1 period  "Measurement Period" "Measurement Period"

* dataAbsentReason 1..1 period  "Measurement Period" "Measurement Period"

* hasMember 0..* Reference(VitalSigns) "Component results, if separate" "Component results"
* derivedFrom 0..* Reference "Related signs from which this is obtained" "Related signs from which this is obtained"

* timestamp 0..1 dateTime "When the sign was observed" "When the sign was observed"

* value 0..1 string "Value of the aquired sign" "Value of the sign"
* interpretation 0..1 CodeableConcept "High, low, normal, etc." "High, low, normal, etc."
* note 0..* Annotation "Comments about the sign" "Comments about the sign"
* referenceRange 0..* BackboneElement "Provides guide for interpretation" "Provides guide for interpretation"
  * low 0..1 SimpleQuantity "Low Range, if relevant" "Low Range, if relevant"
  * high 0..1 SimpleQuantity "High Range, if relevant" "High Range, if relevant"
  * normalValue 0..1 CodeableConcept "Normal Range, if relevant" "Normal Range, if relevant"
  * type 0..1 CodeableConcept "Reference range qualifier" "Reference range qualifier"
  * age 0..1 Range "Applicable age range, if relevant" "Applicable age range, if relevant"
  * text 0..1 markdown "Text based reference range in an observation" "Text based reference range in an observation"

* component 0..* BackboneElement "Complnents when there are more than one  values in the same sign"
  * value 0..1 string "Value of the aquired sign" "Value of the sign"
  * dataAbsentReason 0..1 CodeableConcept "Reason for missing data" "Reason for missing data"
  * interpretation 0..1 CodeableConcept "High, low, normal, etc." "High, low, normal, etc."
  * note 0..* Annotation "Comments about the sign" "Comments about the sign"
  * referenceRange 0..* BackboneElement "Provides guide for interpretation" "Provides guide for interpretation"
    * low 0..1 SimpleQuantity "Low Range, if relevant" "Low Range, if relevant"
    * High 0..1 SimpleQuantity "High Range, if relevant" "High Range, if relevant"
    * normalValue 0..1 CodeableConcept "Normal Range, if relevant" "Normal Range, if relevant"
    * type 0..1 CodeableConcept "Reference range qualifier" "Reference range qualifier"
    * age 0..1 Range "Applicable age range, if relevant" "Applicable age range, if relevant"
    * text 0..1 markdown "Text based reference range in an observation" "Text based reference range in an observation"


