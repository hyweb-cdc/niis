Instance: specimen-residentNumber-receivedTime-min
InstanceOf: SpecimenreportingNIIS
Title: "B肝病毒量採檢日期-Case3"
Description: "依據檢驗檢體(Specimen Reporting NIIS)呈現張小花之B肝病毒量採檢資訊。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>B肝病毒量採檢日期-張小花</b>
	</h3>
	<p>
		<b>採檢日期</b>：2020-01-05
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-residentNumber-min.html\">Patient/patient-residentNumber-min</a> \"張小花\"
	</p>
</div>"

* receivedTime = "2020-01-05"
* subject = Reference(Patient/patient-residentNumber-min)
