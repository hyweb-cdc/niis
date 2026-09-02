Instance: observation-hepBAntibody-passport-min
InstanceOf: ObservationHepBAntibodyReportingNIIS
Title: "抗體檢驗(IgG)-Case2"
Description: "依據HepBAntibody檢驗檢查（Observation HepBAntibody Reporting NIIS）Profile 呈現護照號碼個案之IgG檢驗檢查。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>抗體檢驗(IgG)-王大明</b>
	</h3>
	<p>
		<b>檢驗狀態</b>：final
	</p>
	<p>
		<b>檢驗類別</b>：Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/observation-category\">ObservationCategoryCodes</a>#laboratory） </span>
	</p>
	<p>
		<b>檢驗項目</b>：IgG <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-hepBAntibody-obs-values.html\">CDC-NIIS系統-HepBAntibody檢驗項目</a>#IgG） </span>
	</p>
	<p>
		<b>個案資料</b>：<a href=\"Patient-patient-passport-min.html\">Patient/patient-passport-min</a> \"王大明\"
	</p>
	<p>
		<b>檢驗日期</b>：2019-02-15
	</p>
	<p>
		<b>檢驗結果</b>：Positive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation\">ObservationInterpretation</a>#POS） </span>
	</p>
	<p>
		<b>是否為產檢</b>：false
	</p>
</div>"
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[HepBAntibodyOb] = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-hepBAntibody-obs-values#IgG "IgG"
* subject = Reference(Patient/patient-passport-min)
* effectiveDateTime = "2019-02-15"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* component[PrenatalExaminationPerformed].code.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#是否為產檢 "是否為產檢"
* component[PrenatalExaminationPerformed].valueBoolean = false
