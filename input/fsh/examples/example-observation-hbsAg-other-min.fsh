Instance: observation-hbsAg-other-min
InstanceOf: ObservationHBsAgReportingNIIS
Title: "HBsAg檢驗(Other)-孕婦B肝產檢結果-Case3"
Description: "依據HBsAg檢驗檢查(Observation HBsAg Reporting NIIS)Profile 呈現孕婦B肝產檢結果之HBsAg其他方法檢驗檢查。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>HBsAg檢驗(Other)-孕婦B肝產檢結果-張小花</b>
	</h3>
	<p>
		<b>檢驗狀態</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory) </span>
	</p>
	<p>
		<b>檢驗項目</b>：HBsAg <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-twniis-hep-b-test-code-values.html\">CDC-NIIS系統-B肝檢驗項目</a>#HBsAg) </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-residentNumber-min.html\">Patient/patient-residentNumber-min</a> \"張小花\"
	</p>
	<p>
		<b>檢驗日期</b>：2020-01-01
	</p>
	<p>
		<b>檢體資料</b>：<a href=\"Specimen-specimen-residentNumber-receivedTime-min.html\">Specimen/specimen-residentNumber-receivedTime-min</a> \"B肝病毒量採檢日期-張小花\"
	</p>
	<p>
		<b>採檢單位</b>：<a href=\"Organization-organization-specco-min.html\">Organization/organization-specco-min</a> \"採檢單位\"
	</p>
	<p>
		<b>檢驗方法</b>：Other(CLIA) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-twniis-obs-method-values.html\">CDC-NIIS系統-檢驗方法</a>#Other) </span>
	</p>
	<p>
		<b>檢驗結果</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#POS) </span>
	</p>
	<p>
		<b>預產期</b>：2020-01-24
	</p>
	<p>
		<b>B型肝炎病毒含量</b>：1000 IU/mL
	</p>
	<p>
		<b>是否使用抗病毒藥物治療</b>：true
	</p>
	<p>
		<b>抗病毒藥物治療起日</b>：2020-01-07
	</p>
</div>"
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[HBsAg] = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-hep-b-test-code-values#HBsAg "HBsAg"
* subject = Reference(Patient/patient-residentNumber-min)
* effectiveDateTime = "2020-01-01"
* specimen = Reference(Specimen/specimen-residentNumber-receivedTime-min)
* performer = Reference(Organization/organization-specco-min)
* method.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-method-values#Other "Other"
* method.text = "CLIA"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS
* component[ExpectedDeliveryDate].code.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#預產期 "預產期"
* component[ExpectedDeliveryDate].valueDateTime = "2020-01-24"
* component[HepatitisBViralLoad].code.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#B型肝炎病毒含量 "B型肝炎病毒含量"
* component[HepatitisBViralLoad].valueQuantity.value = 1000
* component[HepatitisBViralLoad].valueQuantity.unit = "IU/mL"
* component[HepatitisBViralLoad].valueQuantity.system = "http://unitsofmeasure.org"
* component[HepatitisBViralLoad].valueQuantity.code = #[IU]/mL
* component[IsAntiviralTherapy].code.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#是否使用抗病毒藥物治療 "是否使用抗病毒藥物治療"
* component[IsAntiviralTherapy].valueBoolean = true
* component[avtStartDate].code.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#抗病毒藥物治療起日 "抗病毒藥物治療起日"
* component[avtStartDate].valueDateTime = "2020-01-07"
