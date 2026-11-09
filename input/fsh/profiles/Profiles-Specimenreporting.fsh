Profile:  SpecimenreportingNIIS
Parent:   TWCoreSpecimen
Id:       specimen-reporting-niis
Title:    "檢驗檢體(Specimen Reporting NIIS)"
Description: "此檢驗檢體(Specimen Reporting NIIS)Profile說明本IG如何進一步定義FHIR的Specimen Resource以呈現檢驗報告之檢體資料"
* ^version = "1.0.0"

* receivedTime 1..1 MS
* receivedTime ^short = "B肝病毒量採檢日期"
* subject only Reference(PatientReportingNIIS)