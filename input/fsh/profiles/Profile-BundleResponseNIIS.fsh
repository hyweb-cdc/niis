Profile: BundleResponseNIIS
Parent: TWCoreBundle
Id: bundle-response-niis
Title: "CDC回覆合約院所上傳/修改/刪除(Bundle Response NIIS)"
Description: "此CDC回覆合約院所上傳/修改/刪除(Bundle Response NIIS)Profile說明CDC回覆合約院所批次上傳/修改/刪除檢驗報告之結果狀態。"
* ^version = "0.0.1"

* type = #batch-response
* type MS

* timestamp ^short = "時間戳記"
* timestamp 1..1 MS 

* entry.response 1..1 MS
* entry.response.status MS 
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry contains

diagnosticreport 1..* MS 
	
* entry[diagnosticreport].resource 1..1 MS
* entry[diagnosticreport].resource only DiagnosticReportingNIIS
* entry[diagnosticreport].response.outcome only OperationOutcomeNIIS
* entry[diagnosticreport].response.outcome 1..1 MS


