Instance: patient-residentNumber-min
InstanceOf: PatientReportingNIIS
Title: "個案資料-Case3"
Description: "依據個案資料(Patient Reporting NIIS)Profile 呈現ID種類2：居留證號個案資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-張小花</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Permanent Resident Card Number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PRC) </span>
	</p>
	<p>
		<b>居留證號</b>：A912345678(http://www.immigration.gov.tw)
	</p>
	<p>
		<b>姓名(usual)</b>：張小花
	</p>
	<p>
		<b>性別</b>：女性
	</p>
	<p>
		<b>出生日期</b>：1991-10-10
	</p>
	<p>
		<b>聯絡電話</b>：0912-345-678
	</p>
	<p>
		<b>居住地址</b>：臺北市中正區林森南路2號
	</p>
</div>"
* identifier[residentNumber].use = #official
* identifier[residentNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[residentNumber].type.coding.code = #PRC
* identifier[residentNumber].system = "http://www.immigration.gov.tw"
* identifier[residentNumber].value = "A912345678"
* name[usual].text = "張小花"
* gender = #female
* telecom.system = #phone
* telecom.value = "0912-345-678"
* address.text = "臺北市中正區林森南路2號"
* birthDate = "1991-10-10"
