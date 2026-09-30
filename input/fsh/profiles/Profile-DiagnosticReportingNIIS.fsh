Profile: DiagnosticReportingNIIS
Parent: TWCoreDiagnosticReport
Id: diagnosticReport-reporting-niis
Title: "檢驗報告(DiagnosticReport Reporting NIIS)"
Description: "此檢驗報告(DiagnosticReport Reporting NIIS)Profile 說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport)Profile以呈現全國性預防接種資訊之檢驗報告。"
* ^version = "0.0.1"


* identifier 1..1 MS
* identifier ^short = "資料key(該筆資料於院所資料庫中之唯一值)"

* status ^short = "【此欄位為FHIR必填欄位】"
* status = #final



* code.coding[LOINCObservationCode] 0..0
* code.coding[TWLaboratoryCategory] 0..0
* code.coding[TW2021ICD10PCS] 0..0
* code.coding[TW2023ICD10PCS] 0..0

* code.coding contains TWNIISObsType 1..1 MS
* code.coding[TWNIISObsType] from TWNIISObsTypeVS (required)
* code.coding[TWNIISObsType] ^short = "檢驗類型，1＝德國麻疹檢驗結果｜2＝孕婦 B 肝產檢結果｜3＝麻疹檢驗結果。"

* code.text 1..1 MS
* code.text ^short = "個案編號，流水號從 1 開始"

* subject only Reference(PatientReportingNIIS)
* subject ^short = "【此欄位為FHIR必填欄位】"

* performer only Reference(OrganizationHospReportingNIIS)
* performer ^short = "合約院所"

* result 1.. MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result contains
    HBsAg 0..1 MS and
    HBeAg 0..1 MS and
    MRAntibody 0..1 MS
* result[HBsAg] only Reference(ObservationHBsAgReportingNIIS)
* result[HBsAg] ^short = "HBsAg 檢驗結果"
* result[HBeAg] only Reference(ObservationHBeAgReportingNIIS)
* result[HBeAg] ^short = "HBeAg 檢驗結果"
* result[MRAntibody] only Reference(ObservationMRAntibodyReportingNIIS)
* result[MRAntibody] ^short = "麻疹／德國麻疹抗體檢驗結果"
