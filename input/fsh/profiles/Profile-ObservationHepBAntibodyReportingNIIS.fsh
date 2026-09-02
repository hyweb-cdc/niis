Profile: ObservationHepBAntibodyReportingNIIS
Parent: TWCoreObservationLaboratoryResult
Id: observation-HepBAntibody-reporting-niis
Title: "HepBAntibody檢驗檢查（Observation HepBAntibody Reporting NIIS）"
Description: "此HepBAntibody檢驗檢查（Observation HepBAntibody Reporting NIIS）Profile 說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現全國性預防接種資訊之HepBAntibody檢驗檢查資料。"
* ^version = "0.0.1"

* category 1..1

* subject only Reference(PatientReportingNIIS)

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "抽血日"

* code.coding[LOINCObservationCode] 0..0
* code.coding[TWLaboratoryCategory] 0..0
* code.coding 1..1 MS
* code.coding contains HepBAntibodyOb 1..1 MS
* code.coding[HepBAntibodyOb] from TWNIISHepBAntibodyObs (required)
* code.coding[HepBAntibodyOb].code 1..1 MS
* code.coding[HepBAntibodyOb].system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-hepBAntibody-obs-values"

* interpretation 1..1 MS
* interpretation ^short = "HepBAntibody檢驗結果"
* interpretation from HL7TestResult (required)

* performer only Reference(OrganizationSpeccoReportingNIIS)
* performer ^short = "採檢單位"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    PrenatalExaminationPerformed 0..1 MS
* component[PrenatalExaminationPerformed] ^short = "是否為產檢"
* component[PrenatalExaminationPerformed].code = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#是否為產檢 "是否為產檢"
* component[PrenatalExaminationPerformed].code.coding.code = #是否為產檢
* component[PrenatalExaminationPerformed].code.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values"
* component[PrenatalExaminationPerformed].value[x] only boolean
* component[PrenatalExaminationPerformed].valueBoolean 0..1 MS
* component[PrenatalExaminationPerformed].valueBoolean ^short = "是否為產檢"
* component[PrenatalExaminationPerformed].code.coding[LOINCObservationCode] 0..0
* component[PrenatalExaminationPerformed].code.coding[TWLaboratoryCategory] 0..0

* component.code.coding[LOINCObservationCode] 0..0
* component.code.coding[TWLaboratoryCategory] 0..0
