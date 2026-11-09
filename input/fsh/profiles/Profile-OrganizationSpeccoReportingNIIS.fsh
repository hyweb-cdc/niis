Profile: OrganizationSpeccoReportingNIIS
Parent: TWCoreOrganization
Id: organization-specco-reporting-niis
Title: "採檢單位(Organization Specimen Collection Reporting NIIS)"
Description: "此採檢單位(Organization Specimen Collection Reporting NIIS)Profile 說明本IG如何進一步定義臺灣核心-機構(TW Core Organization)Profile以呈現全國性預防接種之採檢單位。"
* ^version = "1.0.0"
* identifier 1..1 MS
* identifier ^short = "B肝病毒量採檢單位十碼"

* type.coding.system 1..1 MS
* type.coding.code 1..1 MS
* type 1..1 MS
* type from TWNIISOrganizationTypeVS (required)
* type.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-organization-type-values"
* type.coding.code = #SpecimenCollectionid
