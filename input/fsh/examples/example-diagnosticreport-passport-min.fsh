Instance: diagnosticreport-passport-min
InstanceOf: DiagnosticReportingNIIS
Title: "檢驗報告-抗體檢驗結果-Case2"
Description: "依據檢驗報告（DiagnosticReport Reporting NIIS）Profile 呈現王大明之抗體檢驗結果檢驗報告。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>檢驗報告-抗體檢驗結果-王大明</b>
	</h3>
	<p>
		<b>檢驗報告識別碼</b>：DR-20190215-0001
	</p>
	<p>
		<b>檢驗報告狀態</b>：final
	</p>
	<p>
		<b>檢驗報告類型</b>：德國麻疹檢驗結果 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-obs-type-values.html\">CDC-NIIS系統-檢驗報告類型</a>#1） </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-passport-min.html\">Patient/patient-passport-min</a> \"王大明\"
	</p>
	<p>
		<b>檢驗單位</b>：<a href=\"Organization-organization-hosp-min.html\">Organization/organization-hosp-min</a> \"合約院所\"
	</p>
	<p>
		<b>檢驗結果</b>：<a href=\"Observation-observation-hepBAntibody-passport-min.html\">Observation/observation-hepBAntibody-passport-min</a> \"抗體檢驗(IgG)-王大明\"
	</p>
</div>"
* identifier.value = "DR-20190215-0001"
* status = #final
* code.text = "2"
* code.coding[TWNIISObsType] = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-type-values#1 "德國麻疹檢驗結果"
* subject = Reference(Patient/patient-passport-min)
* performer = Reference(Organization/organization-hosp-min)
* result[HepBAntibody] = Reference(Observation/observation-hepBAntibody-passport-min)
