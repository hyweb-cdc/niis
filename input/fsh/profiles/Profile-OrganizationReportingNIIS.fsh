Profile: OrganizationHospReportingNIIS
Parent: TWCoreOrganization
Id: organization-hosp-reporting-niis
Title: "合約院所（Organization Hosp Reporting NIIS）"
Description: "此合約院所（Organization Hosp Reporting NIIS）Profile 說明本IG如何進一步定義臺灣核心-機構（TW Core Organization）Profile以呈現全國性預防接種之合約院所。"
* ^version = "0.0.1"

* identifier 1..1 MS
* identifier ^short = "合約院所十碼章"

* type.coding.system 1..1 MS
* type.coding.code 1..1 MS
* type 1..1 MS
* type from TWNIISOrganizationTypeVS (required)
* type.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-organization-type-values"
* type.coding.code = #Hospid
