Profile: BundleRequestReportingNIIS
Parent: TWCoreBundle
Id: bundle-request-reporting-niis
Title:  "合約院所上傳檢驗報告（Bundle Request Reporting NIIS）"
Description: "此合約院所上傳檢驗報告（Bundle Request Reporting NIIS）Profile說明本IG如何進一步定義臺灣核心-資料交換基本單位（TW Core Bundle）Profile以呈現全國性預防接種資訊之合約院所上傳檢驗報告。"
* ^version = "0.0.1"

* type ^short = "【此欄位為FHIR必填欄位】"
* type = #batch
* type MS

* timestamp 1..1 MS 
* timestamp ^short = "時間戳記"

//* signature 1..1 MS 
//* signature ^short = "交易檢查碼=Base64Encode({合約院所十碼章}:{HISKeyId})"

* entry.request 1..1 MS
* entry.request.method MS
* entry.request.method ^short = "DataStatus，新增=POST、修改=PUT、刪除=DELETE"

* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains
	diagnosticreport 1..* MS and
	observation  1..* MS and
	patient 1..* MS and
	organization 1..* MS 

* entry[diagnosticreport].resource 1..1 MS
* entry[diagnosticreport].resource only DiagnosticReportingNIIS

* entry[observation].resource 1..1 MS
* entry[observation].resource only ObservationHBeAgReportingNIIS or ObservationHBsAgReportingNIIS or ObservationHepBAntibodyReportingNIIS

* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientReportingNIIS


* entry[organization].resource 1..1 MS
* entry[organization].resource only OrganizationHospReportingNIIS or OrganizationSpeccoReportingNIIS
