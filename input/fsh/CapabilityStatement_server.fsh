Instance: CapabilityStatementNIISServer
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://twniis.cdc.gov.tw/twniis/CapabilityStatement/CapabilityStatementNIISServer"
* version = "1.0.0"
* name = "CapabilityStatementNIISServer"
* title = "全國性預防接種資訊登錄與上傳-伺服端(NIIS Server)"
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
* description = "全國性預防接種資訊系統實作指引(NIIS IG)伺服端(Server)之能力聲明"
* rest.mode = #server
* rest.documentation = "全國性預防接種資訊登錄與上傳-伺服端(NIIS Server)必須(SHALL)：(1)支援本實作指引中所有profiles；(2)根據FHIR規範實作RESTful；(3)回傳適當狀態碼，包括Status 400無效參數(invalid parameter)、Status 401/4xx未經授權的請求(unauthorized request)、Status 403未充分授權的資料存取範圍(insufficient permission scope)、Status 404未知的resource(unknown resource)；(4)支援JSON格式；(5)可識別每個新增到Server的實例(instance)之meta.profile是否為NIIS Profiles Defining URL，並確認實例是否依循Profile製作。全國性預防接種資訊登錄與上傳-伺服端建議應該(SHOULD)支援XML格式。"

* rest.resource[+].type = #Bundle
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalUpdate = true
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/bundle-request-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/bundle-response-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/diagnosticReport-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-hBsAg-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-HBeAg-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/observation-MRAntibody-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/patient-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/specimen-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[0] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/organization-hosp-reporting-niis"
* rest.resource[=].supportedProfile[+] = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/organization-specco-reporting-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #delete
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #OperationOutcome
* rest.resource[=].profile = "https://twniis.cdc.gov.tw/twniis/StructureDefinition/operationoutcome-niis"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].referencePolicy = #resolves
