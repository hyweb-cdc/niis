Instance: bundle-response-niis-min
InstanceOf: BundleResponseNIIS
Title: "上傳成功-CDC回覆合約院所上傳檢驗報告-Bundle範例"
Description: "依據CDC回覆合約院所上傳/修改/刪除(Bundle Response NIIS)Profile 呈現CDC逐筆回覆檢驗報告處理結果之Bundle範例。"
Usage: #example
* type = #batch-response
* timestamp = "2020-01-01T10:00:00+08:00"

* entry[0].fullUrl = "https://twniis.cdc.gov.tw/twniis/DiagnosticReport/diagnosticreport-id-min"
* entry[0].resource = diagnosticreport-id-min
* entry[0].response.status = "200 OK"
* entry[0].response.outcome = bundle-response-niis-outcome-created-1

* entry[1].fullUrl = "https://twniis.cdc.gov.tw/twniis/DiagnosticReport/diagnosticreport-passport-min"
* entry[1].resource = diagnosticreport-passport-min
* entry[1].response.status = "200 OK"
* entry[1].response.outcome = bundle-response-niis-outcome-created-2

Instance: bundle-response-niis-outcome-created-1
InstanceOf: OperationOutcomeNIIS
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>系統回應訊息</b>
	</h3>
	<p>
		<b>問題嚴重性</b>：Information <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/issue-severity\">IssueSeverity</a>#information) </span>
	</p>
	<p>
		<b>問題種類</b>：Informational Note <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/issue-type\">IssueType</a>#informational) </span>
	</p>
	<p>
		<b>訊息種類</b>：新增成功 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-twniis-operationoutcome-values.html\">CDC-NIIS系統-系統回應訊息</a>#I00001) </span>
	</p>
</div>"
* issue.severity = #information
* issue.code = #informational
* issue.details = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-operationoutcome-values#I00001 "新增成功"

Instance: bundle-response-niis-outcome-created-2
InstanceOf: OperationOutcomeNIIS
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>系統回應訊息</b>
	</h3>
	<p>
		<b>問題嚴重性</b>：Information <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/issue-severity\">IssueSeverity</a>#information) </span>
	</p>
	<p>
		<b>問題種類</b>：Informational Note <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://hl7.org/fhir/issue-type\">IssueType</a>#informational) </span>
	</p>
	<p>
		<b>訊息種類</b>：B肝病毒量採檢日期大於抽血日 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-twniis-operationoutcome-values.html\">CDC-NIIS系統-系統回應訊息</a>#E00072) </span>
	</p>
</div>"
* issue.severity = #information
* issue.code = #informational
* issue.details = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-operationoutcome-values#E00072 "B肝病毒量採檢日期大於抽血日"
