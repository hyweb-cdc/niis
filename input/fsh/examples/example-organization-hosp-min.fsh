Instance: organization-hosp-min
InstanceOf: OrganizationHospReportingNIIS
Title: "合約院所"
Description: "依據合約院所（Organization Hosp Reporting NIIS）Profile 呈現合約院所資料。"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<h3>
		<b>合約院所</b>
	</h3>
	<p>
		<b>機構代碼</b>：0412040012
	</p>
	<p>
		<b>機構類型</b>：合約院所 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"CodeSystem-twniis-organization-type-values.html\">CDC-NIIS系統-機構類型</a>#Hospid） </span>
	</p>
</div>"

* identifier.value = "0412040012"
* type.coding = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-organization-type-values#Hospid
* type.coding.display = "合約院所"
