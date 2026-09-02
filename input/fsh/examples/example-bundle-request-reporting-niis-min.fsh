Instance: bundle-request-reporting-niis-min
InstanceOf: BundleRequestReportingNIIS
Title: "合約院所上傳檢驗報告-Bundle範例"
Description: "依據合約院所上傳檢驗報告（Bundle Request Reporting NIIS）Profile 呈現多筆個案檢驗結果批次上傳之Bundle範例。"
Usage: #example
* type = #batch
* timestamp = "2020-01-01T10:00:00+08:00"

* entry[0].fullUrl = "https://twniis.cdc.gov.tw/twniis/DiagnosticReport/diagnosticreport-id-min"
* entry[0].resource = diagnosticreport-id-min
* entry[0].request.method = #POST
* entry[0].request.url = "DiagnosticReport/diagnosticreport-id-min"

* entry[1].fullUrl = "https://twniis.cdc.gov.tw/twniis/DiagnosticReport/diagnosticreport-passport-min"
* entry[1].resource = diagnosticreport-passport-min
* entry[1].request.method = #POST
* entry[1].request.url = "DiagnosticReport/diagnosticreport-passport-min"

* entry[2].fullUrl = "https://twniis.cdc.gov.tw/twniis/DiagnosticReport/diagnosticreport-residentNumber-min"
* entry[2].resource = diagnosticreport-residentNumber-min
* entry[2].request.method = #POST
* entry[2].request.url = "DiagnosticReport/diagnosticreport-residentNumber-min"

* entry[3].fullUrl = "https://twniis.cdc.gov.tw/twniis/Observation/observation-hepBAntibody-id-min"
* entry[3].resource = observation-hepBAntibody-id-min
* entry[3].request.method = #POST
* entry[3].request.url = "Observation/observation-hepBAntibody-id-min"

* entry[4].fullUrl = "https://twniis.cdc.gov.tw/twniis/Observation/observation-hepBAntibody-passport-min"
* entry[4].resource = observation-hepBAntibody-passport-min
* entry[4].request.method = #POST
* entry[4].request.url = "Observation/observation-hepBAntibody-passport-min"

* entry[5].fullUrl = "https://twniis.cdc.gov.tw/twniis/Observation/observation-hbsAg-min"
* entry[5].resource = observation-hbsAg-min
* entry[5].request.method = #POST
* entry[5].request.url = "Observation/observation-hbsAg-min"

* entry[6].fullUrl = "https://twniis.cdc.gov.tw/twniis/Observation/observation-hbeAg-min"
* entry[6].resource = observation-hbeAg-min
* entry[6].request.method = #POST
* entry[6].request.url = "Observation/observation-hbeAg-min"

* entry[7].fullUrl = "https://twniis.cdc.gov.tw/twniis/Observation/observation-hepBAntibody-residentNumber-min"
* entry[7].resource = observation-hepBAntibody-residentNumber-min
* entry[7].request.method = #POST
* entry[7].request.url = "Observation/observation-hepBAntibody-residentNumber-min"

* entry[8].fullUrl = "https://twniis.cdc.gov.tw/twniis/Patient/patient-id-min"
* entry[8].resource = patient-id-min
* entry[8].request.method = #POST
* entry[8].request.url = "Patient/patient-id-min"

* entry[9].fullUrl = "https://twniis.cdc.gov.tw/twniis/Patient/patient-passport-min"
* entry[9].resource = patient-passport-min
* entry[9].request.method = #POST
* entry[9].request.url = "Patient/patient-passport-min"

* entry[10].fullUrl = "https://twniis.cdc.gov.tw/twniis/Patient/patient-residentNumber-min"
* entry[10].resource = patient-residentNumber-min
* entry[10].request.method = #POST
* entry[10].request.url = "Patient/patient-residentNumber-min"

* entry[11].fullUrl = "https://twniis.cdc.gov.tw/twniis/Organization/organization-hosp-min"
* entry[11].resource = organization-hosp-min
* entry[11].request.method = #POST
* entry[11].request.url = "Organization/organization-hosp-min"

* entry[12].fullUrl = "https://twniis.cdc.gov.tw/twniis/Organization/organization-specco-min"
* entry[12].resource = organization-specco-min
* entry[12].request.method = #POST
* entry[12].request.url = "Organization/organization-specco-min"

* entry[13].fullUrl = "https://twniis.cdc.gov.tw/twniis/Specimen/specimen-residentNumber-receivedTime-min"
* entry[13].resource = specimen-residentNumber-receivedTime-min
* entry[13].request.method = #POST
* entry[13].request.url = "Specimen/specimen-residentNumber-receivedTime-min"
