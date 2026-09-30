Profile: PatientReportingNIIS
Parent: TWCorePatient
Id: patient-reporting-niis
Title: "個案資料(Patient Reporting NIIS)"
Description: "此個案資料(Patient Reporting NIIS)Profile 說明本IG如何進一步定義臺灣核心-病患(TW Core Patient) Profile以呈現全國性預防接種資訊之個案基本資料。"
* ^version = "0.0.1"

* identifier[medicalRecord] 0..0
* identifier 1..1
* identifier[idCardNumber] 0..1 MS
* identifier[idCardNumber] ^short = "個案ID種類為「1=身分證號」時，填入此欄位值"
* identifier[residentNumber] 0..1 MS
* identifier[residentNumber] ^short = "個案ID種類為「2=居留證號」時。填入此欄位值"
* identifier[passportNumber] 0..1 MS
* identifier[passportNumber] ^short = "個案ID種類為「3=護照號碼」時，填入此欄位值"

* name 1..1
* name[usual] 1..1 MS
* name[usual].text 1..1 MS

* telecom 1..1
* telecom.system = #phone
* telecom.value ^short = "電話號碼格式應為 0900-000-000"

* address 1..1 MS
* address.text MS

* birthDate ^short = "出生年月日。格式：西元年-月-日，例如：2001-12-31"

* telecom obeys patient-phone-format


Invariant: patient-phone-format
Description: "電話號碼格式應為 0900-000-000"
Expression: "value.matches('^(09[0-9]{2}-[0-9]{3}-[0-9]{3})')"
Severity: #error
