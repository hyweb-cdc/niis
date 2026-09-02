Profile:        OperationOutcomeNIIS
Parent:         OperationOutcome
Id:             operationoutcome-niis
Title:          "系統回應訊息（OperationOutcome NIIS）"
Description:    "此系統回應訊息（OperationOutcome NIIS）Profile說明本IG如何進一步定義FHIR的 OperatiOnoutcome Resource，以呈現系統回應訊息之資料"
* ^version = "0.0.1"
* issue 1..1 MS
* issue.details 1..1 MS
* issue.details only CodeableConcept
* issue.details from TWNIISOperationOutcome (required)
* issue.severity ^binding.description = "應填入[IssueSeverity](http://hl7.org/fhir/R4/valueset-issue-severity.html)值集中的其中一個代碼。"
* issue.code ^binding.description = "應填入[IssueType](http://hl7.org/fhir/R4/valueset-issue-type.html)值集中的其中一個代碼。"
* issue.details ^binding.description = "應填入[CDC-NIIS系統-系統回應訊息值集](ValueSet-twniis-operationoutcome-values.html)值集中的其中一個代碼。"

