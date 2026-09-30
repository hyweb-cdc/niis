Instance: patient-passport-min
InstanceOf: PatientReportingNIIS
Title: "個案資料-Case2"
Description: "依據個案資料(Patient Reporting NIIS)Profile 呈現ID種類3：護照號碼個案資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-護照號碼</b>
	</h3>
	<p>
		<b>識別碼型別</b>：Passport number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#PPN) </span>
	</p>
	<p>
		<b>護照號碼</b>：888800371(http://hl7.org/fhir/sid/passport-TWN)
	</p>
	<p>
		<b>姓名(usual)</b>：王大明
	</p>
	<p>
		<b>性別</b>：男性
	</p>
	<p>
		<b>出生日期</b>：1983-02-15
	</p>
	<p>
		<b>聯絡電話</b>：0934-567-890
	</p>
	<p>
		<b>居住地址</b>：臺北市中正區林森南路3號
	</p>
</div>"
* identifier[passportNumber].use = #official
* identifier[passportNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[passportNumber].type.coding.code = #PPN
* identifier[passportNumber].system = "http://hl7.org/fhir/sid/passport-TWN"
* identifier[passportNumber].value = "888800371"
* name[usual].text = "王大明"
* gender = #male
* telecom.system = #phone
* telecom.value = "0934-567-890"
* address.text = "臺北市中正區林森南路3號"
* birthDate = "1983-02-15"
