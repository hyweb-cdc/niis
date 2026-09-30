Instance: patient-id-min
InstanceOf: PatientReportingNIIS
Title: "個案資料-Case1"
Description: "依據個案資料(Patient Reporting NIIS)Profile 呈現ID種類1：身分證號個案資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>個案資料-陳小明</b>
	</h3>
	<p>
		<b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">IdentifierType</a>#NNxxx) </span>
	</p>
	<p>
		<b>身分證號</b>：A123456789(http://www.moi.gov.tw)
	</p>
	<p>
		<b>姓名(usual)</b>：陳小明
	</p>
	<p>
		<b>性別</b>：男性
	</p>
	<p>
		<b>出生日期</b>：2011-01-01
	</p>
	<p>
		<b>聯絡電話</b>：0923-456-789
	</p>
	<p>
		<b>居住地址</b>：臺北市中正區林森南路1號
	</p>
</div>"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].type.coding.code.extension.url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/identifier-suffix"
* identifier[idCardNumber].type.coding.code.extension.extension[0].url = "suffix"
* identifier[idCardNumber].type.coding.code.extension.extension[=].valueString = "TWN"
* identifier[idCardNumber].type.coding.code.extension.extension[+].url = "valueSet"
* identifier[idCardNumber].type.coding.code.extension.extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/iso3166-1-3"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* name[usual].text = "陳小明"
* gender = #male
* telecom.system = #phone
* telecom.value = "0923-456-789"
* address.text = "臺北市中正區林森南路1號"
* birthDate = "2011-01-01"
