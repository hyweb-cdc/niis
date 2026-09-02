### 全國性預防接種資訊登錄與上傳檢驗報告之Bundle架構(Bundle Request)
<div  style="padding-left: 10px;"> 
麻疹/德國麻疹或孕婦 B 型肝炎檢驗報告透過Bundle打包以下資料(相關對應表可以參照全國性預防接種資訊登錄與上傳(Request)之邏輯模型中的<a href="StructureDefinition-NIISRequestModel-mappings.html">Mappings</a>)：
<ul>
	<li><a href="StructureDefinition-diagnosticReport-reporting-niis.html">檢驗檢查報告(DiagnosticReport Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-observation-hBsAg-reporting-niis.html">HBsAg檢驗檢查(Observation HBsAg Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-observation-HBeAg-reporting-niis.html">HBeAg檢驗檢查(Observation HBeAg Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-observation-HepBAntibody-reporting-niis.html">HepBAntibody檢驗檢查(Observation HepBAntibody Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-specimen-reporting-niis.html">檢驗檢體(Specimen Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-patient-reporting-niis.html">個案資料(Patient Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-organization-hosp-reporting-niis.html">合約院所(Organization Hosp Reporting NIIS Profile)</a></li>
	<li><a href="StructureDefinition-organization-specco-reporting-niis.html">採檢單位(Organization Specimen Collection Reporting NIIS Profile)</a></li>
</ul>
</div>

#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="request.png" alt="Bundle_request架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 80%;"/>
</div>



### CDC回覆檢驗機構上傳傳染病檢驗報告之Bundle架構 (Bundle Response)
<div  style="padding-left: 10px;"> 
CDC收到合約院所登錄與上傳檢驗檢查報告後需回覆合約院所。整批收到時以Bundle打包以下資料回覆合約院所之上傳；整批被拒時，改以單一OperationOutcome回覆，不回Bundle。(相關對應表可以參照全國性預防接種資訊回應(Response)之邏輯模型中的<a href="StructureDefinition-NIISResponseModel-mappings.html">Mappings</a>)：
<ul>
	<li><a href="StructureDefinition-bundle-response-niis.html">CDC回覆合約院所上傳/修改/刪除(Bundle Response NIIS Profile)</a></li>
	<li><a href="StructureDefinition-operationoutcome-niis.html">系統回應訊息(OperationOutcome NIIS Profile)</a></li>
</ul>
</div>

#### Bundle架構圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="response.png" alt="Bundle_response架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 70%;"/>
</div>


<br>

### 圖例說明圖
<div  style="padding-left: 10px;"> 
<img class="figure-img img-responsive img-rounded center-block" src="圖例說明.png" alt="圖例說明" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
</div>

<br>
