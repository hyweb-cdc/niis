Profile: ObservationHBeAgReportingNIIS
Parent: TWCoreObservationLaboratoryResult
Id: observation-HBeAg-reporting-niis
Title: "HBeAg檢驗檢查（Observation HBeAg Reporting NIIS）"
Description: "此HBeAg檢驗檢查（Observation HBeAg Reporting NIIS）Profile 說明本IG如何進一步定義臺灣核心-實驗室檢驗檢查（TW Core Observation Laboratory Result）Profile以呈現全國性預防接種資訊之HBeAg檢驗檢查資料。"
* ^version = "0.0.1"

* category 1..1

* subject only Reference(PatientReportingNIIS)

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "抽血日"

* specimen ^short = "B肝病毒量採檢日期"
* specimen only Reference(SpecimenreportingNIIS)

* performer only Reference(OrganizationSpeccoReportingNIIS)
* performer ^short = "採檢單位"

* code from TWHepatitisBAntigenTestCode (required)
* code.coding[LOINCObservationCode] 0..0
* code.coding[TWLaboratoryCategory] 0..0
* code.coding 1..1 MS
* code.coding contains HBeAg 1..1 MS
* code.coding[HBeAg] from TWHepatitisBAntigenTestCode (required)
* code.coding[HBeAg].code 1..1 MS
* code.coding[HBeAg].code = #HBeAg
* code.coding[HBeAg].system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-hep-b-test-code-values"

* method.coding.code 1..1 MS
* method.coding.code from TWNIISObsMethodVS (required)
* method.text 0..1 MS
* method.text ^short = "HBeAg其他檢驗方法名稱"
* method obeys niis-hbeag-method-other

* interpretation 1..1 MS
* interpretation ^short = "HBeAg檢驗結果"
* interpretation from HL7TestResult (required)


* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    ExpectedDeliveryDate 0..1 MS and 
    HepatitisBViralLoad 0..1 MS and 
    IsAntiviralTherapy 0..1 MS  and
    avtStartDate 0..1 MS
* component[ExpectedDeliveryDate] ^short = "預產期"
* component[ExpectedDeliveryDate].code = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#預產期 "預產期"
* component[ExpectedDeliveryDate].code.coding.code = #預產期
* component[ExpectedDeliveryDate].code.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values"
* component[ExpectedDeliveryDate].value[x] only dateTime
* component[ExpectedDeliveryDate].valueDateTime 0..1 MS
* component[ExpectedDeliveryDate].valueDateTime ^short = "預產期"
* component[ExpectedDeliveryDate].code.coding[LOINCObservationCode] 0..0
* component[ExpectedDeliveryDate].code.coding[TWLaboratoryCategory] 0..0

* component[HepatitisBViralLoad] ^short = "B型肝炎病毒含量"
* component[HepatitisBViralLoad].code = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#B型肝炎病毒含量 "B型肝炎病毒含量"
* component[HepatitisBViralLoad].code.coding.code = #B型肝炎病毒含量
* component[HepatitisBViralLoad].code.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values"
* component[HepatitisBViralLoad].value[x] only Quantity
* component[HepatitisBViralLoad].valueQuantity 0..1 MS
* component[HepatitisBViralLoad].valueQuantity ^short = "B型肝炎病毒含量"
* component[HepatitisBViralLoad].code.coding[LOINCObservationCode] 0..0
* component[HepatitisBViralLoad].code.coding[TWLaboratoryCategory] 0..0

* component[IsAntiviralTherapy] ^short = "是否使用抗病毒藥物治療"
* component[IsAntiviralTherapy].code = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#是否使用抗病毒藥物治療 "是否使用抗病毒藥物治療"
* component[IsAntiviralTherapy].code.coding.code = #是否使用抗病毒藥物治療
* component[IsAntiviralTherapy].code.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values"
* component[IsAntiviralTherapy].value[x] only boolean
* component[IsAntiviralTherapy].valueBoolean 0..1 MS
* component[IsAntiviralTherapy].valueBoolean ^short = "是否使用抗病毒藥物治療"
* component[IsAntiviralTherapy].code.coding[LOINCObservationCode] 0..0
* component[IsAntiviralTherapy].code.coding[TWLaboratoryCategory] 0..0

* component[avtStartDate] ^short = "抗病毒藥物治療起日"
* component[avtStartDate].code = https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values#抗病毒藥物治療起日 "抗病毒藥物治療起日"
* component[avtStartDate].code.coding.code = #抗病毒藥物治療起日
* component[avtStartDate].code.coding.system = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-obs-values"
* component[avtStartDate].value[x] only dateTime
* component[avtStartDate].valueDateTime 0..1 MS
* component[avtStartDate].valueDateTime ^short = "抗病毒藥物治療起日"
* component[avtStartDate].code.coding[LOINCObservationCode] 0..0
* component[avtStartDate].code.coding[TWLaboratoryCategory] 0..0

* component.code.coding[LOINCObservationCode] 0..0
* component.code.coding[TWLaboratoryCategory] 0..0

* note 0..1 MS
* note ^short = "備註說明欄位"


Invariant: niis-hbeag-method-other
Description: "檢驗方法為 Other 時，method.text（HBeAg 其他檢驗方法名稱）必填"
Expression: "coding.where(code = 'Other').exists() implies text.exists()"
Severity: #error
