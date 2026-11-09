Instance: CapabilityStatementNIISClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://twniis.cdc.gov.tw/twniis/CapabilityStatement/CapabilityStatementNIISClient"
* version = "1.0.0"
* name = "CapabilityStatementNIISClient"
* title = "全國性預防接種資訊登錄與上傳-用戶端(NIIS Client)"
* status = #active
* experimental = false
* publisher = "衛福部疾病管制署"
* date = "2026-08-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* patchFormat = #application/json-patch+json
* implementationGuide = "https://twniis.cdc.gov.tw/twniis/ImplementationGuide/tw.gov.mohw.cdc.twniis"
* description = "全國性預防接種資訊系統實作指引(NIIS IG)用戶端(Client)之能力聲明"
* rest.mode = #client
* rest.documentation = "全國性預防接種資訊登錄與上傳-用戶端(NIIS Client)建議應該(SHOULD)支援讀取、查詢、新增、修改及刪除本實作指引所定義的一個或多個Profile(s)。"

* rest.resource[+].type = #Bundle
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalUpdate = true
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/bundle-request-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/bundle-response-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/diagnosticReport-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-hBsAg-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-HBeAg-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-MRAntibody-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/patient-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/specimen-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/organization-hosp-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/organization-specco-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #OperationOutcome
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/operationoutcome-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].referencePolicy = #resolves
