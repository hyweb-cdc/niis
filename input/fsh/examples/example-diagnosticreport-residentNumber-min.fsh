Instance: diagnosticreport-residentNumber-min
InstanceOf: DiagnosticReportingNIIS
Title: "檢驗報告-孕婦B肝產檢結果-Case3"
Description: "依據檢驗報告（DiagnosticReport Reporting NIIS）Profile 呈現孕婦B肝產檢結果之檢驗報告。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>檢驗報告-孕婦B肝產檢結果-張小花</b>
	</h3>
	<p>
		<b>檢驗報告識別碼</b>：DR-20200101-0001
	</p>
	<p>
		<b>檢驗報告狀態</b>：final
	</p>
	<p>
		<b>檢驗報告類型</b>：孕婦B肝產檢結果 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-obs-type-values.html\">CDC-NIIS系統-檢驗報告類型</a>#2） </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-residentNumber-min.html\">Patient/patient-residentNumber-min</a> \"張小花\"
	</p>
	<p>
		<b>檢驗單位</b>：<a href=\"Organization-organization-hosp-min.html\">Organization/organization-hosp-min</a> \"合約院所\"
	</p>
	<p>
		<b>檢驗結果</b>：<a href=\"Observation-observation-hbsAg-min.html\">Observation/observation-hbsAg-min</a> \"HBsAg檢驗-孕婦B肝產檢結果-張小花\"、<a href=\"Observation-observation-hbeAg-min.html\">Observation/observation-hbeAg-min</a> \"HBeAg檢驗-孕婦B肝產檢結果-張小花\"、<a href=\"Observation-observation-hepBAntibody-residentNumber-min.html\">Observation/observation-hepBAntibody-residentNumber-min</a> \"抗體檢驗(IgG)-孕婦B肝產檢結果-張小花\"
	</p>
</div>"
* identifier.value = "DR-20200101-0001"
* status = #final
* code.text = "3"
* code.coding[TWNIISObsType] = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-type-values#2 "孕婦B肝產檢結果"
* subject = Reference(Patient/patient-residentNumber-min)
* performer = Reference(Organization/organization-hosp-min)
* result[HBsAg] = Reference(Observation/observation-hbsAg-min)
* result[HBeAg] = Reference(Observation/observation-hbeAg-min)
* result[HepBAntibody] = Reference(Observation/observation-hepBAntibody-residentNumber-min)
