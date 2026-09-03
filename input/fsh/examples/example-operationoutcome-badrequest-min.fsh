Instance: operationoutcome-badrequest-min
InstanceOf: OperationOutcomeNIIS
Title: "上傳失敗-系統回應訊息-Bad Request範例"
Description: "依據系統回應訊息（OperationOutcome NIIS）Profile 呈現整批上傳之檢核報告系統回覆 HTTP 400 的錯誤訊息。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>上傳失敗-系統回應訊息-Bad Request範例</b>
	</h3>
	<p>
		<b>問題嚴重性</b>：Error <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://hl7.org/fhir/issue-severity\">IssueSeverity</a>#error） </span>
	</p>
	<p>
		<b>問題種類</b>：Processing Failure <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://hl7.org/fhir/issue-type\">IssueType</a>#processing） </span>
	</p>
	<p>
		<b>訊息種類</b>：非正確之JSON格式 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-operationoutcome-values.html\">CDC-NIIS系統-系統回應訊息</a>#E00001） </span>
	</p>
</div>"
* issue.severity = #error
* issue.code = #processing
* issue.details = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-operationoutcome-values#E00001 "非正確之JSON格式"
