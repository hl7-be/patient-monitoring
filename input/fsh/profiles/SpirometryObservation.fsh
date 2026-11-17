RuleSet: SpirometryQuantityComponent(slice, code, unit)
* component[{slice}].code = {code}
* component[{slice}].value[x] 1..1 MS
* component[{slice}].value[x] only Quantity
* component[{slice}].valueQuantity = $UCUM#{unit}

RuleSet: SpirometryGradeComponent(slice, code)
* component[{slice}].code = {code}
* component[{slice}].value[x] 1..1 MS
* component[{slice}].value[x] only CodeableConcept
* component[{slice}].valueCodeableConcept from SpirometryGradeVS (required)

Profile: SpirometryObservation
Parent: Observation
Id: spirometry-observation
Title: "Spirometry Observation"
Description: """
The result of one spirometry session (one sitting, typically 3 to 8 forced manoeuvres) performed by the patient at
home. Following the ATS/ERS 2019 reporting rules, the reported FEV1 and FVC are the largest values from the acceptable
manoeuvres (they may come from different manoeuvres), and each is accompanied by its session quality grade.
Individual manoeuvres are not exchanged.
"""
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains procedure 1..1 MS
* category[procedure] = $observation-category#procedure
* code MS
* code = $loinc#81459-0
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Time of the session; a Period from the first to the last manoeuvre is preferred"
* issued MS
* performer MS
* performer ^short = "Who performed the manoeuvres (normally the patient)"
* device MS
* device ^short = "The spirometer used"
* value[x] 0..0
* hasMember 0..0
* hasMember ^short = "Individual manoeuvres are not exchanged"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Sliced on component.code"
* component MS
* component contains
    fev1 1..1 MS and
    fvc 0..1 MS and
    fev1Fvc 0..1 MS and
    pef 0..1 MS and
    fef2575 0..1 MS and
    fev1PercentPredicted 0..1 MS and
    fvcPercentPredicted 0..1 MS and
    fev1Grade 0..1 MS and
    fvcGrade 0..1 MS

* component[fev1] ^short = "FEV1: largest FEV1 of the acceptable manoeuvres"
* insert SpirometryQuantityComponent(fev1, $loinc#20150-9, L)
* component[fvc] ^short = "FVC: largest FVC of the acceptable manoeuvres"
* insert SpirometryQuantityComponent(fvc, $loinc#19870-5, L)
* component[fev1Fvc] ^short = "FEV1/FVC ratio, from the reported FEV1 and FVC"
* insert SpirometryQuantityComponent(fev1Fvc, $loinc#19926-5, %)
* component[pef] ^short = "Peak expiratory flow"
* insert SpirometryQuantityComponent(pef, $loinc#33452-4, L/s)
* component[fef2575] ^short = "FEF25-75%, from the manoeuvre with the largest sum of FEV1 and FVC"
* insert SpirometryQuantityComponent(fef2575, $loinc#19927-3, L/s)
* component[fev1PercentPredicted] ^short = "FEV1 as % of predicted"
* insert SpirometryQuantityComponent(fev1PercentPredicted, $loinc#20152-5, %)
* component[fvcPercentPredicted] ^short = "FVC as % of predicted"
* insert SpirometryQuantityComponent(fvcPercentPredicted, $loinc#19872-1, %)
* component[fev1Grade] ^short = "ATS/ERS 2019 quality grade of the reported FEV1"
* insert SpirometryGradeComponent(fev1Grade, SpirometryComponentCS#fev1-grade)
* component[fvcGrade] ^short = "ATS/ERS 2019 quality grade of the reported FVC"
* insert SpirometryGradeComponent(fvcGrade, SpirometryComponentCS#fvc-grade)

* obeys spiro-fev1-grade
* obeys spiro-fvc-grade
* obeys spiro-fvc-required

Invariant: spiro-fev1-grade
Description: "The ATS/ERS grade of the reported FEV1 SHOULD be reported."
Severity: #warning
Expression: "component.where(code.coding.where(system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fev1-grade').exists()).exists()"

Invariant: spiro-fvc-grade
Description: "If FVC is reported, its ATS/ERS grade SHOULD be reported as well."
Severity: #warning
Expression: "component.where(code.coding.where(system = 'http://loinc.org' and code = '19870-5').exists()).exists() implies component.where(code.coding.where(system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fvc-grade').exists()).exists()"

Invariant: spiro-fvc-required
Description: "FEV1/FVC, FEF25-75, FVC % predicted and the FVC grade can only be reported together with FVC."
Severity: #error
Expression: "component.where(code.coding.where((system = 'http://loinc.org' and (code = '19926-5' or code = '19927-3' or code = '19872-1')) or (system = 'http://hl7belgium.org/fhir/patient-monitoring/CodeSystem/spirometry-component-codes' and code = 'fvc-grade')).exists()).exists() implies component.where(code.coding.where(system = 'http://loinc.org' and code = '19870-5').exists()).exists()"
