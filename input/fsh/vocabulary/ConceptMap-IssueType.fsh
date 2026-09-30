Instance: twniis-issuetype
InstanceOf: ConceptMap
Title: "NIIS系統回應訊息-問題種類代碼對應 HL7 IssueType"
Description: "臺灣衛生福利部疾管署NIIS系統回應訊息代碼對應 HL7 IssueType 代碼，概念對應出版日期：2026-08-15；資料所屬單位：臺灣衛生福利部疾管署。

*因原始資料無代碼版本資訊，故使用其「生效日期」作為版本資訊。*"
Usage: #definition
* status = #active
* date = "2026-08-15"
* version = "2026-08-15"
* name = "TWNIISIssueType"
* title = "NIIS系統回應訊息-問題種類代碼對應 HL7 IssueType"
* experimental = false
* sourceUri = "https://twniis.cdc.gov.tw/twniis/ValueSet/twniis-operationoutcome-values"
* targetUri = "http://hl7.org/fhir/ValueSet/issue-type"
* group.source = "https://twniis.cdc.gov.tw/twniis/CodeSystem/twniis-operationoutcome-values"
* group.target = "http://hl7.org/fhir/issue-type"

* group.element[0].code = #I00000
* group.element[=].display = "作業完成"
* group.element[=].target.code = #informational
* group.element[=].target.display = "Informational Note"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #I00001
* group.element[=].display = "新增成功"
* group.element[=].target.code = #informational
* group.element[=].target.display = "Informational Note"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #I00002
* group.element[=].display = "修改成功"
* group.element[=].target.code = #informational
* group.element[=].target.display = "Informational Note"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #I00003
* group.element[=].display = "刪除成功"
* group.element[=].target.code = #informational
* group.element[=].target.display = "Informational Note"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00001
* group.element[=].display = "非正確之JSON格式"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00002
* group.element[=].display = "非正確之交易檢查碼"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00003
* group.element[=].display = "缺少交易參數(必填欄位不足)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00004
* group.element[=].display = "輸入之交易參數異常"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00005
* group.element[=].display = "查無此證號(指身分證號、居留證號及護照號碼)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00006
* group.element[=].display = "資料型別錯誤(欄位1|欄位2|欄位3)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00018
* group.element[=].display = "身分證號錯誤(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00019
* group.element[=].display = "出生日期異常(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00022
* group.element[=].display = "接種機構格式錯誤(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00023
* group.element[=].display = "身分證號未填寫(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00024
* group.element[=].display = "出生日期未填寫(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00025
* group.element[=].display = "醫事機構代碼未填寫(未轉入NIIS系統)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00032
* group.element[=].display = "DataKey不存在系統中"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00033
* group.element[=].display = "對應不到該筆資料"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00041
* group.element[=].display = "身分證號格式錯誤"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00042
* group.element[=].display = "居留證號格式錯誤"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00043
* group.element[=].display = "院所不存在"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00046
* group.element[=].display = "抽血日不得為未來日期"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00047
* group.element[=].display = "抽血日期異常"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00048
* group.element[=].display = "無RIA及EIA檢驗結果"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00049
* group.element[=].display = "s(-)e(+)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00050
* group.element[=].display = "s(+/-)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00051
* group.element[=].display = "e(+/-)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00052
* group.element[=].display = "檢驗結果異常"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00053
* group.element[=].display = "個案筆數與總筆數不符"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00054
* group.element[=].display = "抽血日大於預產日"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00055
* group.element[=].display = "(抽血日-預產日)小於等於270天"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00056
* group.element[=].display = "重複資料"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00057
* group.element[=].display = "預產期不得小於出生日"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00058
* group.element[=].display = "抽血日不得小於出生日"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00059
* group.element[=].display = "HBsAg其他檢驗方法結果有值，則其他檢驗方法名稱必填"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00060
* group.element[=].display = "HBeAg其他檢驗方法結果有值，則其他檢驗方法名稱必填"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00069
* group.element[=].display = "B肝病毒量採檢單位不存在"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00070
* group.element[=].display = "B肝病毒量採檢日期不得為未來日期"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00071
* group.element[=].display = "B肝病毒量採檢日期異常"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00072
* group.element[=].display = "B肝病毒量採檢日期大於抽血日"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00073
* group.element[=].display = "抗病毒藥物治療起日不得為未來日期"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00074
* group.element[=].display = "抗病毒藥物治療起日異常"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E00075
* group.element[=].display = "抗病毒藥物治療起日不得小於出生日"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #E99999
* group.element[=].display = "非預期錯誤，請洽詢服務廠商協助"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00000
* group.element[=].display = "此API版本不再支援"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00004
* group.element[=].display = "資料庫伺服器沒有回應"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00005
* group.element[=].display = "(預產日-出生日)小於13歲"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00006
* group.element[=].display = "該個案大於49歲"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00007
* group.element[=].display = "單位未具此API使用權限"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #W00009
* group.element[=].display = "系統維護期間API服務暫停"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #D00001
* group.element[=].display = "HISKEY錯誤(僅測試機回應此代碼，正式機回應代碼E00004)"
* group.element[=].target.code = #processing
* group.element[=].target.display = "Processing Failure"
* group.element[=].target.equivalence = #equal
