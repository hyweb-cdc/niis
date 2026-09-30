Logical: NIISRequestModel
Id: NIISRequestModel
Title: "全國性預防接種資訊登錄與上傳(Request)之資料模型"
Description: "全國性預防接種資訊登錄與上傳實作指引(Request)之資料模型"
* ^version = "0.0.1"

* patient 1..1 BackboneElement "個案資訊" "個案資訊"
* patient.caseNumber 1..1 string "個案編號" "個案編號"
* patient.idType 1..1 string "ID種類" "ID種類。1：身分證號，對應Patient.identifier[idCardNumber].type.coding.code=NNxxx；2：居留證號，對應Patient.identifier[residentNumber].type.coding.code=PRC；3：護照號碼，對應Patient.identifier[passportNumber].type.coding.code=PPN。"
* patient.idNo 1..1 string "個案ID" "個案ID"
* patient.name 1..1 string "個案姓名" "個案姓名"
* patient.birthdate 1..1 string "個案生日" "個案生日"
* patient.tel 1..1 string "行動電話" "行動電話"
* patient.address 1..1 string "通訊地址" "通訊地址"
* patient.examineType 1..1 string "檢驗類型" "檢驗類型"
* patient.dataKey 1..1 string "資料key" "資料key，該筆資料於院所資料庫中之唯一值"

* mmrRslt 1..1 BackboneElement "德國麻疹檢驗或麻疹檢驗結果資訊" "德國麻疹檢驗或麻疹檢驗結果資訊"
* mmrRslt.drawDate 1..1 string "抽血日" "抽血日"
* mmrRslt.prenatalExam 1..1 string "是否為產檢" "是否為產檢"
* mmrRslt.igGRslt 0..1 string "IgG檢驗結果" "IgG檢驗結果"
* mmrRslt.igMRslt 0..1 string "IgM檢驗結果" "IgM檢驗結果"

* hepBAgRslt 1..1 BackboneElement "孕婦B肝產檢結果資訊" "孕婦B肝產檢結果資訊"
* hepBAgRslt.dueDate 1..1 string "預產期" "預產期"
* hepBAgRslt.drawDate 1..1 string "抽血日" "抽血日"
* hepBAgRslt.hbsRIARslt 0..1 string "HBsAg RIA檢驗結果" "HBsAg RIA檢驗結果"
* hepBAgRslt.hbsEIARslt 0..1 string "HBsAg EIA檢驗結果" "HBsAg EIA檢驗結果"
* hepBAgRslt.hbsOtherExamName 0..1 string "HBsAg 其他檢驗方法名稱" "HBsAg 其他檢驗方法名稱"
* hepBAgRslt.hbsOtherRslt 0..1 string "HBsAg 其他檢驗方法結果" "HBsAg 其他檢驗方法結果"
* hepBAgRslt.hbeRIARslt 0..1 string "HBeAg RIA 檢驗結果" "HBeAg RIA 檢驗結果"
* hepBAgRslt.hbeEIARslt 0..1 string "HBeAg EIA 檢驗結果" "HBeAg EIA 檢驗結果"
* hepBAgRslt.hbeOtherExamName 0..1 string "HBeAg 其他檢驗方法名稱" "HBeAg 其他檢驗方法名稱"
* hepBAgRslt.hbeOtherRslt 0..1 string "HBeAg 其他檢驗方法結果" "HBeAg 其他檢驗方法結果"
* hepBAgRslt.remarks 0..1 string "備註說明文字" "備註說明文字"
* hepBAgRslt.hbvViralLoad 0..1 string "B型肝炎病毒含量(IU/mL)" "B型肝炎病毒含量(IU/mL)"
* hepBAgRslt.hbvVLTestDate 0..1 string "B肝病毒量採檢日期" "B肝病毒量採檢日期"
* hepBAgRslt.hbvVLFacility 0..1 string "B肝病毒量採檢單位十碼" "B肝病毒量採檢單位十碼"
* hepBAgRslt.isAntiviralTherapy 0..1 string "是否使用抗病毒藥物治療" "是否使用抗病毒藥物治療"
* hepBAgRslt.avtStartDate 0..1 string "抗病毒藥物治療起日" "抗病毒藥物治療起日"


Mapping: TWNIISPatient
Id: TWNIISPatient
Title: "Mapping to TWNIIS Patient"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/patient-reporting-niis"
* patient.idType -> "Patient.identifier.type.coding.code" "1=NNxxx，2=PRC，3=PPN"
* patient.idNo -> "Patient.identifier.value"
* patient.name -> "Patient.name.text"
* patient.birthdate -> "Patient.birthDate"
* patient.tel -> "Patient.telecom.value"
* patient.address -> "Patient.address.text"

Mapping: TWNIISDiagnosticReport
Id: TWNIISDiagnosticReport
Title: "Mapping to TWNIIS DiagnosticReport"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/diagnosticReport-reporting-niis"
* patient.caseNumber -> "DiagnosticReport.code.text"
* patient.dataKey -> "DiagnosticReport.identifier.value"
* patient.examineType -> "DiagnosticReport.code"

Mapping: TWNIISObservationHBsAg
Id: TWNIISObservationHBsAg
Title: "Mapping to TWNIIS Observation HBsAg"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-hBsAg-reporting-niis"
* hepBAgRslt.drawDate -> "Observation.effectiveDateTime"
* hepBAgRslt.hbsOtherExamName -> "Observation.method.text"
* hepBAgRslt.hbsRIARslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.hbsEIARslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.hbsOtherRslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.remarks -> "Observation.note.text"
* hepBAgRslt.dueDate -> "Observation.component.where(code.coding.code = '預產期').valueDateTime"
* hepBAgRslt.hbvViralLoad -> "Observation.component.where(code.coding.code = 'B型肝炎病毒含量').valueQuantity.value"
* hepBAgRslt.isAntiviralTherapy -> "Observation.component.where(code.coding.code = '是否使用抗病毒藥物治療').valueBoolean"
* hepBAgRslt.avtStartDate -> "Observation.component.where(code.coding.code = '抗病毒藥物治療起日').valueDateTime"

Mapping: TWNIISObservationHBeAg
Id: TWNIISObservationHBeAg
Title: "Mapping to TWNIIS Observation HBeAg"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-HBeAg-reporting-niis"
* hepBAgRslt.drawDate -> "Observation.effectiveDateTime"
* hepBAgRslt.hbeOtherExamName -> "Observation.method.text"
* hepBAgRslt.hbeRIARslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.hbeEIARslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.hbeOtherRslt -> "Observation.interpretation.coding.code"
* hepBAgRslt.remarks -> "Observation.note.text"
* hepBAgRslt.dueDate -> "Observation.component.where(code.coding.code = '預產期').valueDateTime"
* hepBAgRslt.hbvViralLoad -> "Observation.component.where(code.coding.code = 'B型肝炎病毒含量').valueQuantity.value"
* hepBAgRslt.isAntiviralTherapy -> "Observation.component.where(code.coding.code = '是否使用抗病毒藥物治療').valueBoolean"
* hepBAgRslt.avtStartDate -> "Observation.component.where(code.coding.code = '抗病毒藥物治療起日').valueDateTime"

Mapping: TWNIISSpecimen
Id: TWNIISSpecimen
Title: "Mapping to TWNIIS Specimen"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/specimen-reporting-niis"
* hepBAgRslt.hbvVLTestDate -> "Specimen.receivedTime"

Mapping: TWNIISOrganizationSpecco
Id: TWNIISOrganizationSpecco
Title: "Mapping to TWNIIS Organization Specimen Collection"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/organization-specco-reporting-niis"
* hepBAgRslt.hbvVLFacility -> "Organization.identifier"

Mapping: TWNIISObservationMRAntibody
Id: TWNIISObservationMRAntibody
Title: "Mapping to TWNIIS Observation MRAntibody(麻疹／德國麻疹 IgG/IgM 檢驗)"
Source: NIISRequestModel
Target: "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-MRAntibody-reporting-niis"
* mmrRslt.drawDate -> "Observation.effectiveDateTime"
* mmrRslt.igGRslt -> "Observation.where(code.coding.code = 'IgG').interpretation.coding.code"
* mmrRslt.igMRslt -> "Observation.where(code.coding.code = 'IgM').interpretation.coding.code"
* mmrRslt.prenatalExam -> "Observation.component.where(code.coding.code = '產檢').valueBoolean"
