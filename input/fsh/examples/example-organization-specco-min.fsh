Instance: organization-specco-min
InstanceOf: OrganizationSpeccoReportingNIIS
Title: "採檢單位"
Description: "依據採檢單位（Organization Specimen Collection Reporting NIIS）Profile 呈現採檢單位資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>採檢單位</b>
	</h3>
	<p>
		<b>機構代碼</b>：0412040012
	</p>
	<p>
		<b>機構類型</b>：採檢單位 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-organization-type-values.html\">CDC-NIIS系統-機構類型</a>#SpecimenCollectionid） </span>
	</p>
</div>"


* identifier.value = "0412040012"
* type.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-organization-type-values#SpecimenCollectionid
* type.coding.display = "採檢單位"
