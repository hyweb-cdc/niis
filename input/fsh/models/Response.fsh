Logical: NIISResponseModel
Id: NIISResponseModel
Title: "全國性預防接種資訊登錄與上傳回應(NIIS Response)之資料模型"
Description: "全國性預防接種資訊登錄與上傳回應(NIIS Response)之資料模型"
* ^version = "0.0.1"

* timestamp 1..1 string "時間戳記" "時間戳記"
* statusCode 1..1 string "交易狀態代碼" "交易狀態代碼"



Mapping: TWNIISBundleResponse
Id: TWNIISBundleResponse
Title: "Mapping to TWNIIS Bundle Response"
Source: NIISResponseModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/bundle-response-niis"
* timestamp -> "Bundle.timestamp"

Mapping: TWNIISOperationOutcomeResponse
Id: TWNIISOperationOutcomeResponse
Title: "Mapping to TWNIIS OperationOutcome"
Source: NIISResponseModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/operationoutcome-niis"
* statusCode -> "OperationOutcome.issue.details.coding.code"
