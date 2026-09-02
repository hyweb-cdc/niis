### 實作者 **建議應該(SHOULD)** 了解與FHIR交易相關的[安全考量](http://hl7.org/fhir/R4/security.html)，特別是與以下相關
<br>

### **[通訊(Communication)](http://hl7.org/fhir/R4/security.html#http)**

### **驗證(Authentication)**
本專案依衛生福利部疾病管制署(以下簡稱本署)頒布之資訊安全管理規範，存取RESTful服務必須先申請使用權限，經身份驗證核可後方能使用。未經驗證者，一律拒絕使用本服務。
依使用者實際需求，填寫申請表以傳真至(02) 2395-9832並Email電子檔(無須核章)至<a href="mailto:cdcniis2020@cdc.gov.tw">NIIS客服信箱</a>。
申請通過後本署會給予相關 API 識別碼及合約院所識別碼給申請單位。

1. <a href="doc/衛生福利部疾病管制署_NIIS-API測試上線申請表.docx">衛生福利部疾病管制署API測試上線申請表</a>
2. <a href="doc/衛生福利部疾病管制署_NIIS-API正式上線申請表.docx">衛生福利部疾病管制署API正式上線申請表</a>


### **授權/存取控制(Authorization/Access Control)**

本 IG 使用 SMART on FHIR 的 [Client Authentication: Symmetric (shared secret)](https://hl7.org/fhir/smart-app-launch/client-confidential-symmetric.html) 進行資料存取控制。在每次存取 RESTful 服務時，必須在傳送的 HTTP Header 中使用 Basic Auth，並包含以下認證資訊：

- Username：醫事機構的十碼章 (OrgId)
- Password：API 識別碼 (KeyId)

<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="token.png" alt="postman Authentication" style="display: block;margin-left: auto;margin-right: auto;width: 100%;"/>
</div>

Username 和 Password 會組合成一個字串，格式為 Username:Password，此字串將會進行 Base64 編碼。

假設 Username（OrgId）為 1234567890，Password（KeyId）為 abcdef123456，範例如下：

- 例：`Authorization: Basic MTIzNDU2Nzg5MDphYmNkZWYxMjM0NTY=`

    - 回覆 400(參數不正確) - 傳送的參數不合法。

    - 回覆 401(未經授權) - 參數KeyId不合法。

    - 回覆 403(禁止存取) - 終端路徑不合法。

    - 回覆 404(找不到網頁) - 終端路徑不存在。

<br>

### **數位簽章(Digital Signatures)** 

以[醫事憑證管理中心](https://hca.nat.gov.tw/)核發之有效憑證進行數位簽章操作，申請方式依[醫事憑證管理中心](https://hca.nat.gov.tw/)要求辦理。
於成功申請並取得憑證後，將欲上傳資料透過憑證SDK(函式P12Sign)產生上傳資料的數位簽章值，將取得的數位簽章值進一步以BASE64函式加密，取得一行經過BASE64函式加密的長字串，加入傳送的HTTP Header中，以參數AUTH表示。 

- 例，AUTH = 一行經過BASE64函式加密的數位簽章值。

    - 函式P12Sign參數：

        iFlags = CG_FLAG_DETACHMSG
          
        iKeyUsage = CG_KU_NON_REPUDIATION
          
        HashFlag = CG_ALGOR_SHA256
<br>   

### 本專案安全一致性要求如下

* 系統 **必須(SHALL)** 保留各種交易的稽核日誌(audit logs)
* 系統 **必須(SHALL)** 符合FHIR通訊安全(Communications Security)要求
* 系統 **必須(SHALL)** 依據國家、地方和機構政策實作同意要求。業務夥伴協定(Business Associate Agreements) **建議應該(SHOULD)**記錄系統相互同意的要求。
* 對於認證和授權，系統 **必須(SHALL)** 支援本署權責中心核發的API識別碼
* 對於數位簽章，系統 **必須(SHALL)** 支援[醫事憑證管理中心](https://hca.nat.gov.tw/)核發且在有效期內的憑證。注意：憑證必須(SHALL)為機構非IC卡符記憑證
* 系統 **可以(MAY)** 透過加密和相關存取控制來保護資料的機密性。所使用的策略和方法不在此規範的範圍內。
